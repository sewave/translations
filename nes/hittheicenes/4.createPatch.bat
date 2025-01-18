@echo off
set T_FILENAME="TR_Hit the Ice (USA) (Proto 2).nes"
set S_FILENAME="Hit the Ice (USA) (Proto 2).nes"
set SCRIPTNAME="hittheicenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
