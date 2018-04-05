@echo off
set T_FILENAME="TR_Beauty and the Beast (E) [!].nes"
set S_FILENAME="Beauty and the Beast (E) [!].nes"
set SCRIPTNAME="beautybeastnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
