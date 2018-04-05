@echo off
set T_FILENAME="TR_Mad City (J) [T+ENG].nes"
set S_FILENAME="Mad City (J) [!].nes"
set SCRIPTNAME="madcity"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
