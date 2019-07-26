@echo off
set T_FILENAME="TR_Sword of Sodan (UE) [!].bin"
set S_FILENAME="Sword of Sodan (UE) [!].bin"
set SCRIPTNAME="swordofsodansmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
