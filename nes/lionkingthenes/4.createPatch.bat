@echo off
set T_FILENAME="TR_Lion King, The (Europe).nes"
set S_FILENAME="Lion King, The (Europe).nes"
set SCRIPTNAME="lionkingthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
