@echo off
set T_FILENAME="Alien Syndrome (USA, Europe).gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
