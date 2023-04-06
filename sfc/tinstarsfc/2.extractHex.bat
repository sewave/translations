@echo off
set T_FILENAME="TR_Tin Star (USA).sfc"
set SCRIPTNAME="tinstarsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
