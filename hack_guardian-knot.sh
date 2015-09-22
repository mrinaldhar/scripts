# Author: Mrinal Dhar
# A small script that adds false entries to an online college competition. I dont even remember, its kinda old. :P 


i=0
j=20
results=0
while [ $results -lt 1 ]
do
output=`curl --data "ans=$i&Qno=$j" -X POST --cookie "session_id_gordian_knot=10.1.39.17-5d833a41-296f-4f76-ac57-ab8759e42233" felicity.iiit.ac.in/~buzz/gordian/default/checkans`
(( i++ ))
results=`echo output` | grep Correct | wc -l
done
