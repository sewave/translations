@echo off
set T_FILENAME="TR_A.T.A.C.tzx"
set SCRIPTNAME="atactzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
