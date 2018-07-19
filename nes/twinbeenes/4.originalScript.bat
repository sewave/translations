@echo off
set T_FILENAME="TwinBee (J) [!].nes"
set SCRIPTNAME="twinbeenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
