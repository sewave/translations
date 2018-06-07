@echo off
set T_FILENAME="TR_Tinhead (E) (Beta).smc"
set SCRIPTNAME="tinheadsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
