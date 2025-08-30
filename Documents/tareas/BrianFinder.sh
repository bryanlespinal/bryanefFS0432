#!/bin/bash

awk -F ',' 'NR>1 && $1=="Brian" && $3 ~ /\.com$/ && $4=="Boeing"' usuarios.csv

echo "-----------------------------------------"

awk -F ',' 'NR>1 && ($1=="James" || $1=="Paul") && ($2 ~ /^[JS]/) && $4=="Ad Astra"' usuarios.csv
