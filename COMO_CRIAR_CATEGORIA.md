# Como Criar uma Nova Categoria de Skills

Este guia mostra o passo a passo para criar uma nova categoria de skills no Pufferfish Skills mod.

## Estrutura de Arquivos

Cada categoria precisa de 3 arquivos principais:
```
data/minefy/puffish_skills/categories/[nome_da_categoria]/
├── experience.json      # Como ganhar XP
├── definitions.json     # Skills, passivas e desafios
└── icon.png            # Ícone da categoria (32x32)
```

## Passo 1: Registrar a Categoria

Edite o arquivo `data/minefy/puffish_skills/config.json` e adicione o nome da nova categoria:

```json
{
  "categories": [
    "minerador",
    "lenhador",
    "sua_nova_categoria"
  ]
}
```

## Passo 2: Criar a Estrutura de Pastas

Crie a pasta da categoria:
```
data/minefy/puffish_skills/categories/sua_nova_categoria/
```

## Passo 3: Configurar Experience (experience.json)

Este arquivo define como o jogador ganha XP. Estrutura básica:

```json
{
  "experience_per_level": {
    "type": "expression",
    "data": {
      "expression": "min(level ^ 2.0 * 4 + 40, 3000)"
    }
  },
  "sources": [
    {
      "type": "puffish_skills:TIPO_DE_SOURCE",
      "data": {
        "variables": {
          "variavel1": {
            "operations": [
              {"type": "OPERAÇÃO"}
            ]
          }
        },
        "experience": "EXPRESSÃO"
      }
    }
  ]
}
```

### Tipos de Sources Disponíveis

1. **kill_entity** - Matar entidades
   - Operações: `get_killed_living_entity`, `get_dropped_experience`, `get_max_health`

2. **mine_block** - Minerar blocos
   - Operações: `get_mined_block_state`, `puffish_skills:test`

3. **craft_item** - Craftar itens
   - Operações: `get_crafted_item_stack`, `puffish_skills:test`

4. **take_damage** - Receber dano
   - Operações: `get_taken_damage`, `get_damage_source`

5. **deal_damage** - Causar dano
   - Operações: `get_dealt_damage`, `get_damage_source`

### Exemplos Práticos

**Exemplo 1: XP ao minerar blocos específicos**
```json
{
  "experience_per_level": {
    "type": "expression",
    "data": {
      "expression": "min(level ^ 2.0 * 4 + 40, 3000)"
    }
  },
  "sources": [
    {
      "type": "puffish_skills:mine_block",
      "data": {
        "variables": {
          "is_stone": {
            "operations": [
              {"type": "get_mined_block_state"},
              {"type": "puffish_skills:test", "data": {"block": "minecraft:stone"}}
            ]
          },
          "is_iron_ore": {
            "operations": [
              {"type": "get_mined_block_state"},
              {"type": "puffish_skills:test", "data": {"block": "#c:ores/iron"}}
            ]
          }
        },
        "experience": [
          {"condition": "is_stone", "expression": "0.5"},
          {"condition": "is_iron_ore", "expression": "2"}
        ]
      }
    }
  ]
}
```

**Exemplo 2: XP ao matar mobs**
```json
{
  "type": "puffish_skills:kill_entity",
  "data": {
    "variables": {
      "dropped_xp": {
        "operations": [{"type": "get_dropped_experience"}]
      },
      "max_health": {
        "operations": [
          {"type": "get_killed_living_entity"},
          {"type": "get_max_health"}
        ]
      }
    },
    "experience": "dropped_xp * 2 + max_health / 10"
  }
}
```

### Operadores de Expressão

- `|` - OR lógico
- `&` - AND lógico
- `!` - NOT lógico
- `+`, `-`, `*`, `/` - Operações matemáticas
- `^` - Potência
- `min(a, b)`, `max(a, b)` - Mínimo/Máximo

## Passo 4: Criar Skills (definitions.json)

Este arquivo define as habilidades da categoria:

