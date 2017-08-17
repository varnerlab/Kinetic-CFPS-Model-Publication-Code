include("ExperimentDataDictionary.jl");
# ----------------------------------------------------------------------------------- #
# Copyright (c) 2017 Varnerlab
# School of Chemical Engineering Purdue University
# W. Lafayette IN 46907 USA

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights 
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
# copies of the Software, and to permit persons to whom the Software is 
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# ----------------------------------------------------------------------------------- #
function DataFile(TSTART,TSTOP,Ts)
# ----------------------------------------------------------------------------------- #
# DataFile.jl was generated using the Kwatee code generation system.
# DataFile: Stores model parameters as key - value pairs in a Julia Dict() 
# Username: nicholas
# Type: CFPS-JULIA
# Version: 1.0
# Generation timestamp: 03-24-2017 13:01:36
# 
# Input arguments: 
# TSTART  - Time start 
# TSTOP  - Time stop 
# Ts - Time step 
# 
# Return arguments: 
# data_dictionary  - Data dictionary instance (holds model parameters) 
# ----------------------------------------------------------------------------------- #

# Load the stoichiometric matrix - 
S = float(open(readdlm,pwd()*"/../network/Network.dat"));
#(NSPECIES,NREACTIONS) = size(S);
NSPECIES = 148
NREACTIONS = 204

# Load experimental data file -
experimental_data_dictionary = ExperimentDataDictionary(TSTART,TSTOP,Ts);

# Formulate the initial condition array - 
initial_condition_array = Float64[];
push!(initial_condition_array,0.0);	#	1	 id:M_g6p_c	 symbol:M_g6p_c
push!(initial_condition_array,0.0);	#	2	 id:M_f6p_c	 symbol:M_f6p_c
push!(initial_condition_array,0.0);	#	3	 id:M_fdp_c	 symbol:M_fdp_c
push!(initial_condition_array,0.0);	#	4	 id:M_dhap_c	 symbol:M_dhap_c
push!(initial_condition_array,0.0);	#	5	 id:M_g3p_c	 symbol:M_g3p_c
push!(initial_condition_array,0.0);	#	6	 id:M_13dpg_c	 symbol:M_13dpg_c
push!(initial_condition_array,0.0);	#	7	 id:M_3pg_c	 symbol:M_3pg_c
push!(initial_condition_array,0.0);	#	8	 id:M_2pg_c	 symbol:M_2pg_c
push!(initial_condition_array,0.0);	#	9	 id:M_oaa_c	 symbol:M_oaa_c
push!(initial_condition_array,0.0);	#	10	 id:M_coa_c	 symbol:M_coa_c
push!(initial_condition_array,0.0);	#	11	 id:M_accoa_c	 symbol:M_accoa_c
push!(initial_condition_array,0.0);	#	12	 id:M_6pgl_c	 symbol:M_6pgl_c
push!(initial_condition_array,0.0);	#	13	 id:M_6pgc_c	 symbol:M_6pgc_c
push!(initial_condition_array,0.0);	#	14	 id:M_ru5p_D_c	 symbol:M_ru5p_D_c
push!(initial_condition_array,0.0);	#	15	 id:M_xu5p_D_c	 symbol:M_xu5p_D_c
push!(initial_condition_array,0.0);	#	16	 id:M_r5p_c	 symbol:M_r5p_c
push!(initial_condition_array,0.0);	#	17	 id:M_s7p_c	 symbol:M_s7p_c
push!(initial_condition_array,0.0);	#	18	 id:M_e4p_c	 symbol:M_e4p_c
push!(initial_condition_array,0.0);	#	19	 id:M_2ddg6p_c	 symbol:M_2ddg6p_c
push!(initial_condition_array,0.0);	#	20	 id:M_cit_c	 symbol:M_cit_c
push!(initial_condition_array,0.0);	#	21	 id:M_icit_c	 symbol:M_icit_c
push!(initial_condition_array,0.0);	#	22	 id:M_akg_c	 symbol:M_akg_c
push!(initial_condition_array,0.0);	#	23	 id:M_succoa_c	 symbol:M_succoa_c
push!(initial_condition_array,0.0);	#	24	 id:M_q8_c	 symbol:M_q8_c
push!(initial_condition_array,0.0);	#	25	 id:M_fum_c	 symbol:M_fum_c
push!(initial_condition_array,0.0);	#	26	 id:M_q8h2_c	 symbol:M_q8h2_c
push!(initial_condition_array,0.0);	#	27	 id:M_mql8_c	 symbol:M_mql8_c
push!(initial_condition_array,0.0);	#	28	 id:M_mqn8_c	 symbol:M_mqn8_c
push!(initial_condition_array,0.0);	#	29	 id:M_h_e	 symbol:M_h_e
push!(initial_condition_array,0.0);	#	30	 id:M_ppi_c	 symbol:M_ppi_c
push!(initial_condition_array,0.0);	#	31	 id:M_glx_c	 symbol:M_glx_c
push!(initial_condition_array,0.0);	#	32	 id:M_actp_c	 symbol:M_actp_c
push!(initial_condition_array,0.0);	#	33	 id:M_etoh_c	 symbol:M_etoh_c
push!(initial_condition_array,0.0);	#	34	 id:M_for_c	 symbol:M_for_c
push!(initial_condition_array,0.0);	#	35	 id:M_nh3_c	 symbol:M_nh3_c
push!(initial_condition_array,0.0);	#	36	 id:M_arg_L_c	 symbol:M_arg_L_c
push!(initial_condition_array,0.0);	#	37	 id:M_h2s_c	 symbol:M_h2s_c
push!(initial_condition_array,0.0);	#	38	 id:M_thf_c	 symbol:M_thf_c
push!(initial_condition_array,0.0);	#	39	 id:M_mlthf_c	 symbol:M_mlthf_c
push!(initial_condition_array,0.0);	#	40	 id:M_aicar_c	 symbol:M_aicar_c
push!(initial_condition_array,0.0);	#	41	 id:M_5mthf_c	 symbol:M_5mthf_c
push!(initial_condition_array,0.0);	#	42	 id:M_chor_c	 symbol:M_chor_c
push!(initial_condition_array,0.0);	#	43	 id:M_h2o2_c	 symbol:M_h2o2_c
push!(initial_condition_array,0.0);	#	44	 id:M_mglx_c	 symbol:M_mglx_c
push!(initial_condition_array,0.0);	#	45	 id:M_prop_c	 symbol:M_prop_c
push!(initial_condition_array,0.0);	#	46	 id:M_indole_c	 symbol:M_indole_c
push!(initial_condition_array,0.0);	#	47	 id:M_cadav_c	 symbol:M_cadav_c
push!(initial_condition_array,0.0);	#	48	 id:M_gaba_c	 symbol:M_gaba_c
push!(initial_condition_array,0.0);	#	49	 id:M_glycoA_c	 symbol:M_glycoA_c
push!(initial_condition_array,0.0);	#	50	 id:M_78mdp_c	 symbol:M_78mdp_c
push!(initial_condition_array,0.0);	#	51	 id:M_4adochor_c	 symbol:M_4adochor_c
push!(initial_condition_array,0.0);	#	52	 id:M_4abz_c	 symbol:M_4abz_c
push!(initial_condition_array,0.0);	#	53	 id:M_78dhf_c	 symbol:M_78dhf_c
push!(initial_condition_array,0.0);	#	54	 id:M_dhf_c	 symbol:M_dhf_c
push!(initial_condition_array,0.0);	#	55	 id:M_methf_c	 symbol:M_methf_c
push!(initial_condition_array,0.0);	#	56	 id:M_10fthf_c	 symbol:M_10fthf_c
push!(initial_condition_array,0.0);	#	57	 id:M_prpp_c	 symbol:M_prpp_c
push!(initial_condition_array,0.0);	#	58	 id:M_hco3_c	 symbol:M_hco3_c
push!(initial_condition_array,0.0);	#	59	 id:M_clasp_c	 symbol:M_clasp_c
push!(initial_condition_array,0.0);	#	60	 id:M_or_c	 symbol:M_or_c
push!(initial_condition_array,0.0);	#	61	 id:M_omp_c	 symbol:M_omp_c
push!(initial_condition_array,0.0);	#	62	 id:M_5pbdra	 symbol:M_5pbdra
push!(initial_condition_array,0.0);	#	63	 id:M_gar_c	 symbol:M_gar_c
push!(initial_condition_array,0.0);	#	64	 id:M_fgar_c	 symbol:M_fgar_c
push!(initial_condition_array,0.0);	#	65	 id:M_fgam_c	 symbol:M_fgam_c
push!(initial_condition_array,0.0);	#	66	 id:M_air_c	 symbol:M_air_c
push!(initial_condition_array,0.0);	#	67	 id:M_cair_c	 symbol:M_cair_c
push!(initial_condition_array,0.0);	#	68	 id:M_saicar_c	 symbol:M_saicar_c
push!(initial_condition_array,0.0);	#	69	 id:M_faicar_c	 symbol:M_faicar_c
push!(initial_condition_array,0.0);	#	70	 id:M_imp_c	 symbol:M_imp_c
push!(initial_condition_array,0.0);	#	71	 id:M_xmp_c	 symbol:M_xmp_c
push!(initial_condition_array,0.0);	#	72	 id:GENE_CAT	 symbol:GENE_CAT
push!(initial_condition_array,0.0);	#	73	 id:RNAP	 symbol:RNAP
push!(initial_condition_array,0.0);	#	74	 id:OPEN_GENE_CAT	 symbol:OPEN_GENE_CAT
push!(initial_condition_array,0.0);	#	75	 id:mRNA_CAT	 symbol:mRNA_CAT
push!(initial_condition_array,0.0);	#	76	 id:RIBOSOME	 symbol:RIBOSOME
push!(initial_condition_array,0.0);	#	77	 id:RIBOSOME_START_CAT	 symbol:RIBOSOME_START_CAT
push!(initial_condition_array,0.0);	#	78	 id:M_ala_L_c_tRNA	 symbol:M_ala_L_c_tRNA
push!(initial_condition_array,0.0);	#	79	 id:M_arg_L_c_tRNA	 symbol:M_arg_L_c_tRNA
push!(initial_condition_array,0.0);	#	80	 id:M_asn_L_c_tRNA	 symbol:M_asn_L_c_tRNA
push!(initial_condition_array,0.0);	#	81	 id:M_asp_L_c_tRNA	 symbol:M_asp_L_c_tRNA
push!(initial_condition_array,0.0);	#	82	 id:M_cys_L_c_tRNA	 symbol:M_cys_L_c_tRNA
push!(initial_condition_array,0.0);	#	83	 id:M_glu_L_c_tRNA	 symbol:M_glu_L_c_tRNA
push!(initial_condition_array,0.0);	#	84	 id:M_gln_L_c_tRNA	 symbol:M_gln_L_c_tRNA
push!(initial_condition_array,0.0);	#	85	 id:M_gly_L_c_tRNA	 symbol:M_gly_L_c_tRNA
push!(initial_condition_array,0.0);	#	86	 id:M_his_L_c_tRNA	 symbol:M_his_L_c_tRNA
push!(initial_condition_array,0.0);	#	87	 id:M_ile_L_c_tRNA	 symbol:M_ile_L_c_tRNA
push!(initial_condition_array,0.0);	#	88	 id:M_leu_L_c_tRNA	 symbol:M_leu_L_c_tRNA
push!(initial_condition_array,0.0);	#	89	 id:M_lys_L_c_tRNA	 symbol:M_lys_L_c_tRNA
push!(initial_condition_array,0.0);	#	90	 id:M_met_L_c_tRNA	 symbol:M_met_L_c_tRNA
push!(initial_condition_array,0.0);	#	91	 id:M_phe_L_c_tRNA	 symbol:M_phe_L_c_tRNA
push!(initial_condition_array,0.0);	#	92	 id:M_pro_L_c_tRNA	 symbol:M_pro_L_c_tRNA
push!(initial_condition_array,0.0);	#	93	 id:M_ser_L_c_tRNA	 symbol:M_ser_L_c_tRNA
push!(initial_condition_array,0.0);	#	94	 id:M_thr_L_c_tRNA	 symbol:M_thr_L_c_tRNA
push!(initial_condition_array,0.0);	#	95	 id:M_trp_L_c_tRNA	 symbol:M_trp_L_c_tRNA
push!(initial_condition_array,0.0);	#	96	 id:M_tyr_L_c_tRNA	 symbol:M_tyr_L_c_tRNA
push!(initial_condition_array,0.0);	#	97	 id:M_val_L_c_tRNA	 symbol:M_val_L_c_tRNA
push!(initial_condition_array,0.0);	#	98	 id:PROTEIN_CAT	 symbol:PROTEIN_CAT
push!(initial_condition_array,0.0);	#	99	 id:tRNA	 symbol:tRNA
push!(initial_condition_array,0.0);	#	100	 id:M_glc_D_c	 symbol:M_glc_D_c
push!(initial_condition_array,0.0);	#	101	 id:M_pep_c	 symbol:M_pep_c
push!(initial_condition_array,0.0);	#	102	 id:M_pyr_c	 symbol:M_pyr_c
push!(initial_condition_array,0.0);	#	103	 id:M_ac_c	 symbol:M_ac_c
push!(initial_condition_array,0.0);	#	104	 id:M_lac_D_c	 symbol:M_lac_D_c
push!(initial_condition_array,0.0);	#	105	 id:M_mal_L_c	 symbol:M_mal_L_c
push!(initial_condition_array,0.0);	#	106	 id:M_atp_c	 symbol:M_atp_c
push!(initial_condition_array,0.0);	#	107	 id:M_adp_c	 symbol:M_adp_c
push!(initial_condition_array,0.0);	#	108	 id:M_amp_c	 symbol:M_amp_c
push!(initial_condition_array,0.0);	#	109	 id:M_gtp_c	 symbol:M_gtp_c
push!(initial_condition_array,0.0);	#	110	 id:M_gdp_c	 symbol:M_gdp_c
push!(initial_condition_array,0.0);	#	111	 id:M_gmp_c	 symbol:M_gmp_c
push!(initial_condition_array,0.0);	#	112	 id:M_utp_c	 symbol:M_utp_c
push!(initial_condition_array,0.0);	#	113	 id:M_udp_c	 symbol:M_udp_c
push!(initial_condition_array,0.0);	#	114	 id:M_ump_c	 symbol:M_ump_c
push!(initial_condition_array,0.0);	#	115	 id:M_ctp_c	 symbol:M_ctp_c
push!(initial_condition_array,0.0);	#	116	 id:M_cdp_c	 symbol:M_cdp_c
push!(initial_condition_array,0.0);	#	117	 id:M_cmp_c	 symbol:M_cmp_c
push!(initial_condition_array,0.0);	#	118	 id:M_succ_c	 symbol:M_succ_c
push!(initial_condition_array,0.0);	#	119	 id:M_asp_L_c	 symbol:M_asp_L_c
push!(initial_condition_array,0.0);	#	120	 id:M_gly_L_c	 symbol:M_gly_L_c
push!(initial_condition_array,0.0);	#	121	 id:M_ile_L_c	 symbol:M_ile_L_c
push!(initial_condition_array,0.0);	#	122	 id:M_asn_L_c	 symbol:M_asn_L_c
push!(initial_condition_array,0.0);	#	123	 id:M_cys_L_c	 symbol:M_cys_L_c
push!(initial_condition_array,0.0);	#	124	 id:M_lys_L_c	 symbol:M_lys_L_c
push!(initial_condition_array,0.0);	#	125	 id:M_his_L_c	 symbol:M_his_L_c
push!(initial_condition_array,0.0);	#	126	 id:M_ala_L_c	 symbol:M_ala_L_c
push!(initial_condition_array,0.0);	#	127	 id:M_phe_L_c	 symbol:M_phe_L_c
push!(initial_condition_array,0.0);	#	128	 id:M_pro_L_c	 symbol:M_pro_L_c
push!(initial_condition_array,0.0);	#	129	 id:M_ser_L_c	 symbol:M_ser_L_c
push!(initial_condition_array,0.0);	#	130	 id:M_thr_L_c	 symbol:M_thr_L_c
push!(initial_condition_array,0.0);	#	131	 id:M_trp_L_c	 symbol:M_trp_L_c
push!(initial_condition_array,0.0);	#	132	 id:M_tyr_L_c	 symbol:M_tyr_L_c
push!(initial_condition_array,0.0);	#	133	 id:M_val_L_c	 symbol:M_val_L_c
push!(initial_condition_array,0.0);	#	134	 id:M_met_L_c	 symbol:M_met_L_c
push!(initial_condition_array,0.0);	#	135	 id:M_leu_L_c	 symbol:M_leu_L_c
push!(initial_condition_array,0.0);	#	136	 id:M_glu_L_c	 symbol:M_glu_L_c
push!(initial_condition_array,0.0);	#	137	 id:M_gln_L_c	 symbol:M_gln_L_c
push!(initial_condition_array,0.0);	#	138	 id:M_o2_c	 symbol:M_o2_c
push!(initial_condition_array,0.0);	#	139	 id:M_co2_c	 symbol:M_co2_c
push!(initial_condition_array,0.0);	#	140	 id:M_pi_c	 symbol:M_pi_c
push!(initial_condition_array,0.0);	#	141	 id:M_nh4_c	 symbol:M_nh4_c
push!(initial_condition_array,0.0);	#	142	 id:M_so4_c	 symbol:M_so4_c
push!(initial_condition_array,0.0);	#	143	 id:M_h_c	 symbol:M_h_c
push!(initial_condition_array,0.0);	#	144	 id:M_h2o_c	 symbol:M_h2o_c
push!(initial_condition_array,0.0);	#	145	 id:M_nad_c	 symbol:M_nad_c
push!(initial_condition_array,0.0);	#	146	 id:M_nadh_c	 symbol:M_nadh_c
push!(initial_condition_array,0.0);	#	147	 id:M_nadp_c	 symbol:M_nadp_c
push!(initial_condition_array,0.0);	#	148	 id:M_nadph_c	 symbol:M_nadph_c
push!(initial_condition_array,1.0);	#	149	 id:E_R_glk_atp	 symbol:E_R_glk_atp
push!(initial_condition_array,1.0);	#	150	 id:E_R_pgi	 symbol:E_R_pgi
push!(initial_condition_array,1.0);	#	151	 id:E_R_pgi_R	 symbol:E_R_pgi_R
push!(initial_condition_array,1.0);	#	152	 id:E_R_pfk	 symbol:E_R_pfk
push!(initial_condition_array,1.0);	#	153	 id:E_R_fdp	 symbol:E_R_fdp
push!(initial_condition_array,1.0);	#	154	 id:E_R_fbaA	 symbol:E_R_fbaA
push!(initial_condition_array,1.0);	#	155	 id:E_R_fbaA_R	 symbol:E_R_fbaA_R
push!(initial_condition_array,1.0);	#	156	 id:E_R_tpiA	 symbol:E_R_tpiA
push!(initial_condition_array,1.0);	#	157	 id:E_R_tpiA_R	 symbol:E_R_tpiA_R
push!(initial_condition_array,1.0);	#	158	 id:E_R_gapA	 symbol:E_R_gapA
push!(initial_condition_array,1.0);	#	159	 id:E_R_gapA_R	 symbol:E_R_gapA_R
push!(initial_condition_array,1.0);	#	160	 id:E_R_pgk	 symbol:E_R_pgk
push!(initial_condition_array,1.0);	#	161	 id:E_R_pgk_R	 symbol:E_R_pgk_R
push!(initial_condition_array,1.0);	#	162	 id:E_R_gpm	 symbol:E_R_gpm
push!(initial_condition_array,1.0);	#	163	 id:E_R_gpm_R	 symbol:E_R_gpm_R
push!(initial_condition_array,1.0);	#	164	 id:E_R_eno	 symbol:E_R_eno
push!(initial_condition_array,1.0);	#	165	 id:E_R_eno_R	 symbol:E_R_eno_R
push!(initial_condition_array,1.0);	#	166	 id:E_R_pyk	 symbol:E_R_pyk
push!(initial_condition_array,1.0);	#	167	 id:E_R_pck	 symbol:E_R_pck
push!(initial_condition_array,1.0);	#	168	 id:E_R_ppc	 symbol:E_R_ppc
push!(initial_condition_array,1.0);	#	169	 id:E_R_pdh	 symbol:E_R_pdh
push!(initial_condition_array,1.0);	#	170	 id:E_R_pps	 symbol:E_R_pps
push!(initial_condition_array,1.0);	#	171	 id:E_R_zwf	 symbol:E_R_zwf
push!(initial_condition_array,1.0);	#	172	 id:E_R_zwf_R	 symbol:E_R_zwf_R
push!(initial_condition_array,1.0);	#	173	 id:E_R_pgl	 symbol:E_R_pgl
push!(initial_condition_array,1.0);	#	174	 id:E_R_gnd	 symbol:E_R_gnd
push!(initial_condition_array,1.0);	#	175	 id:E_R_rpe	 symbol:E_R_rpe
push!(initial_condition_array,1.0);	#	176	 id:E_R_rpe_R	 symbol:E_R_rpe_R
push!(initial_condition_array,1.0);	#	177	 id:E_R_rpi	 symbol:E_R_rpi
push!(initial_condition_array,1.0);	#	178	 id:E_R_rpi_R	 symbol:E_R_rpi_R
push!(initial_condition_array,1.0);	#	179	 id:E_R_talAB	 symbol:E_R_talAB
push!(initial_condition_array,1.0);	#	180	 id:E_R_talAB_R	 symbol:E_R_talAB_R
push!(initial_condition_array,1.0);	#	181	 id:E_R_tkt1	 symbol:E_R_tkt1
push!(initial_condition_array,1.0);	#	182	 id:E_R_tkt1_R	 symbol:E_R_tkt1_R
push!(initial_condition_array,1.0);	#	183	 id:E_R_tkt2	 symbol:E_R_tkt2
push!(initial_condition_array,1.0);	#	184	 id:E_R_tkt2_R	 symbol:E_R_tkt2_R
push!(initial_condition_array,1.0);	#	185	 id:E_R_edd	 symbol:E_R_edd
push!(initial_condition_array,1.0);	#	186	 id:E_R_eda	 symbol:E_R_eda
push!(initial_condition_array,1.0);	#	187	 id:E_R_gltA	 symbol:E_R_gltA
push!(initial_condition_array,1.0);	#	188	 id:E_R_acn	 symbol:E_R_acn
push!(initial_condition_array,1.0);	#	189	 id:E_R_acn_R	 symbol:E_R_acn_R
push!(initial_condition_array,1.0);	#	190	 id:E_R_icd	 symbol:E_R_icd
push!(initial_condition_array,1.0);	#	191	 id:E_R_icd_R	 symbol:E_R_icd_R
push!(initial_condition_array,1.0);	#	192	 id:E_R_sucAB	 symbol:E_R_sucAB
push!(initial_condition_array,1.0);	#	193	 id:E_R_sucCD	 symbol:E_R_sucCD
push!(initial_condition_array,1.0);	#	194	 id:E_R_sdh	 symbol:E_R_sdh
push!(initial_condition_array,1.0);	#	195	 id:E_R_frd	 symbol:E_R_frd
push!(initial_condition_array,1.0);	#	196	 id:E_R_fum	 symbol:E_R_fum
push!(initial_condition_array,1.0);	#	197	 id:E_R_fum_R	 symbol:E_R_fum_R
push!(initial_condition_array,1.0);	#	198	 id:E_R_mdh	 symbol:E_R_mdh
push!(initial_condition_array,1.0);	#	199	 id:E_R_mdh_R	 symbol:E_R_mdh_R
push!(initial_condition_array,1.0);	#	200	 id:E_R_cyd	 symbol:E_R_cyd
push!(initial_condition_array,1.0);	#	201	 id:E_R_cyo	 symbol:E_R_cyo
push!(initial_condition_array,1.0);	#	202	 id:E_R_app	 symbol:E_R_app
push!(initial_condition_array,1.0);	#	203	 id:E_R_atp	 symbol:E_R_atp
push!(initial_condition_array,1.0);	#	204	 id:E_R_nuo	 symbol:E_R_nuo
push!(initial_condition_array,1.0);	#	205	 id:E_R_pnt1	 symbol:E_R_pnt1
push!(initial_condition_array,1.0);	#	206	 id:E_R_pnt2	 symbol:E_R_pnt2
push!(initial_condition_array,1.0);	#	207	 id:E_R_ndh1	 symbol:E_R_ndh1
push!(initial_condition_array,1.0);	#	208	 id:E_R_ndh2	 symbol:E_R_ndh2
push!(initial_condition_array,1.0);	#	209	 id:E_R_ppa	 symbol:E_R_ppa
push!(initial_condition_array,1.0);	#	210	 id:E_R_aceA	 symbol:E_R_aceA
push!(initial_condition_array,1.0);	#	211	 id:E_R_aceB	 symbol:E_R_aceB
push!(initial_condition_array,1.0);	#	212	 id:E_R_maeA	 symbol:E_R_maeA
push!(initial_condition_array,1.0);	#	213	 id:E_R_maeB	 symbol:E_R_maeB
push!(initial_condition_array,1.0);	#	214	 id:E_R_pta	 symbol:E_R_pta
push!(initial_condition_array,1.0);	#	215	 id:E_R_pta_R	 symbol:E_R_pta_R
push!(initial_condition_array,1.0);	#	216	 id:E_R_ackA	 symbol:E_R_ackA
push!(initial_condition_array,1.0);	#	217	 id:E_R_ackA_R	 symbol:E_R_ackA_R
push!(initial_condition_array,1.0);	#	218	 id:E_R_acs	 symbol:E_R_acs
push!(initial_condition_array,1.0);	#	219	 id:E_R_adhE	 symbol:E_R_adhE
push!(initial_condition_array,1.0);	#	220	 id:E_R_adhE_R	 symbol:E_R_adhE_R
push!(initial_condition_array,1.0);	#	221	 id:E_R_ldh	 symbol:E_R_ldh
push!(initial_condition_array,1.0);	#	222	 id:E_R_ldh_R	 symbol:E_R_ldh_R
push!(initial_condition_array,1.0);	#	223	 id:E_R_pflAB	 symbol:E_R_pflAB
push!(initial_condition_array,1.0);	#	224	 id:E_R_alaAC	 symbol:E_R_alaAC
push!(initial_condition_array,1.0);	#	225	 id:E_R_alaAC_R	 symbol:E_R_alaAC_R
push!(initial_condition_array,1.0);	#	226	 id:E_R_arg	 symbol:E_R_arg
push!(initial_condition_array,1.0);	#	227	 id:E_R_aspC	 symbol:E_R_aspC
push!(initial_condition_array,1.0);	#	228	 id:E_R_asnB	 symbol:E_R_asnB
push!(initial_condition_array,1.0);	#	229	 id:E_R_asnA	 symbol:E_R_asnA
push!(initial_condition_array,1.0);	#	230	 id:E_R_cysEMK	 symbol:E_R_cysEMK
push!(initial_condition_array,1.0);	#	231	 id:E_R_gltBD	 symbol:E_R_gltBD
push!(initial_condition_array,1.0);	#	232	 id:E_R_gdhA	 symbol:E_R_gdhA
push!(initial_condition_array,1.0);	#	233	 id:E_R_gdhA_R	 symbol:E_R_gdhA_R
push!(initial_condition_array,1.0);	#	234	 id:E_R_glnA	 symbol:E_R_glnA
push!(initial_condition_array,1.0);	#	235	 id:E_R_glyA	 symbol:E_R_glyA
push!(initial_condition_array,1.0);	#	236	 id:E_R_his	 symbol:E_R_his
push!(initial_condition_array,1.0);	#	237	 id:E_R_ile	 symbol:E_R_ile
push!(initial_condition_array,1.0);	#	238	 id:E_R_leu	 symbol:E_R_leu
push!(initial_condition_array,1.0);	#	239	 id:E_R_lys	 symbol:E_R_lys
push!(initial_condition_array,1.0);	#	240	 id:E_R_met	 symbol:E_R_met
push!(initial_condition_array,1.0);	#	241	 id:E_R_phe	 symbol:E_R_phe
push!(initial_condition_array,1.0);	#	242	 id:E_R_pro	 symbol:E_R_pro
push!(initial_condition_array,1.0);	#	243	 id:E_R_serABC	 symbol:E_R_serABC
push!(initial_condition_array,1.0);	#	244	 id:E_R_thr	 symbol:E_R_thr
push!(initial_condition_array,1.0);	#	245	 id:E_R_trp	 symbol:E_R_trp
push!(initial_condition_array,1.0);	#	246	 id:E_R_tyr	 symbol:E_R_tyr
push!(initial_condition_array,1.0);	#	247	 id:E_R_val	 symbol:E_R_val
push!(initial_condition_array,1.0);	#	248	 id:E_R_arg_deg	 symbol:E_R_arg_deg
push!(initial_condition_array,1.0);	#	249	 id:E_R_asp_deg	 symbol:E_R_asp_deg
push!(initial_condition_array,1.0);	#	250	 id:E_R_asn_deg	 symbol:E_R_asn_deg
push!(initial_condition_array,1.0);	#	251	 id:E_R_gly_deg	 symbol:E_R_gly_deg
push!(initial_condition_array,1.0);	#	252	 id:E_R_mglx_deg	 symbol:E_R_mglx_deg
push!(initial_condition_array,1.0);	#	253	 id:E_R_ser_deg	 symbol:E_R_ser_deg
push!(initial_condition_array,1.0);	#	254	 id:E_R_pro_deg	 symbol:E_R_pro_deg
push!(initial_condition_array,1.0);	#	255	 id:E_R_thr_deg1	 symbol:E_R_thr_deg1
push!(initial_condition_array,1.0);	#	256	 id:E_R_thr_deg2	 symbol:E_R_thr_deg2
push!(initial_condition_array,1.0);	#	257	 id:E_R_thr_deg3	 symbol:E_R_thr_deg3
push!(initial_condition_array,1.0);	#	258	 id:E_R_trp_deg	 symbol:E_R_trp_deg
push!(initial_condition_array,1.0);	#	259	 id:E_R_cys_deg	 symbol:E_R_cys_deg
push!(initial_condition_array,1.0);	#	260	 id:E_R_lys_deg	 symbol:E_R_lys_deg
push!(initial_condition_array,1.0);	#	261	 id:E_R_gln_deg	 symbol:E_R_gln_deg
push!(initial_condition_array,1.0);	#	262	 id:E_R_glu_deg	 symbol:E_R_glu_deg
push!(initial_condition_array,1.0);	#	263	 id:E_R_gaba_deg1	 symbol:E_R_gaba_deg1
push!(initial_condition_array,1.0);	#	264	 id:E_R_gaba_deg2	 symbol:E_R_gaba_deg2
push!(initial_condition_array,1.0);	#	265	 id:E_R_chor	 symbol:E_R_chor
push!(initial_condition_array,1.0);	#	266	 id:E_R_fol_e	 symbol:E_R_fol_e
push!(initial_condition_array,1.0);	#	267	 id:E_R_fol_1	 symbol:E_R_fol_1
push!(initial_condition_array,1.0);	#	268	 id:E_R_fol_2a	 symbol:E_R_fol_2a
push!(initial_condition_array,1.0);	#	269	 id:E_R_fol_2b	 symbol:E_R_fol_2b
push!(initial_condition_array,1.0);	#	270	 id:E_R_fol_3	 symbol:E_R_fol_3
push!(initial_condition_array,1.0);	#	271	 id:E_R_fol_4	 symbol:E_R_fol_4
push!(initial_condition_array,1.0);	#	272	 id:E_R_gly_fol	 symbol:E_R_gly_fol
push!(initial_condition_array,1.0);	#	273	 id:E_R_gly_fol_R	 symbol:E_R_gly_fol_R
push!(initial_condition_array,1.0);	#	274	 id:E_R_mthfd	 symbol:E_R_mthfd
push!(initial_condition_array,1.0);	#	275	 id:E_R_mthfd_R	 symbol:E_R_mthfd_R
push!(initial_condition_array,1.0);	#	276	 id:E_R_mthfc	 symbol:E_R_mthfc
push!(initial_condition_array,1.0);	#	277	 id:E_R_mthfc_R	 symbol:E_R_mthfc_R
push!(initial_condition_array,1.0);	#	278	 id:E_R_mthfr2a	 symbol:E_R_mthfr2a
push!(initial_condition_array,1.0);	#	279	 id:E_R_mthfr2b	 symbol:E_R_mthfr2b
push!(initial_condition_array,1.0);	#	280	 id:E_R_prpp_syn	 symbol:E_R_prpp_syn
push!(initial_condition_array,1.0);	#	281	 id:E_R_or_syn_1	 symbol:E_R_or_syn_1
push!(initial_condition_array,1.0);	#	282	 id:E_R_or_syn_2	 symbol:E_R_or_syn_2
push!(initial_condition_array,1.0);	#	283	 id:E_R_omp_syn	 symbol:E_R_omp_syn
push!(initial_condition_array,1.0);	#	284	 id:E_R_ump_syn	 symbol:E_R_ump_syn
push!(initial_condition_array,1.0);	#	285	 id:E_R_ctp_1	 symbol:E_R_ctp_1
push!(initial_condition_array,1.0);	#	286	 id:E_R_ctp_2	 symbol:E_R_ctp_2
push!(initial_condition_array,1.0);	#	287	 id:E_R_A_syn_1	 symbol:E_R_A_syn_1
push!(initial_condition_array,1.0);	#	288	 id:E_R_A_syn_2	 symbol:E_R_A_syn_2
push!(initial_condition_array,1.0);	#	289	 id:E_R_A_syn_3	 symbol:E_R_A_syn_3
push!(initial_condition_array,1.0);	#	290	 id:E_R_A_syn_4	 symbol:E_R_A_syn_4
push!(initial_condition_array,1.0);	#	291	 id:E_R_A_syn_5	 symbol:E_R_A_syn_5
push!(initial_condition_array,1.0);	#	292	 id:E_R_A_syn_6	 symbol:E_R_A_syn_6
push!(initial_condition_array,1.0);	#	293	 id:E_R_A_syn_7	 symbol:E_R_A_syn_7
push!(initial_condition_array,1.0);	#	294	 id:E_R_A_syn_8	 symbol:E_R_A_syn_8
push!(initial_condition_array,1.0);	#	295	 id:E_R_A_syn_9	 symbol:E_R_A_syn_9
push!(initial_condition_array,1.0);	#	296	 id:E_R_A_syn_10	 symbol:E_R_A_syn_10
push!(initial_condition_array,1.0);	#	297	 id:E_R_A_syn_12	 symbol:E_R_A_syn_12
push!(initial_condition_array,1.0);	#	298	 id:E_R_xmp_syn	 symbol:E_R_xmp_syn
push!(initial_condition_array,1.0);	#	299	 id:E_R_gmp_syn	 symbol:E_R_gmp_syn
push!(initial_condition_array,1.0);	#	300	 id:E_R_atp_amp	 symbol:E_R_atp_amp
push!(initial_condition_array,1.0);	#	301	 id:E_R_utp_ump	 symbol:E_R_utp_ump
push!(initial_condition_array,1.0);	#	302	 id:E_R_ctp_cmp	 symbol:E_R_ctp_cmp
push!(initial_condition_array,1.0);	#	303	 id:E_R_gtp_gmp	 symbol:E_R_gtp_gmp
push!(initial_condition_array,1.0);	#	304	 id:E_R_atp_adp	 symbol:E_R_atp_adp
push!(initial_condition_array,1.0);	#	305	 id:E_R_utp_adp	 symbol:E_R_utp_adp
push!(initial_condition_array,1.0);	#	306	 id:E_R_ctp_adp	 symbol:E_R_ctp_adp
push!(initial_condition_array,1.0);	#	307	 id:E_R_gtp_adp	 symbol:E_R_gtp_adp
push!(initial_condition_array,1.0);	#	308	 id:E_R_udp_utp	 symbol:E_R_udp_utp
push!(initial_condition_array,1.0);	#	309	 id:E_R_cdp_ctp	 symbol:E_R_cdp_ctp
push!(initial_condition_array,1.0);	#	310	 id:E_R_gdp_gtp	 symbol:E_R_gdp_gtp
push!(initial_condition_array,1.0);	#	311	 id:E_R_atp_ump	 symbol:E_R_atp_ump
push!(initial_condition_array,1.0);	#	312	 id:E_R_atp_cmp	 symbol:E_R_atp_cmp
push!(initial_condition_array,1.0);	#	313	 id:E_R_atp_gmp	 symbol:E_R_atp_gmp
push!(initial_condition_array,1.0);	#	314	 id:E_R_adk_atp	 symbol:E_R_adk_atp
push!(initial_condition_array,1.0);	#	315	 id:E_Import_o2	 symbol:E_Import_o2
push!(initial_condition_array,1.0);	#	316	 id:E_Import_co2	 symbol:E_Import_co2
push!(initial_condition_array,1.0);	#	317	 id:E_Import_pi	 symbol:E_Import_pi
push!(initial_condition_array,1.0);	#	318	 id:E_Import_nh4	 symbol:E_Import_nh4
push!(initial_condition_array,1.0);	#	319	 id:E_Import_so4	 symbol:E_Import_so4
push!(initial_condition_array,1.0);	#	320	 id:E_Import_h2o	 symbol:E_Import_h2o
push!(initial_condition_array,1.0);	#	321	 id:E_Export_o2	 symbol:E_Export_o2
push!(initial_condition_array,1.0);	#	322	 id:E_Export_co2	 symbol:E_Export_co2
push!(initial_condition_array,1.0);	#	323	 id:E_Export_pi	 symbol:E_Export_pi
push!(initial_condition_array,1.0);	#	324	 id:E_Export_nh4	 symbol:E_Export_nh4
push!(initial_condition_array,1.0);	#	325	 id:E_Export_so4	 symbol:E_Export_so4
push!(initial_condition_array,1.0);	#	326	 id:E_Export_h2o	 symbol:E_Export_h2o
push!(initial_condition_array,1.0);	#	327	 id:E_Proton_gradient	 symbol:E_Proton_gradient
push!(initial_condition_array,1.0);	#	328	 id:E_transcriptional_initiation_CAT	 symbol:E_transcriptional_initiation_CAT
push!(initial_condition_array,1.0);	#	329	 id:E_transcription_CAT	 symbol:E_transcription_CAT
push!(initial_condition_array,1.0);	#	330	 id:E_mRNA_degradation_CAT	 symbol:E_mRNA_degradation_CAT
push!(initial_condition_array,1.0);	#	331	 id:E_translation_initiation_CAT	 symbol:E_translation_initiation_CAT
push!(initial_condition_array,1.0);	#	332	 id:E_translation_CAT	 symbol:E_translation_CAT
push!(initial_condition_array,1.0);	#	333	 id:E_tRNA_charging_M_ala_L_c_CAT	 symbol:E_tRNA_charging_M_ala_L_c_CAT
push!(initial_condition_array,1.0);	#	334	 id:E_tRNA_charging_M_arg_L_c_CAT	 symbol:E_tRNA_charging_M_arg_L_c_CAT
push!(initial_condition_array,1.0);	#	335	 id:E_tRNA_charging_M_asn_L_c_CAT	 symbol:E_tRNA_charging_M_asn_L_c_CAT
push!(initial_condition_array,1.0);	#	336	 id:E_tRNA_charging_M_asp_L_c_CAT	 symbol:E_tRNA_charging_M_asp_L_c_CAT
push!(initial_condition_array,1.0);	#	337	 id:E_tRNA_charging_M_cys_L_c_CAT	 symbol:E_tRNA_charging_M_cys_L_c_CAT
push!(initial_condition_array,1.0);	#	338	 id:E_tRNA_charging_M_glu_L_c_CAT	 symbol:E_tRNA_charging_M_glu_L_c_CAT
push!(initial_condition_array,1.0);	#	339	 id:E_tRNA_charging_M_gln_L_c_CAT	 symbol:E_tRNA_charging_M_gln_L_c_CAT
push!(initial_condition_array,1.0);	#	340	 id:E_tRNA_charging_M_gly_L_c_CAT	 symbol:E_tRNA_charging_M_gly_L_c_CAT
push!(initial_condition_array,1.0);	#	341	 id:E_tRNA_charging_M_his_L_c_CAT	 symbol:E_tRNA_charging_M_his_L_c_CAT
push!(initial_condition_array,1.0);	#	342	 id:E_tRNA_charging_M_ile_L_c_CAT	 symbol:E_tRNA_charging_M_ile_L_c_CAT
push!(initial_condition_array,1.0);	#	343	 id:E_tRNA_charging_M_leu_L_c_CAT	 symbol:E_tRNA_charging_M_leu_L_c_CAT
push!(initial_condition_array,1.0);	#	344	 id:E_tRNA_charging_M_lys_L_c_CAT	 symbol:E_tRNA_charging_M_lys_L_c_CAT
push!(initial_condition_array,1.0);	#	345	 id:E_tRNA_charging_M_met_L_c_CAT	 symbol:E_tRNA_charging_M_met_L_c_CAT
push!(initial_condition_array,1.0);	#	346	 id:E_tRNA_charging_M_phe_L_c_CAT	 symbol:E_tRNA_charging_M_phe_L_c_CAT
push!(initial_condition_array,1.0);	#	347	 id:E_tRNA_charging_M_pro_L_c_CAT	 symbol:E_tRNA_charging_M_pro_L_c_CAT
push!(initial_condition_array,1.0);	#	348	 id:E_tRNA_charging_M_ser_L_c_CAT	 symbol:E_tRNA_charging_M_ser_L_c_CAT
push!(initial_condition_array,1.0);	#	349	 id:E_tRNA_charging_M_thr_L_c_CAT	 symbol:E_tRNA_charging_M_thr_L_c_CAT
push!(initial_condition_array,1.0);	#	350	 id:E_tRNA_charging_M_trp_L_c_CAT	 symbol:E_tRNA_charging_M_trp_L_c_CAT
push!(initial_condition_array,1.0);	#	351	 id:E_tRNA_charging_M_tyr_L_c_CAT	 symbol:E_tRNA_charging_M_tyr_L_c_CAT
push!(initial_condition_array,1.0);	#	352	 id:E_tRNA_charging_M_val_L_c_CAT	 symbol:E_tRNA_charging_M_val_L_c_CAT

