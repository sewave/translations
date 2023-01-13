@echo off
set T_FILENAME="TR_Gex - Enter the Gecko (USA, Europe).gbc"
set S_FILENAME="Gex - Enter the Gecko (USA, Europe).gbc"
set SCRIPTNAME="gexenterthegeckogbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
