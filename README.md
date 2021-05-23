# Bridging Imagination and Reality for Model-Based Deep Reinforcement Learning (BIRD)
This repository implements the main algorithm of BIRD described in **"Bridging Imagination and Reality for Model-Based Deep Reinforcement Learning (NeurIPS 2020)"** ([arxiv](https://arxiv.org/abs/2010.12142)).

## Requirements
- run it directly in your python 3 environment with pip:

``` 
$ pip install -r requirements.txt
```

## Training
In the folder `BIRD/`, the following command shows how to train BIRD.

```
$ python bird.py --logdir ../logdir/dmc_hopper_hop0/ --task dmc_hopper_hop --seed 0 --device 0 --ent_alpha 1e-8 
```

The default task is Hopper Hop, you can modify the `task` with `--task`. Please see DeepMind Control Suite to see all. 

Or you can directly run the run.sh to train BIRD, SoftBIRD and Dreamer:

```
$ bash run.sh
```

You can also only run BIRD:

```
$ bash run_bird.sh
```

## Evaluation
We put a checkpoint of BIRD in `logdir/dmc_hopper_hop/` to directly test. Use the following commands:

```
$ python BIRD/bird.py --task dmc_hopper_hop --logdir logdir/dmc_hopper_hop/bird/ 
```

## How to show results
After using `run.sh` for training, the results for generalization will be directly printed in the screen and the folder `logdir/task_name%i/algo_name` will be created where `task_name` is the task name (e.g. dmc_walker_run), `%i` is the seed, and `algo_name` is the algorithm name (e.g. BIRD). Or you can set your own logdir to see.

To show the results and gif, run `tensorboard` with these commands:

```
$ tensorboard --logdir logdir
```
