cd /home/iibot/www/www.bergdichter.de/htdocs/Adventskalender/Adventskalender2020/nachher
cp ../vorher/??.html ..

days=$(( (`date +%s` + 86400 - $( date -d 20201201 +%s )) / 86400 ))
if (($days >24)); then days=24; fi
echo `date`
for i in `seq $days`; do echo $i; cp `printf %02d $i`.html ..; done

