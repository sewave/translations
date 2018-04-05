@echo off
set T_FILENAME="Sweet Home (J) [T+Eng_Siege].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
