@echo off
set T_FILENAME="TR_M&M's Minis Madness (USA).gbc"
set S_FILENAME="M&M's Minis Madness (USA).gbc"
set SCRIPTNAME="mmsminismadnessgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
