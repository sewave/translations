@echo off
set T_FILENAME="Normy's Beach Babe-O-Rama (UE) [!].bin"
set SCRIPTNAME="normysbeachbabeoramasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
