@echo off 
set T_FILENAME="Street Fighter 2010 - The Final Fight (U) [!].nes"
set SCRIPTNAME="sf2010"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt 152C7-15BD6-FF,0001709D-000170A3-FF,00016EDF-00016FA2-FF
pause 
