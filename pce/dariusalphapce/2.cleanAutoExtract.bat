@echo off
set T_FILENAME="Darius Alpha (J).pce"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
