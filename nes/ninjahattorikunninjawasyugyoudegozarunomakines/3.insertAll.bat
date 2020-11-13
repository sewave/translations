@echo off
set T_FILENAME="TR_Ninja Hattori-kun - Ninja wa Syugyou de Gozaru no Maki (Japan).nes"
set S_FILENAME="Ninja Hattori-kun - Ninja wa Syugyou de Gozaru no Maki (Japan).nes"
set SCRIPTNAME="ninjahattorikunninjawasyugyoudegozarunomakines"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
