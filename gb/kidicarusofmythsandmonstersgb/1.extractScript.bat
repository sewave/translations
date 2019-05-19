@echo off
set T_FILENAME="Kid Icarus - Of Myths and Monsters (UE) [!].gb"
set SCRIPTNAME="kidicarusofmythsandmonstersgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
