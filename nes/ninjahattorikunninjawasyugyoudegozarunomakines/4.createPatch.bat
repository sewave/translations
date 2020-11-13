@echo off
set T_FILENAME="TR_Ninja Hattori-kun - Ninja wa Syugyou de Gozaru no Maki (Japan).nes"
set S_FILENAME="Ninja Hattori-kun - Ninja wa Syugyou de Gozaru no Maki (Japan).nes"
set SCRIPTNAME="ninjahattorikunninjawasyugyoudegozarunomakines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