# Formulate the rate constant array - 
rate_constant_array = Float64[];
push!(rate_constant_array,0.0)	#	1	 R_glk_atp: M_atp_c+M_glc_D_c = M_adp_c+M_g6p_c+M_h_c
push!(rate_constant_array,0.0)	#	2	 R_pgi: M_g6p_c = M_f6p_c
push!(rate_constant_array,0.0)	#	3	 R_pgi_R: M_f6p_c = M_g6p_c
push!(rate_constant_array,0.0)	#	4	 R_pfk: M_atp_c+M_f6p_c = M_adp_c+M_fdp_c
push!(rate_constant_array,0.0)	#	5	 R_fdp: M_fdp_c+M_h2o_c = M_f6p_c+M_pi_c
push!(rate_constant_array,0.0)	#	6	 R_fbaA: M_fdp_c = M_dhap_c+M_g3p_c
push!(rate_constant_array,0.0)	#	7	 R_fbaA_R: M_dhap_c+M_g3p_c = M_fdp_c
push!(rate_constant_array,0.0)	#	8	 R_tpiA: M_dhap_c = M_g3p_c
push!(rate_constant_array,0.0)	#	9	 R_tpiA_R: M_g3p_c = M_dhap_c
push!(rate_constant_array,0.0)	#	10	 R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c
push!(rate_constant_array,0.0)	#	11	 R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c
push!(rate_constant_array,0.0)	#	12	 R_pgk: M_13dpg_c+M_adp_c = M_3pg_c+M_atp_c
push!(rate_constant_array,0.0)	#	13	 R_pgk_R: M_3pg_c+M_atp_c = M_13dpg_c+M_adp_c
push!(rate_constant_array,0.0)	#	14	 R_gpm: M_3pg_c = M_2pg_c
push!(rate_constant_array,0.0)	#	15	 R_gpm_R: M_2pg_c = M_3pg_c
push!(rate_constant_array,0.0)	#	16	 R_eno: M_2pg_c = M_h2o_c+M_pep_c
push!(rate_constant_array,0.0)	#	17	 R_eno_R: M_h2o_c+M_pep_c = M_2pg_c
push!(rate_constant_array,0.0)	#	18	 R_pyk: M_adp_c+M_pep_c = M_atp_c+M_pyr_c
push!(rate_constant_array,0.0)	#	19	 R_pck: M_atp_c+M_oaa_c = M_adp_c+M_co2_c+M_pep_c
push!(rate_constant_array,0.0)	#	20	 R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_oaa_c+M_pi_c
push!(rate_constant_array,0.0)	#	21	 R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c+M_h_c
push!(rate_constant_array,0.0)	#	22	 R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+M_pep_c+M_pi_c
push!(rate_constant_array,0.0)	#	23	 R_zwf: M_g6p_c+M_nadp_c = M_6pgl_c+M_h_c+M_nadph_c
push!(rate_constant_array,0.0)	#	24	 R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c
push!(rate_constant_array,0.0)	#	25	 R_pgl: M_6pgl_c+M_h2o_c = M_6pgc_c
push!(rate_constant_array,0.0)	#	26	 R_gnd: M_6pgc_c+M_nadp_c = M_co2_c+M_nadph_c+M_ru5p_D_c+M_h_c
push!(rate_constant_array,0.0)	#	27	 R_rpe: M_ru5p_D_c = M_xu5p_D_c
push!(rate_constant_array,0.0)	#	28	 R_rpe_R: M_xu5p_D_c = M_ru5p_D_c
push!(rate_constant_array,0.0)	#	29	 R_rpi: M_r5p_c = M_ru5p_D_c
push!(rate_constant_array,0.0)	#	30	 R_rpi_R: M_ru5p_D_c = M_r5p_c
push!(rate_constant_array,0.0)	#	31	 R_talAB: M_g3p_c+M_s7p_c = M_e4p_c+M_f6p_c
push!(rate_constant_array,0.0)	#	32	 R_talAB_R: M_e4p_c+M_f6p_c = M_g3p_c+M_s7p_c
push!(rate_constant_array,0.0)	#	33	 R_tkt1: M_r5p_c+M_xu5p_D_c = M_g3p_c+M_s7p_c
push!(rate_constant_array,0.0)	#	34	 R_tkt1_R: M_g3p_c+M_s7p_c = M_r5p_c+M_xu5p_D_c
push!(rate_constant_array,0.0)	#	35	 R_tkt2: M_e4p_c+M_xu5p_D_c = M_f6p_c+M_g3p_c
push!(rate_constant_array,0.0)	#	36	 R_tkt2_R: M_f6p_c+M_g3p_c = M_e4p_c+M_xu5p_D_c
push!(rate_constant_array,0.0)	#	37	 R_edd: M_6pgc_c = M_2ddg6p_c+M_h2o_c
push!(rate_constant_array,0.0)	#	38	 R_eda: M_2ddg6p_c = M_g3p_c+M_pyr_c
push!(rate_constant_array,0.0)	#	39	 R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c
push!(rate_constant_array,0.0)	#	40	 R_acn: M_cit_c = M_icit_c
push!(rate_constant_array,0.0)	#	41	 R_acn_R: M_icit_c = M_cit_c
push!(rate_constant_array,0.0)	#	42	 R_icd: M_icit_c+M_nadp_c = M_akg_c+M_co2_c+M_nadph_c+M_h_c
push!(rate_constant_array,0.0)	#	43	 R_icd_R: M_akg_c+M_co2_c+M_nadph_c+M_h_c = M_icit_c+M_nadp_c
push!(rate_constant_array,0.0)	#	44	 R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c+M_h_c
push!(rate_constant_array,0.0)	#	45	 R_sucCD: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c
push!(rate_constant_array,0.0)	#	46	 R_sdh: M_q8_c+M_succ_c = M_fum_c+M_q8h2_c
push!(rate_constant_array,0.0)	#	47	 R_frd: M_fum_c+M_mql8_c = M_mqn8_c+M_succ_c
push!(rate_constant_array,0.0)	#	48	 R_fum: M_fum_c+M_h2o_c = M_mal_L_c
push!(rate_constant_array,0.0)	#	49	 R_fum_R: M_mal_L_c = M_fum_c+M_h2o_c
push!(rate_constant_array,0.0)	#	50	 R_mdh: M_mal_L_c+M_nad_c = M_oaa_c+M_h_c+M_nadh_c
push!(rate_constant_array,0.0)	#	51	 R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c
push!(rate_constant_array,0.0)	#	52	 R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e
push!(rate_constant_array,0.0)	#	53	 R_cyo: 4*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+4*M_h_e
push!(rate_constant_array,0.0)	#	54	 R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e
push!(rate_constant_array,0.0)	#	55	 R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+4*M_h_c+M_h2o_c
push!(rate_constant_array,0.0)	#	56	 R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e
push!(rate_constant_array,0.0)	#	57	 R_pnt1: M_nad_c+M_nadph_c = M_nadh_c+M_nadp_c
push!(rate_constant_array,0.0)	#	58	 R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c
push!(rate_constant_array,0.0)	#	59	 R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c
push!(rate_constant_array,0.0)	#	60	 R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c
push!(rate_constant_array,0.0)	#	61	 R_ppa: M_ppi_c+M_h2o_c = 2*M_pi_c
push!(rate_constant_array,0.0)	#	62	 R_aceA: M_icit_c = M_glx_c+M_succ_c
push!(rate_constant_array,0.0)	#	63	 R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_mal_L_c
push!(rate_constant_array,0.0)	#	64	 R_maeA: M_mal_L_c+M_nad_c = M_co2_c+M_nadh_c+M_pyr_c+M_h_c
push!(rate_constant_array,0.0)	#	65	 R_maeB: M_mal_L_c+M_nadp_c = M_co2_c+M_nadph_c+M_pyr_c+M_h_c
push!(rate_constant_array,0.0)	#	66	 R_pta: M_accoa_c+M_pi_c = M_actp_c+M_coa_c
push!(rate_constant_array,0.0)	#	67	 R_pta_R: M_actp_c+M_coa_c = M_accoa_c+M_pi_c
push!(rate_constant_array,0.0)	#	68	 R_ackA: M_actp_c+M_adp_c = M_ac_c+M_atp_c
push!(rate_constant_array,0.0)	#	69	 R_ackA_R: M_ac_c+M_atp_c = M_actp_c+M_adp_c
push!(rate_constant_array,0.0)	#	70	 R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c
push!(rate_constant_array,0.0)	#	71	 R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c
push!(rate_constant_array,0.0)	#	72	 R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c
push!(rate_constant_array,0.0)	#	73	 R_ldh: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c
push!(rate_constant_array,0.0)	#	74	 R_ldh_R: M_lac_D_c+M_nad_c = M_pyr_c+M_nadh_c+M_h_c
push!(rate_constant_array,0.0)	#	75	 R_pflAB: M_coa_c+M_pyr_c = M_accoa_c+M_for_c
push!(rate_constant_array,0.0)	#	76	 R_alaAC: M_pyr_c+M_glu_L_c = M_ala_L_c+M_akg_c
push!(rate_constant_array,0.0)	#	77	 R_alaAC_R: M_ala_L_c+M_akg_c = M_pyr_c+M_glu_L_c
push!(rate_constant_array,0.0)	#	78	 R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c
push!(rate_constant_array,0.0)	#	79	 R_aspC: M_glu_L_c+M_oaa_c = M_asp_L_c+M_akg_c
push!(rate_constant_array,0.0)	#	80	 R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_ppi_c+M_amp_c
push!(rate_constant_array,0.0)	#	81	 R_asnA: M_asp_L_c+M_atp_c+M_nh3_c = M_asn_L_c+M_ppi_c+M_amp_c
push!(rate_constant_array,0.0)	#	82	 R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_ac_c
push!(rate_constant_array,0.0)	#	83	 R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2.0*M_glu_L_c+M_nadp_c
push!(rate_constant_array,0.0)	#	84	 R_gdhA: M_akg_c+M_nadph_c+M_nh3_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c
push!(rate_constant_array,0.0)	#	85	 R_gdhA_R: M_glu_L_c+M_h2o_c+M_nadp_c = M_akg_c+M_nadph_c+M_nh3_c+M_h_c
push!(rate_constant_array,0.0)	#	86	 R_glnA: M_glu_L_c+M_atp_c+M_nh3_c = M_gln_L_c+M_adp_c+M_pi_c
push!(rate_constant_array,0.0)	#	87	 R_glyA: M_ser_L_c+M_thf_c = M_gly_L_c+M_h2o_c+M_mlthf_c
push!(rate_constant_array,0.0)	#	88	 R_his: M_gln_L_c+M_r5p_c+2.0*M_atp_c+2.0*M_nad_c+3.0*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2.0*M_nadh_c+M_amp_c+M_pi_c+2.0*M_ppi_c+2.0*M_h_c
push!(rate_constant_array,0.0)	#	89	 R_ile: M_thr_L_c+M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh3_c+M_co2_c+M_nadp_c+M_akg_c
push!(rate_constant_array,0.0)	#	90	 R_leu: 2.0*M_pyr_c+M_glu_L_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2.0*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c
push!(rate_constant_array,0.0)	#	91	 R_lys: M_asp_L_c+M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c
push!(rate_constant_array,0.0)	#	92	 R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c
push!(rate_constant_array,0.0)	#	93	 R_phe: M_chor_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c
push!(rate_constant_array,0.0)	#	94	 R_pro: M_glu_L_c+M_atp_c+2.0*M_h_c+2.0*M_nadph_c = M_pro_L_c+M_adp_c+2.0*M_nadp_c+M_pi_c+M_h2o_c
push!(rate_constant_array,0.0)	#	95	 R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c
push!(rate_constant_array,0.0)	#	96	 R_thr: M_asp_L_c+2.0*M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_h2o_c = M_thr_L_c+2.0*M_adp_c+2.0*M_pi_c+2.0*M_nadp_c
push!(rate_constant_array,0.0)	#	97	 R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2.0*M_h2o_c+M_co2_c+M_g3p_c+M_amp_c
push!(rate_constant_array,0.0)	#	98	 R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c+M_h_c
push!(rate_constant_array,0.0)	#	99	 R_val: 2.0*M_pyr_c+M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c
push!(rate_constant_array,0.0)	#	100	 R_arg_deg: M_arg_L_c+4.0*M_h2o_c+M_nad_c+M_akg_c+M_succoa_c = M_h_c+M_co2_c+2.0*M_glu_L_c+2.0*M_nh3_c+M_nadh_c+M_succ_c+M_coa_c
push!(rate_constant_array,0.0)	#	101	 R_asp_deg: M_asp_L_c = M_fum_c+M_nh3_c
push!(rate_constant_array,0.0)	#	102	 R_asn_deg: M_asn_L_c+M_amp_c+M_ppi_c = M_nh3_c+M_asp_L_c+M_atp_c
push!(rate_constant_array,0.0)	#	103	 R_gly_deg: M_gly_L_c+M_accoa_c+M_o2_c+M_h2o_c = M_coa_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c
push!(rate_constant_array,0.0)	#	104	 R_mglx_deg: M_mglx_c+M_nad_c+M_h2o_c = M_pyr_c+M_nadh_c+M_h_c
push!(rate_constant_array,0.0)	#	105	 R_ser_deg: M_ser_L_c = M_nh3_c+M_pyr_c
push!(rate_constant_array,0.0)	#	106	 R_pro_deg: M_pro_L_c+M_q8_c+2.0*M_h2o_c+M_nad_c = M_h_c+M_q8h2_c+M_nadh_c+M_glu_L_c
push!(rate_constant_array,0.0)	#	107	 R_thr_deg1: M_thr_L_c+M_nad_c+M_coa_c = M_nadh_c+M_h_c+M_accoa_c+M_gly_L_c
push!(rate_constant_array,0.0)	#	108	 R_thr_deg2: M_thr_L_c+M_nad_c+M_o2_c+M_h2o_c = M_nadh_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c+M_h_c
push!(rate_constant_array,0.0)	#	109	 R_thr_deg3: M_thr_L_c+M_pi_c+M_adp_c = M_nh3_c+M_for_c+M_atp_c+M_prop_c
push!(rate_constant_array,0.0)	#	110	 R_trp_deg: M_trp_L_c+M_h2o_c = M_indole_c+M_nh3_c+M_pyr_c
push!(rate_constant_array,0.0)	#	111	 R_cys_deg: M_cys_L_c+M_h2o_c = M_h2s_c+M_nh3_c+M_pyr_c
push!(rate_constant_array,0.0)	#	112	 R_lys_deg: M_lys_L_c = M_co2_c+M_cadav_c
push!(rate_constant_array,0.0)	#	113	 R_gln_deg: M_gln_L_c+M_h2o_c = M_nh3_c+M_glu_L_c
push!(rate_constant_array,0.0)	#	114	 R_glu_deg: M_glu_L_c = M_co2_c+M_gaba_c
push!(rate_constant_array,0.0)	#	115	 R_gaba_deg1: M_gaba_c+M_akg_c+M_h2o_c+M_nad_c = M_succ_c+M_glu_L_c+M_h_c+M_nadh_c
push!(rate_constant_array,0.0)	#	116	 R_gaba_deg2: M_gaba_c+M_akg_c+M_h2o_c+M_nadp_c = M_succ_c+M_glu_L_c+M_h_c+M_nadph_c
push!(rate_constant_array,0.0)	#	117	 R_chor: M_e4p_c+2.0*M_pep_c+M_nadph_c+M_atp_c+M_h_c = M_chor_c+M_nadp_c+M_adp_c+4.0*M_pi_c
push!(rate_constant_array,0.0)	#	118	 R_fol_e: M_gtp_c+4*M_h2o_c = M_for_c+3.0*M_pi_c+M_glycoA_c+M_78mdp_c
push!(rate_constant_array,0.0)	#	119	 R_fol_1: M_chor_c+M_gln_L_c = M_4adochor_c+M_glu_L_c
push!(rate_constant_array,0.0)	#	120	 R_fol_2a: M_4adochor_c = M_4abz_c+M_pyr_c
push!(rate_constant_array,0.0)	#	121	 R_fol_2b: M_4abz_c+M_78mdp_c = M_78dhf_c+M_h2o_c
push!(rate_constant_array,0.0)	#	122	 R_fol_3: M_78dhf_c+M_atp_c+M_glu_L_c = M_adp_c+M_pi_c+M_dhf_c
push!(rate_constant_array,0.0)	#	123	 R_fol_4: M_dhf_c+M_nadph_c+M_h_c = M_thf_c+M_nadp_c
push!(rate_constant_array,0.0)	#	124	 R_gly_fol: M_gly_L_c+M_thf_c+M_nad_c = M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c
push!(rate_constant_array,0.0)	#	125	 R_gly_fol_R: M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c = M_gly_L_c+M_thf_c+M_nad_c
push!(rate_constant_array,0.0)	#	126	 R_mthfd: M_mlthf_c+M_nadp_c = M_methf_c+M_nadph_c
push!(rate_constant_array,0.0)	#	127	 R_mthfd_R: M_methf_c+M_nadph_c = M_mlthf_c+M_nadp_c
push!(rate_constant_array,0.0)	#	128	 R_mthfc: M_h2o_c+M_methf_c = M_10fthf_c+M_h_c
push!(rate_constant_array,0.0)	#	129	 R_mthfc_R: M_10fthf_c+M_h_c = M_h2o_c+M_methf_c
push!(rate_constant_array,0.0)	#	130	 R_mthfr2a: M_mlthf_c+M_h_c+M_nadh_c = M_5mthf_c+M_nad_c
push!(rate_constant_array,0.0)	#	131	 R_mthfr2b: M_mlthf_c+M_h_c+M_nadph_c = M_5mthf_c+M_nadp_c
push!(rate_constant_array,0.0)	#	132	 R_prpp_syn: M_r5p_c+M_atp_c = M_prpp_c+M_amp_c
push!(rate_constant_array,0.0)	#	133	 R_or_syn_1: 2.0*M_atp_c+M_gln_L_c+M_hco3_c+M_h2o_c+M_h_c = 2.0*M_adp_c+M_glu_L_c+M_pi_c+M_clasp_c
push!(rate_constant_array,0.0)	#	134	 R_or_syn_2: M_clasp_c+M_asp_L_c+M_q8_c = M_or_c+M_q8h2_c+M_h2o_c+M_pi_c
push!(rate_constant_array,0.0)	#	135	 R_omp_syn: M_prpp_c+M_or_c = M_omp_c+M_ppi_c
push!(rate_constant_array,0.0)	#	136	 R_ump_syn: M_omp_c = M_ump_c+M_co2_c
push!(rate_constant_array,0.0)	#	137	 R_ctp_1: M_utp_c+M_atp_c+M_nh3_c = M_ctp_c+M_adp_c+M_pi_c
push!(rate_constant_array,0.0)	#	138	 R_ctp_2: M_utp_c+M_gln_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c
push!(rate_constant_array,0.0)	#	139	 R_A_syn_1: M_gln_L_c+M_prpp_c+M_h2o_c = M_5pbdra+M_ppi_c+M_glu_L_c
push!(rate_constant_array,0.0)	#	140	 R_A_syn_2: M_atp_c+M_5pbdra+M_gly_L_c = M_adp_c+M_pi_c+M_gar_c
push!(rate_constant_array,0.0)	#	141	 R_A_syn_3: M_10fthf_c+M_gar_c = M_thf_c+M_fgar_c
push!(rate_constant_array,0.0)	#	142	 R_A_syn_4: M_atp_c+M_fgar_c+M_gln_L_c+M_h2o_c = M_adp_c+M_pi_c+M_fgam_c+M_glu_L_c
push!(rate_constant_array,0.0)	#	143	 R_A_syn_5: M_atp_c+M_fgam_c = M_adp_c+M_pi_c+M_air_c
push!(rate_constant_array,0.0)	#	144	 R_A_syn_6: M_atp_c+M_air_c+M_hco3_c+M_h_c = M_adp_c+M_pi_c+M_cair_c
push!(rate_constant_array,0.0)	#	145	 R_A_syn_7: M_atp_c+M_cair_c+M_asp_L_c = M_adp_c+M_pi_c+M_saicar_c
push!(rate_constant_array,0.0)	#	146	 R_A_syn_8: M_saicar_c = M_fum_c+M_aicar_c
push!(rate_constant_array,0.0)	#	147	 R_A_syn_9: M_aicar_c+M_10fthf_c = M_thf_c+M_faicar_c
push!(rate_constant_array,0.0)	#	148	 R_A_syn_10: M_faicar_c = M_imp_c+M_h2o_c
push!(rate_constant_array,0.0)	#	149	 R_A_syn_12: M_imp_c+M_gtp_c+M_asp_L_c = M_gdp_c+M_pi_c+M_fum_c+M_amp_c
push!(rate_constant_array,0.0)	#	150	 R_xmp_syn: M_imp_c+M_nad_c+M_h2o_c = M_xmp_c+M_nadh_c+M_h_c
push!(rate_constant_array,0.0)	#	151	 R_gmp_syn: M_atp_c+M_xmp_c+M_gln_L_c+M_h2o_c = M_amp_c+M_ppi_c+M_gmp_c+M_glu_L_c
push!(rate_constant_array,0.0)	#	152	 R_atp_amp: M_atp_c+M_h2o_c = M_amp_c+M_ppi_c
push!(rate_constant_array,0.0)	#	153	 R_utp_ump: M_utp_c+M_h2o_c = M_ump_c+M_ppi_c
push!(rate_constant_array,0.0)	#	154	 R_ctp_cmp: M_ctp_c+M_h2o_c = M_cmp_c+M_ppi_c
push!(rate_constant_array,0.0)	#	155	 R_gtp_gmp: M_gtp_c+M_h2o_c = M_gmp_c+M_ppi_c
push!(rate_constant_array,0.0)	#	156	 R_atp_adp: M_atp_c+M_h2o_c = M_adp_c+M_pi_c
push!(rate_constant_array,0.0)	#	157	 R_utp_adp: M_utp_c+M_h2o_c = M_udp_c+M_pi_c
push!(rate_constant_array,0.0)	#	158	 R_ctp_adp: M_ctp_c+M_h2o_c = M_cdp_c+M_pi_c
push!(rate_constant_array,0.0)	#	159	 R_gtp_adp: M_gtp_c+M_h2o_c = M_gdp_c+M_pi_c
push!(rate_constant_array,0.0)	#	160	 R_udp_utp: M_udp_c+M_atp_c = M_utp_c+M_adp_c
push!(rate_constant_array,0.0)	#	161	 R_cdp_ctp: M_cdp_c+M_atp_c = M_ctp_c+M_adp_c
push!(rate_constant_array,0.0)	#	162	 R_gdp_gtp: M_gdp_c+M_atp_c = M_gtp_c+M_adp_c
push!(rate_constant_array,0.0)	#	163	 R_atp_ump: M_atp_c+M_ump_c = M_adp_c+M_udp_c
push!(rate_constant_array,0.0)	#	164	 R_atp_cmp: M_atp_c+M_cmp_c = M_adp_c+M_cdp_c
push!(rate_constant_array,0.0)	#	165	 R_atp_gmp: M_atp_c+M_gmp_c = M_adp_c+M_gdp_c
push!(rate_constant_array,0.0)	#	166	 R_adk_atp: M_amp_c+M_atp_c = 2.0*M_adp_c
push!(rate_constant_array,0.0)	#	167	 Import_o2: [] = M_o2_c
push!(rate_constant_array,0.0)	#	168	 Import_co2: [] = M_co2_c
push!(rate_constant_array,0.0)	#	169	 Import_pi: [] = M_pi_c
push!(rate_constant_array,0.0)	#	170	 Import_nh4: [] = M_nh4_c
push!(rate_constant_array,0.0)	#	171	 Import_so4: [] = M_so4_c
push!(rate_constant_array,0.0)	#	172	 Import_h2o: [] = M_h2o_c
push!(rate_constant_array,0.0)	#	173	 Export_o2: M_o2_c = []
push!(rate_constant_array,0.0)	#	174	 Export_co2: M_co2_c = []
push!(rate_constant_array,0.0)	#	175	 Export_pi: M_pi_c = []
push!(rate_constant_array,0.0)	#	176	 Export_nh4: M_nh4_c = []
push!(rate_constant_array,0.0)	#	177	 Export_so4: M_so4_c = []
push!(rate_constant_array,0.0)	#	178	 Export_h2o: M_h2o_c = []
push!(rate_constant_array,0.0)	#	179	 Proton_gradient: M_h_e = M_h_c
push!(rate_constant_array,0.0)	#	180	 transcriptional_initiation_CAT: GENE_CAT+RNAP = OPEN_GENE_CAT
push!(rate_constant_array,0.0)	#	181	 transcription_CAT: OPEN_GENE_CAT+151*M_gtp_c+144*M_ctp_c+189*M_utp_c+176*M_atp_c+660*M_h2o_c = mRNA_CAT+GENE_CAT+RNAP+660*M_ppi_c
push!(rate_constant_array,0.0)	#	182	 mRNA_degradation_CAT: mRNA_CAT = 151*M_gmp_c+144*M_cmp_c+189*M_ump_c+176*M_amp_c
push!(rate_constant_array,0.0)	#	183	 translation_initiation_CAT: mRNA_CAT+RIBOSOME = RIBOSOME_START_CAT
push!(rate_constant_array,0.0)	#	184	 translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA
push!(rate_constant_array,0.0)	#	185	 tRNA_charging_M_ala_L_c_CAT: 15.0*M_ala_L_c+15.0*M_atp_c+15.0*tRNA+15*M_h2o_c = 15.0*M_ala_L_c_tRNA+15.0*M_amp_c+15.0*M_ppi_c
push!(rate_constant_array,0.0)	#	186	 tRNA_charging_M_arg_L_c_CAT: 5.0*M_arg_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_arg_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c
push!(rate_constant_array,0.0)	#	187	 tRNA_charging_M_asn_L_c_CAT: 10.0*M_asn_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_asn_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c
push!(rate_constant_array,0.0)	#	188	 tRNA_charging_M_asp_L_c_CAT: 12.0*M_asp_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_asp_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c
push!(rate_constant_array,0.0)	#	189	 tRNA_charging_M_cys_L_c_CAT: 5.0*M_cys_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_cys_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c
push!(rate_constant_array,0.0)	#	190	 tRNA_charging_M_glu_L_c_CAT: 12.0*M_glu_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_glu_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c
push!(rate_constant_array,0.0)	#	191	 tRNA_charging_M_gln_L_c_CAT: 13.0*M_gln_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_gln_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c
push!(rate_constant_array,0.0)	#	192	 tRNA_charging_M_gly_L_c_CAT: 10.0*M_gly_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_gly_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c
push!(rate_constant_array,0.0)	#	193	 tRNA_charging_M_his_L_c_CAT: 12.0*M_his_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_his_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c
push!(rate_constant_array,0.0)	#	194	 tRNA_charging_M_ile_L_c_CAT: 9.0*M_ile_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_ile_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c
push!(rate_constant_array,0.0)	#	195	 tRNA_charging_M_leu_L_c_CAT: 13.0*M_leu_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_leu_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c
push!(rate_constant_array,0.0)	#	196	 tRNA_charging_M_lys_L_c_CAT: 12.0*M_lys_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_lys_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c
push!(rate_constant_array,0.0)	#	197	 tRNA_charging_M_met_L_c_CAT: 9.0*M_met_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_met_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c
push!(rate_constant_array,0.0)	#	198	 tRNA_charging_M_phe_L_c_CAT: 20.0*M_phe_L_c+20.0*M_atp_c+20.0*tRNA+20*M_h2o_c = 20.0*M_phe_L_c_tRNA+20.0*M_amp_c+20.0*M_ppi_c
push!(rate_constant_array,0.0)	#	199	 tRNA_charging_M_pro_L_c_CAT: 7.0*M_pro_L_c+7.0*M_atp_c+7.0*tRNA+7*M_h2o_c = 7.0*M_pro_L_c_tRNA+7.0*M_amp_c+7.0*M_ppi_c
push!(rate_constant_array,0.0)	#	200	 tRNA_charging_M_ser_L_c_CAT: 10.0*M_ser_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_ser_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c
push!(rate_constant_array,0.0)	#	201	 tRNA_charging_M_thr_L_c_CAT: 13.0*M_thr_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_thr_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c
push!(rate_constant_array,0.0)	#	202	 tRNA_charging_M_trp_L_c_CAT: 5.0*M_trp_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_trp_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c
push!(rate_constant_array,0.0)	#	203	 tRNA_charging_M_tyr_L_c_CAT: 11.0*M_tyr_L_c+11.0*M_atp_c+11.0*tRNA+11*M_h2o_c = 11.0*M_tyr_L_c_tRNA+11.0*M_amp_c+11.0*M_ppi_c
push!(rate_constant_array,0.0)	#	204	 tRNA_charging_M_val_L_c_CAT: 16.0*M_val_L_c+16.0*M_atp_c+16.0*tRNA+16*M_h2o_c = 16.0*M_val_L_c_tRNA+16.0*M_amp_c+16.0*M_ppi_c
push!(rate_constant_array,0.0)	#	205	 Degradation: E_R_glk_atp = []
push!(rate_constant_array,0.0)	#	206	 Degradation: E_R_pgi = []
push!(rate_constant_array,0.0)	#	207	 Degradation: E_R_pgi_R = []
push!(rate_constant_array,0.0)	#	208	 Degradation: E_R_pfk = []
push!(rate_constant_array,0.0)	#	209	 Degradation: E_R_fdp = []
push!(rate_constant_array,0.0)	#	210	 Degradation: E_R_fbaA = []
push!(rate_constant_array,0.0)	#	211	 Degradation: E_R_fbaA_R = []
push!(rate_constant_array,0.0)	#	212	 Degradation: E_R_tpiA = []
push!(rate_constant_array,0.0)	#	213	 Degradation: E_R_tpiA_R = []
push!(rate_constant_array,0.0)	#	214	 Degradation: E_R_gapA = []
push!(rate_constant_array,0.0)	#	215	 Degradation: E_R_gapA_R = []
push!(rate_constant_array,0.0)	#	216	 Degradation: E_R_pgk = []
push!(rate_constant_array,0.0)	#	217	 Degradation: E_R_pgk_R = []
push!(rate_constant_array,0.0)	#	218	 Degradation: E_R_gpm = []
push!(rate_constant_array,0.0)	#	219	 Degradation: E_R_gpm_R = []
push!(rate_constant_array,0.0)	#	220	 Degradation: E_R_eno = []
push!(rate_constant_array,0.0)	#	221	 Degradation: E_R_eno_R = []
push!(rate_constant_array,0.0)	#	222	 Degradation: E_R_pyk = []
push!(rate_constant_array,0.0)	#	223	 Degradation: E_R_pck = []
push!(rate_constant_array,0.0)	#	224	 Degradation: E_R_ppc = []
push!(rate_constant_array,0.0)	#	225	 Degradation: E_R_pdh = []
push!(rate_constant_array,0.0)	#	226	 Degradation: E_R_pps = []
push!(rate_constant_array,0.0)	#	227	 Degradation: E_R_zwf = []
push!(rate_constant_array,0.0)	#	228	 Degradation: E_R_zwf_R = []
push!(rate_constant_array,0.0)	#	229	 Degradation: E_R_pgl = []
push!(rate_constant_array,0.0)	#	230	 Degradation: E_R_gnd = []
push!(rate_constant_array,0.0)	#	231	 Degradation: E_R_rpe = []
push!(rate_constant_array,0.0)	#	232	 Degradation: E_R_rpe_R = []
push!(rate_constant_array,0.0)	#	233	 Degradation: E_R_rpi = []
push!(rate_constant_array,0.0)	#	234	 Degradation: E_R_rpi_R = []
push!(rate_constant_array,0.0)	#	235	 Degradation: E_R_talAB = []
push!(rate_constant_array,0.0)	#	236	 Degradation: E_R_talAB_R = []
push!(rate_constant_array,0.0)	#	237	 Degradation: E_R_tkt1 = []
push!(rate_constant_array,0.0)	#	238	 Degradation: E_R_tkt1_R = []
push!(rate_constant_array,0.0)	#	239	 Degradation: E_R_tkt2 = []
push!(rate_constant_array,0.0)	#	240	 Degradation: E_R_tkt2_R = []
push!(rate_constant_array,0.0)	#	241	 Degradation: E_R_edd = []
push!(rate_constant_array,0.0)	#	242	 Degradation: E_R_eda = []
push!(rate_constant_array,0.0)	#	243	 Degradation: E_R_gltA = []
push!(rate_constant_array,0.0)	#	244	 Degradation: E_R_acn = []
push!(rate_constant_array,0.0)	#	245	 Degradation: E_R_acn_R = []
push!(rate_constant_array,0.0)	#	246	 Degradation: E_R_icd = []
push!(rate_constant_array,0.0)	#	247	 Degradation: E_R_icd_R = []
push!(rate_constant_array,0.0)	#	248	 Degradation: E_R_sucAB = []
push!(rate_constant_array,0.0)	#	249	 Degradation: E_R_sucCD = []
push!(rate_constant_array,0.0)	#	250	 Degradation: E_R_sdh = []
push!(rate_constant_array,0.0)	#	251	 Degradation: E_R_frd = []
push!(rate_constant_array,0.0)	#	252	 Degradation: E_R_fum = []
push!(rate_constant_array,0.0)	#	253	 Degradation: E_R_fum_R = []
push!(rate_constant_array,0.0)	#	254	 Degradation: E_R_mdh = []
push!(rate_constant_array,0.0)	#	255	 Degradation: E_R_mdh_R = []
push!(rate_constant_array,0.0)	#	256	 Degradation: E_R_cyd = []
push!(rate_constant_array,0.0)	#	257	 Degradation: E_R_cyo = []
push!(rate_constant_array,0.0)	#	258	 Degradation: E_R_app = []
push!(rate_constant_array,0.0)	#	259	 Degradation: E_R_atp = []
push!(rate_constant_array,0.0)	#	260	 Degradation: E_R_nuo = []
push!(rate_constant_array,0.0)	#	261	 Degradation: E_R_pnt1 = []
push!(rate_constant_array,0.0)	#	262	 Degradation: E_R_pnt2 = []
push!(rate_constant_array,0.0)	#	263	 Degradation: E_R_ndh1 = []
push!(rate_constant_array,0.0)	#	264	 Degradation: E_R_ndh2 = []
push!(rate_constant_array,0.0)	#	265	 Degradation: E_R_ppa = []
push!(rate_constant_array,0.0)	#	266	 Degradation: E_R_aceA = []
push!(rate_constant_array,0.0)	#	267	 Degradation: E_R_aceB = []
push!(rate_constant_array,0.0)	#	268	 Degradation: E_R_maeA = []
push!(rate_constant_array,0.0)	#	269	 Degradation: E_R_maeB = []
push!(rate_constant_array,0.0)	#	270	 Degradation: E_R_pta = []
push!(rate_constant_array,0.0)	#	271	 Degradation: E_R_pta_R = []
push!(rate_constant_array,0.0)	#	272	 Degradation: E_R_ackA = []
push!(rate_constant_array,0.0)	#	273	 Degradation: E_R_ackA_R = []
push!(rate_constant_array,0.0)	#	274	 Degradation: E_R_acs = []
push!(rate_constant_array,0.0)	#	275	 Degradation: E_R_adhE = []
push!(rate_constant_array,0.0)	#	276	 Degradation: E_R_adhE_R = []
push!(rate_constant_array,0.0)	#	277	 Degradation: E_R_ldh = []
push!(rate_constant_array,0.0)	#	278	 Degradation: E_R_ldh_R = []
push!(rate_constant_array,0.0)	#	279	 Degradation: E_R_pflAB = []
push!(rate_constant_array,0.0)	#	280	 Degradation: E_R_alaAC = []
push!(rate_constant_array,0.0)	#	281	 Degradation: E_R_alaAC_R = []
push!(rate_constant_array,0.0)	#	282	 Degradation: E_R_arg = []
push!(rate_constant_array,0.0)	#	283	 Degradation: E_R_aspC = []
push!(rate_constant_array,0.0)	#	284	 Degradation: E_R_asnB = []
push!(rate_constant_array,0.0)	#	285	 Degradation: E_R_asnA = []
push!(rate_constant_array,0.0)	#	286	 Degradation: E_R_cysEMK = []
push!(rate_constant_array,0.0)	#	287	 Degradation: E_R_gltBD = []
push!(rate_constant_array,0.0)	#	288	 Degradation: E_R_gdhA = []
push!(rate_constant_array,0.0)	#	289	 Degradation: E_R_gdhA_R = []
push!(rate_constant_array,0.0)	#	290	 Degradation: E_R_glnA = []
push!(rate_constant_array,0.0)	#	291	 Degradation: E_R_glyA = []
push!(rate_constant_array,0.0)	#	292	 Degradation: E_R_his = []
push!(rate_constant_array,0.0)	#	293	 Degradation: E_R_ile = []
push!(rate_constant_array,0.0)	#	294	 Degradation: E_R_leu = []
push!(rate_constant_array,0.0)	#	295	 Degradation: E_R_lys = []
push!(rate_constant_array,0.0)	#	296	 Degradation: E_R_met = []
push!(rate_constant_array,0.0)	#	297	 Degradation: E_R_phe = []
push!(rate_constant_array,0.0)	#	298	 Degradation: E_R_pro = []
push!(rate_constant_array,0.0)	#	299	 Degradation: E_R_serABC = []
push!(rate_constant_array,0.0)	#	300	 Degradation: E_R_thr = []
push!(rate_constant_array,0.0)	#	301	 Degradation: E_R_trp = []
push!(rate_constant_array,0.0)	#	302	 Degradation: E_R_tyr = []
push!(rate_constant_array,0.0)	#	303	 Degradation: E_R_val = []
push!(rate_constant_array,0.0)	#	304	 Degradation: E_R_arg_deg = []
push!(rate_constant_array,0.0)	#	305	 Degradation: E_R_asp_deg = []
push!(rate_constant_array,0.0)	#	306	 Degradation: E_R_asn_deg = []
push!(rate_constant_array,0.0)	#	307	 Degradation: E_R_gly_deg = []
push!(rate_constant_array,0.0)	#	308	 Degradation: E_R_mglx_deg = []
push!(rate_constant_array,0.0)	#	309	 Degradation: E_R_ser_deg = []
push!(rate_constant_array,0.0)	#	310	 Degradation: E_R_pro_deg = []
push!(rate_constant_array,0.0)	#	311	 Degradation: E_R_thr_deg1 = []
push!(rate_constant_array,0.0)	#	312	 Degradation: E_R_thr_deg2 = []
push!(rate_constant_array,0.0)	#	313	 Degradation: E_R_thr_deg3 = []
push!(rate_constant_array,0.0)	#	314	 Degradation: E_R_trp_deg = []
push!(rate_constant_array,0.0)	#	315	 Degradation: E_R_cys_deg = []
push!(rate_constant_array,0.0)	#	316	 Degradation: E_R_lys_deg = []
push!(rate_constant_array,0.0)	#	317	 Degradation: E_R_gln_deg = []
push!(rate_constant_array,0.0)	#	318	 Degradation: E_R_glu_deg = []
push!(rate_constant_array,0.0)	#	319	 Degradation: E_R_gaba_deg1 = []
push!(rate_constant_array,0.0)	#	320	 Degradation: E_R_gaba_deg2 = []
push!(rate_constant_array,0.0)	#	321	 Degradation: E_R_chor = []
push!(rate_constant_array,0.0)	#	322	 Degradation: E_R_fol_e = []
push!(rate_constant_array,0.0)	#	323	 Degradation: E_R_fol_1 = []
push!(rate_constant_array,0.0)	#	324	 Degradation: E_R_fol_2a = []
push!(rate_constant_array,0.0)	#	325	 Degradation: E_R_fol_2b = []
push!(rate_constant_array,0.0)	#	326	 Degradation: E_R_fol_3 = []
push!(rate_constant_array,0.0)	#	327	 Degradation: E_R_fol_4 = []
push!(rate_constant_array,0.0)	#	328	 Degradation: E_R_gly_fol = []
push!(rate_constant_array,0.0)	#	329	 Degradation: E_R_gly_fol_R = []
push!(rate_constant_array,0.0)	#	330	 Degradation: E_R_mthfd = []
push!(rate_constant_array,0.0)	#	331	 Degradation: E_R_mthfd_R = []
push!(rate_constant_array,0.0)	#	332	 Degradation: E_R_mthfc = []
push!(rate_constant_array,0.0)	#	333	 Degradation: E_R_mthfc_R = []
push!(rate_constant_array,0.0)	#	334	 Degradation: E_R_mthfr2a = []
push!(rate_constant_array,0.0)	#	335	 Degradation: E_R_mthfr2b = []
push!(rate_constant_array,0.0)	#	336	 Degradation: E_R_prpp_syn = []
push!(rate_constant_array,0.0)	#	337	 Degradation: E_R_or_syn_1 = []
push!(rate_constant_array,0.0)	#	338	 Degradation: E_R_or_syn_2 = []
push!(rate_constant_array,0.0)	#	339	 Degradation: E_R_omp_syn = []
push!(rate_constant_array,0.0)	#	340	 Degradation: E_R_ump_syn = []
push!(rate_constant_array,0.0)	#	341	 Degradation: E_R_ctp_1 = []
push!(rate_constant_array,0.0)	#	342	 Degradation: E_R_ctp_2 = []
push!(rate_constant_array,0.0)	#	343	 Degradation: E_R_A_syn_1 = []
push!(rate_constant_array,0.0)	#	344	 Degradation: E_R_A_syn_2 = []
push!(rate_constant_array,0.0)	#	345	 Degradation: E_R_A_syn_3 = []
push!(rate_constant_array,0.0)	#	346	 Degradation: E_R_A_syn_4 = []
push!(rate_constant_array,0.0)	#	347	 Degradation: E_R_A_syn_5 = []
push!(rate_constant_array,0.0)	#	348	 Degradation: E_R_A_syn_6 = []
push!(rate_constant_array,0.0)	#	349	 Degradation: E_R_A_syn_7 = []
push!(rate_constant_array,0.0)	#	350	 Degradation: E_R_A_syn_8 = []
push!(rate_constant_array,0.0)	#	351	 Degradation: E_R_A_syn_9 = []
push!(rate_constant_array,0.0)	#	352	 Degradation: E_R_A_syn_10 = []
push!(rate_constant_array,0.0)	#	353	 Degradation: E_R_A_syn_12 = []
push!(rate_constant_array,0.0)	#	354	 Degradation: E_R_xmp_syn = []
push!(rate_constant_array,0.0)	#	355	 Degradation: E_R_gmp_syn = []
push!(rate_constant_array,0.0)	#	356	 Degradation: E_R_atp_amp = []
push!(rate_constant_array,0.0)	#	357	 Degradation: E_R_utp_ump = []
push!(rate_constant_array,0.0)	#	358	 Degradation: E_R_ctp_cmp = []
push!(rate_constant_array,0.0)	#	359	 Degradation: E_R_gtp_gmp = []
push!(rate_constant_array,0.0)	#	360	 Degradation: E_R_atp_adp = []
push!(rate_constant_array,0.0)	#	361	 Degradation: E_R_utp_adp = []
push!(rate_constant_array,0.0)	#	362	 Degradation: E_R_ctp_adp = []
push!(rate_constant_array,0.0)	#	363	 Degradation: E_R_gtp_adp = []
push!(rate_constant_array,0.0)	#	364	 Degradation: E_R_udp_utp = []
push!(rate_constant_array,0.0)	#	365	 Degradation: E_R_cdp_ctp = []
push!(rate_constant_array,0.0)	#	366	 Degradation: E_R_gdp_gtp = []
push!(rate_constant_array,0.0)	#	367	 Degradation: E_R_atp_ump = []
push!(rate_constant_array,0.0)	#	368	 Degradation: E_R_atp_cmp = []
push!(rate_constant_array,0.0)	#	369	 Degradation: E_R_atp_gmp = []
push!(rate_constant_array,0.0)	#	370	 Degradation: E_R_adk_atp = []
push!(rate_constant_array,0.0)	#	371	 Degradation: E_Import_o2 = []
push!(rate_constant_array,0.0)	#	372	 Degradation: E_Import_co2 = []
push!(rate_constant_array,0.0)	#	373	 Degradation: E_Import_pi = []
push!(rate_constant_array,0.0)	#	374	 Degradation: E_Import_nh4 = []
push!(rate_constant_array,0.0)	#	375	 Degradation: E_Import_so4 = []
push!(rate_constant_array,0.0)	#	376	 Degradation: E_Import_h2o = []
push!(rate_constant_array,0.0)	#	377	 Degradation: E_Export_o2 = []
push!(rate_constant_array,0.0)	#	378	 Degradation: E_Export_co2 = []
push!(rate_constant_array,0.0)	#	379	 Degradation: E_Export_pi = []
push!(rate_constant_array,0.0)	#	380	 Degradation: E_Export_nh4 = []
push!(rate_constant_array,0.0)	#	381	 Degradation: E_Export_so4 = []
push!(rate_constant_array,0.0)	#	382	 Degradation: E_Export_h2o = []
push!(rate_constant_array,0.0)	#	383	 Degradation: E_Proton_gradient = []
push!(rate_constant_array,0.0)	#	384	 Degradation: E_transcriptional_initiation_CAT = []
push!(rate_constant_array,0.0)	#	385	 Degradation: E_transcription_CAT = []
push!(rate_constant_array,0.0)	#	386	 Degradation: E_mRNA_degradation_CAT = []
push!(rate_constant_array,0.0)	#	387	 Degradation: E_translation_initiation_CAT = []
push!(rate_constant_array,0.0)	#	388	 Degradation: E_translation_CAT = []
push!(rate_constant_array,0.0)	#	389	 Degradation: E_tRNA_charging_M_ala_L_c_CAT = []
push!(rate_constant_array,0.0)	#	390	 Degradation: E_tRNA_charging_M_arg_L_c_CAT = []
push!(rate_constant_array,0.0)	#	391	 Degradation: E_tRNA_charging_M_asn_L_c_CAT = []
push!(rate_constant_array,0.0)	#	392	 Degradation: E_tRNA_charging_M_asp_L_c_CAT = []
push!(rate_constant_array,0.0)	#	393	 Degradation: E_tRNA_charging_M_cys_L_c_CAT = []
push!(rate_constant_array,0.0)	#	394	 Degradation: E_tRNA_charging_M_glu_L_c_CAT = []
push!(rate_constant_array,0.0)	#	395	 Degradation: E_tRNA_charging_M_gln_L_c_CAT = []
push!(rate_constant_array,0.0)	#	396	 Degradation: E_tRNA_charging_M_gly_L_c_CAT = []
push!(rate_constant_array,0.0)	#	397	 Degradation: E_tRNA_charging_M_his_L_c_CAT = []
push!(rate_constant_array,0.0)	#	398	 Degradation: E_tRNA_charging_M_ile_L_c_CAT = []
push!(rate_constant_array,0.0)	#	399	 Degradation: E_tRNA_charging_M_leu_L_c_CAT = []
push!(rate_constant_array,0.0)	#	400	 Degradation: E_tRNA_charging_M_lys_L_c_CAT = []
push!(rate_constant_array,0.0)	#	401	 Degradation: E_tRNA_charging_M_met_L_c_CAT = []
push!(rate_constant_array,0.0)	#	402	 Degradation: E_tRNA_charging_M_phe_L_c_CAT = []
push!(rate_constant_array,0.0)	#	403	 Degradation: E_tRNA_charging_M_pro_L_c_CAT = []
push!(rate_constant_array,0.0)	#	404	 Degradation: E_tRNA_charging_M_ser_L_c_CAT = []
push!(rate_constant_array,0.0)	#	405	 Degradation: E_tRNA_charging_M_thr_L_c_CAT = []
push!(rate_constant_array,0.0)	#	406	 Degradation: E_tRNA_charging_M_trp_L_c_CAT = []
push!(rate_constant_array,0.0)	#	407	 Degradation: E_tRNA_charging_M_tyr_L_c_CAT = []
push!(rate_constant_array,0.0)	#	408	 Degradation: E_tRNA_charging_M_val_L_c_CAT = []

