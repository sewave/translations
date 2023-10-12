@echo off
set T_FILENAME="TR_Super_JetPak_DX_DMG-SJPD-UKV.gbc"
set SCRIPTNAME="superjetpakdxgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9F08:60,13BB7:60,13CF7:E0,A2A8:B0,A93E:20
pause
