@echo off 
set T_FILENAME="Mortal Kombat 3 (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
