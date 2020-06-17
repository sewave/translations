@echo off
set T_FILENAME="TR_Super Return of the Jedi (U) [!].gg"
set SCRIPTNAME="superreturnofthejedigg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7FB7D:200
pause
