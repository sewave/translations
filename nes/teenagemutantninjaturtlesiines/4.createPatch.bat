@echo off
set T_FILENAME="TR_Teenage Mutant Ninja Turtles II - The Arcade Game (USA).nes"
set S_FILENAME="Teenage Mutant Ninja Turtles II - The Arcade Game (USA).nes"
set SCRIPTNAME="teenagemutantninjaturtlesiines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
