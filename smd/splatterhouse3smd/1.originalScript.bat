@echo off
set T_FILENAME="Splatterhouse 3 (U) [c][!].gen"
set SCRIPTNAME="splatterhouse3smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
