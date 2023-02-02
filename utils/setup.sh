pip install spacy
python -m spacy download en_core_web_sm
# python utils/pretrain_preprocess.py --strategy greedy_entity_pyramid --metric pyramid_rouge --mode compute_all_scores
python utils/pretrain_preprocess.py --mode compute_all_scores --num_worker 20
python utils/pretrain_preprocess.py --input_dir './newshead_with_entity' --strategy greedy_entity_pyramid --metric pyramid_rouge --mode pretraining_data_with_score

python script/primer_main.py --ckpt_path ./models/1/ckpt/ --model_path ./models/1/ --gpus 1 --progress_bar_refresh_rate 50 --resume_ckpt ./PRIMER/ --data_path ./data_with_scores/newshead/greedy_entity_pyramid_pyramid_rouge_0.3_0.5/ --mode pretrain