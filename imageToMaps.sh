exiftool -GPSPosition $1 | cut -d":" -f2 >> gps.temp
sed -i "s/deg/°/g" gps.temp
sed -i "s/ //g" gps.temp
cat gps.temp
rm gps.temp
