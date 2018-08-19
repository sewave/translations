@echo off
set T_FILENAME="Mighty Morphin Power Rangers - The Movie (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
