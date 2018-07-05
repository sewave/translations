@echo off
set T_FILENAME="TR_Terminator 2 - Judgment Day (UE) [!].gb"
set SCRIPTNAME="terminator2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5AC:70
pause
