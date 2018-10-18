@echo off
set T_FILENAME="Ren & Stimpy - Quest for the Shaven Yak, The (U) [!].gg"
set SCRIPTNAME="renstimpyquestfortheshavenyakthegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
