@echo off
set T_FILENAME="TR_Little Samson (U) [!].nes"
set S_FILENAME="Little Samson (U) [!].nes"
set SCRIPTNAME="littlesamsonnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
