@echo off
set T_FILENAME="Indiana Jones and the Last Crusade (U).gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
