<div style="text-align: right;">
  <figure style="display: inline-flex; align-items: center;">
    <img src="../docs/eo_lincs_logo.png" alt="Logo" style="height: 100px;">
    <figcaption style="font-weight: bold; font-size: 10px; margin-left: 10px;">EO-LINCS</figcaption>
  </figure>
</div>

# Scientific Analysis

This directory contains the notebooks and supporting functions used for the scientific 
analysis. The workflow is structured as follows:

`run_insitu_inversion.ipynb` Apply the methods described in D5.4 and processes the data and generates the scientific results. Environment files are `Manifest.toml` and `environment.yml` for the Conda environment. `extracted_figures` is the directory where the figures generated in the notebooks are stored. `output_AU-Dry_WROASTED` contains the outputs of the Model-Data Integration. `setup_dev_packages.jl` is a Julia script to set up the development environment for the Julia packages used in the notebooks. `settings_LUE` contains the configuration files for the Model-Data Integration.

## Methods
In this scientific case, we apply the methods described in D5.4, which include the following steps:
1. Data preprocessing: This step involves cleaning and preparing the data for analysis, including handling missing values, normalizing the data, and selecting relevant features.
2. Model-Data Integration: This step involves integrating the Earth Observation data with complementary EO products using the SINDBAD terrestrial ecosystem modelling framework. This includes configuring the model, running simulations, and assimilating the data to improve model accuracy.
3. Analysis and Interpretation: This step involves analyzing the results of the Model-Data Integration to understand the carbon state-flux relationships. This includes visualizing the results, comparing them with EO observations, and interpreting the findings in the context of optimized parameters.

## Result and further discussion
Here the scientific analysis demonstrates the application of the methods described in D5.4 to the SCS3, which involves integrating EO products into SINDBAD. The results show that the Model-Data Integration using the SINDBAD framework can improve the accuracy of ecosystem carbon cycle models by leveraging and comparing EO data of biomass and vegetation states together with model simulation estimates. The analysis provides insights into the carbon state-flux relationships and highlights the potential of using EO data to enhance our understanding of terrestrial ecosystems. Further discussion can focus on the utilizing more EO data in future studies to constrain the model parameters and reduce equifinality.
