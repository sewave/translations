@echo off
set T_FILENAME="TR_Super Street Fighter II Turbo - Revival (USA).gba"
set S_FILENAME="Super Street Fighter II Turbo - Revival (USA).gba"
set SCRIPTNAME="superstreetfighteriiturborevivalgba"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
