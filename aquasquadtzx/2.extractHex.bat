@echo off
set T_FILENAME="TR_Aqua Squad.tzx"
set SCRIPTNAME="aquasquadtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5658:20
pause
