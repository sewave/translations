@echo off
set T_FILENAME="Top Gear 3000 (USA).sfc"
set SCRIPTNAME="topgear3000sfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
