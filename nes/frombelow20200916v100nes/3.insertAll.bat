@echo off
set T_FILENAME="TR_from_below_2020_09_16_v_1_0_0.nes"
set S_FILENAME="from_below_2020_09_16_v_1_0_0.nes"
set SCRIPTNAME="frombelow20200916v100nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
