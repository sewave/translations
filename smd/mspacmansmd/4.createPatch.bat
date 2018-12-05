@echo off
set T_FILENAME="TR_Ms. Pac-Man (U) [!].bin"
set S_FILENAME="Ms. Pac-Man (U) [!].bin"
set SCRIPTNAME="mspacmansmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
