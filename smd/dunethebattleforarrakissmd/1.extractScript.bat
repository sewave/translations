@echo off
set T_FILENAME="Dune - The Battle for Arrakis (USA).md"
set SCRIPTNAME="dunethebattleforarrakissmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
