echo "Please select your favourite ipl team"
echo "example :"
echo "CSK"
echo "GT"
echo "MI"
read teamname
matchplayed=14
won=0
lost=0
nrr=""
points=0
function errorhandler() {
       echo "Please check your input, it is invalid"
}
function pointstable() {
      lost=$((matchplayed-$2))
      points=$(($2*2))
      echo "you selected $teamname"
      echo "secured place $1"
      echo "played matches $matchplayed"
      echo "win $2 lost $lost"
      echo "runrate $3"
      echo "points $points"
}

       if [ $teamname == "CSK" ]
       then
           currentposition=9
       elif [ $teamname == "RCB" ]
       then
           currentposition=4
       elif [ $teamname == "MI" ]
       then
           currentposition=10
 
       else
           errorhandler
       
       fi


case $currentposition in
10)
    won=4
    nrr="-0.503" 
    pointstable $currentposition $won $nrr   
;;
9)
    won=4
    nrr"-0.203"
    pointstable $currentposition $won $nrr
;;
4)
    won=8
    nrr="-0.253
    pointstable  $currentposition $won $nrr
;;
*)
echo ""
;;
esac

