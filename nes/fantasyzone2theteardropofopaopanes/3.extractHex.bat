@echo off
set T_FILENAME="TR_Fantasy Zone 2 - The Teardrop of Opa-Opa (J) [!].nes"
set SCRIPTNAME="fantasyzone2theteardropofopaopanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3D580:300,330B0:10,3A060:B0,38010:10,38510:70,39970:600
pause
