@echo off
set T_FILENAME="TR_Megaman V (U) [!].nes"
set SCRIPTNAME="megaman5"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 42020:50,4AB80:80,74660:30,70E10:80,73BF0:C0,749B0-74AD0,725C0:10,723F0:10,722A0:10
pause
