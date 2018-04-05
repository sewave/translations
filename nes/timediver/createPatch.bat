@echo off 
set T_FILENAME="TL_Time Diver Eon Man (U) (Prototype).nes"
set S_FILENAME="Time Diver Eon Man (U) (Prototype).nes"
set SCRIPTNAME="timediver"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
