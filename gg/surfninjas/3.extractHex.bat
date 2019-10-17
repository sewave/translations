@echo off
set T_FILENAME="TR_Surf Ninjas (U) [!].gg"
set SCRIPTNAME="surfninjas"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
