@echo off
set T_FILENAME="TR_Super Soccer (U).smc"
set SCRIPTNAME="supersoccersfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 458C0:100,34800:800,4C800:200,53400:100,5FC00:400
pause
