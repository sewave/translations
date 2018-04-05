@echo off
set T_FILENAME="TR_Aladdin (U) [S][!].gb"
set SCRIPTNAME="aladdingb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
