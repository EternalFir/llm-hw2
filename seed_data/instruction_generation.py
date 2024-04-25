import json
import openai
from openai import OpenAI

from APIs import openai_key

origin_insts=[]

with open('seed_tasks.jsonl','r') as file:
    for line in file:
        origin_insts.append(json.loads(line.strip()))

insts=origin_insts


client = OpenAI(
    # This is the default and can be omitted
    api_key=openai_key
)

chat_completion = client.chat.completions.create(
    messages=[
        {
            "role": "user",
            "content": "Say this is a test",
        }
    ],
    model="gpt-3.5-turbo",
)