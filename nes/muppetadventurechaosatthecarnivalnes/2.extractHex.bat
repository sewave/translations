@echo off
set T_FILENAME="TR_Muppet Adventure - Chaos at the Carnival (USA).nes"
set SCRIPTNAME="muppetadventurechaosatthecarnivalnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2CB5:20,227B:280,5BBB:240,3666:70,37D6:70,7439:20,3E86:10,3FA6:40
pause
