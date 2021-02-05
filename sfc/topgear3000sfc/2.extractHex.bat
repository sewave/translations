@echo off
set T_FILENAME="TR_Top Gear 3000 (USA).sfc"
set SCRIPTNAME="topgear3000sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
