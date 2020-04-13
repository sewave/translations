@echo off
set T_FILENAME="Addams Family, The - Pugsley's Scavenger Hunt (USA).sfc"
set SCRIPTNAME="addamsfamilythepugsleysscavengerhuntsfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
