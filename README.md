# Mini-LIMA Alignment
## Introduction

 The project focuses on the Instruction Data Construction based on higher performance large predictive models. It further explores Aligning via Supervised Fine-Tuning and conducts a Model Performance Evaluation based on Alpaca.

### Environment Set-up and Experiment
Our work and experiment results can be done and reproduced by the following procedures.

#### Self-Instruct

```
bash ./self-instruct.sh
```

#### Fine-tuning

```
bash ./fine-tuning.sh
```

#### Evaluation

```
bash ./evaluation.sh
```

###### Tips

If you got confronted with a issue like

It may be a bug in alpaca-eval, you can try fix in `alpaca_eval/src/alpaca_eval/decoders/openai.py:250:251`:

The original code:

```python
for choice in choices:
	choice["total_tokens"] = completion_batch.usage.total_tokens / len(prompt_batch)
```

Fixed code:

```python
for choice in choices:
    if completion_batch.usage.total_tokens is None:
    	choice["total_tokens"] = 0
    else:
    	choice["total_tokens"] = completion_batch.usage.total_tokens / len(prompt_batch)
```



## Acknowledgement

This project is supported by the director of CS2916 course, Prof.Pengfei Liu. Also, the work is under the help of the teacher assistant koala99.

The self-instruct part of the work is based on the github repository [self-instruct](https://github.com/yizhongw/self-instruct); the supervised fine-tuning is based on the github repository [LLaMA-Factory](https://github.com/hiyouga/LLaMA-Factory); and the evaluation is based on [Alpaca-Eval](https://github.com/tatsu-lab/alpaca_eval).