# Formulate the saturation constant array - 
saturation_constant_array = zeros(NREACTIONS,NSPECIES);
saturation_constant_array[1,106] = 1.0;	#	 Name: R_glk_atp: M_atp_c+M_glc_D_c = M_adp_c+M_g6p_c+M_h_c Species: M_atp_c
saturation_constant_array[1,100] = 1.0;	#	 Name: R_glk_atp: M_atp_c+M_glc_D_c = M_adp_c+M_g6p_c+M_h_c Species: M_glc_D_c
saturation_constant_array[2,1] = 1.0;	#	 Name: R_pgi: M_g6p_c = M_f6p_c Species: M_g6p_c
saturation_constant_array[3,2] = 1.0;	#	 Name: R_pgi_R: M_f6p_c = M_g6p_c Species: M_f6p_c
saturation_constant_array[4,106] = 1.0;	#	 Name: R_pfk: M_atp_c+M_f6p_c = M_adp_c+M_fdp_c Species: M_atp_c
saturation_constant_array[4,2] = 1.0;	#	 Name: R_pfk: M_atp_c+M_f6p_c = M_adp_c+M_fdp_c Species: M_f6p_c
saturation_constant_array[5,3] = 1.0;	#	 Name: R_fdp: M_fdp_c+M_h2o_c = M_f6p_c+M_pi_c Species: M_fdp_c
saturation_constant_array[5,144] = 1.0;	#	 Name: R_fdp: M_fdp_c+M_h2o_c = M_f6p_c+M_pi_c Species: M_h2o_c
saturation_constant_array[6,3] = 1.0;	#	 Name: R_fbaA: M_fdp_c = M_dhap_c+M_g3p_c Species: M_fdp_c
saturation_constant_array[7,4] = 1.0;	#	 Name: R_fbaA_R: M_dhap_c+M_g3p_c = M_fdp_c Species: M_dhap_c
saturation_constant_array[7,5] = 1.0;	#	 Name: R_fbaA_R: M_dhap_c+M_g3p_c = M_fdp_c Species: M_g3p_c
saturation_constant_array[8,4] = 1.0;	#	 Name: R_tpiA: M_dhap_c = M_g3p_c Species: M_dhap_c
saturation_constant_array[9,5] = 1.0;	#	 Name: R_tpiA_R: M_g3p_c = M_dhap_c Species: M_g3p_c
saturation_constant_array[10,5] = 1.0;	#	 Name: R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c Species: M_g3p_c
saturation_constant_array[10,145] = 1.0;	#	 Name: R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c Species: M_nad_c
saturation_constant_array[10,140] = 1.0;	#	 Name: R_gapA: M_g3p_c+M_nad_c+M_pi_c = M_13dpg_c+M_h_c+M_nadh_c Species: M_pi_c
saturation_constant_array[11,6] = 1.0;	#	 Name: R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c Species: M_13dpg_c
saturation_constant_array[11,143] = 1.0;	#	 Name: R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c Species: M_h_c
saturation_constant_array[11,146] = 1.0;	#	 Name: R_gapA_R: M_13dpg_c+M_h_c+M_nadh_c = M_g3p_c+M_nad_c+M_pi_c Species: M_nadh_c
saturation_constant_array[12,6] = 1.0;	#	 Name: R_pgk: M_13dpg_c+M_adp_c = M_3pg_c+M_atp_c Species: M_13dpg_c
saturation_constant_array[12,107] = 1.0;	#	 Name: R_pgk: M_13dpg_c+M_adp_c = M_3pg_c+M_atp_c Species: M_adp_c
saturation_constant_array[13,7] = 1.0;	#	 Name: R_pgk_R: M_3pg_c+M_atp_c = M_13dpg_c+M_adp_c Species: M_3pg_c
saturation_constant_array[13,106] = 1.0;	#	 Name: R_pgk_R: M_3pg_c+M_atp_c = M_13dpg_c+M_adp_c Species: M_atp_c
saturation_constant_array[14,7] = 1.0;	#	 Name: R_gpm: M_3pg_c = M_2pg_c Species: M_3pg_c
saturation_constant_array[15,8] = 1.0;	#	 Name: R_gpm_R: M_2pg_c = M_3pg_c Species: M_2pg_c
saturation_constant_array[16,8] = 1.0;	#	 Name: R_eno: M_2pg_c = M_h2o_c+M_pep_c Species: M_2pg_c
saturation_constant_array[17,144] = 1.0;	#	 Name: R_eno_R: M_h2o_c+M_pep_c = M_2pg_c Species: M_h2o_c
saturation_constant_array[17,101] = 1.0;	#	 Name: R_eno_R: M_h2o_c+M_pep_c = M_2pg_c Species: M_pep_c
saturation_constant_array[18,107] = 1.0;	#	 Name: R_pyk: M_adp_c+M_pep_c = M_atp_c+M_pyr_c Species: M_adp_c
saturation_constant_array[18,101] = 1.0;	#	 Name: R_pyk: M_adp_c+M_pep_c = M_atp_c+M_pyr_c Species: M_pep_c
saturation_constant_array[19,106] = 1.0;	#	 Name: R_pck: M_atp_c+M_oaa_c = M_adp_c+M_co2_c+M_pep_c Species: M_atp_c
saturation_constant_array[19,9] = 1.0;	#	 Name: R_pck: M_atp_c+M_oaa_c = M_adp_c+M_co2_c+M_pep_c Species: M_oaa_c
saturation_constant_array[20,139] = 1.0;	#	 Name: R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_oaa_c+M_pi_c Species: M_co2_c
saturation_constant_array[20,144] = 1.0;	#	 Name: R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_oaa_c+M_pi_c Species: M_h2o_c
saturation_constant_array[20,101] = 1.0;	#	 Name: R_ppc: M_co2_c+M_h2o_c+M_pep_c = M_oaa_c+M_pi_c Species: M_pep_c
saturation_constant_array[21,10] = 1.0;	#	 Name: R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c+M_h_c Species: M_coa_c
saturation_constant_array[21,145] = 1.0;	#	 Name: R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c+M_h_c Species: M_nad_c
saturation_constant_array[21,102] = 1.0;	#	 Name: R_pdh: M_coa_c+M_nad_c+M_pyr_c = M_accoa_c+M_co2_c+M_nadh_c+M_h_c Species: M_pyr_c
saturation_constant_array[22,106] = 1.0;	#	 Name: R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+M_pep_c+M_pi_c Species: M_atp_c
saturation_constant_array[22,144] = 1.0;	#	 Name: R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+M_pep_c+M_pi_c Species: M_h2o_c
saturation_constant_array[22,102] = 1.0;	#	 Name: R_pps: M_atp_c+M_h2o_c+M_pyr_c = M_amp_c+M_pep_c+M_pi_c Species: M_pyr_c
saturation_constant_array[23,1] = 1.0;	#	 Name: R_zwf: M_g6p_c+M_nadp_c = M_6pgl_c+M_h_c+M_nadph_c Species: M_g6p_c
saturation_constant_array[23,147] = 1.0;	#	 Name: R_zwf: M_g6p_c+M_nadp_c = M_6pgl_c+M_h_c+M_nadph_c Species: M_nadp_c
saturation_constant_array[24,12] = 1.0;	#	 Name: R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c Species: M_6pgl_c
saturation_constant_array[24,143] = 1.0;	#	 Name: R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c Species: M_h_c
saturation_constant_array[24,148] = 1.0;	#	 Name: R_zwf_R: M_6pgl_c+M_h_c+M_nadph_c = M_g6p_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[25,12] = 1.0;	#	 Name: R_pgl: M_6pgl_c+M_h2o_c = M_6pgc_c Species: M_6pgl_c
saturation_constant_array[25,144] = 1.0;	#	 Name: R_pgl: M_6pgl_c+M_h2o_c = M_6pgc_c Species: M_h2o_c
saturation_constant_array[26,13] = 1.0;	#	 Name: R_gnd: M_6pgc_c+M_nadp_c = M_co2_c+M_nadph_c+M_ru5p_D_c+M_h_c Species: M_6pgc_c
saturation_constant_array[26,147] = 1.0;	#	 Name: R_gnd: M_6pgc_c+M_nadp_c = M_co2_c+M_nadph_c+M_ru5p_D_c+M_h_c Species: M_nadp_c
saturation_constant_array[27,14] = 1.0;	#	 Name: R_rpe: M_ru5p_D_c = M_xu5p_D_c Species: M_ru5p_D_c
saturation_constant_array[28,15] = 1.0;	#	 Name: R_rpe_R: M_xu5p_D_c = M_ru5p_D_c Species: M_xu5p_D_c
saturation_constant_array[29,16] = 1.0;	#	 Name: R_rpi: M_r5p_c = M_ru5p_D_c Species: M_r5p_c
saturation_constant_array[30,14] = 1.0;	#	 Name: R_rpi_R: M_ru5p_D_c = M_r5p_c Species: M_ru5p_D_c
saturation_constant_array[31,5] = 1.0;	#	 Name: R_talAB: M_g3p_c+M_s7p_c = M_e4p_c+M_f6p_c Species: M_g3p_c
saturation_constant_array[31,17] = 1.0;	#	 Name: R_talAB: M_g3p_c+M_s7p_c = M_e4p_c+M_f6p_c Species: M_s7p_c
saturation_constant_array[32,18] = 1.0;	#	 Name: R_talAB_R: M_e4p_c+M_f6p_c = M_g3p_c+M_s7p_c Species: M_e4p_c
saturation_constant_array[32,2] = 1.0;	#	 Name: R_talAB_R: M_e4p_c+M_f6p_c = M_g3p_c+M_s7p_c Species: M_f6p_c
saturation_constant_array[33,16] = 1.0;	#	 Name: R_tkt1: M_r5p_c+M_xu5p_D_c = M_g3p_c+M_s7p_c Species: M_r5p_c
saturation_constant_array[33,15] = 1.0;	#	 Name: R_tkt1: M_r5p_c+M_xu5p_D_c = M_g3p_c+M_s7p_c Species: M_xu5p_D_c
saturation_constant_array[34,5] = 1.0;	#	 Name: R_tkt1_R: M_g3p_c+M_s7p_c = M_r5p_c+M_xu5p_D_c Species: M_g3p_c
saturation_constant_array[34,17] = 1.0;	#	 Name: R_tkt1_R: M_g3p_c+M_s7p_c = M_r5p_c+M_xu5p_D_c Species: M_s7p_c
saturation_constant_array[35,18] = 1.0;	#	 Name: R_tkt2: M_e4p_c+M_xu5p_D_c = M_f6p_c+M_g3p_c Species: M_e4p_c
saturation_constant_array[35,15] = 1.0;	#	 Name: R_tkt2: M_e4p_c+M_xu5p_D_c = M_f6p_c+M_g3p_c Species: M_xu5p_D_c
saturation_constant_array[36,2] = 1.0;	#	 Name: R_tkt2_R: M_f6p_c+M_g3p_c = M_e4p_c+M_xu5p_D_c Species: M_f6p_c
saturation_constant_array[36,5] = 1.0;	#	 Name: R_tkt2_R: M_f6p_c+M_g3p_c = M_e4p_c+M_xu5p_D_c Species: M_g3p_c
saturation_constant_array[37,13] = 1.0;	#	 Name: R_edd: M_6pgc_c = M_2ddg6p_c+M_h2o_c Species: M_6pgc_c
saturation_constant_array[38,19] = 1.0;	#	 Name: R_eda: M_2ddg6p_c = M_g3p_c+M_pyr_c Species: M_2ddg6p_c
saturation_constant_array[39,11] = 1.0;	#	 Name: R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c Species: M_accoa_c
saturation_constant_array[39,144] = 1.0;	#	 Name: R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c Species: M_h2o_c
saturation_constant_array[39,9] = 1.0;	#	 Name: R_gltA: M_accoa_c+M_h2o_c+M_oaa_c = M_cit_c+M_coa_c Species: M_oaa_c
saturation_constant_array[40,20] = 1.0;	#	 Name: R_acn: M_cit_c = M_icit_c Species: M_cit_c
saturation_constant_array[41,21] = 1.0;	#	 Name: R_acn_R: M_icit_c = M_cit_c Species: M_icit_c
saturation_constant_array[42,21] = 1.0;	#	 Name: R_icd: M_icit_c+M_nadp_c = M_akg_c+M_co2_c+M_nadph_c+M_h_c Species: M_icit_c
saturation_constant_array[42,147] = 1.0;	#	 Name: R_icd: M_icit_c+M_nadp_c = M_akg_c+M_co2_c+M_nadph_c+M_h_c Species: M_nadp_c
saturation_constant_array[43,22] = 1.0;	#	 Name: R_icd_R: M_akg_c+M_co2_c+M_nadph_c+M_h_c = M_icit_c+M_nadp_c Species: M_akg_c
saturation_constant_array[43,139] = 1.0;	#	 Name: R_icd_R: M_akg_c+M_co2_c+M_nadph_c+M_h_c = M_icit_c+M_nadp_c Species: M_co2_c
saturation_constant_array[43,148] = 1.0;	#	 Name: R_icd_R: M_akg_c+M_co2_c+M_nadph_c+M_h_c = M_icit_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[43,143] = 1.0;	#	 Name: R_icd_R: M_akg_c+M_co2_c+M_nadph_c+M_h_c = M_icit_c+M_nadp_c Species: M_h_c
saturation_constant_array[44,22] = 1.0;	#	 Name: R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c+M_h_c Species: M_akg_c
saturation_constant_array[44,10] = 1.0;	#	 Name: R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c+M_h_c Species: M_coa_c
saturation_constant_array[44,145] = 1.0;	#	 Name: R_sucAB: M_akg_c+M_coa_c+M_nad_c = M_co2_c+M_nadh_c+M_succoa_c+M_h_c Species: M_nad_c
saturation_constant_array[45,107] = 1.0;	#	 Name: R_sucCD: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c Species: M_adp_c
saturation_constant_array[45,140] = 1.0;	#	 Name: R_sucCD: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c Species: M_pi_c
saturation_constant_array[45,23] = 1.0;	#	 Name: R_sucCD: M_adp_c+M_pi_c+M_succoa_c = M_atp_c+M_coa_c+M_succ_c Species: M_succoa_c
saturation_constant_array[46,24] = 1.0;	#	 Name: R_sdh: M_q8_c+M_succ_c = M_fum_c+M_q8h2_c Species: M_q8_c
saturation_constant_array[46,118] = 1.0;	#	 Name: R_sdh: M_q8_c+M_succ_c = M_fum_c+M_q8h2_c Species: M_succ_c
saturation_constant_array[47,25] = 1.0;	#	 Name: R_frd: M_fum_c+M_mql8_c = M_mqn8_c+M_succ_c Species: M_fum_c
saturation_constant_array[47,27] = 1.0;	#	 Name: R_frd: M_fum_c+M_mql8_c = M_mqn8_c+M_succ_c Species: M_mql8_c
saturation_constant_array[48,25] = 1.0;	#	 Name: R_fum: M_fum_c+M_h2o_c = M_mal_L_c Species: M_fum_c
saturation_constant_array[48,144] = 1.0;	#	 Name: R_fum: M_fum_c+M_h2o_c = M_mal_L_c Species: M_h2o_c
saturation_constant_array[49,105] = 1.0;	#	 Name: R_fum_R: M_mal_L_c = M_fum_c+M_h2o_c Species: M_mal_L_c
saturation_constant_array[50,105] = 1.0;	#	 Name: R_mdh: M_mal_L_c+M_nad_c = M_oaa_c+M_h_c+M_nadh_c Species: M_mal_L_c
saturation_constant_array[50,145] = 1.0;	#	 Name: R_mdh: M_mal_L_c+M_nad_c = M_oaa_c+M_h_c+M_nadh_c Species: M_nad_c
saturation_constant_array[51,9] = 1.0;	#	 Name: R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c Species: M_oaa_c
saturation_constant_array[51,143] = 1.0;	#	 Name: R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c Species: M_h_c
saturation_constant_array[51,146] = 1.0;	#	 Name: R_mdh_R: M_oaa_c+M_h_c+M_nadh_c = M_mal_L_c+M_nad_c Species: M_nadh_c
saturation_constant_array[52,143] = 1.0;	#	 Name: R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e Species: M_h_c
saturation_constant_array[52,138] = 1.0;	#	 Name: R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e Species: M_o2_c
saturation_constant_array[52,26] = 1.0;	#	 Name: R_cyd: 2*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+2*M_h_e Species: M_q8h2_c
saturation_constant_array[53,143] = 1.0;	#	 Name: R_cyo: 4*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+4*M_h_e Species: M_h_c
saturation_constant_array[53,138] = 1.0;	#	 Name: R_cyo: 4*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+4*M_h_e Species: M_o2_c
saturation_constant_array[53,26] = 1.0;	#	 Name: R_cyo: 4*M_h_c+0.5*M_o2_c+M_q8h2_c = M_h2o_c+M_q8_c+4*M_h_e Species: M_q8h2_c
saturation_constant_array[54,143] = 1.0;	#	 Name: R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e Species: M_h_c
saturation_constant_array[54,27] = 1.0;	#	 Name: R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e Species: M_mql8_c
saturation_constant_array[54,138] = 1.0;	#	 Name: R_app: 2*M_h_c+M_mql8_c+0.5*M_o2_c = M_h2o_c+M_mqn8_c+2*M_h_e Species: M_o2_c
saturation_constant_array[55,107] = 1.0;	#	 Name: R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+4*M_h_c+M_h2o_c Species: M_adp_c
saturation_constant_array[55,140] = 1.0;	#	 Name: R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+4*M_h_c+M_h2o_c Species: M_pi_c
saturation_constant_array[55,29] = 1.0;	#	 Name: R_atp: M_adp_c+M_pi_c+4*M_h_e = M_atp_c+4*M_h_c+M_h2o_c Species: M_h_e
saturation_constant_array[56,143] = 1.0;	#	 Name: R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e Species: M_h_c
saturation_constant_array[56,146] = 1.0;	#	 Name: R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e Species: M_nadh_c
saturation_constant_array[56,24] = 1.0;	#	 Name: R_nuo: 3*M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c+2*M_h_e Species: M_q8_c
saturation_constant_array[57,145] = 1.0;	#	 Name: R_pnt1: M_nad_c+M_nadph_c = M_nadh_c+M_nadp_c Species: M_nad_c
saturation_constant_array[57,148] = 1.0;	#	 Name: R_pnt1: M_nad_c+M_nadph_c = M_nadh_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[58,146] = 1.0;	#	 Name: R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c Species: M_nadh_c
saturation_constant_array[58,147] = 1.0;	#	 Name: R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c Species: M_nadp_c
saturation_constant_array[58,29] = 1.0;	#	 Name: R_pnt2: M_nadh_c+M_nadp_c+2*M_h_e = 2*M_h_c+M_nad_c+M_nadph_c Species: M_h_e
saturation_constant_array[59,143] = 1.0;	#	 Name: R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c Species: M_h_c
saturation_constant_array[59,146] = 1.0;	#	 Name: R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c Species: M_nadh_c
saturation_constant_array[59,24] = 1.0;	#	 Name: R_ndh1: M_h_c+M_nadh_c+M_q8_c = M_nad_c+M_q8h2_c Species: M_q8_c
saturation_constant_array[60,143] = 1.0;	#	 Name: R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c Species: M_h_c
saturation_constant_array[60,28] = 1.0;	#	 Name: R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c Species: M_mqn8_c
saturation_constant_array[60,146] = 1.0;	#	 Name: R_ndh2: M_h_c+M_mqn8_c+M_nadh_c = M_mql8_c+M_nad_c Species: M_nadh_c
saturation_constant_array[61,30] = 1.0;	#	 Name: R_ppa: M_ppi_c+M_h2o_c = 2*M_pi_c Species: M_ppi_c
saturation_constant_array[61,144] = 1.0;	#	 Name: R_ppa: M_ppi_c+M_h2o_c = 2*M_pi_c Species: M_h2o_c
saturation_constant_array[62,21] = 1.0;	#	 Name: R_aceA: M_icit_c = M_glx_c+M_succ_c Species: M_icit_c
saturation_constant_array[63,11] = 1.0;	#	 Name: R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_mal_L_c Species: M_accoa_c
saturation_constant_array[63,31] = 1.0;	#	 Name: R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_mal_L_c Species: M_glx_c
saturation_constant_array[63,144] = 1.0;	#	 Name: R_aceB: M_accoa_c+M_glx_c+M_h2o_c = M_coa_c+M_mal_L_c Species: M_h2o_c
saturation_constant_array[64,105] = 1.0;	#	 Name: R_maeA: M_mal_L_c+M_nad_c = M_co2_c+M_nadh_c+M_pyr_c+M_h_c Species: M_mal_L_c
saturation_constant_array[64,145] = 1.0;	#	 Name: R_maeA: M_mal_L_c+M_nad_c = M_co2_c+M_nadh_c+M_pyr_c+M_h_c Species: M_nad_c
saturation_constant_array[65,105] = 1.0;	#	 Name: R_maeB: M_mal_L_c+M_nadp_c = M_co2_c+M_nadph_c+M_pyr_c+M_h_c Species: M_mal_L_c
saturation_constant_array[65,147] = 1.0;	#	 Name: R_maeB: M_mal_L_c+M_nadp_c = M_co2_c+M_nadph_c+M_pyr_c+M_h_c Species: M_nadp_c
saturation_constant_array[66,11] = 1.0;	#	 Name: R_pta: M_accoa_c+M_pi_c = M_actp_c+M_coa_c Species: M_accoa_c
saturation_constant_array[66,140] = 1.0;	#	 Name: R_pta: M_accoa_c+M_pi_c = M_actp_c+M_coa_c Species: M_pi_c
saturation_constant_array[67,32] = 1.0;	#	 Name: R_pta_R: M_actp_c+M_coa_c = M_accoa_c+M_pi_c Species: M_actp_c
saturation_constant_array[67,10] = 1.0;	#	 Name: R_pta_R: M_actp_c+M_coa_c = M_accoa_c+M_pi_c Species: M_coa_c
saturation_constant_array[68,32] = 1.0;	#	 Name: R_ackA: M_actp_c+M_adp_c = M_ac_c+M_atp_c Species: M_actp_c
saturation_constant_array[68,107] = 1.0;	#	 Name: R_ackA: M_actp_c+M_adp_c = M_ac_c+M_atp_c Species: M_adp_c
saturation_constant_array[69,103] = 1.0;	#	 Name: R_ackA_R: M_ac_c+M_atp_c = M_actp_c+M_adp_c Species: M_ac_c
saturation_constant_array[69,106] = 1.0;	#	 Name: R_ackA_R: M_ac_c+M_atp_c = M_actp_c+M_adp_c Species: M_atp_c
saturation_constant_array[70,103] = 1.0;	#	 Name: R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c Species: M_ac_c
saturation_constant_array[70,106] = 1.0;	#	 Name: R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c Species: M_atp_c
saturation_constant_array[70,10] = 1.0;	#	 Name: R_acs: M_ac_c+M_atp_c+M_coa_c = M_accoa_c+M_amp_c+M_ppi_c Species: M_coa_c
saturation_constant_array[71,11] = 1.0;	#	 Name: R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c Species: M_accoa_c
saturation_constant_array[71,143] = 1.0;	#	 Name: R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c Species: M_h_c
saturation_constant_array[71,146] = 1.0;	#	 Name: R_adhE: M_accoa_c+2*M_h_c+2*M_nadh_c = M_coa_c+M_etoh_c+2*M_nad_c Species: M_nadh_c
saturation_constant_array[72,10] = 1.0;	#	 Name: R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c Species: M_coa_c
saturation_constant_array[72,33] = 1.0;	#	 Name: R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c Species: M_etoh_c
saturation_constant_array[72,145] = 1.0;	#	 Name: R_adhE_R: M_coa_c+M_etoh_c+2*M_nad_c = M_accoa_c+2*M_h_c+2*M_nadh_c Species: M_nad_c
saturation_constant_array[73,102] = 1.0;	#	 Name: R_ldh: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c Species: M_pyr_c
saturation_constant_array[73,146] = 1.0;	#	 Name: R_ldh: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c Species: M_nadh_c
saturation_constant_array[73,143] = 1.0;	#	 Name: R_ldh: M_pyr_c+M_nadh_c+M_h_c = M_lac_D_c+M_nad_c Species: M_h_c
saturation_constant_array[74,104] = 1.0;	#	 Name: R_ldh_R: M_lac_D_c+M_nad_c = M_pyr_c+M_nadh_c+M_h_c Species: M_lac_D_c
saturation_constant_array[74,145] = 1.0;	#	 Name: R_ldh_R: M_lac_D_c+M_nad_c = M_pyr_c+M_nadh_c+M_h_c Species: M_nad_c
saturation_constant_array[75,10] = 1.0;	#	 Name: R_pflAB: M_coa_c+M_pyr_c = M_accoa_c+M_for_c Species: M_coa_c
saturation_constant_array[75,102] = 1.0;	#	 Name: R_pflAB: M_coa_c+M_pyr_c = M_accoa_c+M_for_c Species: M_pyr_c
saturation_constant_array[76,102] = 1.0;	#	 Name: R_alaAC: M_pyr_c+M_glu_L_c = M_ala_L_c+M_akg_c Species: M_pyr_c
saturation_constant_array[76,136] = 1.0;	#	 Name: R_alaAC: M_pyr_c+M_glu_L_c = M_ala_L_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[77,126] = 1.0;	#	 Name: R_alaAC_R: M_ala_L_c+M_akg_c = M_pyr_c+M_glu_L_c Species: M_ala_L_c
saturation_constant_array[77,22] = 1.0;	#	 Name: R_alaAC_R: M_ala_L_c+M_akg_c = M_pyr_c+M_glu_L_c Species: M_akg_c
saturation_constant_array[78,11] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_accoa_c
saturation_constant_array[78,136] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_glu_L_c
saturation_constant_array[78,106] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_atp_c
saturation_constant_array[78,148] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_nadph_c
saturation_constant_array[78,143] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_h_c
saturation_constant_array[78,144] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_h2o_c
saturation_constant_array[78,35] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_nh3_c
saturation_constant_array[78,139] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_co2_c
saturation_constant_array[78,119] = 1.0;	#	 Name: R_arg: M_accoa_c+2*M_glu_L_c+3*M_atp_c+M_nadph_c+M_h_c+M_h2o_c+M_nh3_c+M_co2_c+M_asp_L_c = M_coa_c+2*M_adp_c+2*M_pi_c+M_nadp_c+M_akg_c+M_ac_c+M_amp_c+M_ppi_c+M_fum_c+M_arg_L_c Species: M_asp_L_c
saturation_constant_array[79,136] = 1.0;	#	 Name: R_aspC: M_glu_L_c+M_oaa_c = M_asp_L_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[79,9] = 1.0;	#	 Name: R_aspC: M_glu_L_c+M_oaa_c = M_asp_L_c+M_akg_c Species: M_oaa_c
saturation_constant_array[80,119] = 1.0;	#	 Name: R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_ppi_c+M_amp_c Species: M_asp_L_c
saturation_constant_array[80,137] = 1.0;	#	 Name: R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_ppi_c+M_amp_c Species: M_gln_L_c
saturation_constant_array[80,144] = 1.0;	#	 Name: R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_ppi_c+M_amp_c Species: M_h2o_c
saturation_constant_array[80,106] = 1.0;	#	 Name: R_asnB: M_asp_L_c+M_gln_L_c+M_h2o_c+M_atp_c = M_asn_L_c+M_glu_L_c+M_ppi_c+M_amp_c Species: M_atp_c
saturation_constant_array[81,119] = 1.0;	#	 Name: R_asnA: M_asp_L_c+M_atp_c+M_nh3_c = M_asn_L_c+M_ppi_c+M_amp_c Species: M_asp_L_c
saturation_constant_array[81,106] = 1.0;	#	 Name: R_asnA: M_asp_L_c+M_atp_c+M_nh3_c = M_asn_L_c+M_ppi_c+M_amp_c Species: M_atp_c
saturation_constant_array[81,35] = 1.0;	#	 Name: R_asnA: M_asp_L_c+M_atp_c+M_nh3_c = M_asn_L_c+M_ppi_c+M_amp_c Species: M_nh3_c
saturation_constant_array[82,129] = 1.0;	#	 Name: R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_ac_c Species: M_ser_L_c
saturation_constant_array[82,11] = 1.0;	#	 Name: R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_ac_c Species: M_accoa_c
saturation_constant_array[82,37] = 1.0;	#	 Name: R_cysEMK: M_ser_L_c+M_accoa_c+M_h2s_c = M_cys_L_c+M_coa_c+M_ac_c Species: M_h2s_c
saturation_constant_array[83,137] = 1.0;	#	 Name: R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2.0*M_glu_L_c+M_nadp_c Species: M_gln_L_c
saturation_constant_array[83,22] = 1.0;	#	 Name: R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2.0*M_glu_L_c+M_nadp_c Species: M_akg_c
saturation_constant_array[83,148] = 1.0;	#	 Name: R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2.0*M_glu_L_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[83,143] = 1.0;	#	 Name: R_gltBD: M_gln_L_c+M_akg_c+M_nadph_c+M_h_c = 2.0*M_glu_L_c+M_nadp_c Species: M_h_c
saturation_constant_array[84,22] = 1.0;	#	 Name: R_gdhA: M_akg_c+M_nadph_c+M_nh3_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c Species: M_akg_c
saturation_constant_array[84,148] = 1.0;	#	 Name: R_gdhA: M_akg_c+M_nadph_c+M_nh3_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[84,35] = 1.0;	#	 Name: R_gdhA: M_akg_c+M_nadph_c+M_nh3_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c Species: M_nh3_c
saturation_constant_array[84,143] = 1.0;	#	 Name: R_gdhA: M_akg_c+M_nadph_c+M_nh3_c+M_h_c = M_glu_L_c+M_h2o_c+M_nadp_c Species: M_h_c
saturation_constant_array[85,136] = 1.0;	#	 Name: R_gdhA_R: M_glu_L_c+M_h2o_c+M_nadp_c = M_akg_c+M_nadph_c+M_nh3_c+M_h_c Species: M_glu_L_c
saturation_constant_array[85,144] = 1.0;	#	 Name: R_gdhA_R: M_glu_L_c+M_h2o_c+M_nadp_c = M_akg_c+M_nadph_c+M_nh3_c+M_h_c Species: M_h2o_c
saturation_constant_array[85,147] = 1.0;	#	 Name: R_gdhA_R: M_glu_L_c+M_h2o_c+M_nadp_c = M_akg_c+M_nadph_c+M_nh3_c+M_h_c Species: M_nadp_c
saturation_constant_array[86,136] = 1.0;	#	 Name: R_glnA: M_glu_L_c+M_atp_c+M_nh3_c = M_gln_L_c+M_adp_c+M_pi_c Species: M_glu_L_c
saturation_constant_array[86,106] = 1.0;	#	 Name: R_glnA: M_glu_L_c+M_atp_c+M_nh3_c = M_gln_L_c+M_adp_c+M_pi_c Species: M_atp_c
saturation_constant_array[86,35] = 1.0;	#	 Name: R_glnA: M_glu_L_c+M_atp_c+M_nh3_c = M_gln_L_c+M_adp_c+M_pi_c Species: M_nh3_c
saturation_constant_array[87,129] = 1.0;	#	 Name: R_glyA: M_ser_L_c+M_thf_c = M_gly_L_c+M_h2o_c+M_mlthf_c Species: M_ser_L_c
saturation_constant_array[87,38] = 1.0;	#	 Name: R_glyA: M_ser_L_c+M_thf_c = M_gly_L_c+M_h2o_c+M_mlthf_c Species: M_thf_c
saturation_constant_array[88,137] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+2.0*M_atp_c+2.0*M_nad_c+3.0*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2.0*M_nadh_c+M_amp_c+M_pi_c+2.0*M_ppi_c+2.0*M_h_c Species: M_gln_L_c
saturation_constant_array[88,16] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+2.0*M_atp_c+2.0*M_nad_c+3.0*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2.0*M_nadh_c+M_amp_c+M_pi_c+2.0*M_ppi_c+2.0*M_h_c Species: M_r5p_c
saturation_constant_array[88,106] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+2.0*M_atp_c+2.0*M_nad_c+3.0*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2.0*M_nadh_c+M_amp_c+M_pi_c+2.0*M_ppi_c+2.0*M_h_c Species: M_atp_c
saturation_constant_array[88,145] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+2.0*M_atp_c+2.0*M_nad_c+3.0*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2.0*M_nadh_c+M_amp_c+M_pi_c+2.0*M_ppi_c+2.0*M_h_c Species: M_nad_c
saturation_constant_array[88,144] = 1.0;	#	 Name: R_his: M_gln_L_c+M_r5p_c+2.0*M_atp_c+2.0*M_nad_c+3.0*M_h2o_c = M_his_L_c+M_akg_c+M_aicar_c+2.0*M_nadh_c+M_amp_c+M_pi_c+2.0*M_ppi_c+2.0*M_h_c Species: M_h2o_c
saturation_constant_array[89,130] = 1.0;	#	 Name: R_ile: M_thr_L_c+M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh3_c+M_co2_c+M_nadp_c+M_akg_c Species: M_thr_L_c
saturation_constant_array[89,143] = 1.0;	#	 Name: R_ile: M_thr_L_c+M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh3_c+M_co2_c+M_nadp_c+M_akg_c Species: M_h_c
saturation_constant_array[89,102] = 1.0;	#	 Name: R_ile: M_thr_L_c+M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh3_c+M_co2_c+M_nadp_c+M_akg_c Species: M_pyr_c
saturation_constant_array[89,148] = 1.0;	#	 Name: R_ile: M_thr_L_c+M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh3_c+M_co2_c+M_nadp_c+M_akg_c Species: M_nadph_c
saturation_constant_array[89,136] = 1.0;	#	 Name: R_ile: M_thr_L_c+M_h_c+M_pyr_c+M_nadph_c+M_glu_L_c = M_ile_L_c+M_h2o_c+M_nh3_c+M_co2_c+M_nadp_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[90,102] = 1.0;	#	 Name: R_leu: 2.0*M_pyr_c+M_glu_L_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2.0*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_pyr_c
saturation_constant_array[90,136] = 1.0;	#	 Name: R_leu: 2.0*M_pyr_c+M_glu_L_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2.0*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[90,145] = 1.0;	#	 Name: R_leu: 2.0*M_pyr_c+M_glu_L_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2.0*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_nad_c
saturation_constant_array[90,148] = 1.0;	#	 Name: R_leu: 2.0*M_pyr_c+M_glu_L_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2.0*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_nadph_c
saturation_constant_array[90,11] = 1.0;	#	 Name: R_leu: 2.0*M_pyr_c+M_glu_L_c+M_nad_c+M_nadph_c+M_accoa_c = M_leu_L_c+2.0*M_co2_c+M_nadp_c+M_coa_c+M_nadh_c+M_akg_c Species: M_accoa_c
saturation_constant_array[91,119] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_asp_L_c
saturation_constant_array[91,106] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_atp_c
saturation_constant_array[91,148] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_nadph_c
saturation_constant_array[91,143] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_h_c
saturation_constant_array[91,102] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_pyr_c
saturation_constant_array[91,23] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_succoa_c
saturation_constant_array[91,136] = 1.0;	#	 Name: R_lys: M_asp_L_c+M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_pyr_c+M_succoa_c+M_glu_L_c = M_lys_L_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_coa_c+M_akg_c+M_succ_c+M_co2_c Species: M_glu_L_c
saturation_constant_array[92,119] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c Species: M_asp_L_c
saturation_constant_array[92,123] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c Species: M_cys_L_c
saturation_constant_array[92,23] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c Species: M_succoa_c
saturation_constant_array[92,106] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c Species: M_atp_c
saturation_constant_array[92,148] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c Species: M_nadph_c
saturation_constant_array[92,41] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c Species: M_5mthf_c
saturation_constant_array[92,144] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c Species: M_h2o_c
saturation_constant_array[92,143] = 1.0;	#	 Name: R_met: M_asp_L_c+M_cys_L_c+M_succoa_c+M_atp_c+2.0*M_nadph_c+M_5mthf_c+M_h2o_c+2.0*M_h_c = M_met_L_c+M_coa_c+M_succ_c+M_adp_c+M_pi_c+2.0*M_nadp_c+M_thf_c+M_nh3_c+M_pyr_c Species: M_h_c
saturation_constant_array[93,42] = 1.0;	#	 Name: R_phe: M_chor_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c Species: M_chor_c
saturation_constant_array[93,136] = 1.0;	#	 Name: R_phe: M_chor_c+M_glu_L_c = M_phe_L_c+M_co2_c+M_h2o_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[94,136] = 1.0;	#	 Name: R_pro: M_glu_L_c+M_atp_c+2.0*M_h_c+2.0*M_nadph_c = M_pro_L_c+M_adp_c+2.0*M_nadp_c+M_pi_c+M_h2o_c Species: M_glu_L_c
saturation_constant_array[94,106] = 1.0;	#	 Name: R_pro: M_glu_L_c+M_atp_c+2.0*M_h_c+2.0*M_nadph_c = M_pro_L_c+M_adp_c+2.0*M_nadp_c+M_pi_c+M_h2o_c Species: M_atp_c
saturation_constant_array[94,143] = 1.0;	#	 Name: R_pro: M_glu_L_c+M_atp_c+2.0*M_h_c+2.0*M_nadph_c = M_pro_L_c+M_adp_c+2.0*M_nadp_c+M_pi_c+M_h2o_c Species: M_h_c
saturation_constant_array[94,148] = 1.0;	#	 Name: R_pro: M_glu_L_c+M_atp_c+2.0*M_h_c+2.0*M_nadph_c = M_pro_L_c+M_adp_c+2.0*M_nadp_c+M_pi_c+M_h2o_c Species: M_nadph_c
saturation_constant_array[95,7] = 1.0;	#	 Name: R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c Species: M_3pg_c
saturation_constant_array[95,145] = 1.0;	#	 Name: R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c Species: M_nad_c
saturation_constant_array[95,136] = 1.0;	#	 Name: R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c Species: M_glu_L_c
saturation_constant_array[95,144] = 1.0;	#	 Name: R_serABC: M_3pg_c+M_nad_c+M_glu_L_c+M_h2o_c = M_ser_L_c+M_nadh_c+M_h_c+M_akg_c+M_pi_c Species: M_h2o_c
saturation_constant_array[96,119] = 1.0;	#	 Name: R_thr: M_asp_L_c+2.0*M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_h2o_c = M_thr_L_c+2.0*M_adp_c+2.0*M_pi_c+2.0*M_nadp_c Species: M_asp_L_c
saturation_constant_array[96,106] = 1.0;	#	 Name: R_thr: M_asp_L_c+2.0*M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_h2o_c = M_thr_L_c+2.0*M_adp_c+2.0*M_pi_c+2.0*M_nadp_c Species: M_atp_c
saturation_constant_array[96,148] = 1.0;	#	 Name: R_thr: M_asp_L_c+2.0*M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_h2o_c = M_thr_L_c+2.0*M_adp_c+2.0*M_pi_c+2.0*M_nadp_c Species: M_nadph_c
saturation_constant_array[96,143] = 1.0;	#	 Name: R_thr: M_asp_L_c+2.0*M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_h2o_c = M_thr_L_c+2.0*M_adp_c+2.0*M_pi_c+2.0*M_nadp_c Species: M_h_c
saturation_constant_array[96,144] = 1.0;	#	 Name: R_thr: M_asp_L_c+2.0*M_atp_c+2.0*M_nadph_c+2.0*M_h_c+M_h2o_c = M_thr_L_c+2.0*M_adp_c+2.0*M_pi_c+2.0*M_nadp_c Species: M_h2o_c
saturation_constant_array[97,42] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2.0*M_h2o_c+M_co2_c+M_g3p_c+M_amp_c Species: M_chor_c
saturation_constant_array[97,137] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2.0*M_h2o_c+M_co2_c+M_g3p_c+M_amp_c Species: M_gln_L_c
saturation_constant_array[97,129] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2.0*M_h2o_c+M_co2_c+M_g3p_c+M_amp_c Species: M_ser_L_c
saturation_constant_array[97,16] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2.0*M_h2o_c+M_co2_c+M_g3p_c+M_amp_c Species: M_r5p_c
saturation_constant_array[97,106] = 1.0;	#	 Name: R_trp: M_chor_c+M_gln_L_c+M_ser_L_c+M_r5p_c+M_atp_c = M_trp_L_c+M_glu_L_c+M_pyr_c+M_ppi_c+2.0*M_h2o_c+M_co2_c+M_g3p_c+M_amp_c Species: M_atp_c
saturation_constant_array[98,42] = 1.0;	#	 Name: R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c+M_h_c Species: M_chor_c
saturation_constant_array[98,136] = 1.0;	#	 Name: R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c+M_h_c Species: M_glu_L_c
saturation_constant_array[98,145] = 1.0;	#	 Name: R_tyr: M_chor_c+M_glu_L_c+M_nad_c = M_tyr_L_c+M_akg_c+M_nadh_c+M_co2_c+M_h_c Species: M_nad_c
saturation_constant_array[99,102] = 1.0;	#	 Name: R_val: 2.0*M_pyr_c+M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c Species: M_pyr_c
saturation_constant_array[99,143] = 1.0;	#	 Name: R_val: 2.0*M_pyr_c+M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c Species: M_h_c
saturation_constant_array[99,148] = 1.0;	#	 Name: R_val: 2.0*M_pyr_c+M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c Species: M_nadph_c
saturation_constant_array[99,136] = 1.0;	#	 Name: R_val: 2.0*M_pyr_c+M_h_c+M_nadph_c+M_glu_L_c = M_val_L_c+M_co2_c+M_nadp_c+M_h2o_c+M_akg_c Species: M_glu_L_c
saturation_constant_array[100,36] = 1.0;	#	 Name: R_arg_deg: M_arg_L_c+4.0*M_h2o_c+M_nad_c+M_akg_c+M_succoa_c = M_h_c+M_co2_c+2.0*M_glu_L_c+2.0*M_nh3_c+M_nadh_c+M_succ_c+M_coa_c Species: M_arg_L_c
saturation_constant_array[100,144] = 1.0;	#	 Name: R_arg_deg: M_arg_L_c+4.0*M_h2o_c+M_nad_c+M_akg_c+M_succoa_c = M_h_c+M_co2_c+2.0*M_glu_L_c+2.0*M_nh3_c+M_nadh_c+M_succ_c+M_coa_c Species: M_h2o_c
saturation_constant_array[100,145] = 1.0;	#	 Name: R_arg_deg: M_arg_L_c+4.0*M_h2o_c+M_nad_c+M_akg_c+M_succoa_c = M_h_c+M_co2_c+2.0*M_glu_L_c+2.0*M_nh3_c+M_nadh_c+M_succ_c+M_coa_c Species: M_nad_c
saturation_constant_array[100,22] = 1.0;	#	 Name: R_arg_deg: M_arg_L_c+4.0*M_h2o_c+M_nad_c+M_akg_c+M_succoa_c = M_h_c+M_co2_c+2.0*M_glu_L_c+2.0*M_nh3_c+M_nadh_c+M_succ_c+M_coa_c Species: M_akg_c
saturation_constant_array[100,23] = 1.0;	#	 Name: R_arg_deg: M_arg_L_c+4.0*M_h2o_c+M_nad_c+M_akg_c+M_succoa_c = M_h_c+M_co2_c+2.0*M_glu_L_c+2.0*M_nh3_c+M_nadh_c+M_succ_c+M_coa_c Species: M_succoa_c
saturation_constant_array[101,119] = 1.0;	#	 Name: R_asp_deg: M_asp_L_c = M_fum_c+M_nh3_c Species: M_asp_L_c
saturation_constant_array[102,122] = 1.0;	#	 Name: R_asn_deg: M_asn_L_c+M_amp_c+M_ppi_c = M_nh3_c+M_asp_L_c+M_atp_c Species: M_asn_L_c
saturation_constant_array[102,108] = 1.0;	#	 Name: R_asn_deg: M_asn_L_c+M_amp_c+M_ppi_c = M_nh3_c+M_asp_L_c+M_atp_c Species: M_amp_c
saturation_constant_array[102,30] = 1.0;	#	 Name: R_asn_deg: M_asn_L_c+M_amp_c+M_ppi_c = M_nh3_c+M_asp_L_c+M_atp_c Species: M_ppi_c
saturation_constant_array[103,120] = 1.0;	#	 Name: R_gly_deg: M_gly_L_c+M_accoa_c+M_o2_c+M_h2o_c = M_coa_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c Species: M_gly_L_c
saturation_constant_array[103,11] = 1.0;	#	 Name: R_gly_deg: M_gly_L_c+M_accoa_c+M_o2_c+M_h2o_c = M_coa_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c Species: M_accoa_c
saturation_constant_array[103,138] = 1.0;	#	 Name: R_gly_deg: M_gly_L_c+M_accoa_c+M_o2_c+M_h2o_c = M_coa_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c Species: M_o2_c
saturation_constant_array[103,144] = 1.0;	#	 Name: R_gly_deg: M_gly_L_c+M_accoa_c+M_o2_c+M_h2o_c = M_coa_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c Species: M_h2o_c
saturation_constant_array[104,44] = 1.0;	#	 Name: R_mglx_deg: M_mglx_c+M_nad_c+M_h2o_c = M_pyr_c+M_nadh_c+M_h_c Species: M_mglx_c
saturation_constant_array[104,145] = 1.0;	#	 Name: R_mglx_deg: M_mglx_c+M_nad_c+M_h2o_c = M_pyr_c+M_nadh_c+M_h_c Species: M_nad_c
saturation_constant_array[104,144] = 1.0;	#	 Name: R_mglx_deg: M_mglx_c+M_nad_c+M_h2o_c = M_pyr_c+M_nadh_c+M_h_c Species: M_h2o_c
saturation_constant_array[105,129] = 1.0;	#	 Name: R_ser_deg: M_ser_L_c = M_nh3_c+M_pyr_c Species: M_ser_L_c
saturation_constant_array[106,128] = 1.0;	#	 Name: R_pro_deg: M_pro_L_c+M_q8_c+2.0*M_h2o_c+M_nad_c = M_h_c+M_q8h2_c+M_nadh_c+M_glu_L_c Species: M_pro_L_c
saturation_constant_array[106,24] = 1.0;	#	 Name: R_pro_deg: M_pro_L_c+M_q8_c+2.0*M_h2o_c+M_nad_c = M_h_c+M_q8h2_c+M_nadh_c+M_glu_L_c Species: M_q8_c
saturation_constant_array[106,144] = 1.0;	#	 Name: R_pro_deg: M_pro_L_c+M_q8_c+2.0*M_h2o_c+M_nad_c = M_h_c+M_q8h2_c+M_nadh_c+M_glu_L_c Species: M_h2o_c
saturation_constant_array[106,145] = 1.0;	#	 Name: R_pro_deg: M_pro_L_c+M_q8_c+2.0*M_h2o_c+M_nad_c = M_h_c+M_q8h2_c+M_nadh_c+M_glu_L_c Species: M_nad_c
saturation_constant_array[107,130] = 1.0;	#	 Name: R_thr_deg1: M_thr_L_c+M_nad_c+M_coa_c = M_nadh_c+M_h_c+M_accoa_c+M_gly_L_c Species: M_thr_L_c
saturation_constant_array[107,145] = 1.0;	#	 Name: R_thr_deg1: M_thr_L_c+M_nad_c+M_coa_c = M_nadh_c+M_h_c+M_accoa_c+M_gly_L_c Species: M_nad_c
saturation_constant_array[107,10] = 1.0;	#	 Name: R_thr_deg1: M_thr_L_c+M_nad_c+M_coa_c = M_nadh_c+M_h_c+M_accoa_c+M_gly_L_c Species: M_coa_c
saturation_constant_array[108,130] = 1.0;	#	 Name: R_thr_deg2: M_thr_L_c+M_nad_c+M_o2_c+M_h2o_c = M_nadh_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c+M_h_c Species: M_thr_L_c
saturation_constant_array[108,145] = 1.0;	#	 Name: R_thr_deg2: M_thr_L_c+M_nad_c+M_o2_c+M_h2o_c = M_nadh_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c+M_h_c Species: M_nad_c
saturation_constant_array[108,138] = 1.0;	#	 Name: R_thr_deg2: M_thr_L_c+M_nad_c+M_o2_c+M_h2o_c = M_nadh_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c+M_h_c Species: M_o2_c
saturation_constant_array[108,144] = 1.0;	#	 Name: R_thr_deg2: M_thr_L_c+M_nad_c+M_o2_c+M_h2o_c = M_nadh_c+M_co2_c+M_h2o2_c+M_nh3_c+M_mglx_c+M_h_c Species: M_h2o_c
saturation_constant_array[109,130] = 1.0;	#	 Name: R_thr_deg3: M_thr_L_c+M_pi_c+M_adp_c = M_nh3_c+M_for_c+M_atp_c+M_prop_c Species: M_thr_L_c
saturation_constant_array[109,140] = 1.0;	#	 Name: R_thr_deg3: M_thr_L_c+M_pi_c+M_adp_c = M_nh3_c+M_for_c+M_atp_c+M_prop_c Species: M_pi_c
saturation_constant_array[109,107] = 1.0;	#	 Name: R_thr_deg3: M_thr_L_c+M_pi_c+M_adp_c = M_nh3_c+M_for_c+M_atp_c+M_prop_c Species: M_adp_c
saturation_constant_array[110,131] = 1.0;	#	 Name: R_trp_deg: M_trp_L_c+M_h2o_c = M_indole_c+M_nh3_c+M_pyr_c Species: M_trp_L_c
saturation_constant_array[110,144] = 1.0;	#	 Name: R_trp_deg: M_trp_L_c+M_h2o_c = M_indole_c+M_nh3_c+M_pyr_c Species: M_h2o_c
saturation_constant_array[111,123] = 1.0;	#	 Name: R_cys_deg: M_cys_L_c+M_h2o_c = M_h2s_c+M_nh3_c+M_pyr_c Species: M_cys_L_c
saturation_constant_array[111,144] = 1.0;	#	 Name: R_cys_deg: M_cys_L_c+M_h2o_c = M_h2s_c+M_nh3_c+M_pyr_c Species: M_h2o_c
saturation_constant_array[112,124] = 1.0;	#	 Name: R_lys_deg: M_lys_L_c = M_co2_c+M_cadav_c Species: M_lys_L_c
saturation_constant_array[113,137] = 1.0;	#	 Name: R_gln_deg: M_gln_L_c+M_h2o_c = M_nh3_c+M_glu_L_c Species: M_gln_L_c
saturation_constant_array[113,144] = 1.0;	#	 Name: R_gln_deg: M_gln_L_c+M_h2o_c = M_nh3_c+M_glu_L_c Species: M_h2o_c
saturation_constant_array[114,136] = 1.0;	#	 Name: R_glu_deg: M_glu_L_c = M_co2_c+M_gaba_c Species: M_glu_L_c
saturation_constant_array[115,48] = 1.0;	#	 Name: R_gaba_deg1: M_gaba_c+M_akg_c+M_h2o_c+M_nad_c = M_succ_c+M_glu_L_c+M_h_c+M_nadh_c Species: M_gaba_c
saturation_constant_array[115,22] = 1.0;	#	 Name: R_gaba_deg1: M_gaba_c+M_akg_c+M_h2o_c+M_nad_c = M_succ_c+M_glu_L_c+M_h_c+M_nadh_c Species: M_akg_c
saturation_constant_array[115,144] = 1.0;	#	 Name: R_gaba_deg1: M_gaba_c+M_akg_c+M_h2o_c+M_nad_c = M_succ_c+M_glu_L_c+M_h_c+M_nadh_c Species: M_h2o_c
saturation_constant_array[115,145] = 1.0;	#	 Name: R_gaba_deg1: M_gaba_c+M_akg_c+M_h2o_c+M_nad_c = M_succ_c+M_glu_L_c+M_h_c+M_nadh_c Species: M_nad_c
saturation_constant_array[116,48] = 1.0;	#	 Name: R_gaba_deg2: M_gaba_c+M_akg_c+M_h2o_c+M_nadp_c = M_succ_c+M_glu_L_c+M_h_c+M_nadph_c Species: M_gaba_c
saturation_constant_array[116,22] = 1.0;	#	 Name: R_gaba_deg2: M_gaba_c+M_akg_c+M_h2o_c+M_nadp_c = M_succ_c+M_glu_L_c+M_h_c+M_nadph_c Species: M_akg_c
saturation_constant_array[116,144] = 1.0;	#	 Name: R_gaba_deg2: M_gaba_c+M_akg_c+M_h2o_c+M_nadp_c = M_succ_c+M_glu_L_c+M_h_c+M_nadph_c Species: M_h2o_c
saturation_constant_array[116,147] = 1.0;	#	 Name: R_gaba_deg2: M_gaba_c+M_akg_c+M_h2o_c+M_nadp_c = M_succ_c+M_glu_L_c+M_h_c+M_nadph_c Species: M_nadp_c
saturation_constant_array[117,18] = 1.0;	#	 Name: R_chor: M_e4p_c+2.0*M_pep_c+M_nadph_c+M_atp_c+M_h_c = M_chor_c+M_nadp_c+M_adp_c+4.0*M_pi_c Species: M_e4p_c
saturation_constant_array[117,101] = 1.0;	#	 Name: R_chor: M_e4p_c+2.0*M_pep_c+M_nadph_c+M_atp_c+M_h_c = M_chor_c+M_nadp_c+M_adp_c+4.0*M_pi_c Species: M_pep_c
saturation_constant_array[117,148] = 1.0;	#	 Name: R_chor: M_e4p_c+2.0*M_pep_c+M_nadph_c+M_atp_c+M_h_c = M_chor_c+M_nadp_c+M_adp_c+4.0*M_pi_c Species: M_nadph_c
saturation_constant_array[117,106] = 1.0;	#	 Name: R_chor: M_e4p_c+2.0*M_pep_c+M_nadph_c+M_atp_c+M_h_c = M_chor_c+M_nadp_c+M_adp_c+4.0*M_pi_c Species: M_atp_c
saturation_constant_array[117,143] = 1.0;	#	 Name: R_chor: M_e4p_c+2.0*M_pep_c+M_nadph_c+M_atp_c+M_h_c = M_chor_c+M_nadp_c+M_adp_c+4.0*M_pi_c Species: M_h_c
saturation_constant_array[118,109] = 1.0;	#	 Name: R_fol_e: M_gtp_c+4*M_h2o_c = M_for_c+3.0*M_pi_c+M_glycoA_c+M_78mdp_c Species: M_gtp_c
saturation_constant_array[118,144] = 1.0;	#	 Name: R_fol_e: M_gtp_c+4*M_h2o_c = M_for_c+3.0*M_pi_c+M_glycoA_c+M_78mdp_c Species: M_h2o_c
saturation_constant_array[119,42] = 1.0;	#	 Name: R_fol_1: M_chor_c+M_gln_L_c = M_4adochor_c+M_glu_L_c Species: M_chor_c
saturation_constant_array[119,137] = 1.0;	#	 Name: R_fol_1: M_chor_c+M_gln_L_c = M_4adochor_c+M_glu_L_c Species: M_gln_L_c
saturation_constant_array[120,51] = 1.0;	#	 Name: R_fol_2a: M_4adochor_c = M_4abz_c+M_pyr_c Species: M_4adochor_c
saturation_constant_array[121,52] = 1.0;	#	 Name: R_fol_2b: M_4abz_c+M_78mdp_c = M_78dhf_c+M_h2o_c Species: M_4abz_c
saturation_constant_array[121,50] = 1.0;	#	 Name: R_fol_2b: M_4abz_c+M_78mdp_c = M_78dhf_c+M_h2o_c Species: M_78mdp_c
saturation_constant_array[122,53] = 1.0;	#	 Name: R_fol_3: M_78dhf_c+M_atp_c+M_glu_L_c = M_adp_c+M_pi_c+M_dhf_c Species: M_78dhf_c
saturation_constant_array[122,106] = 1.0;	#	 Name: R_fol_3: M_78dhf_c+M_atp_c+M_glu_L_c = M_adp_c+M_pi_c+M_dhf_c Species: M_atp_c
saturation_constant_array[122,136] = 1.0;	#	 Name: R_fol_3: M_78dhf_c+M_atp_c+M_glu_L_c = M_adp_c+M_pi_c+M_dhf_c Species: M_glu_L_c
saturation_constant_array[123,54] = 1.0;	#	 Name: R_fol_4: M_dhf_c+M_nadph_c+M_h_c = M_thf_c+M_nadp_c Species: M_dhf_c
saturation_constant_array[123,148] = 1.0;	#	 Name: R_fol_4: M_dhf_c+M_nadph_c+M_h_c = M_thf_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[123,143] = 1.0;	#	 Name: R_fol_4: M_dhf_c+M_nadph_c+M_h_c = M_thf_c+M_nadp_c Species: M_h_c
saturation_constant_array[124,120] = 1.0;	#	 Name: R_gly_fol: M_gly_L_c+M_thf_c+M_nad_c = M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c Species: M_gly_L_c
saturation_constant_array[124,38] = 1.0;	#	 Name: R_gly_fol: M_gly_L_c+M_thf_c+M_nad_c = M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c Species: M_thf_c
saturation_constant_array[124,145] = 1.0;	#	 Name: R_gly_fol: M_gly_L_c+M_thf_c+M_nad_c = M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c Species: M_nad_c
saturation_constant_array[125,39] = 1.0;	#	 Name: R_gly_fol_R: M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c = M_gly_L_c+M_thf_c+M_nad_c Species: M_mlthf_c
saturation_constant_array[125,35] = 1.0;	#	 Name: R_gly_fol_R: M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c = M_gly_L_c+M_thf_c+M_nad_c Species: M_nh3_c
saturation_constant_array[125,139] = 1.0;	#	 Name: R_gly_fol_R: M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c = M_gly_L_c+M_thf_c+M_nad_c Species: M_co2_c
saturation_constant_array[125,146] = 1.0;	#	 Name: R_gly_fol_R: M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c = M_gly_L_c+M_thf_c+M_nad_c Species: M_nadh_c
saturation_constant_array[125,143] = 1.0;	#	 Name: R_gly_fol_R: M_mlthf_c+M_nh3_c+M_co2_c+M_nadh_c+M_h_c = M_gly_L_c+M_thf_c+M_nad_c Species: M_h_c
saturation_constant_array[126,39] = 1.0;	#	 Name: R_mthfd: M_mlthf_c+M_nadp_c = M_methf_c+M_nadph_c Species: M_mlthf_c
saturation_constant_array[126,147] = 1.0;	#	 Name: R_mthfd: M_mlthf_c+M_nadp_c = M_methf_c+M_nadph_c Species: M_nadp_c
saturation_constant_array[127,55] = 1.0;	#	 Name: R_mthfd_R: M_methf_c+M_nadph_c = M_mlthf_c+M_nadp_c Species: M_methf_c
saturation_constant_array[127,148] = 1.0;	#	 Name: R_mthfd_R: M_methf_c+M_nadph_c = M_mlthf_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[128,144] = 1.0;	#	 Name: R_mthfc: M_h2o_c+M_methf_c = M_10fthf_c+M_h_c Species: M_h2o_c
saturation_constant_array[128,55] = 1.0;	#	 Name: R_mthfc: M_h2o_c+M_methf_c = M_10fthf_c+M_h_c Species: M_methf_c
saturation_constant_array[129,56] = 1.0;	#	 Name: R_mthfc_R: M_10fthf_c+M_h_c = M_h2o_c+M_methf_c Species: M_10fthf_c
saturation_constant_array[129,143] = 1.0;	#	 Name: R_mthfc_R: M_10fthf_c+M_h_c = M_h2o_c+M_methf_c Species: M_h_c
saturation_constant_array[130,39] = 1.0;	#	 Name: R_mthfr2a: M_mlthf_c+M_h_c+M_nadh_c = M_5mthf_c+M_nad_c Species: M_mlthf_c
saturation_constant_array[130,143] = 1.0;	#	 Name: R_mthfr2a: M_mlthf_c+M_h_c+M_nadh_c = M_5mthf_c+M_nad_c Species: M_h_c
saturation_constant_array[130,146] = 1.0;	#	 Name: R_mthfr2a: M_mlthf_c+M_h_c+M_nadh_c = M_5mthf_c+M_nad_c Species: M_nadh_c
saturation_constant_array[131,39] = 1.0;	#	 Name: R_mthfr2b: M_mlthf_c+M_h_c+M_nadph_c = M_5mthf_c+M_nadp_c Species: M_mlthf_c
saturation_constant_array[131,143] = 1.0;	#	 Name: R_mthfr2b: M_mlthf_c+M_h_c+M_nadph_c = M_5mthf_c+M_nadp_c Species: M_h_c
saturation_constant_array[131,148] = 1.0;	#	 Name: R_mthfr2b: M_mlthf_c+M_h_c+M_nadph_c = M_5mthf_c+M_nadp_c Species: M_nadph_c
saturation_constant_array[132,16] = 1.0;	#	 Name: R_prpp_syn: M_r5p_c+M_atp_c = M_prpp_c+M_amp_c Species: M_r5p_c
saturation_constant_array[132,106] = 1.0;	#	 Name: R_prpp_syn: M_r5p_c+M_atp_c = M_prpp_c+M_amp_c Species: M_atp_c
saturation_constant_array[133,106] = 1.0;	#	 Name: R_or_syn_1: 2.0*M_atp_c+M_gln_L_c+M_hco3_c+M_h2o_c+M_h_c = 2.0*M_adp_c+M_glu_L_c+M_pi_c+M_clasp_c Species: M_atp_c
saturation_constant_array[133,137] = 1.0;	#	 Name: R_or_syn_1: 2.0*M_atp_c+M_gln_L_c+M_hco3_c+M_h2o_c+M_h_c = 2.0*M_adp_c+M_glu_L_c+M_pi_c+M_clasp_c Species: M_gln_L_c
saturation_constant_array[133,58] = 1.0;	#	 Name: R_or_syn_1: 2.0*M_atp_c+M_gln_L_c+M_hco3_c+M_h2o_c+M_h_c = 2.0*M_adp_c+M_glu_L_c+M_pi_c+M_clasp_c Species: M_hco3_c
saturation_constant_array[133,144] = 1.0;	#	 Name: R_or_syn_1: 2.0*M_atp_c+M_gln_L_c+M_hco3_c+M_h2o_c+M_h_c = 2.0*M_adp_c+M_glu_L_c+M_pi_c+M_clasp_c Species: M_h2o_c
saturation_constant_array[133,143] = 1.0;	#	 Name: R_or_syn_1: 2.0*M_atp_c+M_gln_L_c+M_hco3_c+M_h2o_c+M_h_c = 2.0*M_adp_c+M_glu_L_c+M_pi_c+M_clasp_c Species: M_h_c
saturation_constant_array[134,59] = 1.0;	#	 Name: R_or_syn_2: M_clasp_c+M_asp_L_c+M_q8_c = M_or_c+M_q8h2_c+M_h2o_c+M_pi_c Species: M_clasp_c
saturation_constant_array[134,119] = 1.0;	#	 Name: R_or_syn_2: M_clasp_c+M_asp_L_c+M_q8_c = M_or_c+M_q8h2_c+M_h2o_c+M_pi_c Species: M_asp_L_c
saturation_constant_array[134,24] = 1.0;	#	 Name: R_or_syn_2: M_clasp_c+M_asp_L_c+M_q8_c = M_or_c+M_q8h2_c+M_h2o_c+M_pi_c Species: M_q8_c
saturation_constant_array[135,57] = 1.0;	#	 Name: R_omp_syn: M_prpp_c+M_or_c = M_omp_c+M_ppi_c Species: M_prpp_c
saturation_constant_array[135,60] = 1.0;	#	 Name: R_omp_syn: M_prpp_c+M_or_c = M_omp_c+M_ppi_c Species: M_or_c
saturation_constant_array[136,61] = 1.0;	#	 Name: R_ump_syn: M_omp_c = M_ump_c+M_co2_c Species: M_omp_c
saturation_constant_array[137,112] = 1.0;	#	 Name: R_ctp_1: M_utp_c+M_atp_c+M_nh3_c = M_ctp_c+M_adp_c+M_pi_c Species: M_utp_c
saturation_constant_array[137,106] = 1.0;	#	 Name: R_ctp_1: M_utp_c+M_atp_c+M_nh3_c = M_ctp_c+M_adp_c+M_pi_c Species: M_atp_c
saturation_constant_array[137,35] = 1.0;	#	 Name: R_ctp_1: M_utp_c+M_atp_c+M_nh3_c = M_ctp_c+M_adp_c+M_pi_c Species: M_nh3_c
saturation_constant_array[138,112] = 1.0;	#	 Name: R_ctp_2: M_utp_c+M_gln_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c Species: M_utp_c
saturation_constant_array[138,137] = 1.0;	#	 Name: R_ctp_2: M_utp_c+M_gln_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c Species: M_gln_L_c
saturation_constant_array[138,106] = 1.0;	#	 Name: R_ctp_2: M_utp_c+M_gln_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c Species: M_atp_c
saturation_constant_array[138,144] = 1.0;	#	 Name: R_ctp_2: M_utp_c+M_gln_L_c+M_atp_c+M_h2o_c = M_ctp_c+M_glu_L_c+M_adp_c+M_pi_c Species: M_h2o_c
saturation_constant_array[139,137] = 1.0;	#	 Name: R_A_syn_1: M_gln_L_c+M_prpp_c+M_h2o_c = M_5pbdra+M_ppi_c+M_glu_L_c Species: M_gln_L_c
saturation_constant_array[139,57] = 1.0;	#	 Name: R_A_syn_1: M_gln_L_c+M_prpp_c+M_h2o_c = M_5pbdra+M_ppi_c+M_glu_L_c Species: M_prpp_c
saturation_constant_array[139,144] = 1.0;	#	 Name: R_A_syn_1: M_gln_L_c+M_prpp_c+M_h2o_c = M_5pbdra+M_ppi_c+M_glu_L_c Species: M_h2o_c
saturation_constant_array[140,106] = 1.0;	#	 Name: R_A_syn_2: M_atp_c+M_5pbdra+M_gly_L_c = M_adp_c+M_pi_c+M_gar_c Species: M_atp_c
saturation_constant_array[140,62] = 1.0;	#	 Name: R_A_syn_2: M_atp_c+M_5pbdra+M_gly_L_c = M_adp_c+M_pi_c+M_gar_c Species: M_5pbdra
saturation_constant_array[140,120] = 1.0;	#	 Name: R_A_syn_2: M_atp_c+M_5pbdra+M_gly_L_c = M_adp_c+M_pi_c+M_gar_c Species: M_gly_L_c
saturation_constant_array[141,56] = 1.0;	#	 Name: R_A_syn_3: M_10fthf_c+M_gar_c = M_thf_c+M_fgar_c Species: M_10fthf_c
saturation_constant_array[141,63] = 1.0;	#	 Name: R_A_syn_3: M_10fthf_c+M_gar_c = M_thf_c+M_fgar_c Species: M_gar_c
saturation_constant_array[142,106] = 1.0;	#	 Name: R_A_syn_4: M_atp_c+M_fgar_c+M_gln_L_c+M_h2o_c = M_adp_c+M_pi_c+M_fgam_c+M_glu_L_c Species: M_atp_c
saturation_constant_array[142,64] = 1.0;	#	 Name: R_A_syn_4: M_atp_c+M_fgar_c+M_gln_L_c+M_h2o_c = M_adp_c+M_pi_c+M_fgam_c+M_glu_L_c Species: M_fgar_c
saturation_constant_array[142,137] = 1.0;	#	 Name: R_A_syn_4: M_atp_c+M_fgar_c+M_gln_L_c+M_h2o_c = M_adp_c+M_pi_c+M_fgam_c+M_glu_L_c Species: M_gln_L_c
saturation_constant_array[142,144] = 1.0;	#	 Name: R_A_syn_4: M_atp_c+M_fgar_c+M_gln_L_c+M_h2o_c = M_adp_c+M_pi_c+M_fgam_c+M_glu_L_c Species: M_h2o_c
saturation_constant_array[143,106] = 1.0;	#	 Name: R_A_syn_5: M_atp_c+M_fgam_c = M_adp_c+M_pi_c+M_air_c Species: M_atp_c
saturation_constant_array[143,65] = 1.0;	#	 Name: R_A_syn_5: M_atp_c+M_fgam_c = M_adp_c+M_pi_c+M_air_c Species: M_fgam_c
saturation_constant_array[144,106] = 1.0;	#	 Name: R_A_syn_6: M_atp_c+M_air_c+M_hco3_c+M_h_c = M_adp_c+M_pi_c+M_cair_c Species: M_atp_c
saturation_constant_array[144,66] = 1.0;	#	 Name: R_A_syn_6: M_atp_c+M_air_c+M_hco3_c+M_h_c = M_adp_c+M_pi_c+M_cair_c Species: M_air_c
saturation_constant_array[144,58] = 1.0;	#	 Name: R_A_syn_6: M_atp_c+M_air_c+M_hco3_c+M_h_c = M_adp_c+M_pi_c+M_cair_c Species: M_hco3_c
saturation_constant_array[144,143] = 1.0;	#	 Name: R_A_syn_6: M_atp_c+M_air_c+M_hco3_c+M_h_c = M_adp_c+M_pi_c+M_cair_c Species: M_h_c
saturation_constant_array[145,106] = 1.0;	#	 Name: R_A_syn_7: M_atp_c+M_cair_c+M_asp_L_c = M_adp_c+M_pi_c+M_saicar_c Species: M_atp_c
saturation_constant_array[145,67] = 1.0;	#	 Name: R_A_syn_7: M_atp_c+M_cair_c+M_asp_L_c = M_adp_c+M_pi_c+M_saicar_c Species: M_cair_c
saturation_constant_array[145,119] = 1.0;	#	 Name: R_A_syn_7: M_atp_c+M_cair_c+M_asp_L_c = M_adp_c+M_pi_c+M_saicar_c Species: M_asp_L_c
saturation_constant_array[146,68] = 1.0;	#	 Name: R_A_syn_8: M_saicar_c = M_fum_c+M_aicar_c Species: M_saicar_c
saturation_constant_array[147,40] = 1.0;	#	 Name: R_A_syn_9: M_aicar_c+M_10fthf_c = M_thf_c+M_faicar_c Species: M_aicar_c
saturation_constant_array[147,56] = 1.0;	#	 Name: R_A_syn_9: M_aicar_c+M_10fthf_c = M_thf_c+M_faicar_c Species: M_10fthf_c
saturation_constant_array[148,69] = 1.0;	#	 Name: R_A_syn_10: M_faicar_c = M_imp_c+M_h2o_c Species: M_faicar_c
saturation_constant_array[149,70] = 1.0;	#	 Name: R_A_syn_12: M_imp_c+M_gtp_c+M_asp_L_c = M_gdp_c+M_pi_c+M_fum_c+M_amp_c Species: M_imp_c
saturation_constant_array[149,109] = 1.0;	#	 Name: R_A_syn_12: M_imp_c+M_gtp_c+M_asp_L_c = M_gdp_c+M_pi_c+M_fum_c+M_amp_c Species: M_gtp_c
saturation_constant_array[149,119] = 1.0;	#	 Name: R_A_syn_12: M_imp_c+M_gtp_c+M_asp_L_c = M_gdp_c+M_pi_c+M_fum_c+M_amp_c Species: M_asp_L_c
saturation_constant_array[150,70] = 1.0;	#	 Name: R_xmp_syn: M_imp_c+M_nad_c+M_h2o_c = M_xmp_c+M_nadh_c+M_h_c Species: M_imp_c
saturation_constant_array[150,145] = 1.0;	#	 Name: R_xmp_syn: M_imp_c+M_nad_c+M_h2o_c = M_xmp_c+M_nadh_c+M_h_c Species: M_nad_c
saturation_constant_array[150,144] = 1.0;	#	 Name: R_xmp_syn: M_imp_c+M_nad_c+M_h2o_c = M_xmp_c+M_nadh_c+M_h_c Species: M_h2o_c
saturation_constant_array[151,106] = 1.0;	#	 Name: R_gmp_syn: M_atp_c+M_xmp_c+M_gln_L_c+M_h2o_c = M_amp_c+M_ppi_c+M_gmp_c+M_glu_L_c Species: M_atp_c
saturation_constant_array[151,71] = 1.0;	#	 Name: R_gmp_syn: M_atp_c+M_xmp_c+M_gln_L_c+M_h2o_c = M_amp_c+M_ppi_c+M_gmp_c+M_glu_L_c Species: M_xmp_c
saturation_constant_array[151,137] = 1.0;	#	 Name: R_gmp_syn: M_atp_c+M_xmp_c+M_gln_L_c+M_h2o_c = M_amp_c+M_ppi_c+M_gmp_c+M_glu_L_c Species: M_gln_L_c
saturation_constant_array[151,144] = 1.0;	#	 Name: R_gmp_syn: M_atp_c+M_xmp_c+M_gln_L_c+M_h2o_c = M_amp_c+M_ppi_c+M_gmp_c+M_glu_L_c Species: M_h2o_c
saturation_constant_array[152,106] = 1.0;	#	 Name: R_atp_amp: M_atp_c+M_h2o_c = M_amp_c+M_ppi_c Species: M_atp_c
saturation_constant_array[152,144] = 1.0;	#	 Name: R_atp_amp: M_atp_c+M_h2o_c = M_amp_c+M_ppi_c Species: M_h2o_c
saturation_constant_array[153,112] = 1.0;	#	 Name: R_utp_ump: M_utp_c+M_h2o_c = M_ump_c+M_ppi_c Species: M_utp_c
saturation_constant_array[153,144] = 1.0;	#	 Name: R_utp_ump: M_utp_c+M_h2o_c = M_ump_c+M_ppi_c Species: M_h2o_c
saturation_constant_array[154,115] = 1.0;	#	 Name: R_ctp_cmp: M_ctp_c+M_h2o_c = M_cmp_c+M_ppi_c Species: M_ctp_c
saturation_constant_array[154,144] = 1.0;	#	 Name: R_ctp_cmp: M_ctp_c+M_h2o_c = M_cmp_c+M_ppi_c Species: M_h2o_c
saturation_constant_array[155,109] = 1.0;	#	 Name: R_gtp_gmp: M_gtp_c+M_h2o_c = M_gmp_c+M_ppi_c Species: M_gtp_c
saturation_constant_array[155,144] = 1.0;	#	 Name: R_gtp_gmp: M_gtp_c+M_h2o_c = M_gmp_c+M_ppi_c Species: M_h2o_c
saturation_constant_array[156,106] = 1.0;	#	 Name: R_atp_adp: M_atp_c+M_h2o_c = M_adp_c+M_pi_c Species: M_atp_c
saturation_constant_array[156,144] = 1.0;	#	 Name: R_atp_adp: M_atp_c+M_h2o_c = M_adp_c+M_pi_c Species: M_h2o_c
saturation_constant_array[157,112] = 1.0;	#	 Name: R_utp_adp: M_utp_c+M_h2o_c = M_udp_c+M_pi_c Species: M_utp_c
saturation_constant_array[157,144] = 1.0;	#	 Name: R_utp_adp: M_utp_c+M_h2o_c = M_udp_c+M_pi_c Species: M_h2o_c
saturation_constant_array[158,115] = 1.0;	#	 Name: R_ctp_adp: M_ctp_c+M_h2o_c = M_cdp_c+M_pi_c Species: M_ctp_c
saturation_constant_array[158,144] = 1.0;	#	 Name: R_ctp_adp: M_ctp_c+M_h2o_c = M_cdp_c+M_pi_c Species: M_h2o_c
saturation_constant_array[159,109] = 1.0;	#	 Name: R_gtp_adp: M_gtp_c+M_h2o_c = M_gdp_c+M_pi_c Species: M_gtp_c
saturation_constant_array[159,144] = 1.0;	#	 Name: R_gtp_adp: M_gtp_c+M_h2o_c = M_gdp_c+M_pi_c Species: M_h2o_c
saturation_constant_array[160,113] = 1.0;	#	 Name: R_udp_utp: M_udp_c+M_atp_c = M_utp_c+M_adp_c Species: M_udp_c
saturation_constant_array[160,106] = 1.0;	#	 Name: R_udp_utp: M_udp_c+M_atp_c = M_utp_c+M_adp_c Species: M_atp_c
saturation_constant_array[161,116] = 1.0;	#	 Name: R_cdp_ctp: M_cdp_c+M_atp_c = M_ctp_c+M_adp_c Species: M_cdp_c
saturation_constant_array[161,106] = 1.0;	#	 Name: R_cdp_ctp: M_cdp_c+M_atp_c = M_ctp_c+M_adp_c Species: M_atp_c
saturation_constant_array[162,110] = 1.0;	#	 Name: R_gdp_gtp: M_gdp_c+M_atp_c = M_gtp_c+M_adp_c Species: M_gdp_c
saturation_constant_array[162,106] = 1.0;	#	 Name: R_gdp_gtp: M_gdp_c+M_atp_c = M_gtp_c+M_adp_c Species: M_atp_c
saturation_constant_array[163,106] = 1.0;	#	 Name: R_atp_ump: M_atp_c+M_ump_c = M_adp_c+M_udp_c Species: M_atp_c
saturation_constant_array[163,114] = 1.0;	#	 Name: R_atp_ump: M_atp_c+M_ump_c = M_adp_c+M_udp_c Species: M_ump_c
saturation_constant_array[164,106] = 1.0;	#	 Name: R_atp_cmp: M_atp_c+M_cmp_c = M_adp_c+M_cdp_c Species: M_atp_c
saturation_constant_array[164,117] = 1.0;	#	 Name: R_atp_cmp: M_atp_c+M_cmp_c = M_adp_c+M_cdp_c Species: M_cmp_c
saturation_constant_array[165,106] = 1.0;	#	 Name: R_atp_gmp: M_atp_c+M_gmp_c = M_adp_c+M_gdp_c Species: M_atp_c
saturation_constant_array[165,111] = 1.0;	#	 Name: R_atp_gmp: M_atp_c+M_gmp_c = M_adp_c+M_gdp_c Species: M_gmp_c
saturation_constant_array[166,108] = 1.0;	#	 Name: R_adk_atp: M_amp_c+M_atp_c = 2.0*M_adp_c Species: M_amp_c
saturation_constant_array[166,106] = 1.0;	#	 Name: R_adk_atp: M_amp_c+M_atp_c = 2.0*M_adp_c Species: M_atp_c
saturation_constant_array[173,138] = 1.0;	#	 Name: Export_o2: M_o2_c = [] Species: M_o2_c
saturation_constant_array[174,139] = 1.0;	#	 Name: Export_co2: M_co2_c = [] Species: M_co2_c
saturation_constant_array[175,140] = 1.0;	#	 Name: Export_pi: M_pi_c = [] Species: M_pi_c
saturation_constant_array[176,141] = 1.0;	#	 Name: Export_nh4: M_nh4_c = [] Species: M_nh4_c
saturation_constant_array[177,142] = 1.0;	#	 Name: Export_so4: M_so4_c = [] Species: M_so4_c
saturation_constant_array[178,144] = 1.0;	#	 Name: Export_h2o: M_h2o_c = [] Species: M_h2o_c
saturation_constant_array[179,29] = 1.0;	#	 Name: Proton_gradient: M_h_e = M_h_c Species: M_h_e
saturation_constant_array[180,72] = 1.0;	#	 Name: transcriptional_initiation_CAT: GENE_CAT+RNAP = OPEN_GENE_CAT Species: GENE_CAT
saturation_constant_array[180,73] = 1.0;	#	 Name: transcriptional_initiation_CAT: GENE_CAT+RNAP = OPEN_GENE_CAT Species: RNAP
saturation_constant_array[181,74] = 1.0;	#	 Name: transcription_CAT: OPEN_GENE_CAT+151*M_gtp_c+144*M_ctp_c+189*M_utp_c+176*M_atp_c+660*M_h2o_c = mRNA_CAT+GENE_CAT+RNAP+660*M_ppi_c Species: OPEN_GENE_CAT
saturation_constant_array[181,109] = 1.0;	#	 Name: transcription_CAT: OPEN_GENE_CAT+151*M_gtp_c+144*M_ctp_c+189*M_utp_c+176*M_atp_c+660*M_h2o_c = mRNA_CAT+GENE_CAT+RNAP+660*M_ppi_c Species: M_gtp_c
saturation_constant_array[181,115] = 1.0;	#	 Name: transcription_CAT: OPEN_GENE_CAT+151*M_gtp_c+144*M_ctp_c+189*M_utp_c+176*M_atp_c+660*M_h2o_c = mRNA_CAT+GENE_CAT+RNAP+660*M_ppi_c Species: M_ctp_c
saturation_constant_array[181,112] = 1.0;	#	 Name: transcription_CAT: OPEN_GENE_CAT+151*M_gtp_c+144*M_ctp_c+189*M_utp_c+176*M_atp_c+660*M_h2o_c = mRNA_CAT+GENE_CAT+RNAP+660*M_ppi_c Species: M_utp_c
saturation_constant_array[181,106] = 1.0;	#	 Name: transcription_CAT: OPEN_GENE_CAT+151*M_gtp_c+144*M_ctp_c+189*M_utp_c+176*M_atp_c+660*M_h2o_c = mRNA_CAT+GENE_CAT+RNAP+660*M_ppi_c Species: M_atp_c
saturation_constant_array[181,144] = 1.0;	#	 Name: transcription_CAT: OPEN_GENE_CAT+151*M_gtp_c+144*M_ctp_c+189*M_utp_c+176*M_atp_c+660*M_h2o_c = mRNA_CAT+GENE_CAT+RNAP+660*M_ppi_c Species: M_h2o_c
saturation_constant_array[182,75] = 1.0;	#	 Name: mRNA_degradation_CAT: mRNA_CAT = 151*M_gmp_c+144*M_cmp_c+189*M_ump_c+176*M_amp_c Species: mRNA_CAT
saturation_constant_array[183,75] = 1.0;	#	 Name: translation_initiation_CAT: mRNA_CAT+RIBOSOME = RIBOSOME_START_CAT Species: mRNA_CAT
saturation_constant_array[183,76] = 1.0;	#	 Name: translation_initiation_CAT: mRNA_CAT+RIBOSOME = RIBOSOME_START_CAT Species: RIBOSOME
saturation_constant_array[184,77] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: RIBOSOME_START_CAT
saturation_constant_array[184,109] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_gtp_c
saturation_constant_array[184,144] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_h2o_c
saturation_constant_array[184,78] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_ala_L_c_tRNA
saturation_constant_array[184,79] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_arg_L_c_tRNA
saturation_constant_array[184,80] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_asn_L_c_tRNA
saturation_constant_array[184,81] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_asp_L_c_tRNA
saturation_constant_array[184,82] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_cys_L_c_tRNA
saturation_constant_array[184,83] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_glu_L_c_tRNA
saturation_constant_array[184,84] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_gln_L_c_tRNA
saturation_constant_array[184,85] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_gly_L_c_tRNA
saturation_constant_array[184,86] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_his_L_c_tRNA
saturation_constant_array[184,87] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_ile_L_c_tRNA
saturation_constant_array[184,88] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_leu_L_c_tRNA
saturation_constant_array[184,89] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_lys_L_c_tRNA
saturation_constant_array[184,90] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_met_L_c_tRNA
saturation_constant_array[184,91] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_phe_L_c_tRNA
saturation_constant_array[184,92] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_pro_L_c_tRNA
saturation_constant_array[184,93] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_ser_L_c_tRNA
saturation_constant_array[184,94] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_thr_L_c_tRNA
saturation_constant_array[184,95] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_trp_L_c_tRNA
saturation_constant_array[184,96] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_tyr_L_c_tRNA
saturation_constant_array[184,97] = 1.0;	#	 Name: translation_CAT: RIBOSOME_START_CAT+438*M_gtp_c+438*M_h2o_c+15.0*M_ala_L_c_tRNA+5.0*M_arg_L_c_tRNA+10.0*M_asn_L_c_tRNA+12.0*M_asp_L_c_tRNA+5.0*M_cys_L_c_tRNA+12.0*M_glu_L_c_tRNA+13.0*M_gln_L_c_tRNA+10.0*M_gly_L_c_tRNA+12.0*M_his_L_c_tRNA+9.0*M_ile_L_c_tRNA+13.0*M_leu_L_c_tRNA+12.0*M_lys_L_c_tRNA+9.0*M_met_L_c_tRNA+20.0*M_phe_L_c_tRNA+7.0*M_pro_L_c_tRNA+10.0*M_ser_L_c_tRNA+13.0*M_thr_L_c_tRNA+5.0*M_trp_L_c_tRNA+11.0*M_tyr_L_c_tRNA+16.0*M_val_L_c_tRNA = RIBOSOME+mRNA_CAT+PROTEIN_CAT+438*M_gdp_c+438*M_pi_c+219*tRNA Species: M_val_L_c_tRNA
saturation_constant_array[185,126] = 1.0;	#	 Name: tRNA_charging_M_ala_L_c_CAT: 15.0*M_ala_L_c+15.0*M_atp_c+15.0*tRNA+15*M_h2o_c = 15.0*M_ala_L_c_tRNA+15.0*M_amp_c+15.0*M_ppi_c Species: M_ala_L_c
saturation_constant_array[185,106] = 1.0;	#	 Name: tRNA_charging_M_ala_L_c_CAT: 15.0*M_ala_L_c+15.0*M_atp_c+15.0*tRNA+15*M_h2o_c = 15.0*M_ala_L_c_tRNA+15.0*M_amp_c+15.0*M_ppi_c Species: M_atp_c
saturation_constant_array[185,99] = 1.0;	#	 Name: tRNA_charging_M_ala_L_c_CAT: 15.0*M_ala_L_c+15.0*M_atp_c+15.0*tRNA+15*M_h2o_c = 15.0*M_ala_L_c_tRNA+15.0*M_amp_c+15.0*M_ppi_c Species: tRNA
saturation_constant_array[185,144] = 1.0;	#	 Name: tRNA_charging_M_ala_L_c_CAT: 15.0*M_ala_L_c+15.0*M_atp_c+15.0*tRNA+15*M_h2o_c = 15.0*M_ala_L_c_tRNA+15.0*M_amp_c+15.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[186,36] = 1.0;	#	 Name: tRNA_charging_M_arg_L_c_CAT: 5.0*M_arg_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_arg_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_arg_L_c
saturation_constant_array[186,106] = 1.0;	#	 Name: tRNA_charging_M_arg_L_c_CAT: 5.0*M_arg_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_arg_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_atp_c
saturation_constant_array[186,99] = 1.0;	#	 Name: tRNA_charging_M_arg_L_c_CAT: 5.0*M_arg_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_arg_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: tRNA
saturation_constant_array[186,144] = 1.0;	#	 Name: tRNA_charging_M_arg_L_c_CAT: 5.0*M_arg_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_arg_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[187,122] = 1.0;	#	 Name: tRNA_charging_M_asn_L_c_CAT: 10.0*M_asn_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_asn_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_asn_L_c
saturation_constant_array[187,106] = 1.0;	#	 Name: tRNA_charging_M_asn_L_c_CAT: 10.0*M_asn_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_asn_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_atp_c
saturation_constant_array[187,99] = 1.0;	#	 Name: tRNA_charging_M_asn_L_c_CAT: 10.0*M_asn_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_asn_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: tRNA
saturation_constant_array[187,144] = 1.0;	#	 Name: tRNA_charging_M_asn_L_c_CAT: 10.0*M_asn_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_asn_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[188,119] = 1.0;	#	 Name: tRNA_charging_M_asp_L_c_CAT: 12.0*M_asp_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_asp_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_asp_L_c
saturation_constant_array[188,106] = 1.0;	#	 Name: tRNA_charging_M_asp_L_c_CAT: 12.0*M_asp_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_asp_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_atp_c
saturation_constant_array[188,99] = 1.0;	#	 Name: tRNA_charging_M_asp_L_c_CAT: 12.0*M_asp_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_asp_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: tRNA
saturation_constant_array[188,144] = 1.0;	#	 Name: tRNA_charging_M_asp_L_c_CAT: 12.0*M_asp_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_asp_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[189,123] = 1.0;	#	 Name: tRNA_charging_M_cys_L_c_CAT: 5.0*M_cys_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_cys_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_cys_L_c
saturation_constant_array[189,106] = 1.0;	#	 Name: tRNA_charging_M_cys_L_c_CAT: 5.0*M_cys_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_cys_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_atp_c
saturation_constant_array[189,99] = 1.0;	#	 Name: tRNA_charging_M_cys_L_c_CAT: 5.0*M_cys_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_cys_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: tRNA
saturation_constant_array[189,144] = 1.0;	#	 Name: tRNA_charging_M_cys_L_c_CAT: 5.0*M_cys_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_cys_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[190,136] = 1.0;	#	 Name: tRNA_charging_M_glu_L_c_CAT: 12.0*M_glu_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_glu_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_glu_L_c
saturation_constant_array[190,106] = 1.0;	#	 Name: tRNA_charging_M_glu_L_c_CAT: 12.0*M_glu_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_glu_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_atp_c
saturation_constant_array[190,99] = 1.0;	#	 Name: tRNA_charging_M_glu_L_c_CAT: 12.0*M_glu_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_glu_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: tRNA
saturation_constant_array[190,144] = 1.0;	#	 Name: tRNA_charging_M_glu_L_c_CAT: 12.0*M_glu_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_glu_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[191,137] = 1.0;	#	 Name: tRNA_charging_M_gln_L_c_CAT: 13.0*M_gln_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_gln_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_gln_L_c
saturation_constant_array[191,106] = 1.0;	#	 Name: tRNA_charging_M_gln_L_c_CAT: 13.0*M_gln_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_gln_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_atp_c
saturation_constant_array[191,99] = 1.0;	#	 Name: tRNA_charging_M_gln_L_c_CAT: 13.0*M_gln_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_gln_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: tRNA
saturation_constant_array[191,144] = 1.0;	#	 Name: tRNA_charging_M_gln_L_c_CAT: 13.0*M_gln_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_gln_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[192,120] = 1.0;	#	 Name: tRNA_charging_M_gly_L_c_CAT: 10.0*M_gly_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_gly_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_gly_L_c
saturation_constant_array[192,106] = 1.0;	#	 Name: tRNA_charging_M_gly_L_c_CAT: 10.0*M_gly_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_gly_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_atp_c
saturation_constant_array[192,99] = 1.0;	#	 Name: tRNA_charging_M_gly_L_c_CAT: 10.0*M_gly_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_gly_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: tRNA
saturation_constant_array[192,144] = 1.0;	#	 Name: tRNA_charging_M_gly_L_c_CAT: 10.0*M_gly_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_gly_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[193,125] = 1.0;	#	 Name: tRNA_charging_M_his_L_c_CAT: 12.0*M_his_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_his_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_his_L_c
saturation_constant_array[193,106] = 1.0;	#	 Name: tRNA_charging_M_his_L_c_CAT: 12.0*M_his_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_his_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_atp_c
saturation_constant_array[193,99] = 1.0;	#	 Name: tRNA_charging_M_his_L_c_CAT: 12.0*M_his_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_his_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: tRNA
saturation_constant_array[193,144] = 1.0;	#	 Name: tRNA_charging_M_his_L_c_CAT: 12.0*M_his_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_his_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[194,121] = 1.0;	#	 Name: tRNA_charging_M_ile_L_c_CAT: 9.0*M_ile_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_ile_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c Species: M_ile_L_c
saturation_constant_array[194,106] = 1.0;	#	 Name: tRNA_charging_M_ile_L_c_CAT: 9.0*M_ile_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_ile_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c Species: M_atp_c
saturation_constant_array[194,99] = 1.0;	#	 Name: tRNA_charging_M_ile_L_c_CAT: 9.0*M_ile_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_ile_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c Species: tRNA
saturation_constant_array[194,144] = 1.0;	#	 Name: tRNA_charging_M_ile_L_c_CAT: 9.0*M_ile_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_ile_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[195,135] = 1.0;	#	 Name: tRNA_charging_M_leu_L_c_CAT: 13.0*M_leu_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_leu_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_leu_L_c
saturation_constant_array[195,106] = 1.0;	#	 Name: tRNA_charging_M_leu_L_c_CAT: 13.0*M_leu_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_leu_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_atp_c
saturation_constant_array[195,99] = 1.0;	#	 Name: tRNA_charging_M_leu_L_c_CAT: 13.0*M_leu_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_leu_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: tRNA
saturation_constant_array[195,144] = 1.0;	#	 Name: tRNA_charging_M_leu_L_c_CAT: 13.0*M_leu_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_leu_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[196,124] = 1.0;	#	 Name: tRNA_charging_M_lys_L_c_CAT: 12.0*M_lys_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_lys_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_lys_L_c
saturation_constant_array[196,106] = 1.0;	#	 Name: tRNA_charging_M_lys_L_c_CAT: 12.0*M_lys_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_lys_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_atp_c
saturation_constant_array[196,99] = 1.0;	#	 Name: tRNA_charging_M_lys_L_c_CAT: 12.0*M_lys_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_lys_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: tRNA
saturation_constant_array[196,144] = 1.0;	#	 Name: tRNA_charging_M_lys_L_c_CAT: 12.0*M_lys_L_c+12.0*M_atp_c+12.0*tRNA+12*M_h2o_c = 12.0*M_lys_L_c_tRNA+12.0*M_amp_c+12.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[197,134] = 1.0;	#	 Name: tRNA_charging_M_met_L_c_CAT: 9.0*M_met_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_met_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c Species: M_met_L_c
saturation_constant_array[197,106] = 1.0;	#	 Name: tRNA_charging_M_met_L_c_CAT: 9.0*M_met_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_met_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c Species: M_atp_c
saturation_constant_array[197,99] = 1.0;	#	 Name: tRNA_charging_M_met_L_c_CAT: 9.0*M_met_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_met_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c Species: tRNA
saturation_constant_array[197,144] = 1.0;	#	 Name: tRNA_charging_M_met_L_c_CAT: 9.0*M_met_L_c+9.0*M_atp_c+9.0*tRNA+9*M_h2o_c = 9.0*M_met_L_c_tRNA+9.0*M_amp_c+9.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[198,127] = 1.0;	#	 Name: tRNA_charging_M_phe_L_c_CAT: 20.0*M_phe_L_c+20.0*M_atp_c+20.0*tRNA+20*M_h2o_c = 20.0*M_phe_L_c_tRNA+20.0*M_amp_c+20.0*M_ppi_c Species: M_phe_L_c
saturation_constant_array[198,106] = 1.0;	#	 Name: tRNA_charging_M_phe_L_c_CAT: 20.0*M_phe_L_c+20.0*M_atp_c+20.0*tRNA+20*M_h2o_c = 20.0*M_phe_L_c_tRNA+20.0*M_amp_c+20.0*M_ppi_c Species: M_atp_c
saturation_constant_array[198,99] = 1.0;	#	 Name: tRNA_charging_M_phe_L_c_CAT: 20.0*M_phe_L_c+20.0*M_atp_c+20.0*tRNA+20*M_h2o_c = 20.0*M_phe_L_c_tRNA+20.0*M_amp_c+20.0*M_ppi_c Species: tRNA
saturation_constant_array[198,144] = 1.0;	#	 Name: tRNA_charging_M_phe_L_c_CAT: 20.0*M_phe_L_c+20.0*M_atp_c+20.0*tRNA+20*M_h2o_c = 20.0*M_phe_L_c_tRNA+20.0*M_amp_c+20.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[199,128] = 1.0;	#	 Name: tRNA_charging_M_pro_L_c_CAT: 7.0*M_pro_L_c+7.0*M_atp_c+7.0*tRNA+7*M_h2o_c = 7.0*M_pro_L_c_tRNA+7.0*M_amp_c+7.0*M_ppi_c Species: M_pro_L_c
saturation_constant_array[199,106] = 1.0;	#	 Name: tRNA_charging_M_pro_L_c_CAT: 7.0*M_pro_L_c+7.0*M_atp_c+7.0*tRNA+7*M_h2o_c = 7.0*M_pro_L_c_tRNA+7.0*M_amp_c+7.0*M_ppi_c Species: M_atp_c
saturation_constant_array[199,99] = 1.0;	#	 Name: tRNA_charging_M_pro_L_c_CAT: 7.0*M_pro_L_c+7.0*M_atp_c+7.0*tRNA+7*M_h2o_c = 7.0*M_pro_L_c_tRNA+7.0*M_amp_c+7.0*M_ppi_c Species: tRNA
saturation_constant_array[199,144] = 1.0;	#	 Name: tRNA_charging_M_pro_L_c_CAT: 7.0*M_pro_L_c+7.0*M_atp_c+7.0*tRNA+7*M_h2o_c = 7.0*M_pro_L_c_tRNA+7.0*M_amp_c+7.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[200,129] = 1.0;	#	 Name: tRNA_charging_M_ser_L_c_CAT: 10.0*M_ser_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_ser_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_ser_L_c
saturation_constant_array[200,106] = 1.0;	#	 Name: tRNA_charging_M_ser_L_c_CAT: 10.0*M_ser_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_ser_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_atp_c
saturation_constant_array[200,99] = 1.0;	#	 Name: tRNA_charging_M_ser_L_c_CAT: 10.0*M_ser_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_ser_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: tRNA
saturation_constant_array[200,144] = 1.0;	#	 Name: tRNA_charging_M_ser_L_c_CAT: 10.0*M_ser_L_c+10.0*M_atp_c+10.0*tRNA+10*M_h2o_c = 10.0*M_ser_L_c_tRNA+10.0*M_amp_c+10.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[201,130] = 1.0;	#	 Name: tRNA_charging_M_thr_L_c_CAT: 13.0*M_thr_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_thr_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_thr_L_c
saturation_constant_array[201,106] = 1.0;	#	 Name: tRNA_charging_M_thr_L_c_CAT: 13.0*M_thr_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_thr_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_atp_c
saturation_constant_array[201,99] = 1.0;	#	 Name: tRNA_charging_M_thr_L_c_CAT: 13.0*M_thr_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_thr_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: tRNA
saturation_constant_array[201,144] = 1.0;	#	 Name: tRNA_charging_M_thr_L_c_CAT: 13.0*M_thr_L_c+13.0*M_atp_c+13.0*tRNA+13*M_h2o_c = 13.0*M_thr_L_c_tRNA+13.0*M_amp_c+13.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[202,131] = 1.0;	#	 Name: tRNA_charging_M_trp_L_c_CAT: 5.0*M_trp_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_trp_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_trp_L_c
saturation_constant_array[202,106] = 1.0;	#	 Name: tRNA_charging_M_trp_L_c_CAT: 5.0*M_trp_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_trp_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_atp_c
saturation_constant_array[202,99] = 1.0;	#	 Name: tRNA_charging_M_trp_L_c_CAT: 5.0*M_trp_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_trp_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: tRNA
saturation_constant_array[202,144] = 1.0;	#	 Name: tRNA_charging_M_trp_L_c_CAT: 5.0*M_trp_L_c+5.0*M_atp_c+5.0*tRNA+5*M_h2o_c = 5.0*M_trp_L_c_tRNA+5.0*M_amp_c+5.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[203,132] = 1.0;	#	 Name: tRNA_charging_M_tyr_L_c_CAT: 11.0*M_tyr_L_c+11.0*M_atp_c+11.0*tRNA+11*M_h2o_c = 11.0*M_tyr_L_c_tRNA+11.0*M_amp_c+11.0*M_ppi_c Species: M_tyr_L_c
saturation_constant_array[203,106] = 1.0;	#	 Name: tRNA_charging_M_tyr_L_c_CAT: 11.0*M_tyr_L_c+11.0*M_atp_c+11.0*tRNA+11*M_h2o_c = 11.0*M_tyr_L_c_tRNA+11.0*M_amp_c+11.0*M_ppi_c Species: M_atp_c
saturation_constant_array[203,99] = 1.0;	#	 Name: tRNA_charging_M_tyr_L_c_CAT: 11.0*M_tyr_L_c+11.0*M_atp_c+11.0*tRNA+11*M_h2o_c = 11.0*M_tyr_L_c_tRNA+11.0*M_amp_c+11.0*M_ppi_c Species: tRNA
saturation_constant_array[203,144] = 1.0;	#	 Name: tRNA_charging_M_tyr_L_c_CAT: 11.0*M_tyr_L_c+11.0*M_atp_c+11.0*tRNA+11*M_h2o_c = 11.0*M_tyr_L_c_tRNA+11.0*M_amp_c+11.0*M_ppi_c Species: M_h2o_c
saturation_constant_array[204,133] = 1.0;	#	 Name: tRNA_charging_M_val_L_c_CAT: 16.0*M_val_L_c+16.0*M_atp_c+16.0*tRNA+16*M_h2o_c = 16.0*M_val_L_c_tRNA+16.0*M_amp_c+16.0*M_ppi_c Species: M_val_L_c
saturation_constant_array[204,106] = 1.0;	#	 Name: tRNA_charging_M_val_L_c_CAT: 16.0*M_val_L_c+16.0*M_atp_c+16.0*tRNA+16*M_h2o_c = 16.0*M_val_L_c_tRNA+16.0*M_amp_c+16.0*M_ppi_c Species: M_atp_c
saturation_constant_array[204,99] = 1.0;	#	 Name: tRNA_charging_M_val_L_c_CAT: 16.0*M_val_L_c+16.0*M_atp_c+16.0*tRNA+16*M_h2o_c = 16.0*M_val_L_c_tRNA+16.0*M_amp_c+16.0*M_ppi_c Species: tRNA
saturation_constant_array[204,144] = 1.0;	#	 Name: tRNA_charging_M_val_L_c_CAT: 16.0*M_val_L_c+16.0*M_atp_c+16.0*tRNA+16*M_h2o_c = 16.0*M_val_L_c_tRNA+16.0*M_amp_c+16.0*M_ppi_c Species: M_h2o_c

