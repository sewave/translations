@echo off
set T_FILENAME="TR_Faceball 2000 (USA).sfc"
set SCRIPTNAME="faceball2000sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2B9E5:60,2BAA5:B0,2BC25:40
pause
