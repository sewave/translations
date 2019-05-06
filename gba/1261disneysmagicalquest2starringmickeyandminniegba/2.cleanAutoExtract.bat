@echo off
set T_FILENAME="1261 - Disney's Magical Quest 2 Starring Mickey and Minnie (U)(Evasion).gba"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
