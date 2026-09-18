#!/bin/bash

echo "PDI Global Superstore Autograder"

if [ -f "Global_Superstore_Transformation.ktr" ]; then
    echo "PASS: KTR file found"
else
    echo "FAIL: KTR file not found"
    exit 1
fi

if [ -f "output.csv" ]; then
    echo "PASS: output.csv found"
else
    echo "FAIL: output.csv not found"
    exit 1
fi

if [ -f "pdi_result.png" ]; then
    echo "PASS: Screenshot found"
else
    echo "FAIL: Screenshot not found"
    exit 1
fi

if [ -s "output.csv" ]; then
    echo "PASS: output.csv contains data"
else
    echo "FAIL: output.csv is empty"
    exit 1
fi

echo "AUTOGRADING PASSED"
