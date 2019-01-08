@echo off 
set T_FILENAME="Saiyuuki World (J) [T+ENG].nes"
set SCRIPTNAME="saiyuukiw"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
