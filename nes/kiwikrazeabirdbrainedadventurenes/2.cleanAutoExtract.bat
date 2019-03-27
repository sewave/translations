@echo off
set T_FILENAME="Kiwi Kraze - A Bird-Brained Adventure! (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
