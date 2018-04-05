@echo off
set T_FILENAME="Escape From Mars Starring Taz (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
