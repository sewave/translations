@echo off
set T_FILENAME="Teenage Mutant Ninja Turtles III - Radical Rescue (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
