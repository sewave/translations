@echo off
set T_FILENAME="TR_Karate Champ (USA) (Rev A).nes"
set SCRIPTNAME="karatechampnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 93A0:80,B3A0:80,D3A0:80,F3A0:80
pause
