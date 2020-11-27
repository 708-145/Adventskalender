# Adventskalender

## htaccess
vi /home/iibot/www/www.bergdichter.de/htdocs/.htaccess
redirect 301 /Adventskalender/index.html http://www.bergdichter.de/Adventskalender/Adventskalender2020/index.html

## crontab
crontab -e
cronjob.txt
1 07 * * * /home/iibot/daily/daily.sh
*/10 * * * * /home/iibot/www/www.bergdichter.de/htdocs/Adventskalender/Adventskalender2017/online/croncopy.sh
*/10 * * * * /home/iibot/www/www.bergdichter.de/htdocs/Adventskalender/Adventskalender2018/nachher/croncopy.sh
*/10 * * * * /home/iibot/www/www.bergdichter.de/htdocs/Adventskalender/Adventskalender2019/nachher/croncopy.sh
*/10 * * * * /home/iibot/www/www.bergdichter.de/htdocs/Adventskalender/Adventskalender2020/nachher/croncopy.sh

