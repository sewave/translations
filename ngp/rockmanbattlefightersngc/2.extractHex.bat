@echo off
set T_FILENAME="TR_Rockman - Battle & Fighters (Japan) [T+ENG].ngc"
set SCRIPTNAME="rockmanbattlefightersngc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B9C50:100,1BAA80:100,1B9A60:10,1BA890:10
pause
