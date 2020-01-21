@echo off
set T_FILENAME="Kung-Fu Master (1983) (Mass Tael) (J).rom"
set SCRIPTNAME="kungfumasterrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
