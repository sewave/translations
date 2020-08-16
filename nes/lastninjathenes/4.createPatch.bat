@echo off
set T_FILENAME="TR_Last Ninja, The (USA).nes"
set S_FILENAME="Last Ninja, The (USA).nes"
set SCRIPTNAME="lastninjathenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
