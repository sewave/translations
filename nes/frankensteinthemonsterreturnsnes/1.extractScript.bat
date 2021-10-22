@echo off
set T_FILENAME="Frankenstein - The Monster Returns (USA).nes"
set SCRIPTNAME="frankensteinthemonsterreturnsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
