@echo off
set T_FILENAME="TR_Bionic Battler (U).gb"
set SCRIPTNAME="bionicbattlergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9120:10,58EC:50,5B1C:50,5D1C:50,5F4C:60,58EC:60,615C:60,634C:60,653C:60,674C:60,6B3C:C0,6D6C:60,6F4C:60,729C:60
pause
