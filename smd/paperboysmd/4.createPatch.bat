@echo off
set T_FILENAME="TR_Paperboy (UE) [!].bin"
set S_FILENAME="Paperboy (UE) [!].bin"
set SCRIPTNAME="paperboysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
