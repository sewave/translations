@echo off
set T_FILENAME="TR_Alien 3 (UE) (REV01) [!].gen"
set S_FILENAME="Alien 3 (UE) (REV01) [!].gen"
set SCRIPTNAME="alien3smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
