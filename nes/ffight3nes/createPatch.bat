@echo off 
set T_FILENAME="TR_Final Fight 3 (Unl) [!].nes"
set S_FILENAME="Final Fight 3 (Unl) [!].nes"
set SCRIPTNAME="ffight3nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
