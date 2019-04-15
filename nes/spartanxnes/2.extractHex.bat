@echo off
set T_FILENAME="TR_Spartan X (J) [!].nes"
set SCRIPTNAME="spartanxnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9140:10
pause
