conda create -n "self-instruct"

conda activate self-instruct

cd ./self-instruct

pip install -r requirement.txt

export OPENAI_API_KEY=<"your openai api-key">

bash ./scripts/generate_instructions.sh

bash ./scripts/is_clf_or_not.sh

bash ./scripts/generate_instances.sh

bash ./scripts/prepare_for_finetuning.sh

cd ..