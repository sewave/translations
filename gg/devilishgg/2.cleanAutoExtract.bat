@echo off
set T_FILENAME="Devilish (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
