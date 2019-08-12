@echo off
set T_FILENAME="TR_Todd's Adventures in Slime World (U) [!].bin"
set S_FILENAME="Todd's Adventures in Slime World (U) [!].bin"
set SCRIPTNAME="toddsadventuresinslimeworldsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
