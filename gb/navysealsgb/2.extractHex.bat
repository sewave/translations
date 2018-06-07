@echo off
set T_FILENAME="TR_Navy Seals (U) [!].gb"
set SCRIPTNAME="navysealsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6350:80
pause
