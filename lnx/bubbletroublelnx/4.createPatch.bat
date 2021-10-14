@echo off
set T_FILENAME="TR_Bubble Trouble (USA, Europe).lnx"
set S_FILENAME="Bubble Trouble (USA, Europe).lnx"
set SCRIPTNAME="bubbletroublelnx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
