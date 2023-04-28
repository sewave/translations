@echo off
set T_FILENAME="TR_Swordbird Song - Iron Owl Tower 3.1.gb"
set S_FILENAME="Swordbird Song - Iron Owl Tower 3.1.gb"
set SCRIPTNAME="swordbirdsongironowltower31gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
