@echo off
set T_FILENAME="TR_Silent Assault (USA) (Unl).nes"
set SCRIPTNAME="silentassaultnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1E360:20,1E3C0:10,10D50:40,18700:40
pause
