@echo off 
set T_FILENAME="Mafat Conspiracy - Golgo 13 (U) [!].nes"
set SCRIPTNAME="mafat"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt 0000206E-00002176-FF,00002177-00002A47-FF,00002A48-00003263-FF,00003264-00003FB9-FF,
pause 
