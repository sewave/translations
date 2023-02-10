@echo off
set T_FILENAME="TR_Cross Fire (Japan).nes"
set S_FILENAME="Cross Fire (Japan).nes"
set SCRIPTNAME="crossfirenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
