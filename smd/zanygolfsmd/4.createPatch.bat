@echo off
set T_FILENAME="TR_Zany Golf (UE) (REV01).bin"
set S_FILENAME="Zany Golf (UE) (REV01).bin"
set SCRIPTNAME="zanygolfsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
