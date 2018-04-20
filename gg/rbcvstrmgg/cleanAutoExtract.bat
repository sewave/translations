@echo off 
set T_FILENAME="Robocop versus The Terminator (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
