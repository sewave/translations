@echo off
set T_FILENAME="TR_Alien 3 (USA).sfc"
set SCRIPTNAME="alien3sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F460:80,2F560:20,2F7A0:80,27C00:400
pause
