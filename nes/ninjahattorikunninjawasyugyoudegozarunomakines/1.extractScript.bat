@echo off
set T_FILENAME="Ninja Hattori-kun - Ninja wa Syugyou de Gozaru no Maki (Japan).nes"
set SCRIPTNAME="ninjahattorikunninjawasyugyoudegozarunomakines"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
