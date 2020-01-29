@echo off
set T_FILENAME="Donkey Kong Land III (U) (V1.1) [S][!].gb"
set SCRIPTNAME="donkeykonglandiiigb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
