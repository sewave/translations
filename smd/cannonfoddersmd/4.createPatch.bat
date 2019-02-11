@echo off
set T_FILENAME="TR_Cannon Fodder (E) [!].bin"
set S_FILENAME="Cannon Fodder (E) [!].bin"
set SCRIPTNAME="cannonfoddersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
