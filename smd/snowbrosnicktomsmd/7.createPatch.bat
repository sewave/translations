@echo off
set T_FILENAME="TR_Snow Bros. - Nick & Tom (J) [c][!].gen"
set S_FILENAME="Snow Bros. - Nick & Tom (J) [c][!].gen"
set SCRIPTNAME="snowbrosnicktomsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
