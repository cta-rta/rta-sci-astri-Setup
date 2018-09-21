# rta-sci-astri-Setup

## Installation

### Step 1 - Creating a Python virtual environment and installing dependencies

```bash
conda create --name astri_pipe  python=3.6

source activate astri_pipe

cd RTAlib/PyRTAlib

python setup.py install
```

### Step 1 - Integration of RTAlib within ASTRIPIPE
* mv RTAlib/PyRTAlib/PyRTAlib astripipe_v0.2.5/astripipe
* mv rtalibconfig_default rtalibconfig
* vi rtalibconfig -> configure

```
[General]
evt3modelname=<name of the evt3 table>
mjdref=<mjdref of the FITS>
debug=no
batchsize=<1 for streaming insert>
numberofthreads=1

[Dtr]
active=yes
debug=no
inputchannel=dtr_input
outputchannel=dtr_output

[MySql]
host=
username=
password=
dbname=

[Redis]
host=
password=
dbname=

[MySqlPipelineDatabase]
active=yes
debug=no
host=
username=
password=
dbname=
```
