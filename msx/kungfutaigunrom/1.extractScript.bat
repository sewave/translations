@echo off
set T_FILENAME="Kung-Fu Taigun (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="kungfutaigunrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
