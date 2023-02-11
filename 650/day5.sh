echo "please enter a job type"
echo "example 1.fulltime 2.parttime"
read $typeofjob

Fulltime=1
Parttime=2
perhourcost=100
loghoursinday=8
job=""

if [ $typeofjob == $Fulltime ]
then
    salary=$((perhourcost*loghoursinday))
    job="Fulltimer"

elif [ $typeofjobm == $Parttime ]
then
    salary=$((perhourcost*loghoursinday))
    salary=$(( salary/2 ))
    job="Parttimer"

else
    echo "your job type is not matching"
fi

echo "salary ===> $salary"
echo "job ===> $job"

