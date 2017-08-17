# Read number of directories (samples in the ensemble)
if isfile("Ensemble/num_dir")
	num_dir = Int64(readdlm("Ensemble/num_dir")[1])
else
	num_dir = 100
end

# Read parameters of first sample
rate = vec(readdlm("Ensemble/1/rate_constant.dat"))
sat = vec(readdlm("Ensemble/1/saturation_constant.dat"))
cont = vec(readdlm("Ensemble/1/control_constant.dat"))
params = [rate;sat[find(sat.>0)];cont]

# Create array of parameters across ensemble
Parameter_Array = zeros(length(params),num_dir)
for i in 1:num_dir
    rate = vec(readdlm("Ensemble/$i/rate_constant.dat"))
    sat = vec(readdlm("Ensemble/$i/saturation_constant.dat"))
    cont = vec(readdlm("Ensemble/$i/control_constant.dat"))
    params = [rate;sat[find(sat.>0)];cont]
    Parameter_Array[:,i] = params
end

# Separate by parameter type
Rates = Parameter_Array[1:Int64(length(rate)/2),:]
EnzDecayRates = Parameter_Array[Int64(length(rate)/2)+1:length(rate),:]
Saturation = Parameter_Array[length(rate)+1:length(rate)+length(sat[find(sat.>0)]),:]
Control = Parameter_Array[length(rate)+length(sat[find(sat.>0)])+1:end,:]

# Compute Pearson correlation values
Pearson_Array = zeros(num_dir,num_dir)
for i in 1:num_dir
	param_vector_i = Parameter_Array[:,i]
	for j in i+1:num_dir
		param_vector_j = Parameter_Array[:,j]
		Pearson_Array[i,j] = cor(param_vector_i,param_vector_j)
	end
end

# Vectorize and remove zeros
pearson_vector = vec(Pearson_Array)
pearson_vector = pearson_vector[find(pearson_vector.>0)]

# Calculate ensemble statistics
println("Median rate constant value is ",round(median(Rates),2))
println("Median enzyme decay rate is ",round(median(EnzDecayRates),2))
println("Median saturation constant value is ",round(median(Saturation),2))
println("Median control parameter value is ",round(median(Control),2))
#println("Median set-to-set correlation is ",round(median(pearson_vector),2))
println("Mean set-to-set correlation is ",round(mean(pearson_vector),2))
