@echo off
set T_FILENAME="TR_Dragon - The Bruce Lee Story (U) [!].bin"
set S_FILENAME="Dragon - The Bruce Lee Story (U) [!].bin"
set SCRIPTNAME="dragonbrucesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
