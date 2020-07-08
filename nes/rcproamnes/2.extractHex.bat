@echo off
set T_FILENAME="TR_R.C. Pro-Am (USA) (Rev 1).nes"
set SCRIPTNAME="rcproamnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8230:90,9FB0:40,A150:80,BEB0:70,CEB0:70,DEB0:70,
pause
