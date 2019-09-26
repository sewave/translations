@echo off
set T_FILENAME="TR_Ghoul School (U) [!].nes"
set SCRIPTNAME="ghoulschoolnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2D600:10,31710:100
pause
