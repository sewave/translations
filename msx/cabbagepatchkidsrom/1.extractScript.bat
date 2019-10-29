@echo off
set T_FILENAME="Cabbage Patch Kids (1983) (Konami) (J).rom"
set SCRIPTNAME="cabbagepatchkidsrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
