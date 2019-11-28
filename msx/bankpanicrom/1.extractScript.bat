@echo off
set T_FILENAME="Bank Panic (1985) (Pony Cannon) (J).rom"
set SCRIPTNAME="bankpanicrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
