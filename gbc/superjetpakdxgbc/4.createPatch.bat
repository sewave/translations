@echo off
set T_FILENAME="TR_Super_JetPak_DX_DMG-SJPD-UKV.gbc"
set S_FILENAME="Super_JetPak_DX_DMG-SJPD-UKV.gbc"
set SCRIPTNAME="superjetpakdxgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
