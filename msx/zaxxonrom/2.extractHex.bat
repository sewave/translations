@echo off
set T_FILENAME="TR_Zaxxon (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="zaxxonrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3689:10
pause
