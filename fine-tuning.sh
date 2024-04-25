conda create -n "ft_eval"

conda activate ft_eval

pip install scikit-learn==1.4.0

pip install modelscope

export MODELSCOPE_CACHE=/mnt/workspace/modelscope_hub

python3 qwen_install.py

git clone https://github.com/hiyouga/LLaMA-Factory.git

cd LLaMA-Factory/

pip install -r requirements.txt

cd ..

bash finetune/run.sh
