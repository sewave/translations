@echo off
set T_FILENAME="from_below_2020_09_16_v_1_0_0.nes"
set SCRIPTNAME="frombelow20200916v100nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
