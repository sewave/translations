@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles (USA).nes"
set S_FILENAME="Teenage Mutant Ninja Turtles (USA).nes"
set SCRIPTNAME="teenagemutantninjaturtlesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
