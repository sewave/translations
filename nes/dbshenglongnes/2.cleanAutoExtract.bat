@echo off
set T_FILENAME="Dragon Ball - Shen Long no Nazo (J) [hM34][T+Eng1.11_TransBRC].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
