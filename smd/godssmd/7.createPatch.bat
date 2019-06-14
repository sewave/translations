@echo off
set T_FILENAME="TR_Gods (U) [!].bin"
set S_FILENAME="Gods (U) [!].bin"
set SCRIPTNAME="godssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
