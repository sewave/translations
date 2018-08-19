@echo off
set T_FILENAME="James Pond - Underwater Agent (UE) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
