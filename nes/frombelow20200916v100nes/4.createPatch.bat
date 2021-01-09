@echo off
set T_FILENAME="TR_from_below_2020_09_16_v_1_0_0.nes"
set S_FILENAME="from_below_2020_09_16_v_1_0_0.nes"
set SCRIPTNAME="frombelow20200916v100nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
