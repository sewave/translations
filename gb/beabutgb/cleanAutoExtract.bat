@echo off 
set T_FILENAME="Beavis and Butt-head (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
