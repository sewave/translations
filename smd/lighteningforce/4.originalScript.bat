@echo off
set T_FILENAME="Lightening Force - Quest for the Darkstar (U) [c][!].gen"
set SCRIPTNAME="thunderforce4"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
