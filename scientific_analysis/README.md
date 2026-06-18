<div style="text-align: right;">
  <figure style="display: inline-flex; align-items: center;">
    <img src="../docs/eo_lincs_logo.png" alt="Logo" style="height: 100px;">
    <figcaption style="font-weight: bold; font-size: 10px; margin-left: 10px;">EO-LINCS</figcaption>
  </figure>
</div>

# Scientific Analysis

This directory contains the notebooks and supporting functions used for the scientific 
analysis. The workflow is structured as follows:

1. `01_data_processing.ipynb` Apply the methods described in D5.4 and processes the 
   data and generates the scientific results.
2. `02_data_visualization.ipynb` Visualizes the results of the analysis which are shown
   in D5.4.
3. Add more notebooks if needed. 

The `utils` directory contains reusable functions that support data processing and 
visualization tasks within the notebooks.

## Methods
Here, the methods can be described in general terms if necessary.

## Result and further discussion
Here results and further discussion can be provided, if necessary.

## Add more sections if needed


> **Note:** The structure of the analysis is intentionally flexible. Please follow 
> these general guidelines:
>
> - Number notebooks in the order they are intended to be executed.
> - Use clear, descriptive names for notebooks.
> - The datasets are stored in the `data` directory. Access them using relative paths (e.g. via the xcube file data store).
> - Move complex or reusable logic (e.g. recurrent data manipulation, plotting routine) into functions within the `utils` directory.
> - Document in the notebook what each external function does when it is used.
> - Use descriptive and consistent naming for all functions.