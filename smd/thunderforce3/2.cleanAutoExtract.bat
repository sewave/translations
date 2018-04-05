@echo off
set T_FILENAME="Thunder Force III (JU) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