```json
{
  "skills": [
    {
      "id": "skill_inicial",
      "type": "puffish_skills:simple",
      "data": {
        "position": {"x": 0, "y": 0},
        "connections": ["skill_seguinte"],
        "cost": 1,
        "requirements": {"level": 1},
        "lock_state": "unlocked"
      }
    },
    {
      "id": "skill_passiva",
      "type": "puffish_skills:simple",
      "data": {
        "position": {"x": 0, "y": 1},
        "connections": [],
        "cost": 1,
        "requirements": {"level": 5, "skills": ["skill_inicial"]},
        "effects": [
          {
            "type": "puffish_skills:attribute",
            "data": {
              "attribute": "puffish_attributes:melee_damage",
              "value": 0.10,
              "operation": "multiply_total"
            }
          }
        ]
      }
    },
    {
      "id": "skill_escolha",
      "type": "puffish_skills:choice",
      "data": {
        "position": {"x": 0, "y": 2},
        "connections": [],
        "cost": 1,
        "requirements": {"level": 10, "skills": ["skill_passiva"]},
        "choices": ["caminho_a", "caminho_b"]
      }
    }
  ],
  "translations": {
    "pt_br": {
      "skill_inicial": {
        "name": "Iniciante",
        "description": "Desbloqueia a categoria"
      },
      "skill_passiva": {
        "name": "Força I",
        "description": "+10% de dano corpo a corpo"
      },
      "skill_escolha": {
        "name": "Escolha seu Caminho",
        "description": "Selecione uma especialização"
      }
    }
  }
}
```

### Tipos de Skills

1. **simple** - Skill simples, pode ter efeitos
2. **choice** - Skill de escolha, força o jogador a escolher um caminho
3. **challenge** - Desafio, pode dar item de recompensa

### Atributos Disponíveis

- `puffish_attributes:melee_damage` - Dano corpo a corpo
- `puffish_attributes:armor_shred` - Penetração de armadura
- `puffish_attributes:resistance` - Resistência a dano
- `minecraft:max_health` - Vida máxima
- `minecraft:attack_speed` - Velocidade de ataque
- `minecraft:movement_speed` - Velocidade de movimento
- `minecraft:armor` - Armadura

### Exemplo de Skill com Item (Challenge)

```json
{
  "id": "desafio_mestre",
  "type": "puffish_skills:challenge",
  "data": {
    "position": {"x": 0, "y": 5},
    "connections": [],
    "cost": 3,
    "requirements": {"level": 50},
    "effects": [
      {
        "type": "puffish_skills:attribute",
        "data": {
          "attribute": "puffish_attributes:melee_damage",
          "value": 0.25,
          "operation": "multiply_total"
        }
      }
    ],
    "item": {
      "id": "minecraft:diamond_sword",
      "components": {
        "minecraft:custom_name": "{\"text\":\"Espada Lendária\",\"color\":\"gold\",\"italic\":false}",
        "minecraft:enchantments": {
          "levels": {
            "minecraft:sharpness": 5
          }
        }
      }
    }
  }
}
```

## Passo 5: Adicionar Ícone

Crie uma imagem PNG 32x32 pixels e salve como:
```
data/minefy/puffish_skills/categories/sua_nova_categoria/icon.png
```

## Passo 6: Testar no Jogo

1. Coloque o datapack na pasta `world/datapacks/`
2. Execute `/reload` no jogo
3. Abra o menu de skills com a tecla configurada (padrão: K)
4. Verifique se a categoria aparece

## Dicas Importantes

1. **Balanceamento de XP**:
   - Categorias de combate: `level^2 * 5 + 50` (cap 3500)
   - Categorias de coleta: `level^2 * 4 + 40` (cap 3000)

2. **Posicionamento**: Use coordenadas `x` e `y` para criar árvores visuais interessantes

3. **Escolhas**: Skills do tipo `choice` criam bifurcações no caminho

4. **Itens**: Só dê itens em níveis altos (50+) para evitar facilitar demais

5. **Corações**: Use `minecraft:max_health` com valores como 2, 4, 6, 8 (cada 2 = 1 coração)

## Referências

- Documentação oficial: https://puffish.net/skillsmod/docs/creators/configuration/
- Exemplos neste datapack: `data/minefy/puffish_skills/categories/`
