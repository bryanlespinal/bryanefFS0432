#! /bin/bash

if [ $1 == 0 ]
then
     ./random.sh | tail -n 11 | head -n $2  >> rand_0_$2.dat
elif [ $1 == 1 ]
then
    ./random.sh | tail -n 11 | head -n $2  >> rand_0_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_1_$2.dat
elif [ $1 == 2 ]
then
    ./random.sh | tail -n 11 | head -n $2  >> rand_0_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_1_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_2_$2.dat
elif [ $1 == 3 ]
then
    ./random.sh | tail -n 11 | head -n $2  >> rand_0_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_1_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_2_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_3_$2.dat
elif [ $1 == 4 ]
then
    ./random.sh | tail -n 11 | head -n $2  >> rand_0_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_1_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_2_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_3_$2.dat
    ./random.sh | tail -n 11 | head -n $2  >> rand_4_$2.dat
else
     echo "Solo se puede introducir un numero del 0 al 4 en el argumento i."
fi
