include("DataDictionary.jl")
include("SolveBalances.jl")
include("CalcError.jl")

# Create Ensemble directory if it doesn't already exist
if ~isdir("Ensemble")
    mkdir("Ensemble")
end

# Create Best directory if it doesn't already exist
if ~isdir("Ensemble/Best")
    mkdir("Ensemble/Best")
end

# Setup the timescale
TSTART = 0.0
TSTOP = 3.0
Ts = 0.01

# Create dictionary of parameters
data_dictionary_best = DataDictionary(TSTART,TSTOP,Ts)
experiment_data_dictionary = data_dictionary_best["EXPERIMENT_DATA_DICTIONARY"]

# Initialize number of parameters to be varied
num_rate = 408
num_rxn = convert(Int64,num_rate/2)
num_sat = 548
num_cont = 34
num_params = num_rate+num_sat+num_cont

# Create or read the relevant information
if ~(isfile("Ensemble/Best/rate_constant.dat")&&isfile("Ensemble/Best/saturation_constant.dat"))
    # Take parameters to be varied from data_dictionary_best
    rate_best = data_dictionary_best["RATE_CONSTANT_ARRAY"]
    rate = copy(rate_best)
    sat_best = data_dictionary_best["SATURATION_CONSTANT_ARRAY"]
    sat = copy(sat_best)
    cont_best = data_dictionary_best["CONTROL_PARAMETER_ARRAY"]
    cont = copy(cont_best)
    # Solve the balance equations and calculate cost
    Tsim_best,X_best = SolveBalances(TSTART,TSTOP,Ts,data_dictionary_best)
    Error_best,Keys = CalcError(experiment_data_dictionary,Tsim_best,X_best)
	cost_best = sum(Error_best)
    cost = copy(cost_best)
    # Save the relevant information
    writedlm("Ensemble/Best/rate_constant.dat",rate)
    writedlm("Ensemble/Best/saturation_constant.dat",sat)
    writedlm("Ensemble/Best/control_constant.dat",cont)
    writedlm("Ensemble/Best/Tsim",Tsim_best)
    writedlm("Ensemble/Best/X",X_best)
    writedlm("Ensemble/Best/cost",cost_best)
else
    # Read the parameters from disk
    rate_best = readdlm("Ensemble/Best/rate_constant.dat")
    rate = copy(rate_best)
    sat_best = readdlm("Ensemble/Best/saturation_constant.dat")
    sat = copy(sat_best)
    cont_best = readdlm("Ensemble/Best/control_constant.dat")
    cont = copy(cont_best)
    # Check that params is of correct length
    if ~((num_rate==length(rate))&&(num_sat==length(find(sat.>0)))&&(num_cont==length(cont)))
        throw("Wrong number of parameters")
    end
    # Add parameters to data_dictionary_best
    data_dictionary_best["RATE_CONSTANT_ARRAY"] = rate
    data_dictionary_best["SATURATION_CONSTANT_ARRAY"] = sat
    data_dictionary_best["CONTROL_PARAMETER_ARRAY"] = cont
    # Solve the balance equations and calculate cost
    Tsim_best,X_best = SolveBalances(TSTART,TSTOP,Ts,data_dictionary_best)
    Error_best,Keys = CalcError(experiment_data_dictionary,Tsim_best,X_best)
    cost_best = sum(Error_best)
    cost = copy(cost_best)
    # Save the relevant information
    writedlm("Ensemble/Best/Tsim",Tsim_best)
    writedlm("Ensemble/Best/X",X_best)
    writedlm("Ensemble/Best/cost",cost_best)
end

rate_bounds = readdlm("rate_bounds")
sat_upper_bound = 10
sat_lower_bound = .0001
gain_upper_bound = 10
gain_lower_bound = 0.01
order_upper_bound = 10
order_lower_bound = 0.01

if ~isfile("Ensemble/num_dir")
    writedlm("Ensemble/num_dir",0)
end

num_dir = convert(Int64,readdlm("Ensemble/num_dir")[1]) # Number of pre-existing directories

num_iter = 1000000
num_to_reset = 10 # Number of iterations before resetting to best-fit set

alpha = 10 # Increasing alpha decreases acceptance probability (for cost_new > cost)

variance_lower_bound = .01
variance_upper_bound = .2

param_bounds = [61.5	246;
2.6			10.4;
123.5		494;
3.5e-6/2	3.5e-6*2;
45e-3/2		45e-3*2;
[.0001*ones(26,1)	10*ones(26,1)]
[2.106*ones(20,1)	21060*ones(20,1)]
]

