@echo off 
set T_FILENAME="Air Diver (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
