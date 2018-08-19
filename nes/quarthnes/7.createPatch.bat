@echo off
set T_FILENAME="TR_Quarth (J) [!].nes"
set S_FILENAME="Quarth (J) [!].nes"
set SCRIPTNAME="quarthnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
