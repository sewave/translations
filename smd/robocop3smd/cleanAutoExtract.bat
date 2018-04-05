@echo off 
set T_FILENAME="Robocop 3 (UE) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
