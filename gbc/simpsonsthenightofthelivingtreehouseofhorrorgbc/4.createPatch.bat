@echo off
set T_FILENAME="TR_Simpsons, The - Night of the Living Treehouse of Horror (USA, Europe).gbc"
set S_FILENAME="Simpsons, The - Night of the Living Treehouse of Horror (USA, Europe).gbc"
set SCRIPTNAME="simpsonsthenightofthelivingtreehouseofhorrorgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
