@echo off
set T_FILENAME="Magical Tree (1984) (Konami) (J).rom"
set SCRIPTNAME="magicaltreerom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
