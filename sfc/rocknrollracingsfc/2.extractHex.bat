@echo off
set T_FILENAME="TR_Rock N' Roll Racing (USA).sfc"
set SCRIPTNAME="rocknrollracingsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
