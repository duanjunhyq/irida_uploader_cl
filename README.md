# IRIDA_uploader_cl

IRIDA_uploader_cl is used to upload NGS sequences to irida system. This tool is developed by National Microbiology Laboratory (NML) and redistributed by BCCDC William Hsiao's lab.


This tools can be installed by pip or conda. We would recommend using virtual environment to install this.

#### Installation through pip

First, create a virtual environment
```
python3 -m venv your_environment_name

```

Then activate it

```
source activate your_environment_name/bin/activate

```

After that, you can install irida_uploader_cl by pip.

```
python3 -m pip install irida_uploadr_cl
```

#### Installation through conda

First, create a conda virtual environment. Please note current it only supports python 3.6.

```
conda create -n your_environment_name python=3.6

```

Then activate it
```
conda activate your_environment_name
```

After that, you can install irida_uploader_cl
```
conda install -c sequdas irida_uploader_cl
```


