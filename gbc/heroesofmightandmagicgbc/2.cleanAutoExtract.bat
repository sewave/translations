@echo off
set T_FILENAME="Heroes of Might and Magic (U) (M3) [C][!].gbc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
