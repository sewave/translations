@echo off
set T_FILENAME="Alex Kidd in the Enchanted Castle (UE) (REV02) [!].bin"
set SCRIPTNAME="alexkiddencassmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
