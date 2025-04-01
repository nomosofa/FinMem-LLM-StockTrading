#!/bin/bash

export OPENAI_API_KEY="your_openai_api_key_here"

# gpt
# train
python run.py sim \
-mdp /finmem/data/03_model_input/subset_symbols_2_AMZN.pkl \
-st 2016-01-13 \
-et 2016-12-27 \
-rm train \
-cp /finmem/config/amzn_gpt_config.toml \
-ckp /finmem/data/06_train_checkpoint \
-rp /finmem/data/05_train_model_output
# # train-checkpoint
# python run.py sim-checkpoint \
# -ckp /workspace/FinMem-LLM-StockTrading/data/06_train_checkpoint \
# -rp data/05_train_model_output \
# -cp config/tsla_gpt_config.toml \
# -rm train


# test
# python run.py sim \
# -mdp /finmem/data/03_model_input/subset_symbols_2_AMZN.pkl \
# -st 2017-07-20 \
# -et 2017-08-01 \
# -rm test \
# -cp /finmem/config/amzn_gpt_config.toml \
# -tap  /finmem/data/06_train_checkpoint  \
# -ckp /finmem/data/08_test_checkpoint \
# -rp /finmem/data/09_results
# # test-checkpoint
# python run.py sim-checkpoint \
# -rm test \
# -ckp ./data/08_test_checkpoint \
# -rp ./data/09_results

# python save_file.py
