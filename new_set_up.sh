conda create --name primer python=3.7
conda activate primer
conda install cudatoolkit=10.0
pip install git+https://github.com/allenai/longformer.git
pip install -r requirements.txt