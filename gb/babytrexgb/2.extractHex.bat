@echo off
set T_FILENAME="TR_Baby T-Rex (E) [!].gb"
set SCRIPTNAME="babytrexgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
