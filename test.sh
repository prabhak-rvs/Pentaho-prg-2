#!/bin/bash

echo "====================================="
echo " PDI Global Superstore Autograder"
echo "====================================="

PASS=0
FAIL=0

# Check PDI transformation file
if [ -f "Global_Superstore_Transformation.ktr" ]; then
    echo "PASS: Global_Superstore_Transformation.ktr found"
    PASS=$((PASS+1))
else
    echo "FAIL: Global_Superstore_Transformation.ktr not found"
    FAIL=$((FAIL+1))
fi

# Check output CSV
if [ -f "output.csv" ]; then
    echo "PASS: output.csv found"
    PASS=$((PASS+1))
else
    echo "FAIL: output.csv not found"
    FAIL=$((FAIL+1))
fi

# Check screenshot
if [ -f "pdi_result.png" ]; then
    echo "PASS: pdi_result.png found"
    PASS=$((PASS+1))
else
    echo "FAIL: pdi_result.png not found"
    FAIL=$((FAIL+1))
fi

# Check CSV is not empty
if [ -s "output.csv" ]; then
    echo "PASS: output.csv contains data"
    PASS=$((PASS+1))
else
    echo "FAIL: output.csv is empty"
    FAIL=$((FAIL+1))
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
