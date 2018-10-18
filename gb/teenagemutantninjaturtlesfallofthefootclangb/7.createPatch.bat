@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Fall of the Foot Clan (U) [!].gb"
set S_FILENAME="Teenage Mutant Ninja Turtles - Fall of the Foot Clan (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesfallofthefootclangb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
