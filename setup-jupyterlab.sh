#!/bin/bash -e

conda install -c conda-forge xeus xeus-python notebook jupyterlab ptvsd nodejs

# Python language server
pip install jupyter-lsp
jupyter labextension install @krassowski/jupyterlab-lsp
pip install python-language-server[all]

# Widgets
pip install ipywidgets ipympl
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter labextension install jupyter-matplotlib
jupyter nbextension enable --py --sys-prefix widgetsnbextension

# Table of contents
jupyter labextension install @jupyterlab/toc

# Variable inspector
jupyter labextension install @lckr/jupyterlab_variableinspector

# Git
pip install --upgrade jupyterlab-git

# Debugger
jupyter labextension install @jupyterlab/debugger


jupyter lab clean
jupyter lab build 