@echo off
set T_FILENAME="Back to the Future Part III (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
