@echo off
set T_FILENAME="TR_Taz-Mania (U) [!].gb"
set SCRIPTNAME="tazmaniaugb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C090:300
pause
