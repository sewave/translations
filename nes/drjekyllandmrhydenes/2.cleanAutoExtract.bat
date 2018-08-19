@echo off
set T_FILENAME="Dr. Jekyll and Mr. Hyde (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
