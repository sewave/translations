@echo off
set T_FILENAME="Impossible Mission II (U) [!].nes"
set SCRIPTNAME="impossiblemissioniines"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
