@echo off
set T_FILENAME="TR_Ninja Hattori-kun - Ninja wa Syugyou de Gozaru no Maki (Japan).nes"
set SCRIPTNAME="ninjahattorikunninjawasyugyoudegozarunomakines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9270:20,9500:10
pause
