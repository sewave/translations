@echo off
set T_FILENAME="TR_Dahna - Megami Tanjou (J) [T+ENG].bin"
set S_FILENAME="Dahna - Megami Tanjou (J) [!].bin"
set SCRIPTNAME="dahna"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
