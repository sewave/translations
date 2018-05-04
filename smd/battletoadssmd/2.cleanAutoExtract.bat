@echo off
set T_FILENAME="Battletoads (W) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
