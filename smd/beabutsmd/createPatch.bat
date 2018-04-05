@echo off 
set T_FILENAME="TR_Beavis and Butt-head (U) [!].bin"
set S_FILENAME="Beavis and Butt-head (U) [!].bin"
set SCRIPTNAME="beabutsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
