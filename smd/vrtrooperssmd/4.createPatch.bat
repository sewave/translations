@echo off
set T_FILENAME="TR_VR Troopers (USA, Europe).md"
set S_FILENAME="VR Troopers (USA, Europe).md"
set SCRIPTNAME="vrtrooperssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
