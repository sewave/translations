@echo off
set T_FILENAME="Muppet Adventure - Chaos at the Carnival (USA).nes"
set SCRIPTNAME="muppetadventurechaosatthecarnivalnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
