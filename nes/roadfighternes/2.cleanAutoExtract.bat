@echo off
set T_FILENAME="Road Fighter (J) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
