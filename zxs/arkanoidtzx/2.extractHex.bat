@echo off
set T_FILENAME="TR_Arkanoid (Erbe).tzx"
set SCRIPTNAME="arkanoidtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3BB2:30
pause
