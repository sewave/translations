@echo off
set T_FILENAME="Chakan - The Forever Man (UE) [!].gen"
set SCRIPTNAME="chakantheforevermansmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
