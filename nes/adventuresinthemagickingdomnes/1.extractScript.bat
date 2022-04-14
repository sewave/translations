@echo off
set T_FILENAME="Adventures in the Magic Kingdom (USA).nes"
set SCRIPTNAME="adventuresinthemagickingdomnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
