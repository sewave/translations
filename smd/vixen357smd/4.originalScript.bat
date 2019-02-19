@echo off
set T_FILENAME="Vixen 357 (J) [T+ENG].gen"
set SCRIPTNAME="vixen357smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
