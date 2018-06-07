@echo off
set T_FILENAME="TR_Jurassic Park - Rampage Edition (UE) [!].bin"
set S_FILENAME="Jurassic Park - Rampage Edition (UE) [!].bin"
set SCRIPTNAME="jurassicparkrampageeditionsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
