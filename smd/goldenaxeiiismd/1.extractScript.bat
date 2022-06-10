@echo off
set T_FILENAME="Golden Axe III (Japan).md"
set SCRIPTNAME="goldenaxeiiismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
