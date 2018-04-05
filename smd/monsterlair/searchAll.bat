@echo off 
set T_FILENAME="Wonder Boy III - Monster Lair (JE) [c][!].bin"
set SCRIPTNAME="monsterlair"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 2 00 
pause 
