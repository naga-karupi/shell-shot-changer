#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "引数の数が正しくありません。引数の数は1である必要があります。"
	exit 1
fi

declare -p $1

# ターゲットごとに特定の整数を入れる
if [ "$1" -eq "1" ]; then
    rotate_spd=0.446
    ros2 topic pub /set_sum std_msgs/msg/Float32 "{data: $rotate_spd}" --once
    exit 0
fi

if [ "$1" -eq "2" ]; then
    rotate_spd=0.446
    ros2 topic pub /set_sum std_msgs/msg/Float32 "{data: $rotate_spd}" --once
    exit 0
fi

if [ $1 -eq 3 ]; then
    rotate_spd=0.446
    ros2 topic pub /set_sum std_msgs/msg/Float32 "{data: $rotate_spd}" --once
    exit 0
fi

ros2 topic pub /set_sum std_msgs/msg/Float32 "{data: $1}" --once  # 結果を出力する
