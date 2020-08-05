@echo off
set T_FILENAME="Dinosaur's Tale, A (USA).md"
set SCRIPTNAME="dinosaurstaleasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
