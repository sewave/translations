@echo off
set T_FILENAME="TR_Alex Kidd in the Enchanted Castle (UE) (REV02) [!].bin"
set SCRIPTNAME="alexkiddencassmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
