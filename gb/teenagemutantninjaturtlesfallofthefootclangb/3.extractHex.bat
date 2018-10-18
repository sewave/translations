@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Fall of the Foot Clan (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesfallofthefootclangb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14FF9:30
pause
