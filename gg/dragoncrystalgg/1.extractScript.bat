@echo off
set T_FILENAME="Dragon Crystal (U) [!].gg"
set SCRIPTNAME="dragoncrystalgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
