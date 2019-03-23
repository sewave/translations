@echo off
set T_FILENAME="TR_Soccer (JU) [!].nes"
set SCRIPTNAME="soccernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9120:10,9210:10,9150:10
pause
