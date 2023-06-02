@echo off
set T_FILENAME="TR_Scooby And Scrappy Doo.tzx"
set SCRIPTNAME="scoobyandscrappydootzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
