include("DataDictionary.jl")
using PyPlot

# Decide whether to plot simulations with allosteric control or without
allosteric_control_on = true

# Setup the timescale
TSTART = 0.0
TSTOP = 3.0
Ts = 0.1

# Create dictionary of parameters
data_dictionary = DataDictionary(TSTART,TSTOP,Ts)

# Pull dictionary for species for which data exist
experiment_data_dictionary = data_dictionary["EXPERIMENT_DATA_DICTIONARY"]

# Pull specific measurement arrays
# Central carbon metabolism and protein product
glc = experiment_data_dictionary["M_glc_D_c"].raw_measurement_array
pyr = experiment_data_dictionary["M_pyr_c"].raw_measurement_array
lac = experiment_data_dictionary["M_lac_D_c"].raw_measurement_array
ac = experiment_data_dictionary["M_ac_c"].raw_measurement_array
succ = experiment_data_dictionary["M_succ_c"].raw_measurement_array
mal = experiment_data_dictionary["M_mal_L_c"].raw_measurement_array
cat = experiment_data_dictionary["CAT"].raw_measurement_array
# Energy species
atp = experiment_data_dictionary["M_atp_c"].raw_measurement_array
adp = experiment_data_dictionary["M_adp_c"].raw_measurement_array
amp = experiment_data_dictionary["M_amp_c"].raw_measurement_array
axp = atp+adp+amp
axp[:,1] = atp[:,1]
gtp = experiment_data_dictionary["M_gtp_c"].raw_measurement_array
gdp = experiment_data_dictionary["M_gdp_c"].raw_measurement_array
gmp = experiment_data_dictionary["M_gmp_c"].raw_measurement_array
gxp = gtp+gdp+gmp
gxp[:,1] = gtp[:,1]
ctp = experiment_data_dictionary["M_ctp_c"].raw_measurement_array
cdp = experiment_data_dictionary["M_cdp_c"].raw_measurement_array
cmp = experiment_data_dictionary["M_cmp_c"].raw_measurement_array
cxp = ctp+cdp+cmp
cxp[:,1] = ctp[:,1]
utp = experiment_data_dictionary["M_utp_c"].raw_measurement_array
udp = experiment_data_dictionary["M_udp_c"].raw_measurement_array
ump = experiment_data_dictionary["M_ump_c"].raw_measurement_array
uxp = utp+udp+ump
uxp[:,1] = utp[:,1]
xxp = axp+gxp+cxp+uxp
xxp[:,1] = axp[:,1]
# Amino acids
ala = experiment_data_dictionary["M_ala_L_c"].raw_measurement_array
asn	= experiment_data_dictionary["M_asn_L_c"].raw_measurement_array
asp = experiment_data_dictionary["M_asp_L_c"].raw_measurement_array
cys = experiment_data_dictionary["M_cys_L_c"].raw_measurement_array
gln = experiment_data_dictionary["M_gln_L_c"].raw_measurement_array
gly = experiment_data_dictionary["M_gly_L_c"].raw_measurement_array
his	= experiment_data_dictionary["M_his_L_c"].raw_measurement_array
ile	= experiment_data_dictionary["M_ile_L_c"].raw_measurement_array
leu	= experiment_data_dictionary["M_leu_L_c"].raw_measurement_array
lys	= experiment_data_dictionary["M_lys_L_c"].raw_measurement_array
met	= experiment_data_dictionary["M_met_L_c"].raw_measurement_array
phe = experiment_data_dictionary["M_phe_L_c"].raw_measurement_array
pro	= experiment_data_dictionary["M_pro_L_c"].raw_measurement_array
ser = experiment_data_dictionary["M_ser_L_c"].raw_measurement_array
thr = experiment_data_dictionary["M_thr_L_c"].raw_measurement_array
trp = experiment_data_dictionary["M_trp_L_c"].raw_measurement_array
tyr	= experiment_data_dictionary["M_tyr_L_c"].raw_measurement_array
val	= experiment_data_dictionary["M_val_L_c"].raw_measurement_array

