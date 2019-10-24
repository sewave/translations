@echo off
set T_FILENAME="TR_Dropzone (Europe).gb"
set S_FILENAME="Dropzone (Europe).gb"
set SCRIPTNAME="dropzonegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
