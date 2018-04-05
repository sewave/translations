@echo off 
set T_FILENAME="TR_Dynamite Headdy (J) [c][T+ENG].gen"
set S_FILENAME="Dynamite Headdy (J) [c][!].gen"
set SCRIPTNAME="dynheaddysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
