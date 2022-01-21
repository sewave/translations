@echo off
set T_FILENAME="TR_WWF Wrestlemania (USA).nes"
set SCRIPTNAME="wwfwrestlemanianes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6299:60,9EFA:240,CA3C:190,AB5:A0,82F1:10,EAF:20,A41A:10,F9E4:10,FA64:40,
pause
