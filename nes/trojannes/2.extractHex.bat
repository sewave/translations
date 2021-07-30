@echo off
set T_FILENAME="TR_Trojan (USA).nes"
set SCRIPTNAME="trojannes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1E30:A0,1FC0:10,B0:180
pause
