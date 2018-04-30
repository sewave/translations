@echo off
set T_FILENAME="TR_1942 (JU) [!].nes"
set SCRIPTNAME="1942nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9010-9210,8110-8310
pause
