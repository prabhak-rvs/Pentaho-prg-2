#!/bin/bash

echo "======================================"
echo " PDI Global Superstore Autograder"
echo "======================================"

PASS=0
FAIL=0

echo ""
echo "Checking PDI transformation file..."

if [ -f "Global_Superstore_Transformation.ktr" ]; then
    echo "PASS: Global_Superstore_Transformation.ktr found"
    PASS=$((PASS+1))
else
    echo "FAIL: Global_Superstore_Transformation.ktr not found"
    FAIL=$((FAIL+1))
fi

echo ""
echo "Passed: $PASS"
echo "Failed: $FAIL"

if [ "$FAIL" -eq 0 ]; then
    echo ""
    echo "AUTOGRADING PASSED"
    exit 0
else
    echo ""
    echo "AUTOGRADING FAILED"
    exit 1
fi
