@echo off
set T_FILENAME="TR_Shanghai Pocket (U) (V1.1) [C][!].gbc"
set S_FILENAME="Shanghai Pocket (U) (V1.1) [C][!].gbc"
set SCRIPTNAME="shanghaipocketgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
