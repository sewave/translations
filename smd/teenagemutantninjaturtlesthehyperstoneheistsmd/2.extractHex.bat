@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - The Hyperstone Heist (USA).md"
set SCRIPTNAME="teenagemutantninjaturtlesthehyperstoneheistsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FC00:200
pause
