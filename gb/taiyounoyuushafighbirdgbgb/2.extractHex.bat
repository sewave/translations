@echo off
set T_FILENAME="TR_Taiyou no Yuusha - Fighbird GB (Japan) [T+ENG].gb"
set SCRIPTNAME="taiyounoyuushafighbirdgbgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13A98:10,13C98:10,15C00:100,18608:140,17A50:100,18148:C0,18D58:40
pause
