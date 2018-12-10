@echo off
set T_FILENAME="1942 (U) [C][!].gbc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
