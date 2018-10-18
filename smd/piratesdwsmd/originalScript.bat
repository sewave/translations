@echo off 
set T_FILENAME="Pirates of Dark Water, The (UE).bin"
set SCRIPTNAME="piratesdwsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
