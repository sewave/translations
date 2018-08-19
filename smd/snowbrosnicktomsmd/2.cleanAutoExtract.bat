@echo off
set T_FILENAME="Snow Bros. - Nick & Tom (J) [c][!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
