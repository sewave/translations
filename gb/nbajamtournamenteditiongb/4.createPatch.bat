@echo off
set T_FILENAME="TR_NBA Jam - Tournament Edition (USA, Europe).gb"
set S_FILENAME="NBA Jam - Tournament Edition (USA, Europe).gb"
set SCRIPTNAME="nbajamtournamenteditiongb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