# Create array for species to be plotted
# key index ystep ymax label
species = [
["glc" 100 10 40 "Glucose (mM)"],
["cat" 98 10 30 L"CAT ($\mu$M)"],
["pyr" 102 5 20 "Pyruvate (mM)"],
["lac" 104 5 20 "Lactate (mM)"],
["ac" 103 20 80 "Acetate (mM)"],
["succ" 118 2 6 "Succinate (mM)"],
["mal" 105 5 10 "Malate (mM)"],
["xxp" (106,107,108,109,110,111,112,113,114,115,116,117) 5 10 "Energy Total (mM)"],
["atp" 106 .5 2 "ATP (mM)"],
["adp" 107 .5 1 "ADP (mM)"],
["amp" 108 .5 1 "AMP (mM)"],
["axp" (106,107,108) .5 2.5 L"$\Sigma$ AXP (mM)"],
["gtp" 109 .5 2 "GTP (mM)"],
["gdp" 110 .5 1 "GDP (mM)"],
["gmp" 111 .5 1 "GMP (mM)"],
["gxp" (109,110,111) .5 2.5 L"$\Sigma$ GXP (mM)"],
["ctp" 115 .5 2 "CTP (mM)"],
["cdp" 116 .5 1 "CDP (mM)"],
["cmp" 117 .5 1 "CMP (mM)"],
["cxp" (115,116,117) .5 2.5 L"$\Sigma$ CXP (mM)"],
["utp" 112 .5 2 "UTP (mM)"],
["udp" 113 .5 1 "UDP (mM)"],
["ump" 114 .5 1 "UMP (mM)"],
["uxp" (112,113,114) .5 2.5 L"$\Sigma$ UXP (mM)"],
["ala" 126 2 8 "ALA (mM)"],
["arg" 36 1 3 "ARG (mM)"],
["asn" 122 1 4 "ASN (mM)"],
["asp" 119 1 4 "ASP (mM)"],
["cys" 123 1 4 "CYS (mM)"],
["gln" 137 1 5 "GLN (mM)"],
["glu" 136 50 200 "GLU (mM)"],
["gly" 120 1 4 "GLY (mM)"],
["his" 125 1 4 "HIS (mM)"],
["ile" 121 1 4 "ILE (mM)"],
["leu" 135 1 4 "LEU (mM)"],
["lys" 124 1 4 "LYS (mM)"],
["met" 134 1 4 "MET (mM)"],
["phe" 127 1 4 "PHE (mM)"],
["pro" 128 1 4 "PRO (mM)"],
["ser" 129 1 4 "SER (mM)"],
["thr" 130 1 4 "THR (mM)"],
["trp" 131 1 4 "TRP (mM)"],
["tyr" 132 1 4 "TYR (mM)"],
["val" 133 1 4 "VAL (mM)"]]

# Create an array of species keys for each figure
carbon_species = permutedims(reshape(species[1:8,1],(4,2)),(2,1))
energy_species = reshape(species[9:24,1],(4,4))
amino_species = permutedims(reshape(species[25:44,1],(4,5)),(2,1))

# Read all state arrays in the ensemble, and re-pack into a dictionary by species
Ensemble = Dict()
num_sets = 100
i = 0
while i < num_sets
    i += 1
    if allosteric_control_on
    	X = readdlm("Ensemble/$i/X")
    else
    	X = readdlm("Ensemble/$i/X_nc")
    end
    for j in 1:size(species,1)
        key = species[j][1]
        index = species[j][2]
        if typeof(index) == Int
            tmp = X[:,index]
        elseif typeof(index) == Tuple{Int,Int,Int}
            tmp = X[:,index[1]]+X[:,index[2]]+X[:,index[3]]
        elseif typeof(index) == Tuple{Int,Int,Int,Int,Int,Int,Int,Int,Int,Int,Int,Int}
            tmp = X[:,index[1]]+X[:,index[2]]+X[:,index[3]]+X[:,index[4]]+X[:,index[5]]+X[:,index[6]]+X[:,index[7]]+X[:,index[8]]+X[:,index[9]]+X[:,index[10]]+X[:,index[11]]+X[:,index[12]]
        else
            throw("Wrong type")
        end
        if get(Ensemble,key,777) == 777 # Returning the supplied value means that the key-value pair does not yet exist
            Ensemble[key] = tmp
        else
            Ensemble[key] = [Ensemble[key] tmp]
        end
    end
end

Tsim = readdlm("Ensemble/Best/Tsim") # Tsim should be the same across all samples
if allosteric_control_on
	X = readdlm("Ensemble/Best/X")
else
	X = readdlm("Ensemble/Best/X_nc")
end

