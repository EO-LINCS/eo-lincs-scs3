<div style="text-align: right;">
  <figure style="display: inline-flex; align-items: center;">
    <img src="../docs/eo_lincs_logo.png" alt="Logo" style="height: 100px;">
    <figcaption style="font-weight: bold; font-size: 10px; margin-left: 10px;">EO-LINCS</figcaption>
  </figure>
</div>

## Data Extraction

This directory contains the workflow used to generate the data cubes for the SCS. The resulting data cubes are stored in the local `data/` directory and serve as the input for the subsequent scientific analysis.

The output location is configured via the `storage` data store defined in [config.yml](config.yml). This choice is fully user-configurable and can be replaced with any supported file-system-based storage backend (e.g. `"file"` or `"s3"`). The only requirement is that a writable data store with the identifier `storage` is available. For further details, see the [xcube-multistore configuration documentation](https://xcube-dev.github.io/xcube-multistore/config/#entire-configuration-schema).

### How to Generate the Data Cubes

#### Set up the Environment

The recommended approach is to create a Conda environment using the provided environment specification:
```bash
conda/mamba env create -f environment.yml
```
The corresponding file can be found here: [environment.yml](../environment.yml)

After creation, activate the environment:
```bash
conda activate eo-lincs-scs3
```


Next, accessing ERA5 reanalysis data via the Copernicus Data Store (CDS) requires a valid CDS API key. This can be obtained by following the instructions in the [xcube-cds documentation](https://github.com/xcube-dev/xcube-cds#obtain-a-cds-personal-access-token).

Once obtained, the credentials must be added to the configuration file, which will be described in the notebook.

#### Execute the Cube Generation Pipeline

The main workflow is implemented in `data_extraction.ipynb`, which provides a step-by-step guide through the full cube generation process.

> **NOTE**: `sites.csv` is required for this science case which provides 
> the individual flux tower sites that we need to extract the data from. For all sites extraction, please use the full site list `site_list.csv` and filter the sites of interest in the notebook. The `sites.csv` file is a subset of `site_list.csv` containing only the sites that are relevant for single run of the pipeline of this scientific case. It is included in the repository for convenience, but users can run the pipeline notebook for `site_list.csv` if needed.

#### Convert the Cube to the Format needed by Sindbad
After generating the .zarr data cube (ESA CCI aboveground bimoass product, and Sentinel-2 fAPAR product), we need to convert the data cube to the format needed by Sindbad. The conversion process is implemented in `convert_to_sindbad_format.ipynb`, which provides a step-by-step guide through the conversion process. This notebook will read the generated .zarr data cube, perform necessary transformations, and save the converted data in the format required by Sindbad for subsequent analysis. Key transformations include renaming dimensions and variables, reordering dimensions, transforming units to the required scale, and ensuring the data structure is compatible with Sindbad's requirements. The final generated data is under the folder `./data/` as a `.zarr` file, which can be directly used for the scientific analysis (i.e. Model-Data integration) in the next step.