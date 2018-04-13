@echo off
set T_FILENAME="Atomic Runner (U) [!].gen"
set SCRIPTNAME="atomicrunnerssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
