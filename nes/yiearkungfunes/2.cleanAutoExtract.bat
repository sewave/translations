@echo off
set T_FILENAME="Yie Ar Kung-Fu (J) (V1.4) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
