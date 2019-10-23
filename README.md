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
source your_environment_name/bin/activate

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

After installation, you can type this command to test:

```
irida_uploader_cl

```

## Running irida_uploader_cl for the first time

The default config file is at ~/.config/irida-uploader/config.conf. An example for the setting is as follows:

```

[Settings]
client_id = uploader
client_secret = ZK1z6H165y4IZF2ckqNQES315OyKQU8CsrpHNdQr16
username = admin
password = password1
base_url = http://localhost:8080/irida-latest/api/
parser = miseq
# parser = directory
# parser = miniseq
# parser = nextseq

```