# Create central carbon figure
f_Carbon,axarr_Carbon = plt[:subplots](2,4)
f_Carbon[:set_figheight](3.5)
f_Carbon[:set_figwidth](10)
for i in 1:size(carbon_species,1)
	for j in 1:size(carbon_species,2)
		species_name = carbon_species[i,j][1]
		species_index = carbon_species[i,j][2]
		y_step = carbon_species[i,j][3]
		y_max = carbon_species[i,j][4]
		y_label = carbon_species[i,j][5]
		
		# Plot errorbars
		eval(parse("tmp = $species_name"))
		if species_name == "cat" # Convert from mM to μM
			conversion_factor = 1000
		else
			conversion_factor = 1
		end
		
		if i < size(carbon_species,1)
			axarr_Carbon[i,j][:xaxis][:set_major_formatter](plt[:NullFormatter]())
		else
			axarr_Carbon[i,j][:set_xlabel]("Time (h)")
		end
		
		axarr_Carbon[i,j][:set_ylabel](y_label)
		
		axarr_Carbon[i,j][:errorbar](tmp[:,1],conversion_factor*tmp[:,2],conversion_factor*tmp[:,3],fmt="ro",color="k",linewidth=2,linewidth=2)
		axarr_Carbon[i,j][:axis]([0,TSTOP,0,y_max])
		axarr_Carbon[i,j][:set_xticks](collect(0:1:TSTOP))
		axarr_Carbon[i,j][:set_yticks](collect(0:y_step:y_max))
		
		# Plot simulations
		if typeof(species_index) == Int
		    sim_best_fit = X[:,species_index]
		elseif typeof(species_index) == Tuple{Int,Int,Int}
		    sim_best_fit = X[:,species_index[1]]+X[:,species_index[2]]+X[:,species_index[3]]
		elseif typeof(species_index) == Tuple{Int,Int,Int,Int,Int,Int,Int,Int,Int,Int,Int,Int}
		    sim_best_fit = X[:,species_index[1]]+X[:,species_index[2]]+X[:,species_index[3]]+X[:,species_index[4]]+X[:,species_index[5]]+X[:,species_index[6]]+X[:,species_index[7]]+X[:,species_index[8]]+X[:,species_index[9]]+X[:,species_index[10]]+X[:,species_index[11]]+X[:,species_index[12]]
		else
		    throw("Wrong type")
		end
		sim_CI = Ensemble[species_name]
		if species_name == "cat" # Convert from mM to μM
		    sim_CI *= 1000
		    sim_best_fit *= 1000
		end
		m = Float64[]
		s = Float64[]
		for k in 1:size(sim_CI,1)
		    push!(m,mean(sim_CI[k,:]))
		    push!(s,std(sim_CI[k,:]))
		end
		# Use different colors for the shaded regions based the presence of allosteric control
		if allosteric_control_on # Mean +/- 1.96*Std.Dev. = 95% confidence interval
			axarr_Carbon[i,j][:fill_between](vec(Tsim),m+1.96*s,max(0,m-1.96*s),color="lightblue")
		else
			axarr_Carbon[i,j][:fill_between](vec(Tsim),m+1.96*s,max(0,m-1.96*s),color="lightgray")
		end
		axarr_Carbon[i,j][:plot](Tsim,sim_best_fit,"orangered",linewidth=1.5)
	end
end
tight_layout()
# Save figure as PDF
if allosteric_control_on
	savefig("Carbon.pdf")
else
	savefig("Carbon_nc.pdf")
end

# Create energy species figure
f_Energy,axarr_Energy = plt[:subplots](4,4)
f_Energy[:set_figheight](6.5)
f_Energy[:set_figwidth](10)
for i in 1:size(energy_species,1)
	for j in 1:size(energy_species,2)
		species_name = energy_species[i,j][1]
		species_index = energy_species[i,j][2]
		y_step = energy_species[i,j][3]
		y_max = energy_species[i,j][4]
		y_label = energy_species[i,j][5]
		
		# Plot errorbars
		eval(parse("tmp = $species_name"))
		axarr_Energy[i,j][:errorbar](tmp[:,1],tmp[:,2],tmp[:,3],fmt="ro",color="k",linewidth=2,linewidth=2)
		axarr_Energy[i,j][:axis]([0,TSTOP,0,y_max])
		axarr_Energy[i,j][:set_xticks](collect(0:1:TSTOP))
		axarr_Energy[i,j][:set_yticks](collect(0:y_step:y_max))
		
		if i < size(energy_species,1)
			axarr_Energy[i,j][:xaxis][:set_major_formatter](plt[:NullFormatter]())
		else
			axarr_Energy[i,j][:set_xlabel]("Time (h)")
		end
		
		if j > 1
			axarr_Energy[i,j][:yaxis][:set_major_formatter](plt[:NullFormatter]())
		end
		axarr_Energy[i,j][:set_ylabel](y_label)
		
		# Plot simulations
		if typeof(species_index) == Int
		    sim_best_fit = X[:,species_index]
		elseif typeof(species_index) == Tuple{Int,Int,Int}
		    sim_best_fit = X[:,species_index[1]]+X[:,species_index[2]]+X[:,species_index[3]]
		elseif typeof(species_index) == Tuple{Int,Int,Int,Int,Int,Int,Int,Int,Int,Int,Int,Int}
		    sim_best_fit = X[:,species_index[1]]+X[:,species_index[2]]+X[:,species_index[3]]+X[:,species_index[4]]+X[:,species_index[5]]+X[:,species_index[6]]+X[:,species_index[7]]+X[:,species_index[8]]+X[:,species_index[9]]+X[:,species_index[10]]+X[:,species_index[11]]+X[:,species_index[12]]
		else
		    throw("Wrong type")
		end
		sim_CI = Ensemble[species_name]
		if species_name == "cat" # Convert from mM to μM
		    sim_CI *= 1000
		    sim_best_fit *= 1000
		end
		m = Float64[]
		s = Float64[]
		for k in 1:size(sim_CI,1)
		    push!(m,mean(sim_CI[k,:]))
		    push!(s,std(sim_CI[k,:]))
		end
		# Use different colors for the shaded regions based the presence of allosteric control
		if allosteric_control_on # Mean +/- 1.96*Std.Dev. = 95% confidence interval
			axarr_Energy[i,j][:fill_between](vec(Tsim),m+1.96*s,max(0,m-1.96*s),color="lightblue")
		else
			axarr_Energy[i,j][:fill_between](vec(Tsim),m+1.96*s,max(0,m-1.96*s),color="lightgray")
		end
		axarr_Energy[i,j][:plot](Tsim,sim_best_fit,"orangered",linewidth=1.5)
	end
