include("DataDictionary.jl")
include("SolveBalances.jl")
include("CalcError.jl")

if ~isdir("Rand1000")
    mkdir("Rand1000")
end

if isfile("Rand1000/num_dir")
    num_dir = convert(Int64,readdlm("Rand1000/num_dir")[1])
else
    num_dir = 0
    writedlm("Rand1000/num_dir",num_dir)
end
finished = (num_dir >= 1000)?true:false

if ~finished
    TSTART = 0.0
    TSTOP = 3.0
    Ts = 0.01
    data_dictionary_best = DataDictionary(TSTART,TSTOP,Ts)
    experiment_data_dictionary = data_dictionary_best["EXPERIMENT_DATA_DICTIONARY"]
    param_min = readdlm("param_min")
    param_max = readdlm("param_max")
end

while ~finished
    # Generate random parameters
    p = param_min+(param_max-param_min).*rand(990)
    rate = p[1:408]
    s = p[408+1:408+548]
    sat = readdlm("saturation_constant.dat")
    sat[find(sat.>0)] = s
    c = p[408+548+1:end]
    cont = [c[1:17] c[18:end]]
    # Load into data_dictionary
    data_dictionary = deepcopy(data_dictionary_best)
    data_dictionary["RATE_CONSTANT_ARRAY"] = rate
    data_dictionary["SATURATION_CONSTANT_ARRAY"] = sat
    data_dictionary["CONTROL_PARAMETER_ARRAY"] = cont
    # Solve the balance equations and calculate cost
    Tsim,X = SolveBalances(TSTART,TSTOP,Ts,data_dictionary)
    Error,Keys = CalcError(experiment_data_dictionary,Tsim,X)
    KE = [Keys Error]
    cost = sum(Error)
    # Save the relevant information
    num_dir += 1
    mkdir("Rand1000/$num_dir")
    writedlm("Rand1000/$num_dir/rate_constant.dat",rate)
    writedlm("Rand1000/$num_dir/saturation_constant.dat",sat)
    writedlm("Rand1000/$num_dir/control_constant.dat",cont)
    writedlm("Rand1000/$num_dir/Tsim",Tsim)
    writedlm("Rand1000/$num_dir/X",X)
    writedlm("Rand1000/$num_dir/cost",cost)
    writedlm("Rand1000/$num_dir/KE",KE)
    writedlm("Rand1000/num_dir",num_dir)
end






