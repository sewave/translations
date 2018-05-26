@echo off
set T_FILENAME="TR_Granada (JU) (REV01) [!].gen"
set S_FILENAME="Granada (JU) (REV01) [!].gen"
set SCRIPTNAME="granadasmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
