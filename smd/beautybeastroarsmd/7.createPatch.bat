@echo off
set T_FILENAME="TR_Beauty and the Beast - Roar of the Beast (U) [!].bin"
set S_FILENAME="Beauty and the Beast - Roar of the Beast (U) [!].bin"
set SCRIPTNAME="beautybeastroarsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
