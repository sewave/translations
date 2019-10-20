@echo off
set T_FILENAME="TR_U-four-ia - The Saga (E) [!].nes"
set S_FILENAME="U-four-ia - The Saga (E) [!].nes"
set SCRIPTNAME="ufouriathesaganes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
