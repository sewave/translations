@echo off 
set T_FILENAME="Pink Goes to Hollywood (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
