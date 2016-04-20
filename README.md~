# Burn SD App
This App will help you to have NBOS in your SD. This App will be able to detect what OS is running (IOS or Linux), look for the operation system image and burn SD that we will insert.
## Good to know
### How interact with the app
1.  The app will detect what OS is running 

 ```OS detected: Linux ```

2.  It will ask you to insert the SD card 

 ```Insert SD card and press enter when finish ```

3.  After detecting the SD it will look for the NetBeast Image

```Image Found in: Descargas/NBOS.img 
Card located in: /dev/sdb1```

4.  When you have both the SD Card and the NetBeast Image, the app will get ready to burn the SD card with the NBOS.img

### Recomendations and advices
1.   SD Card must be formated in FAT and in a single partition. Otherwise the app will detect more than one input althought it's a single SD Card.
2. NetBeast OS image must be decompressed (it is recommended that the image is in a folder next to where the app is located to make the search easier)
3. Burning the SD Card will last for a while so you will have to wait; average time is 7 minutes.
5.  If the SD Card is not formated and you know your card's path (in Linux usually is  /dev/sdb1) you can format it with following command in Linux:
```
		sudo mkfs.vfat -F 32 -n Mi_Memoria /dev/sdb1df
```
### What about Windows?
The structure is adapted for iOS and Linux. If you want to use Windows, we need to use Win 32 Disk Imager. This is a really simple app, but you have to ensure the unit where you want to burn the image really belongs to the SD card. Please note, because you can delete a partition or a disk from your computer if you don't take care of that.
Once you have make sure the SD Card is the unit where you want to burn the image, we choose it and write the image name to burn in your SD Card. Now you have to push the 'Write' button and then you can go to have a coffee.
