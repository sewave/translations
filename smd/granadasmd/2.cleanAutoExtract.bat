@echo off
set T_FILENAME="Granada (JU) (REV01) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
