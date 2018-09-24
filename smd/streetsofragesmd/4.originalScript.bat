@echo off
set T_FILENAME="Streets of Rage (W) (REV01) [!].gen"
set SCRIPTNAME="streetsofragesmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
