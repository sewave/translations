@echo off
set T_FILENAME="TR_Looney Tunes (USA).gbc"
set S_FILENAME="Looney Tunes (USA).gbc"
set SCRIPTNAME="looneytunesgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
