@echo off
set T_FILENAME="TR_War Room (USA).col"
set SCRIPTNAME="warroomcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3BDD:30,2DE7:80
pause
