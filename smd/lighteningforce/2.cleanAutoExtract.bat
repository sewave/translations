@echo off
set T_FILENAME="Lightening Force - Quest for the Darkstar (U) [c][!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
