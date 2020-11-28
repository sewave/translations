@echo off
set T_FILENAME="TR_True Lies (USA).sfc"
set SCRIPTNAME="trueliessfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
