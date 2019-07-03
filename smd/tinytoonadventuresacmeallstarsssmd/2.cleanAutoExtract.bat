@echo off
set T_FILENAME="Tiny Toon Adventures - Acme All-Stars (U) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
