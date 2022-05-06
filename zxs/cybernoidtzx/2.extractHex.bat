@echo off
set T_FILENAME="TR_Cybernoid.tzx"
set SCRIPTNAME="cybernoidtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 742E:20
pause
