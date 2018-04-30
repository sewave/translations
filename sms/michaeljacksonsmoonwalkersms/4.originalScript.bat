@echo off
set T_FILENAME="Michael Jackson's Moonwalker (UE) [!].sms"
set SCRIPTNAME="michaeljacksonsmoonwalkersms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
