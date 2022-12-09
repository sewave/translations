@echo off
set T_FILENAME="TR_Rapid Fire.tzx"
set SCRIPTNAME="rapidfiretzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
