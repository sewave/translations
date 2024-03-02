@echo off
set T_FILENAME="TR_DUET.TZX"
set SCRIPTNAME="duettzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B50C:20,B70C:10
pause
