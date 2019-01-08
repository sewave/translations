@echo off
set T_FILENAME="TR_Mega Turrican (U) [!].bin"
set SCRIPTNAME="megaturricansmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26A00:200
pause
