@echo off
set T_FILENAME="Wonder Boy III - Monster Lair (Japan, Europe).md"
set SCRIPTNAME="wonderboyiiimonsterlairsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
