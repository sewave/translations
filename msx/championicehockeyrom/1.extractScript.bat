@echo off
set T_FILENAME="Champion Ice Hockey (1986) (Pony Cannon) (J).rom"
set SCRIPTNAME="championicehockeyrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
