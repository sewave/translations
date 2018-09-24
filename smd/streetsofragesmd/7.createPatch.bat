@echo off
set T_FILENAME="TR_Streets of Rage (W) (REV01) [!].gen"
set S_FILENAME="Streets of Rage (W) (REV01) [!].gen"
set SCRIPTNAME="streetsofragesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
