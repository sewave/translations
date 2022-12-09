@echo off
set T_FILENAME="TR_Power Blade (USA).nes"
set SCRIPTNAME="powerbladenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 37760:30,35730:80,30CB0:60,30DA0:200,30790:10,35700:10,357F0:10,28E90:80,2D1F0:10,2DC30:180
pause
