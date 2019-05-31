@echo off
set T_FILENAME="TR_Target Earth (U) [!].bin"
set S_FILENAME="Target Earth (U) [!].bin"
set SCRIPTNAME="targetearthsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
