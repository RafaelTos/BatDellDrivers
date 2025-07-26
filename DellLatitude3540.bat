@echo off
title Instalador Automático de Drivers Dell
color 1F

echo Instalando TODOS os arquivos .EXE encontrados na pasta:
echo C:\DellDriversLatitude3540Windows11
echo.

:: Caminho da pasta com os instaladores
set "DRIVER_PATH=C:\DellDriversLatitude3540Windows11"

:: Acessa a pasta
cd /d "%DRIVER_PATH%"

:: Loop por todos os arquivos .exe
for %%F in (*.exe) do (
    echo Instalando: %%F
    start "" /wait "%%F"
    echo Finalizado: %%F
    echo.
)

echo Todos os instaladores foram executados.
pause
exit
