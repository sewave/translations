@echo off 
set T_FILENAME="TR_Mickey Mouse III - Yume Fuusen (J) [T+ENG].nes"
set S_FILENAME="Mickey Mouse III - Yume Fuusen (J) [!].nes"
set SCRIPTNAME="mickey3nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
