@echo off
set T_FILENAME="Michael Jackson's Moonwalker (W) (REV01) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
