@echo off
set T_FILENAME="TR_Championship Rally (Europe).nes"
set S_FILENAME="Championship Rally (Europe).nes"
set SCRIPTNAME="championshiprallynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
