@echo off
set T_FILENAME="TR_Lemmings (USA).nes"
set S_FILENAME="Lemmings (USA).nes"
set SCRIPTNAME="lemmingsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
