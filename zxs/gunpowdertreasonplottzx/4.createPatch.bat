@echo off
set T_FILENAME="TR_Gunpowder, Treason & Plot.tzx"
set S_FILENAME="Gunpowder, Treason & Plot.tzx"
set SCRIPTNAME="gunpowdertreasonplottzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