# Formulate control parameter array - 
control_parameter_array = zeros(17,2);
control_parameter_array[1,1] = 0.1; # gain => type: inhibition actor: M_pep_c target: R_pfk
control_parameter_array[1,2] = 1.0; # order => type: inhibition actor: M_pep_c target: R_pfk
control_parameter_array[2,1] = 0.1; # gain => type: activation actor: M_pep_c target: R_fdp
control_parameter_array[2,2] = 1.0; # order => type: activation actor: M_pep_c target: R_fdp
control_parameter_array[3,1] = 0.1; # gain => type: activation actor: M_fdp_c target: R_pyk
control_parameter_array[3,2] = 1.0; # order => type: activation actor: M_fdp_c target: R_pyk
control_parameter_array[4,1] = 0.1; # gain => type: inhibition actor: M_pep_c target: R_pck
control_parameter_array[4,2] = 1.0; # order => type: inhibition actor: M_pep_c target: R_pck
control_parameter_array[5,1] = 0.1; # gain => type: activation actor: M_fdp_c target: R_ppc
control_parameter_array[5,2] = 1.0; # order => type: activation actor: M_fdp_c target: R_ppc
control_parameter_array[6,1] = 0.1; # gain => type: inhibition actor: M_pyr_c target: R_pdh
control_parameter_array[6,2] = 1.0; # order => type: inhibition actor: M_pyr_c target: R_pdh
control_parameter_array[7,1] = 0.1; # gain => type: inhibition actor: M_pep_c target: R_pps
control_parameter_array[7,2] = 1.0; # order => type: inhibition actor: M_pep_c target: R_pps
control_parameter_array[8,1] = 0.1; # gain => type: inhibition actor: M_akg_c target: R_gltA
control_parameter_array[8,2] = 1.0; # order => type: inhibition actor: M_akg_c target: R_gltA
control_parameter_array[9,1] = 0.1; # gain => type: inhibition actor: M_pep_c target: R_icd
control_parameter_array[9,2] = 1.0; # order => type: inhibition actor: M_pep_c target: R_icd
control_parameter_array[10,1] = 0.1; # gain => type: inhibition actor: M_akg_c target: R_aceA
control_parameter_array[10,2] = 1.0; # order => type: inhibition actor: M_akg_c target: R_aceA
control_parameter_array[11,1] = 0.1; # gain => type: inhibition actor: M_pep_c target: R_aceA
control_parameter_array[11,2] = 1.0; # order => type: inhibition actor: M_pep_c target: R_aceA
control_parameter_array[12,1] = 0.1; # gain => type: inhibition actor: M_3pg_c target: R_aceA
control_parameter_array[12,2] = 1.0; # order => type: inhibition actor: M_3pg_c target: R_aceA
control_parameter_array[13,1] = 0.1; # gain => type: inhibition actor: M_akg_c target: R_aceB
control_parameter_array[13,2] = 1.0; # order => type: inhibition actor: M_akg_c target: R_aceB
control_parameter_array[14,1] = 0.1; # gain => type: inhibition actor: M_pep_c target: R_aceB
control_parameter_array[14,2] = 1.0; # order => type: inhibition actor: M_pep_c target: R_aceB
control_parameter_array[15,1] = 0.1; # gain => type: inhibition actor: M_3pg_c target: R_aceB
control_parameter_array[15,2] = 1.0; # order => type: inhibition actor: M_3pg_c target: R_aceB
control_parameter_array[16,1] = 0.1; # gain => type: inhibition actor: M_accoa_c target: R_maeB
control_parameter_array[16,2] = 1.0; # order => type: inhibition actor: M_accoa_c target: R_maeB
control_parameter_array[17,1] = 0.1; # gain => type: activation actor: M_pyr_c target: R_ldh_R
control_parameter_array[17,2] = 1.0; # order => type: activation actor: M_pyr_c target: R_ldh_R

# ---------------------------- DO NOT EDIT BELOW THIS LINE -------------------------- #
data_dictionary = Dict();
data_dictionary["STOICHIOMETRIC_MATRIX"] = S;
data_dictionary["RATE_CONSTANT_ARRAY"] = rate_constant_array;
data_dictionary["SATURATION_CONSTANT_ARRAY"] = saturation_constant_array;
data_dictionary["INITIAL_CONDITION_ARRAY"] = initial_condition_array;
data_dictionary["CONTROL_PARAMETER_ARRAY"] = control_parameter_array;
data_dictionary["EXPERIMENT_DATA_DICTIONARY"] = experimental_data_dictionary;
# ----------------------------------------------------------------------------------- #
return data_dictionary;
end
