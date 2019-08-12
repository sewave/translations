@echo off
set T_FILENAME="TR_James Bond 007 - The Duel (U) [!].gg"
set SCRIPTNAME="jamesbond007theduelgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
