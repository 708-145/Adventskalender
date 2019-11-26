cd /home/iibot/www/www.bergdichter.de/htdocs/Adventskalender/Adventskalender2018/nachher
cp index.html ..
cp ../vorher/??.html ..
cp ../vorher/??.jpg 2018/

days=$(( (`date +%s` + 86400 - $( date -d 20181201 +%s )) / 86400 ))
#days=$(( (`date +%s` + 86400 - $( date -d 20181121 +%s )) / 86400 ))
days2=$(( (`date +%s` + 86400 - $( date -d 20181202 +%s )) / 86400 ))
if (($days >24)); then days=24; fi
if (($days2>22)); then days2=24; fi
echo `date`
for i in `seq $days`; do echo $i; cp `printf %02d $i`.html ..; done
for i in `seq $days2`; do echo $i; cp `printf %02d $i`.jpg 2018/; done
