@echo off
set T_FILENAME="TR_Super Mario World 2 - Yoshi's Island (USA, Asia) (Rev 1).sfc"
set SCRIPTNAME="supermarioworld2yoshisislandsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4BD2F:80,4BDEF:10,4C02D:90
pause
