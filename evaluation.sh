conda activate ft-eval

export OPENAI_API_KEY=<"your openai api-key">

git clone https://github.com/tatsu-lab/alpaca_eval.git

cd alpaca_eval/

pip install -e .

cd ..

cp -r mini_lima alpaca_eval/src/alpaca_eval/models_configs/

alpaca_eval evaluate_from_model --model_configs 'mini_lima' --annotators_config 'chatgpt'