@echo off
set T_FILENAME="Twin Eagle - Revenge Joe's Brother (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
