while true 
do
PACKET=$(nc -l -p 10002)
NICK=$(echo $PACKET | cut -d ',' -f1)
MSG=$(echo $PACKET | cut -d ',' -f2)
echo "$NICK: $MSG"
done