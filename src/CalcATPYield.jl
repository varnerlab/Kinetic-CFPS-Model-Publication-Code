# Read total number of flux vectors (timepoints)
num_tp = convert(Int64,readcsv("flux/num_flux")[1])

# Choose a frequency of reading fluxes (choose freq = 1 to read all fluxes)
freq = 1
flux = readcsv("flux/$freq")

# Create array of all flux vectors
Flux_array = zeros(length(flux),num_tp)
for i in freq:freq:num_tp
    flux = readdlm("flux/$i")
    Flux_array[:,i] = flux
end

# Sort columns of flux_array, in case timepoints are out of order
Flux_array = sortrows(Flux_array')'

# Collect timepoints into Tsim vector
tp_vector = vec(Flux_array[1,:])
flux_array = Flux_array[2:end,:]

# Determine the index corresponding to the end of phase 1
phase_split = 1.11 # Define the time in hours at which phase 1 ends
t_diff = abs(tp_vector-phase_split)
phase_split_idx = find(t_diff.==minimum(t_diff))[1]

# Give reaction indices and ATP stoichiometric coefficients for all ATP-producing reactions
atp_breakdown_array = [["pgk";"pyk";"sucCD";"atp";"ackA";"asn_deg";"thr_deg3"] [12;18;45;55;68;102;109] [1;1;1;1;1;2;1]]

# Create the array of cumulative fluxes
atp_breakdown = [["pgk";"pyk";"sucCD";"atp";"ackA";"asn_deg";"thr_deg3"] zeros(7,3)]
for i in 1:size(atp_breakdown,1)
	reaction_index = atp_breakdown_array[i,2]
	coeff = atp_breakdown_array[i,3]
	tmp = coeff*flux_array[reaction_index,:]'
	# Perform trapezoid rule integration
	tmp_cumulative = [0;cumsum(.5*(tp_vector[2:end]-tp_vector[1:end-1]).*(tmp[2:end]+tmp[1:end-1]))]
	atp_breakdown[i,2] = tmp_cumulative[end] # Total (3 hour) flux
	atp_breakdown[i,3] = tmp_cumulative[phase_split_idx] # Phase 1 only
	atp_breakdown[i,4] = tmp_cumulative[end]-tmp_cumulative[phase_split_idx] # Phase 2 only
end
atp_breakdown = [atp_breakdown;["TOTAL" sum(atp_breakdown[:,2]) sum(atp_breakdown[:,3]) sum(atp_breakdown[:,4])]]

# Read the simulated timecourse and state
Tsim = readdlm("Best/Tsim")
X = readdlm("Best/X")

# Define relevant species vectors
CAT = X[:,98]
GLC = X[:,100]
PYR = X[:,102]
LAC = X[:,104]
SUCC = X[:,118]
MAL = X[:,105]
mRNA = X[:,75]

# Determine the index corresponding to the end of phase 1
phase_split = 1.11 # Define the time in hours at which phase 1 ends
t_diff = abs(Tsim-phase_split)
phase_split_idx = find(t_diff.==minimum(t_diff))[1]

# Calculate substrate consumption in first phase
GLC_first = GLC[1]-GLC[phase_split_idx]

# Calculate mRNA/protein accumulation in first phase
CAT_first = CAT[phase_split_idx]-CAT[1]
mRNA_first = mRNA[phase_split_idx]-mRNA[1]

# Calculate substrate consumption in second phase
PYR_second = PYR[phase_split_idx]-PYR[end]
LAC_second = LAC[phase_split_idx]-LAC[end]
SUCC_second = SUCC[phase_split_idx]-SUCC[end]
MAL_second = MAL[phase_split_idx]-MAL[end]

# Calculate mRNA/protein accumulation in second phase
CAT_second = CAT[end]-CAT[phase_split_idx]
mRNA_second = mRNA[end]-mRNA[phase_split_idx]

ATP_first = atp_breakdown[end,3]
ATP_second = atp_breakdown[end,4]

# Define transcription, translation coefficients for ATP
transcription_coeff = 2*(176+144+151+189)
translation_coeff = 2*219+438

# Calculate ATP yield per molecule substrate
ATP_yield_first = ATP_first/GLC_first # 4.94
ATP_yield_second = ATP_second/(PYR_second+LAC_second+SUCC_second+MAL_second) # 6.52
ATP_yield_overall = (ATP_first+ATP_second)/(GLC_first+PYR_second+LAC_second+SUCC_second+MAL_second) # 6.52

# Calculate energy efficiency
efficiency_first = (transcription_coeff*mRNA_first+translation_coeff*CAT_first)/ATP_first # 6.2%
efficiency_second = (transcription_coeff*mRNA_second+translation_coeff*CAT_second)/ATP_second # 4.3%
efficiency_overall = (transcription_coeff*mRNA_first+translation_coeff*CAT_first+transcription_coeff*mRNA_second+translation_coeff*CAT_second)/(ATP_first+ATP_second) # 5.3%
