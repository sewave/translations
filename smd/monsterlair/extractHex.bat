@echo off 
set T_FILENAME="TR_Wonder Boy III - Monster Lair (JE) [c][!].bin"
set SCRIPTNAME="monsterlair"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
