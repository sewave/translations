@echo off
set T_FILENAME="TR_Bare Knuckle - Ikari no Tetsuken ~ Streets of Rage (World) (Rev A).md"
set SCRIPTNAME="bareknuckleikarinotetsukenstreetsofragesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
