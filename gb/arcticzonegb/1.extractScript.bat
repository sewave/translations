@echo off
set T_FILENAME="Arctic Zone (Sachen 4-in-1 Vol. 5) (Unl) [!].gb"
set SCRIPTNAME="arcticzonegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
