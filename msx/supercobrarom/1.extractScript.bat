@echo off
set T_FILENAME="Super Cobra (1983) (Konami) (J).rom"
set SCRIPTNAME="supercobrarom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
