@echo off
set T_FILENAME="TR_Beauty and the Beast - Belle's Quest (U) [!].bin"
set S_FILENAME="Beauty and the Beast - Belle's Quest (U) [!].bin"
set SCRIPTNAME="beautybeastbelle"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
