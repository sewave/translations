@echo off 
set T_FILENAME="TR_Teenage Mutant Ninja Turtles IV - Turtles in Time (U) [!].smc"
set S_FILENAME="Teenage Mutant Ninja Turtles IV - Turtles in Time (U) [!].smc"
set SCRIPTNAME="tmnt4"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
