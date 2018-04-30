@echo off
set T_FILENAME="TR_Michael Jackson's Moonwalker (W) (REV01) [!].gen"
set S_FILENAME="Michael Jackson's Moonwalker (W) (REV01) [!].gen"
set SCRIPTNAME="michaeljacksonsmoonwalkersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
