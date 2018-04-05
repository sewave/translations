@echo off
set T_FILENAME="Golden Axe III (J) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
