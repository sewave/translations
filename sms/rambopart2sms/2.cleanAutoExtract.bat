@echo off
set T_FILENAME="Rambo - First Blood Part 2 (U) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
