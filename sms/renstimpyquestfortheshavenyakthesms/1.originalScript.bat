@echo off
set T_FILENAME="Ren & Stimpy - Quest for the Shaven Yak, The (B) [!].sms"
set SCRIPTNAME="renstimpyquestfortheshavenyakthesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
