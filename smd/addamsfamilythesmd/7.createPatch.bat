@echo off
set T_FILENAME="TR_Addams Family, The (UE) [!].gen"
set S_FILENAME="Addams Family, The (UE) [!].gen"
set SCRIPTNAME="addamsfamilythesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
