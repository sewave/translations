@echo off
set T_FILENAME="City Connection (1986) (Jaleco) (J).rom"
set SCRIPTNAME="cityconnectionrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
