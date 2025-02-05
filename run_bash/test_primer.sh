#!/bin/bash

cd ../script

# # Multi-news dataset
# DATA_NAME="multi_news"
# LENGTH_LIMIT=256
# # Multi-xscience dataset
# DATA_NAME="multi_x_science_sum"
# LENGTH_LIMIT=128
# Wikisum dataset
# DATA_NAME="wikisum"
# LENGTH_LIMIT=128
# wcep dataset
# DATA_NAME="wcep"
# LENGTH_LIMIT=50
# arxiv dataset
# DATA_NAME="arxiv"
# LENGTH_LIMIT=300
# crd3 dataset
DATA_NAME="crd3_noise"
LENGTH_LIMIT=300


# original PRIMER model
MODEL_NAME="1"
MODEL_PATH="PRIMER_model"
# MODEL_NAME="PRIMER_arxiv"
# MODEL_PATH="PRIMER_arxiv"
nohup python primer_main.py  \
                --batch_size 2 \
                --gpus 1  \
                --mode test \
                --model_path ../models/$MODEL_NAME/  \
                --dataset_name ${DATA_NAME} \
                --primer_path ../${MODEL_PATH} \
                --num_workers 4 \
                --progress_bar_refresh_rate 50 \
                --max_length_tgt ${LENGTH_LIMIT} \
        > ../test_${DATA_NAME}_${MODEL_NAME}.out &

