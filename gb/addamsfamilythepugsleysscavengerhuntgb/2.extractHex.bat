@echo off
set T_FILENAME="TR_Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
