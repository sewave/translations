@echo off
set T_FILENAME="Bubble Bobble (U) [C][!].gbc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
