@echo off
set T_FILENAME="Boggy'84 (1984) (Nippon Columbia) (J).rom"
set SCRIPTNAME="boggy84rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
