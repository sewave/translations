@echo off
set T_FILENAME="TR_Bram Stoker's Dracula (Europe).sms"
set S_FILENAME="Bram Stoker's Dracula (Europe).sms"
set SCRIPTNAME="bramstokersdraculasms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
