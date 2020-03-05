@echo off
set T_FILENAME="Color Ball (1983) (Hudson) (J).rom"
set SCRIPTNAME="colorballrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
