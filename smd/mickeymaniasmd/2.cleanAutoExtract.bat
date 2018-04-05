@echo off
set T_FILENAME="Mickey Mania - Timeless Adventures of Mickey Mouse (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
