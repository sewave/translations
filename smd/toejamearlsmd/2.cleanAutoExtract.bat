@echo off
set T_FILENAME="Toejam & Earl (UE) (REV00) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
