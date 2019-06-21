@echo off
set T_FILENAME="T2 - The Arcade Game (UE) (REV01) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
