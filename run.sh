#!/bin/bash

# Script to reproduce results
mkdir outlogs &> /dev/null
i=123
echo $i

nohup python ./BIRD/dreamer.py \
--logdir "./logdir/dmc_walker_run$i/dreamer" \
--task "dmc_walker_run" \
--seed $i \
--device 0 \
>& outlogs/dmc_walker_run_dreamer_$i.txt &

nohup python ./BIRD/bird.py \
--logdir "./logdir/dmc_walker_run$i/bird" \
--task "dmc_walker_run" \
--seed $i \
--device 1 \
>& outlogs/dmc_walker_run_bird_$i.txt &
