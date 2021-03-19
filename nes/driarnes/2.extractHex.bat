@echo off
set T_FILENAME="TR_Driar.nes"
set SCRIPTNAME="driarnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10582:40,C81F:A0,10622:80
pause
