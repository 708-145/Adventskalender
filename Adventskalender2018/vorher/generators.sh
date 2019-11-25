for i in {01..24}; do sed "s,01\.,$i.,g" template_nochnicht.html >offline/$i.html ; done
for i in {01..24}; do sed "s,01\.,$i.,g" template.html >online/$i.html ; done

cp offline/*.html .
days=$(( (`date +%s` - $( date -d 20170731 +%s )) / 86400  ))
if (($days >24)); then days=24; fi
for i in `seq $days`; do echo $i; cp online/`printf %02d $i`.html .; done


# Startzustand
cp vorher/??.html . ; cp vorher/??.jpg 2018/

# Endzustand
for i in {01..24}; do echo $i; cp nachher/$i.html .; cp nachher/$i.jpg 2018/; done

# Prompt each day
cp vorher/??.html . ; cp vorher/??.jpg 2018/
for i in {01..24}; do read -p $i; cp nachher/$i.html .; cp nachher/$i.jpg 2018/; done

# Advent 2018
cp vorher/??.html . ; cp vorher/??.jpg 2018/
days=$(( (`date +%s` - $( date -d 20181109 +%s )) / 86400  ))
if (($days >24)); then days=24; fi
for i in `seq $days`; do echo $i; cp nachher/`printf %02d $i`.html .; cp nachher/`printf %02d $i`.jpg 2018/; done

# for i in {01..24}; do echo $i; done
# var=$( date -d 20170731 +%s ); echo $(( (`date +%s` - $var) / 86400  )) Tage
