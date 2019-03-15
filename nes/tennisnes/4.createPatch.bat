@echo off
set T_FILENAME="TR_Tennis (JU) [!].nes"
set S_FILENAME="Tennis (JU) [!].nes"
set SCRIPTNAME="tennisnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
