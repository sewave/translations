@echo off
set T_FILENAME="TR_Robot Messiah.tzx"
set SCRIPTNAME="robotmessiahtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
