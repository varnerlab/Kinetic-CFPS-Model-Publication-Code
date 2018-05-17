num_flux = convert(Int64,readcsv("Flux/num_flux")[1])
freq = 1
flux_array = readcsv("Flux/$freq")
FA = zeros(length(flux_array),num_flux)
for i in 2*freq:freq:num_flux
    FA[:,i] = readcsv("Flux/$i")
end
flux_array = sortrows(FA')' # Sort columns of flux_array, if timepoints are out of order
Tsim = vec(flux_array[1,:])
flux_array = flux_array[2:end,:]

writedlm("Flux/Tsim",Tsim)
writedlm("Flux/flux_array",flux_array)

flux_array = readdlm("Flux/flux_array")
Tsim = readdlm("Flux/Tsim")

Cumulative = zeros(size(flux_array))
for i in 1:size(flux_array,1)
	flux_vector = flux_array[i,:]
	cumulative = [0;cumsum(.5*(Tsim[2:end]-Tsim[1:end-1]).*(flux_vector[2:end]+flux_vector[1:end-1]))] # Integrate using trapezoid rule
	Cumulative[i,:] = cumulative
end

# Setup the timescale
TSTART = 0.0
TSTOP = 3.0
Ts = 0.01

T_interval = collect(TSTART:Ts:TSTOP)

Idx = Int64[]
for t in T_interval
	t_diff = abs(t-Tsim)
	idx = find(t_diff.==minimum(t_diff))
	push!(Idx,idx[Int64(ceil(end/2))])
end

Cumulative_interpolated = Cumulative[:,Idx]

Cumulative_fluxes_overall = Cumulative_interpolated[:,end]-Cumulative_interpolated[:,1]
Cumulative_fluxes_phase1 = Cumulative_interpolated[:,101]-Cumulative_interpolated[:,1]
Cumulative_fluxes_phase2 = Cumulative_interpolated[:,end]-Cumulative_interpolated[:,101]
writedlm("Flux/Cumulative_fluxes",Cumulative_fluxes_overall)
writedlm("Flux/Cumulative_fluxes_phase1",Cumulative_fluxes_phase1)
writedlm("Flux/Cumulative_fluxes_phase2",Cumulative_fluxes_phase2)

