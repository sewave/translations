@echo off
set T_FILENAME="TR_Top Gear 2 (U) [!].smc"
set S_FILENAME="Top Gear 2 (U) [!].smc"
set SCRIPTNAME="topgear2sfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
