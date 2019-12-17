@echo off
set T_FILENAME="Candoo Ninja (1983) (Ascii) (J).rom"
set SCRIPTNAME="candooninjarom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
