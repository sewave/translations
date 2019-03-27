@echo off
set T_FILENAME="New Zealand Story, The (Japan).pce"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
