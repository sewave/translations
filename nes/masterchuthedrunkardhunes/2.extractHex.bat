@echo off
set T_FILENAME="TR_Master Chu & The Drunkard Hu (Color Dreams) [!].nes"
set SCRIPTNAME="masterchuthedrunkardhunes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F720:10,D720:10,B720:10,9720:10,84C0:10,A4C0:10,C4C0:10,E4C0:10
pause
