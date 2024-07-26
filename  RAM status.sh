free_space=$(free -mt | grep "Total" | awk '{print $4}')
th=500

if [[ $free_space -lt $th ]]
then 
echo "Warning ram is running low "
else 
echo "ram space is sufficient $free_space"
fi