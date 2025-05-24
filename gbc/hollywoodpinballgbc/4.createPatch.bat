@echo off
set T_FILENAME="TR_Hollywood Pinball (Europe) (En,Fr,De,It) (GB Compatible).gbc"
set S_FILENAME="Hollywood Pinball (Europe) (En,Fr,De,It) (GB Compatible).gbc"
set SCRIPTNAME="hollywoodpinballgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
