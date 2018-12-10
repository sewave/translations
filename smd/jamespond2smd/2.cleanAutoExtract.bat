@echo off
set T_FILENAME="James Pond II - Codename RoboCod (UE) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
