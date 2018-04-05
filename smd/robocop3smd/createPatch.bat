@echo off 
set T_FILENAME="TR_Robocop 3 (UE) [!].gen"
set S_FILENAME="Robocop 3 (UE) [!].gen"
set SCRIPTNAME="robocop3smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
