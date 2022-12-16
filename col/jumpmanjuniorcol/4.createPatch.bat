@echo off
set T_FILENAME="TR_Jumpman Junior (1984) (Epyx).col"
set S_FILENAME="Jumpman Junior (1984) (Epyx).col"
set SCRIPTNAME="jumpmanjuniorcol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
