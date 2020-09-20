@echo off
set T_FILENAME="TR_Blackthorne (USA).32x"
set SCRIPTNAME="blackthorne32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
