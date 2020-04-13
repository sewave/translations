@echo off
set T_FILENAME="Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
