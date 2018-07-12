@echo off
set T_FILENAME="Adventures of Captain Comic, The (Color Dreams) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
