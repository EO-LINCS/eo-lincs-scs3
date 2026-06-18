## SCS3: Model-Data Fusion for Understanding Carbon State-Flux Relationships Across Space

This repo gathers code for the SCS3 throughout the project. 


**Objective**: The SCS3 aims to improve the accuracy of ecosystem carbon cycle models by integrating in-situ observation dataset, from eddy covariance flux tower provided by the FLUXNET2015 networks, with complementary EO products as inputs. The data cubes will be generated in a manner that allows seamless integration within the [SINDBAD](https://sindbad-mdi.org/) terrestrial ecosystem modelling framework.

**Outcomes**: Use a terrestrial carbon model structure that can deliver a process understanding of carbon state-flux relationships across space by leveraging and cross-comparing EO data of biomass and vegetation states (fAPAR, vegetation fraction, etc.) together with ecosystem carbon flux measurements and estimates. Additionally, provide open-source novel MDI tools and workflows for community use paving the way for adoption by other data-assimilation frameworks.


### How to Generate the Data Cubes

#### Set up the Environment

Before proceeding, ensure that all required dependencies are installed.

Create the conda environment using the following command:

`conda env create -f environment.yml`
The corresponding file can be found here:
https://github.com/EO-LINCS/eo-lincs-scs3/blob/v1.1/environment.yml

After creation, activate the environment:
`conda activate eo-lincs-scs3`


Next, accessing ERA5 reanalysis data via the Copernicus Data Store (CDS) requires a valid CDS API key. This can be obtained by following the instructions in the [xcube-cds documentation](https://github.com/xcube-dev/xcube-cds#obtain-a-cds-personal-access-token).

Once obtained, the credentials must be added to the configuration file, which will be described in the notebook.

---

#### Execute the Cube Generation Pipeline

All scripts and notebooks required for cube generation are located in the `cube_generation` folder.

The main workflow is implemented in `scs3_xcube_multistore.ipynb`, which provides a step-by-step guide through the full cube generation process.