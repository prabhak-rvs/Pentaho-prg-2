#!/bin/bash

echo "====================================="
echo " PDI Global Superstore Autograder"
echo "====================================="

PASS=0
FAIL=0

# Check .ktr file
if [ -f "Global_Superstore_Transformation.ktr" ]; then
    echo "PASS: PDI transformation file found."
    PASS=$((PASS+1))
else
    echo "FAIL: Global_Superstore_Transformation.ktr not found."
    FAIL=$((FAIL+1))
fi

# Check output.csv
if [ -f "output.csv" ]; then
    echo "PASS: output.csv found."
    PASS=$((PASS+1))
else
    echo "FAIL: output.csv not found."
    FAIL=$((FAIL+1))
fi

# Check screenshot
if [ -f "pdi_result.png" ]; then
    echo "PASS: Screenshot found."
    PASS=$((PASS+1))
else
    echo "FAIL: pdi_result.png not found."
    FAIL=$((FAIL+1))
fi

# Check output.csv is not empty
if [ -s "output.csv" ]; then
    echo "PASS: output.csv is not empty."
    PASS=$((PASS+1))
else
    echo "FAIL: output.csv is empty."
    FAIL=$((FAIL+1))
fi

# Check that CSV contains more than one line
if [ -f "output.csv" ]; then
    ROWS=$(wc -l < output.csv)

    if [ "$ROWS" -gt 1 ]; then
        echo "PASS: output.csv contains data records."
        PASS=$((PASS+1))
    else
        echo "FAIL: output.csv does not contain data records."
        FAIL=$((FAIL+1))
    fi
fi

echo ""
echo "====================================="
echo "Passed: $PASS"
echo "Failed: $FAIL"
echo "====================================="

if [ "$FAIL" -eq 0 ]; then
    echo "AUTOGRADING PASSED"
    exit 0
else
    echo "AUTOGRADING FAILED"
    exit 1
fi
