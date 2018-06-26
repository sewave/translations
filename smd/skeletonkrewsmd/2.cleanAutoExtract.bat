@echo off
set T_FILENAME="Skeleton Krew (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
