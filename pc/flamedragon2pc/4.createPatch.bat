@echo off
set T_FILENAME="translated/FDOTHER.DAT"
set S_FILENAME="FDOTHER.DAT"
set T_FILENAME_2="translated/FD2.EXE"
set S_FILENAME_2="FD2.EXE"
set SCRIPTNAME="flamedragon2pc"
set IPS_FONT="FDOTHER"
set IPS_EXE="FD2"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %IPS_FONT%.ips
java -jar Hextractor.jar -cip %S_FILENAME_2% %T_FILENAME_2% %IPS_EXE%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt FD2.EXE
pause