end
tight_layout()
# Save figure as PDF
if allosteric_control_on
	savefig("Energy.pdf")
else
	savefig("Energy_nc.pdf")
end

# Create amino acids figure
f_Amino,axarr_Amino = plt[:subplots](5,4)
f_Amino[:set_figheight](7.9)
f_Amino[:set_figwidth](10)
for i in 1:size(amino_species,1)
	for j in 1:size(amino_species,2)
		species_name = amino_species[i,j][1]
		species_index = amino_species[i,j][2]
		y_step = amino_species[i,j][3]
		y_max = amino_species[i,j][4]
		y_label = amino_species[i,j][5]
		
		# Plot errorbars
		if !(species_name == "arg" || species_name == "glu")
			eval(parse("tmp = $species_name"))
			axarr_Amino[i,j][:errorbar](tmp[:,1],tmp[:,2],tmp[:,3],fmt="ro",color="k",linewidth=2,linewidth=2)
		end
		axarr_Amino[i,j][:axis]([0,TSTOP,0,y_max])
		axarr_Amino[i,j][:set_xticks](collect(0:1:TSTOP))
		axarr_Amino[i,j][:set_yticks](collect(0:y_step:y_max))
		
		if i < size(amino_species,1)
			axarr_Amino[i,j][:xaxis][:set_major_formatter](plt[:NullFormatter]())
		else
			axarr_Amino[i,j][:set_xlabel]("Time (h)")
		end
		
		axarr_Amino[i,j][:set_ylabel](y_label)
		
		# Plot simulations
		if typeof(species_index) == Int
		    sim_best_fit = X[:,species_index]
		elseif typeof(species_index) == Tuple{Int,Int,Int}
		    sim_best_fit = X[:,species_index[1]]+X[:,species_index[2]]+X[:,species_index[3]]
		elseif typeof(species_index) == Tuple{Int,Int,Int,Int,Int,Int,Int,Int,Int,Int,Int,Int}
		    sim_best_fit = X[:,species_index[1]]+X[:,species_index[2]]+X[:,species_index[3]]+X[:,species_index[4]]+X[:,species_index[5]]+X[:,species_index[6]]+X[:,species_index[7]]+X[:,species_index[8]]+X[:,species_index[9]]+X[:,species_index[10]]+X[:,species_index[11]]+X[:,species_index[12]]
		else
		    throw("Wrong type")
		end
		sim_CI = Ensemble[species_name]
		if species_name == "cat" # Convert from mM to μM
		    sim_CI *= 1000
		    sim_best_fit *= 1000
		end
		m = Float64[]
		s = Float64[]
		for k in 1:size(sim_CI,1)
		    push!(m,mean(sim_CI[k,:]))
		    push!(s,std(sim_CI[k,:]))
		end
		# Use different colors for the shaded regions based the presence of allosteric control
		if allosteric_control_on # Mean +/- 1.96*Std.Dev. = 95% confidence interval
			axarr_Amino[i,j][:fill_between](vec(Tsim),m+1.96*s,max(0,m-1.96*s),color="lightblue")
		else
			axarr_Amino[i,j][:fill_between](vec(Tsim),m+1.96*s,max(0,m-1.96*s),color="lightgray")
		end
		axarr_Amino[i,j][:plot](Tsim,sim_best_fit,"orangered",linewidth=1.5)
	end
end
tight_layout()
# Save figure as PDF
if allosteric_control_on
	savefig("Amino.pdf")
else
	savefig("Amino_nc.pdf")
end
