@echo off
REM Script batch para zipar o data pack minefy-skills
REM Uso: build.bat

setlocal

set OUTPUT=minefy-skills.zip

echo.
echo ========================================
echo   Minefy Skills - Data Pack Builder
echo ========================================
echo.

REM Remove o zip antigo se existir
if exist "%OUTPUT%" (
    echo Removendo %OUTPUT% antigo...
    del /Q "%OUTPUT%"
)

REM Cria o novo zip usando PowerShell
echo Comprimindo arquivos...
powershell -NoProfile -ExecutionPolicy Bypass -Command "Compress-Archive -Path 'fabric.mod.json','pack.mcmeta','data','META-INF' -DestinationPath '%OUTPUT%' -Force"

REM Verifica se o zip foi criado com sucesso
if exist "%OUTPUT%" (
    echo.
    echo [92m+ Data pack criado com sucesso![0m
    echo   Arquivo: %OUTPUT%
    for %%A in ("%OUTPUT%") do echo   Tamanho: %%~zA bytes
    echo.
) else (
    echo.
    echo [91m- Erro ao criar o data pack![0m
    exit /b 1
)

endlocal
