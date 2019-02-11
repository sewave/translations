@echo off
set T_FILENAME="Universal Soldier (U) [!].gen"
set SCRIPTNAME="universalsoldiersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
