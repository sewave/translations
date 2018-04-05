@echo off
set T_FILENAME="Rambo III (W) (REV01) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
