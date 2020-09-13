@echo off
set T_FILENAME="Beyond Zero Tolerance (USA) (Proto).md"
set SCRIPTNAME="beyondzerotolerancesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
