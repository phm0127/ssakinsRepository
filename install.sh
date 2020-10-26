echo "["`date`"] start to install SSAKINS."
sleep 1

echo "["`date`"]" `sudo docker pull phm0127/ssakins`
sleep 1

echo -n "["`date`"] docker SSAKINS image pulling... "

sp='/-\|'
printf ' '
for n in `seq 0 10` ; do
    printf '\b%.1s' "$sp"
    sleep 0.5
    sp=${sp#?}${sp%???}
done
echo ""
sudo docker run --name ssakins -p 8000:8080 -d phm0127/ssakins
echo -n "["`date`"] run SSAKINS on docker... "

printf ' '
for n in `seq 0 10` ; do
    printf '\b%.1s' "$sp"
    sleep 0.5
    sp=${sp#?}${sp%???}
done
echo ""


sudo docker exec -u root test sh /sh/initPassword.sh
sleep 1
echo "  #####    #####     ###    ##  ##    ####    ##   ##   #####
 ##   ##  ##   ##   ## ##   ##  ##     ##     ###  ##  ##   ##
 ##       ##       ##   ##  ## ##      ##     #### ##  ##
  #####    #####   #######  ####       ##     ## ####   #####
      ##       ##  ##   ##  ## ##      ##     ##  ###       ##
 ##   ##  ##   ##  ##   ##  ##  ###    ##     ##   ##  ##   ##
  #####    #####   ##   ##  ##   ##   ####    ##   ##   ##### "
sleep 1
echo "["`date`"] success install SSAKINS"





