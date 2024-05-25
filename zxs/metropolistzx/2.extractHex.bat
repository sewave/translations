@echo off
set T_FILENAME="TR_Metropolis - Loading Screen Fix.tzx"
set SCRIPTNAME="metropolistzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5A79:18
pause
