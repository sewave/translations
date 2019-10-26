@echo off
set T_FILENAME="Uncanny X-Men, The (U) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
