@echo off 
set T_FILENAME="TL_Wanpaku Kokkun no Gourmet World (J) [T+ENG].nes"
set S_FILENAME="Wanpaku Kokkun no Gourmet World (J).nes"
set SCRIPTNAME="wanpakugo"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
