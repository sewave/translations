@echo off
set T_FILENAME="TR_Alien Syndrome (Tengen) [!].nes"
set S_FILENAME="Alien Syndrome (Tengen) [!].nes"
set SCRIPTNAME="aliensyndromenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
