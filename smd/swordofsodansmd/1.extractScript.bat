@echo off
set T_FILENAME="Sword of Sodan (UE) [!].bin"
set SCRIPTNAME="swordofsodansmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
