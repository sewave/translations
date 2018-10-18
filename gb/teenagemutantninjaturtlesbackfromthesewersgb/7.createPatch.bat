@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles - Back From the Sewers (U) [!].gb"
set S_FILENAME="Teenage Mutant Ninja Turtles - Back From the Sewers (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesbackfromthesewersgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
