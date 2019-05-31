@echo off
set T_FILENAME="TR_Sword Master (U) [!].nes"
set SCRIPTNAME="swordmasternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20220:10,202A0:10,20590:80,20B20:10,2F630:10,20CE0:100
pause
