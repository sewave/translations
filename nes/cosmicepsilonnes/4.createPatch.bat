@echo off
set T_FILENAME="TR_Cosmic Epsilon (Japan).nes"
set S_FILENAME="Cosmic Epsilon (Japan).nes"
set SCRIPTNAME="cosmicepsilonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
