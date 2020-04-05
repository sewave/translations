@echo off
set T_FILENAME="TR_Top Gear 2 (U) [!].smc"
set SCRIPTNAME="topgear2sfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
