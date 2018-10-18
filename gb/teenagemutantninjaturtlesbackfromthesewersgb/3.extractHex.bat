@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Back From the Sewers (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesbackfromthesewersgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
