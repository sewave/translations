@echo off
set T_FILENAME="New Zealand Story, The (E) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
