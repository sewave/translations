@echo off
set T_FILENAME="Alisia Dragoon (U) [T+ESP].bin"
set S_FILENAME="Alisia Dragoon (U) [!].bin"
set SCRIPTNAME="alisiadragoon"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
