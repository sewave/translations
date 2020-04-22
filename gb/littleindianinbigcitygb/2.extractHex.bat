@echo off
set T_FILENAME="TR_Little Indian in Big City (U) [S].gb"
set SCRIPTNAME="littleindianinbigcitygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
