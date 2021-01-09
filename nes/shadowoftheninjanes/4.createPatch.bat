@echo off
set T_FILENAME="TR_Shadow of the Ninja (USA).nes"
set S_FILENAME="Shadow of the Ninja (USA).nes"
set SCRIPTNAME="shadowoftheninjanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
