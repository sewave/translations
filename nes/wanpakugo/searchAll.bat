@echo off 
set T_FILENAME="Wanpaku Kokkun no Gourmet World (J) [T+ENG].nes"
set SCRIPTNAME="wanpakugo"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
