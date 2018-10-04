@echo off
set T_FILENAME="Mortal Kombat II (U) [!].gb"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
