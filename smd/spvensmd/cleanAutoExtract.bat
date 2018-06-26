@echo off 
set T_FILENAME="Spider-Man and Venom - Maximum Carnage (W) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
