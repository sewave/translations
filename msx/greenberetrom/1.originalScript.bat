@echo off
set T_FILENAME="Green Beret (1986)(Konami).rom"
set SCRIPTNAME="greenberetrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
