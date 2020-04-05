@echo off
set T_FILENAME="Top Gear 2 (U) [!].smc"
set SCRIPTNAME="topgear2sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
