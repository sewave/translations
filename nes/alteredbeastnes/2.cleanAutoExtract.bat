@echo off
set T_FILENAME="Juuouki (J) [T+Eng1.00_akadewboy].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
