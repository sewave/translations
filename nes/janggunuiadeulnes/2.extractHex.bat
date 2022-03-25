@echo off
set T_FILENAME="TR_Janggun-ui Adeul (Korea) (Unl) [T+ENG].nes"
set SCRIPTNAME="janggunuiadeulnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 961D0:10,960C0:10,20040:60,21680:20,23020:200,20440:100,24010:200,26010:200,96A10:60
pause
