@echo off 
set T_FILENAME="TL_Don Doko Don 2 (J) [T+ENG].nes"
set S_FILENAME="Don Doko Don 2 (J) [T+ENG].nes"
set SCRIPTNAME="dondokodon2"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
