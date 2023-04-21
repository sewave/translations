@echo off
set T_FILENAME="TR_Indiana Jones and the Infernal Machine (USA, Europe) (En,Fr,De).gbc"
set S_FILENAME="Indiana Jones and the Infernal Machine (USA, Europe) (En,Fr,De).gbc"
set SCRIPTNAME="indianajonesandtheinfernalmachinegbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
