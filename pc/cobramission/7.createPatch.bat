@echo off
set T_FILENAME="cm/CM.EXE"
set S_FILENAME="cm/OR_CM.EXE"
set SCRIPTNAME="cobramission"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
set T_FILENAME="cm/ICP.VOL"
set S_FILENAME="cm/OR_ICP.VOL"
set SCRIPTNAME="cobramission_icp"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -gd %S_FILENAME%
set T_FILENAME="cm/DAT.VOL"
set S_FILENAME="cm/OR_DAT.VOL"
set SCRIPTNAME="cobramission_dat"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -gd %S_FILENAME%
set T_FILENAME="cm/MED.VOL"
set S_FILENAME="cm/OR_MED.VOL"
set SCRIPTNAME="cobramission_med"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -gd %S_FILENAME%
pause
