@echo off
set T_FILENAME="TR_Lethal Weapon (U) [!].smc"
set SCRIPTNAME="lethalweaponsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 101B0:50,10790:70
pause
