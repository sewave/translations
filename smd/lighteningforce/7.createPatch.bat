@echo off
set T_FILENAME="TR_Lightening Force - Quest for the Darkstar (U) [c][!].gen"
set S_FILENAME="Lightening Force - Quest for the Darkstar (U) [c][!].gen"
set SCRIPTNAME="thunderforce4"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
