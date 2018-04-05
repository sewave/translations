@echo off 
set T_FILENAME="TR_Target - Renegade (U) [!].nes"
set S_FILENAME="Target - Renegade (U) [!].nes"
set SCRIPTNAME="targetrenegadenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
