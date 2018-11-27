@echo off
set T_FILENAME="TR_Zero Wing (E) [c][!].bin"
set SCRIPTNAME="zerowingsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 365A0:60
pause
