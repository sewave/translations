@echo off
set T_FILENAME="Greendog - The Beached Surfer Dude (UE) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
