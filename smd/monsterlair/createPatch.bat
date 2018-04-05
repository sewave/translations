@echo off 
set T_FILENAME="TR_Wonder Boy III - Monster Lair (JE) [c][!].bin"
set S_FILENAME="Wonder Boy III - Monster Lair (JE) [c][!].bin"
set SCRIPTNAME="monsterlair"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
