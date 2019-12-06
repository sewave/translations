@echo off
set T_FILENAME="TR_Takahasi Meijin no Boukenjima. Wonder Boy (1986)(Hudson Soft).rom"
set S_FILENAME="Takahasi Meijin no Boukenjima. Wonder Boy (1986)(Hudson Soft).rom"
set SCRIPTNAME="takahasimeijinnoboukenjimawonderboyrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
