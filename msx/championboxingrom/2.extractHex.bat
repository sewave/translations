@echo off
set T_FILENAME="TR_Champion Boxing (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="championboxingrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
