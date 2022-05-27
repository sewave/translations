@echo off
set T_FILENAME="TR_Jewel Master (USA, Europe) (Rev A).md"
set SCRIPTNAME="jewelmastersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1BA0E:240
pause
