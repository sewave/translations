@echo off
set T_FILENAME="TR_Water Margin ENG.bin"
set S_FILENAME="Water Margin ENG.bin"
set SCRIPTNAME="watermarginengsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
