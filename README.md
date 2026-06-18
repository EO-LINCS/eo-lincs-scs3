<div style="text-align: right;">
  <figure style="display: inline-flex; align-items: center;">
    <img src="docs/eo_lincs_logo.png" alt="Logo" style="height: 100px;">
    <figcaption style="font-weight: bold; font-size: 10px; margin-left: 10px;">EO-LINCS</figcaption>
  </figure>
</div>


# SCS3: Model-Data Fusion for Understanding Carbon State-Flux Relationships Across Space

This repo gathers code for the SCS3 throughout the project. 


**Objective**: The SCS3 aims to improve the accuracy of ecosystem carbon cycle models by integrating in-situ observation dataset, from eddy covariance flux tower provided by the FLUXNET2015 networks, with complementary EO products as inputs. The data cubes will be generated in a manner that allows seamless integration within the [SINDBAD](https://sindbad-mdi.org/) terrestrial ecosystem modelling framework.

**Outcomes**: Use a terrestrial carbon model structure that can deliver a process understanding of carbon state-flux relationships across space by leveraging and cross-comparing EO data of biomass and vegetation states (fAPAR, vegetation fraction, etc.) together with ecosystem carbon flux measurements and estimates. Additionally, provide open-source novel MDI tools and workflows for community use paving the way for adoption by other data-assimilation frameworks.

### Repository structure

The repository is structured as follows:

- `data_extraction` - gathers the data extraction process using [xcube Multi-Source Data Store](https://xcube-dev.github.io/xcube-multistore/).
  The final analysis-ready data cubes are stored in the `data` directory.
- `data` - contains the final analysis-ready data cubes. (will be created during data extraction process)
- `scientific_analyis` - contains the notebooks for the scientific analysis.

For further information, please refer to the ReadMe in the directroies 
`data_extraction` and `scientific_analysis`.
