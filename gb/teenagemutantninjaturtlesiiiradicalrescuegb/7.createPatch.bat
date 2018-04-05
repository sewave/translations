@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles III - Radical Rescue (U) [!].gb"
set S_FILENAME="Teenage Mutant Ninja Turtles III - Radical Rescue (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesiiiradicalrescuegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
