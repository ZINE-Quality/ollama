#!/bin/bash
#On the Ollama server set this to run every minute with cron and then use Matplot to make graph of GPU mem usage. CheckMK has a module that can do this much better. 

nvidia-smi --query-gpu=timestamp,utilization.memory --format=csv | tail -n 1 | awk '{print $1 $2 ";" $3}' | tr -d '%' | tr -d '/' | tr -d ',' | tr -d '.' | tr -d ':' | sed 's/;/\:/' >> /home/user/gpu_mem_usage.txt
