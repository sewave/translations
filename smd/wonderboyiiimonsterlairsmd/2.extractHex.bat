@echo off
set T_FILENAME="TR_Wonder Boy III - Monster Lair (Japan, Europe).md"
set SCRIPTNAME="wonderboyiiimonsterlairsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 79E00:200
pause
