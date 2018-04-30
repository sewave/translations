@echo off
set T_FILENAME="Michael Jackson's Moonwalker (W) (REV01) [!].gen"
set SCRIPTNAME="michaeljacksonsmoonwalkersmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
