import json

gpt_dataset=[]

with open('./../self-instruct/data/gpt3_generations/finetuning_data/all_generated_instances.jsonl','r') as file:
    for line in file:
        gpt_dataset.append(json.loads(line.strip()))

print(gpt_dataset[1])