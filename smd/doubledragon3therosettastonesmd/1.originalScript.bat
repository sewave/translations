@echo off
set T_FILENAME="Double Dragon 3 - The Rosetta Stone (UE) [!].gen"
set SCRIPTNAME="doubledragon3therosettastonesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
