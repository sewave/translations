@echo off
set T_FILENAME="TR_Snake's Revenge (U) [!].nes"
set S_FILENAME="Snake's Revenge (U) [!].nes"
set SCRIPTNAME="snakerevenge"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
