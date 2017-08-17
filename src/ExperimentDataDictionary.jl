using Grid

type Experiment

  model_index::Int
  interpolated_measurement_array::Array{Float64,1}
  raw_measurement_array::Array{Float64,2}

  function Experiment()
    this = new()
  end
end

function interpolate_experimental_data(data_array,time_vector)

  # How many data points do we have?
  number_of_data_points = length(data_array);
  max_time_value = maximum(time_vector);
  min_time_value = minimum(time_vector);

  yi = InterpGrid(data_array, 0.0, InterpQuadratic);
  interp_value_array = Float64[]
  for time_value in time_vector

    # rescale time -
    index = (number_of_data_points - 1)*(time_value - min_time_value)/(max_time_value - min_time_value)+1;
    push!(interp_value_array,abs(yi[index]));
  end

  return interp_value_array;
end

function ExperimentDataDictionary(tStart,tStop,tStep)
# ================================================================
data_dictionary = Dict{AbstractString,Experiment}();

# timescale -
TSIM = [tStart:tStep:tStop;];

# Glucose -
glucose_measurement = Experiment()
glucose_measurement.model_index = 100;
glucose_measurement.raw_measurement_array = float(open(readdlm,"./data/Glucose.dat"));
glucose_measurement.interpolated_measurement_array = interpolate_experimental_data(glucose_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_glc_D_c"] = glucose_measurement;

# CAT -
cat_measurement = Experiment()
cat_measurement.model_index = 98;
cat_measurement.raw_measurement_array = float(open(readdlm,"./data/CAT.dat"));
cat_measurement.interpolated_measurement_array = interpolate_experimental_data(cat_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["CAT"] = cat_measurement;

# ATP -
atp_measurement = Experiment()
atp_measurement.model_index = 106;
atp_measurement.raw_measurement_array = float(open(readdlm,"./data/ATP.dat"));
atp_measurement.interpolated_measurement_array = interpolate_experimental_data(atp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_atp_c"] = atp_measurement;

# ADP -
adp_measurement = Experiment()
adp_measurement.model_index = 107;
adp_measurement.raw_measurement_array = float(open(readdlm,"./data/ADP.dat"));
adp_measurement.interpolated_measurement_array = interpolate_experimental_data(adp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_adp_c"] = adp_measurement;

# AMP -
amp_measurement = Experiment()
amp_measurement.model_index = 108;
amp_measurement.raw_measurement_array = float(open(readdlm,"./data/AMP.dat"));
amp_measurement.interpolated_measurement_array = interpolate_experimental_data(amp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_amp_c"] = amp_measurement;

# CTP -
ctp_measurement = Experiment()
ctp_measurement.model_index = 115;
ctp_measurement.raw_measurement_array = float(open(readdlm,"./data/CTP.dat"));
ctp_measurement.interpolated_measurement_array = interpolate_experimental_data(ctp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_ctp_c"] = ctp_measurement;

# CDP -
cdp_measurement = Experiment()
cdp_measurement.model_index = 116;
cdp_measurement.raw_measurement_array = float(open(readdlm,"./data/CDP.dat"));
cdp_measurement.interpolated_measurement_array = interpolate_experimental_data(cdp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_cdp_c"] = cdp_measurement;

# CMP -
cmp_measurement = Experiment()
cmp_measurement.model_index = 117;
cmp_measurement.raw_measurement_array = float(open(readdlm,"./data/CMP.dat"));
cmp_measurement.interpolated_measurement_array = interpolate_experimental_data(cmp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_cmp_c"] = cmp_measurement;

# GTP -
gtp_measurement = Experiment()
gtp_measurement.model_index = 109;
gtp_measurement.raw_measurement_array = float(open(readdlm,"./data/GTP.dat"));
gtp_measurement.interpolated_measurement_array = interpolate_experimental_data(gtp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_gtp_c"] = gtp_measurement;

# GDP -
gdp_measurement = Experiment()
gdp_measurement.model_index = 110;
gdp_measurement.raw_measurement_array = float(open(readdlm,"./data/GDP.dat"));
gdp_measurement.interpolated_measurement_array = interpolate_experimental_data(gdp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_gdp_c"] = gdp_measurement;

# GMP -
gmp_measurement = Experiment()
gmp_measurement.model_index = 111;
gmp_measurement.raw_measurement_array = float(open(readdlm,"./data/GMP.dat"));
gmp_measurement.interpolated_measurement_array = interpolate_experimental_data(gmp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_gmp_c"] = gmp_measurement;

# UTP -
utp_measurement = Experiment()
utp_measurement.model_index = 112;
utp_measurement.raw_measurement_array = float(open(readdlm,"./data/UTP.dat"));
utp_measurement.interpolated_measurement_array = interpolate_experimental_data(utp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_utp_c"] = utp_measurement;

# UDP -
udp_measurement = Experiment()
udp_measurement.model_index = 113;
udp_measurement.raw_measurement_array = float(open(readdlm,"./data/UDP.dat"));
udp_measurement.interpolated_measurement_array = interpolate_experimental_data(udp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_udp_c"] = udp_measurement;

# UMP -
ump_measurement = Experiment()
ump_measurement.model_index = 114;
ump_measurement.raw_measurement_array = float(open(readdlm,"./data/UMP.dat"));
ump_measurement.interpolated_measurement_array = interpolate_experimental_data(ump_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_ump_c"] = ump_measurement;

# Lactate -
lactate_measurement = Experiment()
lactate_measurement.model_index = 104;
lactate_measurement.raw_measurement_array = float(open(readdlm,"./data/Lactate.dat"));
lactate_measurement.interpolated_measurement_array = interpolate_experimental_data(lactate_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_lac_D_c"] = lactate_measurement;

# Acetate -
acetate_measurement = Experiment()
acetate_measurement.model_index = 103;
acetate_measurement.raw_measurement_array = float(open(readdlm,"./data/Acetate.dat"));
acetate_measurement.interpolated_measurement_array = interpolate_experimental_data(acetate_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_ac_c"] = acetate_measurement;

# Pyruvate -
pyr_measurement = Experiment()
pyr_measurement.model_index = 102;
pyr_measurement.raw_measurement_array = float(open(readdlm,"./data/Pyruvate.dat"));
pyr_measurement.interpolated_measurement_array = interpolate_experimental_data(pyr_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_pyr_c"] = pyr_measurement;

# Succinate -
succinate_measurement = Experiment()
succinate_measurement.model_index = 118;
succinate_measurement.raw_measurement_array = float(open(readdlm,"./data/Succinate.dat"));
succinate_measurement.interpolated_measurement_array = interpolate_experimental_data(succinate_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_succ_c"] = succinate_measurement;

# Malate -
malate_measurement = Experiment()
malate_measurement.model_index = 105;
malate_measurement.raw_measurement_array = float(open(readdlm,"./data/Malate.dat"));
malate_measurement.interpolated_measurement_array = interpolate_experimental_data(malate_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_mal_L_c"] = malate_measurement;

# Asp -
asp_measurement = Experiment()
asp_measurement.model_index = 119;
asp_measurement.raw_measurement_array = float(open(readdlm,"./data/Asp.dat"));
asp_measurement.interpolated_measurement_array = interpolate_experimental_data(asp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_asp_L_c"] = asp_measurement;

# Gly -
gly_measurement = Experiment()
gly_measurement.model_index = 120;
gly_measurement.raw_measurement_array = float(open(readdlm,"./data/Gly.dat"));
gly_measurement.interpolated_measurement_array = interpolate_experimental_data(gly_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_gly_L_c"] = gly_measurement;

# Ile -
ile_measurement = Experiment()
ile_measurement.model_index = 121;
ile_measurement.raw_measurement_array = float(open(readdlm,"./data/Ile.dat"));
ile_measurement.interpolated_measurement_array = interpolate_experimental_data(ile_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_ile_L_c"] = ile_measurement;

# Asn -
asn_measurement = Experiment()
asn_measurement.model_index = 122;
asn_measurement.raw_measurement_array = float(open(readdlm,"./data/Asn.dat"));
asn_measurement.interpolated_measurement_array = interpolate_experimental_data(asn_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_asn_L_c"] = asn_measurement;

# Cys -
cys_measurement = Experiment()
cys_measurement.model_index = 123;
cys_measurement.raw_measurement_array = float(open(readdlm,"./data/Cys.dat"));
cys_measurement.interpolated_measurement_array = interpolate_experimental_data(cys_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_cys_L_c"] = cys_measurement;

# Lys -
lys_measurement = Experiment()
lys_measurement.model_index = 124;
lys_measurement.raw_measurement_array = float(open(readdlm,"./data/Lys.dat"));
lys_measurement.interpolated_measurement_array = interpolate_experimental_data(lys_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_lys_L_c"] = lys_measurement;

# His -
his_measurement = Experiment()
his_measurement.model_index = 125;
his_measurement.raw_measurement_array = float(open(readdlm,"./data/His.dat"));
his_measurement.interpolated_measurement_array = interpolate_experimental_data(his_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_his_L_c"] = his_measurement;

# Ala -
ala_measurement = Experiment()
ala_measurement.model_index = 126;
ala_measurement.raw_measurement_array = float(open(readdlm,"./data/Ala.dat"));
ala_measurement.interpolated_measurement_array = interpolate_experimental_data(ala_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_ala_L_c"] = ala_measurement;

# Gln -
gln_measurement = Experiment()
gln_measurement.model_index = 137;
gln_measurement.raw_measurement_array = float(open(readdlm,"./data/Gln.dat"));
gln_measurement.interpolated_measurement_array = interpolate_experimental_data(gln_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_gln_L_c"] = gln_measurement;

# Phe -
phe_measurement = Experiment()
phe_measurement.model_index = 127;
phe_measurement.raw_measurement_array = float(open(readdlm,"./data/Phe.dat"));
phe_measurement.interpolated_measurement_array = interpolate_experimental_data(phe_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_phe_L_c"] = phe_measurement;

# Pro -
pro_measurement = Experiment()
pro_measurement.model_index = 128;
pro_measurement.raw_measurement_array = float(open(readdlm,"./data/Pro.dat"));
pro_measurement.interpolated_measurement_array = interpolate_experimental_data(pro_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_pro_L_c"] = pro_measurement;

# Ser -
ser_measurement = Experiment()
ser_measurement.model_index = 129;
ser_measurement.raw_measurement_array = float(open(readdlm,"./data/Ser.dat"));
ser_measurement.interpolated_measurement_array = interpolate_experimental_data(ser_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_ser_L_c"] = ser_measurement;

# Thr -
thr_measurement = Experiment()
thr_measurement.model_index = 130;
thr_measurement.raw_measurement_array = float(open(readdlm,"./data/Thr.dat"));
thr_measurement.interpolated_measurement_array = interpolate_experimental_data(thr_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_thr_L_c"] = thr_measurement;

# Trp -
trp_measurement = Experiment()
trp_measurement.model_index = 131;
trp_measurement.raw_measurement_array = float(open(readdlm,"./data/Trp.dat"));
trp_measurement.interpolated_measurement_array = interpolate_experimental_data(trp_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_trp_L_c"] = trp_measurement;

# Tyr -
tyr_measurement = Experiment()
tyr_measurement.model_index = 132;
tyr_measurement.raw_measurement_array = float(open(readdlm,"./data/Tyr.dat"));
tyr_measurement.interpolated_measurement_array = interpolate_experimental_data(tyr_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_tyr_L_c"] = tyr_measurement;

# Val -
val_measurement = Experiment()
val_measurement.model_index = 133;
val_measurement.raw_measurement_array = float(open(readdlm,"./data/Val.dat"));
val_measurement.interpolated_measurement_array = interpolate_experimental_data(val_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_val_L_c"] = val_measurement;

# Met -
met_measurement = Experiment()
met_measurement.model_index = 134;
met_measurement.raw_measurement_array = float(open(readdlm,"./data/Met.dat"));
met_measurement.interpolated_measurement_array = interpolate_experimental_data(met_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_met_L_c"] = met_measurement;

# Leu -
leu_measurement = Experiment()
leu_measurement.model_index = 135;
leu_measurement.raw_measurement_array = float(open(readdlm,"./data/Leu.dat"));
leu_measurement.interpolated_measurement_array = interpolate_experimental_data(leu_measurement.raw_measurement_array[:,2],TSIM);
data_dictionary["M_leu_L_c"] = leu_measurement;
# ================================================================

return data_dictionary;
end
