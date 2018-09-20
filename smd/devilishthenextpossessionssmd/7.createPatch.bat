@echo off
set T_FILENAME="TR_Devilish - The Next Possession (U) [c][!].gen"
set S_FILENAME="Devilish - The Next Possession (U) [c][!].gen"
set SCRIPTNAME="devilishthenextpossessionssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
