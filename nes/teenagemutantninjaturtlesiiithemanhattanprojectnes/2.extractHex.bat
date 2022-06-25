@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles III - The Manhattan Project (USA).nes"
set SCRIPTNAME="teenagemutantninjaturtlesiiithemanhattanprojectnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7CA10:10,7CB20:30,7CBC0:40,7CF20:100,7C900:10,4F410:300,47810:140,48DF0:210
pause
