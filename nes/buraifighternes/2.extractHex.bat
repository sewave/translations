@echo off
set T_FILENAME="TR_Burai Fighter (U) [!].nes"
set SCRIPTNAME="buraifighternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 80D0:100,9520:30,C010:20,C210:20,C310:20
pause
