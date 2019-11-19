@echo off
set T_FILENAME="TR_Scion (1985) (Sony) (J).rom"
set SCRIPTNAME="scionrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
