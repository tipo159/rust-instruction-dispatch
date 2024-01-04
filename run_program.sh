#!/usr/bin/env bash

function run_program() {
    program=$1
    sum=0
    for i in {1..100}; do
        output=`$program|grep 'Average of 100 results'`
        elements=($output)
        number=${elements[4]}
        echo $number
        sum=`expr $sum + $number`
    done
    echo -n 'Average: '
    echo `expr $sum / 100`
}

program=$1
run_program $program