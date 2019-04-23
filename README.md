## Repository for the kinetic cell free model code

From within **_/src_**:

**_data/_** stores the raw experimental data in `.dat` format.

**_Ensemble/_** stores the parameter sets of the ensemble (`rate_constant.dat`, `saturation_constant.dat`, `control_constant.dat`), as well as the time vector (`Tsim`), system state (`X`), and cost function value (`cost`) for each set. It also stores the system state when there is no allosteric control (`X_nc`), and the corresponding cost function value (`cost_nc`). A similar but not identical ensemble can be created via guided random sampling by running `Algorithm.jl`.

**_Rand/_** stores the parameter sets of the randomly generated ensemble (`rate_constant.dat`, `saturation_constant.dat`, `control_constant.dat`), as well as the time vector (`Tsim`), system state (`X`), and cost function value (`cost`) for each set. It also stores a breakdown of the cost function by each of the 37 separate experimental measurements, which is used to create **_Figure 5_**. A similar but not identical ensemble can be created by running `Rand1000.jl`.

**_GroupKO/_** stores the results of first-order and pairwise reaction group knockouts. Each directory contains the time vector (`Tsim`), system state (`X`), change in productivity (`prod`) and change in system state (`state`) resulting from the knockout, calculated by `CalcKO.jl`.

**_Flux/_** stores the reaction flux values as a function of time. Each file contains the timepoint value followed by all flux values. It also contains a file `num_flux` that stores the total number of timepoints. It can be reproduced by running `SolveModel.jl`, with `save_fluxes = true` in `MassBalances.jl`.

**_Figure 1_** is an abridged version of the metabolic network found in `Kinetic-CFPS-Model-Publication-Code/Model.net`.

**_Figures 2_**, **_3_**, and **_4_** present the predictions of the best-fit parameter set and ensemble of parameter sets against experimental data for carbon species, amino acids, and energy species, respectively. **_Figure 2 (top)_** and **_figures 3_** and **_4_** are in the presence of allosteric control; they can be reproduced by running `PlotEnsemble.jl` with `allosteric_control_on = true`. **_Figure 2 (bottom)_** is in the absence of allosteric control; it can be reproduced by running `PlotEnsemble.jl` with `allosteric_control_on = false`.

**_Figure 6_** presents key reaction flux values during the two phases of production, as well as accumulation of PEP and pyruvate, normalized to the glucose uptake rate. The flux array can be read from **_Flux/_** using `ReadFluxes.jl`.

**_Figure 7_** presents the result of group knockout analysis, plotted by `PlotKO.jl`.

**_Figure S1_** presents histograms of parameter values across the ensemble, specifically rate maxima and saturation constants. These histograms, as well as the ensemble statistics mentioned in the **_Results_** section, can be reproduced by running `EnsembleStatistics.jl`.
