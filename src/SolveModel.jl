include("DataDictionary.jl")
include("SolveBalances.jl")
include("CalcError.jl")

# Setup the timescale
TSTART = 0.0
TSTOP = 3.0
Ts = 0.1

# Create dictionary of parameters
data_dictionary = DataDictionary(TSTART,TSTOP,Ts)
experiment_data_dictionary = data_dictionary["EXPERIMENT_DATA_DICTIONARY"]

# Read the best-fit parameters from disk
rate = readdlm("Ensemble/Best/rate_constant.dat")
sat = readdlm("Ensemble/Best/saturation_constant.dat")
cont = readdlm("Ensemble/Best/control_constant.dat")

## Check that parameter vectors are of correct length
#if ~((num_rate==length(rate))&&(num_sat==length(find(sat.>0)))&&(num_cont==length(cont)))
#    throw("Wrong number of parameters")
#end

# Add parameters to data_dictionary
data_dictionary["RATE_CONSTANT_ARRAY"] = rate
data_dictionary["SATURATION_CONSTANT_ARRAY"] = sat
data_dictionary["CONTROL_PARAMETER_ARRAY"] = cont

# Solve the balance equations and calculate cost
Tsim,X = SolveBalances(TSTART,TSTOP,Ts,data_dictionary)
Error,Keys = CalcError(experiment_data_dictionary,Tsim,X)
cost = sum(Error)


