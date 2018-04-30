@echo off
set T_FILENAME="TR_Michael Jackson's Moonwalker (W) (REV01) [!].gen"
set SCRIPTNAME="michaeljacksonsmoonwalkersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
