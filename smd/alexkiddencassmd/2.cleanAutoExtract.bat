@echo off
set T_FILENAME="Alex Kidd in the Enchanted Castle (UE) (REV02) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
