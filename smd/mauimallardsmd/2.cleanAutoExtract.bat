@echo off
set T_FILENAME="Donald in Maui Mallard (E) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
