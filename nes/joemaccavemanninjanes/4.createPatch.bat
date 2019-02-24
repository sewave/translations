@echo off
set T_FILENAME="TR_Joe & Mac - Caveman Ninja (U) [!].nes"
set S_FILENAME="Joe & Mac - Caveman Ninja (U) [!].nes"
set SCRIPTNAME="joemaccavemanninjanes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
