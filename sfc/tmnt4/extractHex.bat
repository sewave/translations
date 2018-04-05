@echo off 
set T_FILENAME="TR_Teenage Mutant Ninja Turtles IV - Turtles in Time (U) [!].smc"
set SCRIPTNAME="tmnt4"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
