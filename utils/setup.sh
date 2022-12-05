pip install spacy
python -m spacy download en_core_web_sm
python utils/pretrain_preprocess.py --strategy greedy_entity_pyramid --metric pyramid_rouge --mode compute_all_scores
python utils/pretrain_preprocess.py --strategy greedy_entity_pyramid --metric pyramid_rouge --mode pretraining_data_with_score