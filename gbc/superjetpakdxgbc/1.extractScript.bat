@echo off
set T_FILENAME="Super_JetPak_DX_DMG-SJPD-UKV.gbc"
set SCRIPTNAME="superjetpakdxgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
