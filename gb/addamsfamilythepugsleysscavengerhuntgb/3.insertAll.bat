@echo off
set T_FILENAME="TR_Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
set S_FILENAME="Addams Family, The - Pugsley's Scavenger Hunt (USA, Europe).gb"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
