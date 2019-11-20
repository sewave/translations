@echo off
set T_FILENAME="1942 (1986) (Ascii) (J).rom"
set SCRIPTNAME="1942rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
