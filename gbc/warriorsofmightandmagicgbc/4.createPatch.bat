@echo off
set T_FILENAME="TR_Warriors of Might and Magic (USA) (En,Fr,De).gbc"
set S_FILENAME="Warriors of Might and Magic (USA) (En,Fr,De).gbc"
set SCRIPTNAME="warriorsofmightandmagicgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
