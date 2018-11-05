@echo off
set T_FILENAME="Captain Planet and the Planeteers (E) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
