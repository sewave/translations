@echo off
set T_FILENAME="Laser Invasion (U) [!].nes"
set SCRIPTNAME="laserinvasionnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
