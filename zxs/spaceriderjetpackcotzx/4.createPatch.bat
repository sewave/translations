@echo off
set T_FILENAME="TR_Space Rider Jet Pack Co..tzx"
set S_FILENAME="Space Rider Jet Pack Co..tzx"
set SCRIPTNAME="spaceriderjetpackcotzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
