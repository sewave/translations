@echo off 
set T_FILENAME="Rastan Saga II (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
