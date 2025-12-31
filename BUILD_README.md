# Scripts de Build - Minefy Skills

Scripts para comprimir o data pack rapidamente.

## Como usar

### Windows (PowerShell) - **RECOMENDADO**

```powershell
.\build.ps1
```

Ou pelo CMD:
```cmd
build.bat
```

### Linux/Mac (Bash)

```bash
./build.sh
```

**Nota**: No Linux/Mac, é necessário ter o comando `zip` instalado:
```bash
# Ubuntu/Debian
sudo apt install zip

# MacOS (já vem instalado)
```

## O que os scripts fazem

1. Removem o arquivo `minefy-skills.zip` antigo
2. Comprimem os seguintes arquivos/diretórios:
   - `fabric.mod.json`
   - `pack.mcmeta`
   - `data/`
   - `META-INF/`
3. Criam o arquivo `minefy-skills.zip`
4. Mostram o tamanho e conteúdo do zip criado

## Resultado

O arquivo `minefy-skills.zip` será criado no diretório raiz do projeto e estará pronto para ser instalado no servidor Minecraft.
