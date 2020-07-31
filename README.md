# An introduction to Refactoring in Python with Jupyter notebook
### Level: Beginner 

## What you'll learn:
- why refactoring is needed
- how to refactor your Python code in Jupyter notebook
- how to write cleaner and more efficient Python code

## Prerequisites
* your GitHub account
* git
* [miniconda](https://docs.conda.io/en/latest/miniconda.html) or [anaconda](https://www.anaconda.com/products/individual)

## Usage
* Fork this repository
* Clone forked repository

### For MacOs and Linux users
* Navigate to the cloned repository folder via terminal and run Makefile
```
cd Jupyter-refactoring-beginner-jul2020 && make all
```
* If you finished with a workshop and want to clean everything, navigate to the main folder and run Makefile
```
cd Jupyter-refactoring-beginner-jul2020 && make clean
```

### For Windows user
* Open Anaconda Prompt(miniconda3), navigate to the cloned repository folder and run the following commands line by line
```
cd Jupyter-refactoring-beginner-jul2020
conda env create -f environment.yml
conda activate jupyter-refactoring
python -s -m ipykernel install --user --name=jupyter-refactoring
jupyter lab
```
* If you finished with a workshop and want to clean everything, run the following commands line by line
```
jupyter kernelspec uninstall jupyter-refactoring
conda deactivate
conda env remove --name jupyter-refactoring
```

## Video record
[Refactoring in Python with Jupyter Notebook](https://youtu.be/VHUWwwuvkLk)

## Credits
This workshop was set up by @pyladiesams and @EzheZhezhe
