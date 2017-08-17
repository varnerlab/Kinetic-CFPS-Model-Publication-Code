include("DataDictionary.jl")
include("SolveBalances.jl")
include("CalcError.jl")
using PyPlot

if isdir("flux")
    rm("flux",recursive=true)
end

# Setup the timescale
TSTART = 0.0
TSTOP = 3.0
Ts = 0.01

# Create dictionary of parameters
data_dictionary = DataDictionary(TSTART,TSTOP,Ts)
experiment_data_dictionary = data_dictionary["EXPERIMENT_DATA_DICTIONARY"]
rate = data_dictionary["RATE_CONSTANT_ARRAY"]

# Build knockout dictionary (containing reaction indices to be knocked out)
KO_dictionary = Dict()
KO_dictionary["1"] = collect([1:19;22]) # Glycolysis/Gluconeogenesis
KO_dictionary["2"] = collect([23:36]) # Pentose phosphate pathway
KO_dictionary["3"] = collect([37:38]) # Entner-Doudoroff
KO_dictionary["4"] = collect([21;39:51]) # TCA cycle
KO_dictionary["5"] = collect([52:56;59:60]) # Oxidative phosphorylation
KO_dictionary["6"] = collect([57:58]) # Cofactor reactions
KO_dictionary["7"] = collect([20;62:65]) # Anaplerotic/glyoxylate reactions
KO_dictionary["8"] = collect([66:75]) # Overflow metabolism
KO_dictionary["9"] = collect([118:131]) # Folate  metabolism
KO_dictionary["10"] = collect([133:151]) # Purine/pyrimidine synthesis
KO_dictionary["11"] = collect([76;79;80;81]) # Amino acid biosynthesis (ALA, ASP, ASN)
KO_dictionary["12"] = collect([77;80;83;84;97;86]) # Amino acid biosynthesis (GLU, GLN)
KO_dictionary["13"] = collect([78;94]) # Amino acid biosynthesis (ARG, PRO)
KO_dictionary["14"] = collect([87;95]) # Amino acid biosynthesis (GLY, SER)
KO_dictionary["15"] = collect([82;92]) # Amino acid biosynthesis (CYS, MET)
KO_dictionary["16"] = collect([96;91]) # Amino acid biosynthesis (THR, LYS)
KO_dictionary["17"] = collect([88]) # Amino acid biosynthesis (HIS)
KO_dictionary["18"] = collect([98;97;93]) # Amino acid biosynthesis (TYR, TRP, PHE)
KO_dictionary["19"] = collect([99;90;89]) # Amino acid biosynthesis (VAL, LEU, ILE)

# First-order knockouts
for i in 1:19
	# Perform knock-out
	rate_new = copy(rate)
	indices = KO_dictionary["$i"]
	rate_new[indices] = 0
	data_dictionary["RATE_CONSTANT_ARRAY"] = rate_new
	# Solve model
	Tsim,X = SolveBalances(TSTART,TSTOP,Ts,data_dictionary)
	# Calculate error
	Error,Keys = CalcError(experiment_data_dictionary,Tsim,X)
	cost = sum(Error)
	# Save
	str = "$i"
	if ~isdir("KO/$str")
	    mkdir("KO/$str")
	end
	writedlm("KO/$str/Tsim",Tsim)
	writedlm("KO/$str/X",X)
	writedlm("KO/$str/cost",cost)
end

# Pairwise knockouts
for i in 1:18
	for j in i+1:19
		# Perform knock-out
		rate_new = copy(rate)
		indices1 = KO_dictionary["$i"]
		indices2 = KO_dictionary["$j"]
		rate_new[indices1] = 0
		rate_new[indices2] = 0
		data_dictionary["RATE_CONSTANT_ARRAY"] = rate_new
		# Solve model
		Tsim,X = SolveBalances(TSTART,TSTOP,Ts,data_dictionary)
		# Calculate error
		Error,Keys = CalcError(experiment_data_dictionary,Tsim,X)
		cost = sum(Error)
		# Save
		str = "$i"*"_$j"
		if ~isdir("KO/$str")
		    mkdir("KO/$str")
		end
		writedlm("KO/$str/Tsim",Tsim)
		writedlm("KO/$str/X",X)
		writedlm("KO/$str/cost",cost)
	end
end
