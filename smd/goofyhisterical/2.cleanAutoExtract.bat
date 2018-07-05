@echo off
set T_FILENAME="Goofy's Hysterical History Tour (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
