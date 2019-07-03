@echo off
set T_FILENAME="TR_Arkanoid II (J) [!].nes"
set SCRIPTNAME="arkanoidiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29910:200,31910:200,291D0:10,2B1D0:10,2D1D0:10,311D0:10,331D0:10,351D0:10
pause
