#!/bin/bash

cc -o 9cc 9cc.c 
./9cc 123 > tmp.s
cat tmp.s