@echo off 
set T_FILENAME="TR_Saiyuuki World (J) [T+ENG].nes"
set S_FILENAME="Saiyuuki World (J).nes"
set SCRIPTNAME="saiyuukiw"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
