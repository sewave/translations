@echo off
set T_FILENAME="TR_Lethal Weapon (U) [!].nes"
set SCRIPTNAME="lethalweaponnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2BE10:100,30930:80
pause
