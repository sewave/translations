@echo off
set T_FILENAME="Addams Family, The - Pugsley's Scavenger Hunt (U) [!].nes"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
