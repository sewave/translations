@echo off
set T_FILENAME="Bubba N Stix (U) [!].bin"
set SCRIPTNAME="bubbanstixsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
