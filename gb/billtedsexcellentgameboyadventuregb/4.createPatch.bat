@echo off
set T_FILENAME="TR_Bill & Ted's Excellent Gameboy Adventure (UE) [!].gb"
set S_FILENAME="Bill & Ted's Excellent Gameboy Adventure (UE) [!].gb"
set SCRIPTNAME="billtedsexcellentgameboyadventuregb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
