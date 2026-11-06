export HF_HOME="/home/bigyang/llm-inference/bigbit/local"  # directory for the Hugging Face cache
export TRANSFORMERS_OFFLINE=1
export HF_DATASETS_OFFLINE=1

./accuracy_eval.sh meta-llama/Llama-3.1-8B-Instruct gsm8k_cot_llama 0 1 1