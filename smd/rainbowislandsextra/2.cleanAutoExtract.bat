@echo off
set T_FILENAME="Rainbow Islands - The Story of Bubble Bobble 2 (J) [c][!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
