@echo off
set T_FILENAME="ECCO The Dolphin (UE) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
