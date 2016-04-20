#! /bin/bash
uname > status
read a < status
echo "OS detected: $a"
sudo df -h | awk '{print $1}' > file1
echo "Insert SD card and press enter when finish"
read v
sleep 5
sudo df -h | awk '{print $1}' > file2

while read line
do
  auxiliar=0
while read linea
do
  if [ "$line" = "$linea" ];
     then
       auxiliar=1
  fi

done < file1
if [ $auxiliar = 0 ];
   then
   tarjeta=$line
fi
done < file2
if [ -z $tarjeta ];
   then
     echo "SD card needed.."
     exit
fi

case $a in
  "Linux")
  umount "$tarjeta"
  find */NBOS.img > ruta
  read image < ruta
  if [ -z $image ];
     then
       echo "NBOS.img isn't download or descompressed..."
       exit
  else
  echo "Image Found in: $image"
  echo "Card located in: $tarjeta"
  echo "Burn SD..."
       sudo dd if=$image of=$tarjeta

  fi

  ;;
  "Darwin")
  diskutil umount "$tarjeta"
  find */NBOS.img > ruta
  read image < ruta
  if [ -z $image ];
     then
       echo "NBOS.img isn't download or descompressed..."
       exit
  else
  echo "Image Found in: $image"
  echo "Card located in: $tarjeta"
  echo "Burn SD..."
       sudo dd bs=1m if=$image of=$tarjeta

  fi ;;
esac
rm status
rm file1
rm file2
rm ruta

4935679+0 registros leídos
4935679+0 registros escritos
2527067648 bytes (2,5 GB) copiados, 642,315 s, 3,9 MB/s
