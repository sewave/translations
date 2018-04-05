@echo off 
set T_FILENAME="Teenage Mutant Ninja Turtles IV - Turtles in Time (U) [!].smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
