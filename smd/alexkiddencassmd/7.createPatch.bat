@echo off
set T_FILENAME="TR_Alex Kidd in the Enchanted Castle (UE) (REV02) [!].bin"
set S_FILENAME="Alex Kidd in the Enchanted Castle (UE) (REV02) [!].bin"
set SCRIPTNAME="alexkiddencassmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