for i = num_dir+1:num_dir+num_iter

variance = exp(log(variance_lower_bound)+rand()*(log(variance_upper_bound)-log(variance_lower_bound)))
    
    if rem(i,num_to_reset) == 0 # Reset to best
        rate = copy(rate_best)
        cost = copy(cost_best)
    end
    
    # Copy data_dictionary
    data_dictionary = deepcopy(data_dictionary_best)
    rate = data_dictionary["RATE_CONSTANT_ARRAY"]
    sat = data_dictionary["SATURATION_CONSTANT_ARRAY"]
    
    param = [rate[181];
    rate[182];
    rate[184];
    sat[180,72];
	sat[183,75];
    sat[181,[106;109;112;115]];
    sat[184,109];
    sat[184,144];
    sat[184,78:97];
    rate[185:204]
    ]
    
    # Create perturbation vectors
    perturb = exp(variance*randn(length(param)))
    param_new = param.*perturb
    param_new = max(param_bounds[:,1],param_new)
    param_new = min(param_bounds[:,2],param_new)
    
    rate[[181;182;184]] = param_new[1:3]
    sat[180,72] = param_new[4]
    sat[183,75] = param_new[5]
    sat[181,[106;109;112;115]] = param_new[6:9]
    sat[184,[109;144]] = param_new[10:11]
    sat[184,78:97] = param_new[12:31]
    rate[185:204] = param_new[32:51]
    
#    rate[[181;182;184]] = param_new[1:3]
#    sat[181,[106;109;112;115]] = param_new[4:7]
#    sat[184,[109;144]] = param_new[8:9]
#    sat[184,78:97] = param_new[10:29]
    
    data_dictionary["RATE_CONSTANT_ARRAY"] = rate
    data_dictionary["SATURATION_CONSTANT_ARRAY"] = sat
    
    # Solve the balance equations
    tic()
    Tsim,X = SolveBalances(TSTART,TSTOP,Ts,data_dictionary);
    time_elapsed = toc()
    println("CAT: ",X[end,98])
    if time_elapsed < 40 # Should prevent sets with CVODE errors from joining ensemble
                         # May also exclude some sets without CVODE errors
        Error_new,Keys = CalcError(experiment_data_dictionary,Tsim,X)
        cost_new = sum(Error_new)
		
        acc_prob = exp(alpha*(cost-cost_new)/cost)
        
        cost_round = round(cost,2)
        cost_new_round = round(cost_new,2)
        cost_best_round = round(cost_best,2)
        acc_prob_round = round(acc_prob,2)
        var_round = round(variance,2)
        
        # If a new best is achieved, overwrite parameters and cost and save the relevant information to Best directory
        if cost_new < cost_best
            # Save to Best directory
            rate_best = copy(rate)
            sat_best = copy(sat)
            cont_best = copy(cont)
            cost_best = copy(cost_new)
            writedlm("Ensemble/Best/rate_constant.dat",rate_best)
            writedlm("Ensemble/Best/saturation_constant.dat",sat_best)
            writedlm("Ensemble/Best/control_constant.dat",cont_best)
            writedlm("Ensemble/Best/Tsim",Tsim)
            writedlm("Ensemble/Best/X",X)
            writedlm("Ensemble/Best/cost",cost_best)
            println("$i: cost_new = $cost_new_round, cost = $cost_round, best = $cost_best_round, acc_prob = $acc_prob_round, var = $var_round, NEW BEST")
        else
            println("$i: cost_new = $cost_new_round, cost = $cost_round, best = $cost_best_round, acc_prob = $acc_prob_round, var = $var_round")
        end
        # If new cost is lower than previous cost, choose new params as reference point for perturbation
        if rand() < acc_prob # Accept all better sets and some worse sets
            # Create directory for next sample and save the relevant information
#            mkdir("Ensemble/$i")
#            writedlm("Ensemble/$i/rate_constant.dat",rate)
#            writedlm("Ensemble/$i/saturation_constant.dat",sat)
#            writedlm("Ensemble/$i/control_constant.dat",cont)
#            writedlm("Ensemble/$i/Tsim",Tsim)
#            writedlm("Ensemble/$i/X",X)
#            writedlm("Ensemble/$i/cost",cost_new)
            # Overwrite variables
            cost = copy(cost_new)
        end
        writedlm("Ensemble/num_dir",i) # Record new number of directories
    end
end
end






