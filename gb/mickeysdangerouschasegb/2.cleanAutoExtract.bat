@echo off
set T_FILENAME="Mickey's Dangerous Chase (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
