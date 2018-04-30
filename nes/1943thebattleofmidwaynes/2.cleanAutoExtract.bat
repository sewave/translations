@echo off
set T_FILENAME="1943 - The Battle of Midway (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
