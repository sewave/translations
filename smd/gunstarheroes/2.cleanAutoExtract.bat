@echo off
set T_FILENAME="Gunstar Heroes (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
