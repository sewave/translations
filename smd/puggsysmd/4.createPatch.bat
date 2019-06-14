@echo off
set T_FILENAME="TR_Puggsy (U) [!].bin"
set S_FILENAME="Puggsy (U) [!].bin"
set SCRIPTNAME="puggsysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
