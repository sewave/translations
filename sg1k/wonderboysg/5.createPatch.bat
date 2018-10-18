@echo off
set T_FILENAME="TR_Wonder Boy (SG-1000) [!].sg"
set S_FILENAME="Wonder Boy (SG-1000) [!].sg"
set SCRIPTNAME="wonderboysg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
