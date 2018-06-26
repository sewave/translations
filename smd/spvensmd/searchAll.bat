@echo off 
set T_FILENAME="Spider-Man and Venom - Maximum Carnage (W) [!].bin"
set SCRIPTNAME="spvensmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 80
pause 
