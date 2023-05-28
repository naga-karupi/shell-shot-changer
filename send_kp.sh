#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "引数の数が正しくありません。引数の数は1である必要があります。"
	exit 1
fi

# C++の出力を読み取る関数
read_cpp_output() {
    local output=""
    while IFS= read -r line; do
        output+="$line"
    done <<< "$(./build/kp "$1")" # conv.outの実行結果を読み取る
    ros2 topic pub /solenoid_uart_msg std_msgs/msg/UInt8MultiArray "${output}" --once  # 結果を出力する
}

# C++の出力を読み取り、コマンドラインに出力する
read_cpp_output "$1"
