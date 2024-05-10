@echo off
set T_FILENAME="Bobby's World (USA) (Proto).sfc"
set SCRIPTNAME="bobbysworldsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
