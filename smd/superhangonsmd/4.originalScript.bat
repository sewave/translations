@echo off
set T_FILENAME="Super Hang-On (W) (REV01) [!].bin"
set SCRIPTNAME="superhangonsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
