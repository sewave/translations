@echo off
set T_FILENAME="TR_Mouse Trap Hotel (USA).gb"
set SCRIPTNAME="mousetraphotelgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 939A:10,93FA:10,942A:10,ADEA:60
pause
