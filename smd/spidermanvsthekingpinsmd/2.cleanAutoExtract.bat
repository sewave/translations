@echo off
set T_FILENAME="Spider-Man vs The Kingpin (W) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
