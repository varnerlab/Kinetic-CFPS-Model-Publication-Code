function DataDictionary(TSTART,TSTOP,Ts)
include("DataFile.jl")

# Load the data_dictionary
data_dictionary = DataFile(TSTART,TSTOP,Ts)

# Import initial conditions
initial_condition_vector = vec(broadcast(abs, float(open(readdlm,"initial_condition.dat"))))
data_dictionary["INITIAL_CONDITION_ARRAY"] = initial_condition_vector

# Import rate constants
rate_constant_vector = vec(broadcast(abs, float(open(readdlm,"rate_constant.dat"))))
data_dictionary["RATE_CONSTANT_ARRAY"] = rate_constant_vector

# Import saturation constants
saturation_constant_array = broadcast(abs, float(open(readdlm,"saturation_constant.dat")))
data_dictionary["SATURATION_CONSTANT_ARRAY"] = saturation_constant_array

# Import control parameters
control_constant_array = broadcast(abs, float(open(readdlm,"control_constant.dat")))
data_dictionary["CONTROL_PARAMETER_ARRAY"] = control_constant_array

return data_dictionary
end
