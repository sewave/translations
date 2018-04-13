@echo off 
set T_FILENAME="TR_Armadillo (J) [T+Eng_vice].nes"
set S_FILENAME="Armadillo (J).nes"
set SCRIPTNAME="armadillo"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
