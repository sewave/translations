@echo off
set T_FILENAME="TR_Double Clutch (Europe).md"
set S_FILENAME="Double Clutch (Europe).md"
set SCRIPTNAME="doubleclutchsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
