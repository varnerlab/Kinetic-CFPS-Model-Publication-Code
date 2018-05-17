using PyPlot
using KernelDensity

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
Gain = Control[1:17,:]
Order = Control[18:34,:]

# Vectorize and take log
rates = vec(Rates)
rates = log(10,rates[find(rates)])

# Plot histogram
nbins = 30
figure(figsize=(7,3))
title("Rate constants")
h = plt[:hist](rates,nbins,color="w")
y_max = maximum(h[1])
a = collect(axis())
a[1] = -7
a[2] = 5
a[3] = 0
x = a[1]:(a[2]-a[1])/(length(rates)-1):a[2]
p = pdf(kde(rates,npoints=2*nbins),x)
plot(x,p/maximum(p)*a[4]*.75,"k",linewidth=1.5)
axis(a)
xticks(a[1]+1:2:a[2]-1)
yticks(0:1000:3000)
xlabel("log10(rate constant (mM/h))")
ylabel("Relative Frequency")
savefig("Histogram_rate.pdf")

# Vectorize and take log
sat = vec(Saturation)
sat = log(10,sat[find(sat)])

# Plot histogram
nbins = 30
figure(figsize=(7,3))
title("Saturation constants")
h = plt[:hist](sat,nbins,color="w")
y_max = maximum(h[1])
a = collect(axis())
a[1] = -7
a[2] = 2
a[3] = 0
a[4] = 15000
x = a[1]:(a[2]-a[1])/(length(sat)-1):a[2]
p = pdf(kde(sat,npoints=2*nbins),x)
plot(x,p/maximum(p)*a[4]*.75,"k",linewidth=1.5)
axis(a)
xticks(a[1]+1:2:a[2])
yticks(0:5000:15000)
xlabel("log10(saturation constant (mM))")
ylabel("Relative Frequency")
savefig("Histogram_sat.pdf")

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

# Print ensemble statistics
println("Mean set-to-set correlation is ",round(mean(pearson_vector),2))
println("Median rate constant value is ",round(median(Rates[find(Rates)]),1)," mM/h")
println("Median catalytic rate is ",round(median(Rates[find(Rates)])/.00017/3600,0)," /s")
println("Median enzyme decay rate is ",round(median(EnzDecayRates[find(Rates)]),4)," /h")
println("Median enzyme half life is ",round(log(2)/median(EnzDecayRates[find(Rates)])/24,0)," days")
println("Median saturation constant value is ",round(median(Saturation),2)," mM")
#println("Median catalytic rate / saturation constant value is ",round(median(Rates[find(Rates)])/.00017/3600/(median(Saturation)/1000),-3)," /s/M")
println("Median control gain parameter value is ",round(median(Gain),2))
println("Median control order parameter value is ",round(median(Order),2))
