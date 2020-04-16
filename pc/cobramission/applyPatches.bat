@echo off
call "6.insert.bat"
call "7.createPatch.bat"
set O_FILENAME="cm\OR_CM.EXE"
set T_FILENAME="cm\CM.EXE"
set S_FILENAME="cm\CM.EXE"
set SCRIPTNAME="cobramission"
del %T_FILENAME%
copy %O_FILENAME% %T_FILENAME% 
java -jar Hextractor.jar -aip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
set O_FILENAME="cm\OR_ICP.VOL"
set T_FILENAME="cm\ICP.VOL"
set S_FILENAME="cm\ICP.VOL"
set SCRIPTNAME="cobramission_icp"
del %T_FILENAME%
copy %O_FILENAME% %T_FILENAME% 
java -jar Hextractor.jar -aip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
set O_FILENAME="cm\OR_DAT.VOL"
set T_FILENAME="cm\DAT.VOL"
set S_FILENAME="cm\DAT.VOL"
set SCRIPTNAME="cobramission_dat"
del %T_FILENAME%
copy %O_FILENAME% %T_FILENAME% 
java -jar Hextractor.jar -aip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
set O_FILENAME="cm\OR_MED.VOL"
set T_FILENAME="cm\MED.VOL"
set S_FILENAME="cm\MED.VOL"
set SCRIPTNAME="cobramission_med"
del %T_FILENAME%
copy %O_FILENAME% %T_FILENAME% 
java -jar Hextractor.jar -aip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
