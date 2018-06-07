@echo off
set T_FILENAME="Jurassic Park - Rampage Edition (UE) [!].bin"
set SCRIPTNAME="jurassicparkrampageeditionsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
