@echo off
set T_FILENAME="TR_Jeep Jamboree - Off-Road Adventure (USA).gb"
set S_FILENAME="Jeep Jamboree - Off-Road Adventure (USA).gb"
set SCRIPTNAME="jeepjamboreeoffroadadventuregb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
