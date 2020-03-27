@echo off
set T_FILENAME="D-Day (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="ddayrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
