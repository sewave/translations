@echo off 
set T_FILENAME="Robocop Versus The Terminator (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
