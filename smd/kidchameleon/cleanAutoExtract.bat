@echo off 
set T_FILENAME="Kid Chameleon (UE) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
