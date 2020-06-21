@echo off
set T_FILENAME="TR_Popeye (Japan).gb"
set SCRIPTNAME="popeyegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 111D7:100,148DC:60,15813:40,19813:40,70E0:80,18DC4:10
pause
