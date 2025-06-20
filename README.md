# Cosmology with Gravitational Waves
Using matched filtering and Bayesian techniques to analyse gravitational waves and determine location of source origin, thereby re-calculating the Hubble constant.

# how to use with Docker
This project is able to be run using a Docker image. This environment includes a Jupyter notebook containing the coursework code as well as a `src` folder containing the requisite data.

## steps

1. Build the Docker image within the directory.
```
docker build -t gw-img .
```
7. Run the Docker image, making sure to allow for port usage.
```
docker run -p 8888:8888 gw-img
```
8. This will result in Jupyter Notebook being run. You will see a URL like:
```
http://127.0.0.1:8888/?token=<token>
```
9. View this URL with a browser of your choice. Google Chrome or Firefox is recommended.
10. To stop running the container use Docker Desktop. To stop running Jupyter Notebook, type `CTRL-C` in the terminal.

## within the Docker image
The Docker image contains:
1. `matched_filtering.ipynb`:
    - This contains the code to Part 1 of the coursework.
2. `bayesian.ipynb`:
    - This contains the code to Part 2 of the coursework.
3. `cosmology.ipynb`:
    - This contains the code to Part 3 of the coursework.
3. `data` folder:
    - This folder contains the original data.
4. `figures` folder:
    - Empty. This is to have a place to save figures to when running the notebooks.
5. `output` folder:
    - Empty. This is to have a place to save output files to when running the notebooks.
  
# how to run without Docker
This project may also be run outside of a Docker environment. To install the necessary packages, please run:
```
pip install -r requirements.txt
```
Creating a Python virtual environment to install the packages is recommended.

# where to find the report
The report is located in the `report` folder and is named `report.pdf`.

# use of auto-generation tools

Auto-generation tools were used as follows:
- Parsing error messages throughout the project.
- Assistance in formatting the report in $\LaTeX$, specifically with tables and referencing.

Auto-generation tools were not used elsewhere, for code generation, writing, or otherwise.

# acknowledgements

The $\LaTeX$ bibliography style was taken from https://github.com/gbhutani/vancouver_authoryear_bibstyle.git
