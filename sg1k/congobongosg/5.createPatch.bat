@echo off
set T_FILENAME="TR_Congo Bongo (SG-1000).sg"
set S_FILENAME="Congo Bongo (SG-1000).sg"
set SCRIPTNAME="congobongosg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
