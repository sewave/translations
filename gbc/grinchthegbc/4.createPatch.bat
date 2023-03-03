@echo off
set T_FILENAME="TR_Grinch, The (USA).gbc"
set S_FILENAME="Grinch, The (USA).gbc"
set SCRIPTNAME="grinchthegbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
