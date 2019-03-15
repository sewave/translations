@echo off
set T_FILENAME="Mario Bros. (JU) [!].nes"
set SCRIPTNAME="mariobrosnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
