@echo off
set T_FILENAME="Nobunaga's Ambition (USA).gb"
set SCRIPTNAME="nobunagasambitiongb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
