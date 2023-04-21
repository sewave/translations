@echo off
set T_FILENAME="TR_Run The Gauntlet.tzx"
set SCRIPTNAME="runthegauntlettzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 30D0:10,31C0:10,B861:100,14077:200,1CC8D:100
pause
