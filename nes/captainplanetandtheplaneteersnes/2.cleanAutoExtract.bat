@echo off
set T_FILENAME="Captain Planet and The Planeteers (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
