@echo off 
set T_FILENAME="TR_Pirates of Dark Water, The (UE).bin"
set S_FILENAME="Pirates of Dark Water, The (UE).bin"
set SCRIPTNAME="piratesdwsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
