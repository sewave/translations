@echo off 
set T_FILENAME="TR_El Viento Enhancement by MIJET (Hack).bin"
set S_FILENAME="El Viento (U) [!].bin"
set SCRIPTNAME="elviento"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
