@echo off
set T_FILENAME="Adventures of Lolo 2 (U) [!].nes"
set SCRIPTNAME="adventuresoflolo2nes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
