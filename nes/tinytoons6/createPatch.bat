@echo off 
set T_FILENAME="TR_Tiny Toon Adventures 6 (Unl) [!].nes"
set S_FILENAME="Tiny Toon Adventures 6 (Unl) [!].nes"
set SCRIPTNAME="tinytoons6"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
