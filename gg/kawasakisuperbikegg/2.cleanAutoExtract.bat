@echo off
set T_FILENAME="Kawasaki Superbike Challenge (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
