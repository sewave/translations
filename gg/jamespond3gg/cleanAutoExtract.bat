@echo off 
set T_FILENAME="James Pond 3 - Operation Starfish (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
