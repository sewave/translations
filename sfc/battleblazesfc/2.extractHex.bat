@echo off
set T_FILENAME="TR_Battle Blaze (USA).sfc"
set SCRIPTNAME="battleblazesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
