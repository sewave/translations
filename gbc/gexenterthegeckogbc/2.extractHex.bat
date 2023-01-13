@echo off
set T_FILENAME="TR_Gex - Enter the Gecko (USA, Europe).gbc"
set SCRIPTNAME="gexenterthegeckogbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 205A0:10,20640:C0,20550:10
pause
