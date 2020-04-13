@echo off
set T_FILENAME="TR_Addams Family, The - Pugsley's Scavenger Hunt (U) [!].nes"
set S_FILENAME="Addams Family, The - Pugsley's Scavenger Hunt (U) [!].nes"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
