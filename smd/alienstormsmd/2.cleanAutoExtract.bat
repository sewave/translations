@echo off
set T_FILENAME="Alien Storm (W) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
