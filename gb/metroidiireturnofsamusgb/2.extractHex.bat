@echo off
set T_FILENAME="TR_Metroid II - Return of Samus (World).gb"
set SCRIPTNAME="metroidiireturnofsamusgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16644:A0,18410:10,18F10:10,16EE4:40,16724:200,16AA4:10,16AF4:10,16D94:80
pause
