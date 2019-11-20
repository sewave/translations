@echo off
set T_FILENAME="TR_Alleyway (W) [!].gb"
set SCRIPTNAME="alleywaygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 56F5:200
pause
