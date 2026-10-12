@echo off
set T_FILENAME="TR_Zero Wing (World) (Retro-Bit).md"
set S_FILENAME="Zero Wing (World) (Retro-Bit).md"
set SCRIPTNAME="zerowingretrobitsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
