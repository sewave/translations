@echo off
set T_FILENAME="TR_Lightening Force - Quest for the Darkstar (U) [c][!].gen"
set SCRIPTNAME="thunderforce4"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
