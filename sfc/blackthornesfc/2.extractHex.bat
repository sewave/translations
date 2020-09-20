@echo off
set T_FILENAME="TR_Blackthorne (USA).sfc"
set SCRIPTNAME="blackthornesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
