@echo off
set T_FILENAME="Jungle Book, The (U) (Mar 1994) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
