@echo off
set T_FILENAME="TR_Sweet Home (J) [T+Eng_Siege].nes"
set S_FILENAME="Sweet Home (J) [!].nes"
set SCRIPTNAME="sweethomenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
