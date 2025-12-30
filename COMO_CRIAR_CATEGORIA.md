# Como Criar uma Nova Categoria de Skills

Este guia mostra o passo a passo para criar uma nova categoria de skills no Pufferfish Skills mod.

## Estrutura de Arquivos

Cada categoria precisa de 5 arquivos principais:
```
data/minefy/puffish_skills/categories/[nome_da_categoria]/
├── category.json       # Metadados da categoria (título, ícone, fundo)
├── experience.json     # Como ganhar XP
├── skills.json         # Posicionamento das skills na árvore
├── connections.json    # Conexões entre skills
└── definitions.json    # Definições das skills (efeitos, descrições)
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

## Passo 3: Criar category.json

Define os metadados da categoria (título, ícone, fundo):

```json
{
  "unlocked_by_default": true,
  "title": "Nome da Categoria",
  "icon": {
    "type": "item",
    "data": {
      "item": "minecraft:diamond_pickaxe"
    }
  },
  "background": "textures/gui/advancements/backgrounds/stone.png"
}
```

**Campos**:
- `unlocked_by_default`: Se a categoria está desbloqueada desde o início
- `title`: Nome exibido no menu
- `icon`: Item usado como ícone
- `background`: Textura de fundo da árvore de skills

## Passo 4: Criar experience.json

Define como o jogador ganha XP:

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
          }
        },
        "experience": [
          {"condition": "is_stone", "expression": "0.5"}
        ]
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

### Operadores de Expressão

- `|` - OR lógico
- `&` - AND lógico
- `!` - NOT lógico
- `+`, `-`, `*`, `/` - Operações matemáticas
- `^` - Potência
- `min(a, b)`, `max(a, b)` - Mínimo/Máximo

## Passo 5: Criar skills.json

Define a posição de cada skill na árvore:

```json
{
  "skill_root": {
    "definition": "primeira_skill",
    "x": 0,
    "y": 0,
    "root": true
  },
  "skill_002": {
    "definition": "segunda_skill",
    "x": 0,
    "y": 68
  },
  "skill_003": {
    "definition": "terceira_skill",
    "x": -68,
    "y": 68
  }
}
```

**Campos**:
- `definition`: Nome da definição em definitions.json
- `x`, `y`: Posição na árvore (em pixels, múltiplos de 68 funcionam bem)
- `root`: Apenas para a primeira skill (skill inicial)

**Dicas de Posicionamento**:
- Use múltiplos de 68 para espaçamento uniforme
- Coordenadas negativas movem para esquerda/cima
- Coordenadas positivas movem para direita/baixo

## Passo 6: Criar connections.json

Define as conexões entre skills:

```json
{
  "exclusive": {
    "bidirectional": [
      ["skill_caminho_a", "skill_caminho_b"],
      ["skill_caminho_a", "skill_caminho_c"],
      ["skill_caminho_b", "skill_caminho_c"]
    ]
  },
  "normal": {
    "bidirectional": [
      ["skill_root", "skill_002"],
      ["skill_002", "skill_003"],
      ["skill_002", "skill_004"]
    ]
  }
}
```

**Tipos de Conexões**:
- `normal.bidirectional`: Conexões normais de progressão
- `exclusive.bidirectional`: Escolhas mutuamente exclusivas (escolher uma bloqueia as outras)

**IMPORTANTE**: Para criar um caminho de escolha, você precisa:
1. Criar 3+ skills exclusivas em `skills.json`
2. Conectar todas entre si em `exclusive.bidirectional`
3. O jogador só poderá escolher UMA delas

## Passo 7: Criar definitions.json

Define as propriedades de cada skill (descrição, efeitos, recompensas):

```json
{
  "primeira_skill": {
    "title": "Iniciante",
    "description": [
      {"text": "O começo da sua jornada."}
    ],
    "size": 1,
    "icon": {
      "type": "item",
      "data": {"item": "minecraft:wooden_sword"}
    },
    "frame": {
      "type": "advancement",
      "data": {"frame": "task"}
    },
    "rewards": [],
    "metadata": {
      "icon": "skill_root"
    }
  },
  "segunda_skill": {
    "title": "Força I",
    "description": [
      {"text": "+10% de dano corpo a corpo"},
      {"text": "+1 coração de vida"}
    ],
    "size": 1,
    "icon": {
      "type": "item",
      "data": {"item": "minecraft:iron_sword"}
    },
    "frame": {
      "type": "advancement",
      "data": {"frame": "task"}
    },
    "rewards": [
      {
        "type": "puffish_skills:attribute",
        "data": {
          "attribute": "puffish_attributes:melee_damage",
          "value": 0.10,
          "operation": "multiply_total"
        }
      },
      {
        "type": "puffish_skills:attribute",
        "data": {
          "attribute": "minecraft:max_health",
          "value": 2,
          "operation": "addition"
        }
      }
    ],
    "metadata": {
      "icon": "skill_002"
    }
  }
}
```

**Campos**:
- `title`: Nome da skill
- `description`: Array de textos descritivos
- `size`: Tamanho (1 = normal, 2 = grande)
- `icon`: Item usado como ícone
- `frame.data.frame`: Tipo de frame visual
  - `task` - Quadrado (skill normal)
  - `challenge` - Ornamentado (desafio)
  - `goal` - Arredondado (objetivo final)
- `rewards`: Array de recompensas
- `metadata.icon`: ID da skill em skills.json

### Tipos de Rewards

**1. Atributos**
```json
{
  "type": "puffish_skills:attribute",
  "data": {
    "attribute": "puffish_attributes:melee_damage",
    "value": 0.10,
    "operation": "multiply_total"
  }
}
```

**Atributos Disponíveis**:
- `puffish_attributes:melee_damage` - Dano corpo a corpo
- `puffish_attributes:ranged_damage` - Dano à distância
- `puffish_attributes:armor_shred` - Penetração de armadura
- `puffish_attributes:resistance` - Resistência a dano
- `minecraft:max_health` - Vida máxima (2 = 1 coração)
- `minecraft:attack_speed` - Velocidade de ataque
- `minecraft:movement_speed` - Velocidade de movimento
- `minecraft:armor` - Armadura
- `minecraft:luck` - Sorte
- `minecraft:block_break_speed` - Velocidade de quebra

**Operações**:
- `addition` - Soma valor
- `multiply_total` - Multiplica o total (porcentagem)

**2. Comandos (para dar itens)**
```json
{
  "type": "puffish_skills:command",
  "data": {
    "command": "give @s diamond_sword[enchantments={sharpness:5,unbreaking:3}] 1"
  }
}
```

### Exemplo Completo: Skill Challenge com Item

```json
{
  "desafio_mestre": {
    "title": "Mestre da Espada",
    "description": [
      {"text": "Derrote 100 inimigos."},
      {"text": ""},
      {"text": "Recompensa: +25% de dano"},
      {"text": "Item: Espada Lendária"}
    ],
    "size": 1,
    "icon": {
      "type": "item",
      "data": {"item": "minecraft:netherite_sword"}
    },
    "frame": {
      "type": "advancement",
      "data": {"frame": "challenge"}
    },
    "rewards": [
      {
        "type": "puffish_skills:attribute",
        "data": {
          "attribute": "puffish_attributes:melee_damage",
          "value": 0.25,
          "operation": "multiply_total"
        }
      },
      {
        "type": "puffish_skills:command",
        "data": {
          "command": "give @s netherite_sword[custom_name='{\"text\":\"Espada Lendária\",\"color\":\"gold\",\"italic\":false}',enchantments={sharpness:5,unbreaking:3}] 1"
        }
      }
    ],
    "metadata": {
      "icon": "skill_challenge"
    }
  }
}
```

## Passo 8: Testar no Jogo

1. Coloque o datapack na pasta `world/datapacks/`
2. Execute `/reload` no jogo
3. Abra o menu de skills com a tecla configurada (padrão: K)
4. Verifique se a categoria aparece
5. Teste se as conexões e efeitos funcionam corretamente

## Dicas Importantes

1. **Balanceamento de XP**:
   - Categorias de combate: `level^2 * 5 + 50` (cap 3500)
   - Categorias de coleta: `level^2 * 4 + 40` (cap 3000)

2. **IDs de Skills**: Use nomes descritivos e únicos (ex: `f_root_001`, `f_dmg1_002`)

3. **Posicionamento**: Use coordenadas em múltiplos de 68 para melhor alinhamento

4. **Escolhas Exclusivas**: Para criar caminhos de escolha:
   - Defina as skills em `skills.json`
   - Conecte TODAS em `exclusive.bidirectional` (ex: 3 skills = 3 conexões)
   - O jogador só poderá escolher uma

5. **Itens**: Só dê itens em níveis altos (50+) para evitar facilitar demais

6. **Corações**: Use `minecraft:max_health` com valores como 2, 4, 6, 8 (cada 2 = 1 coração)

7. **Operação em Atributos**: Use `addition` para valores fixos, `multiply_total` para porcentagens

## Estrutura Resumida

```
1. config.json → Registra a categoria
2. category.json → Metadados (título, ícone, fundo)
3. experience.json → Sistema de XP
4. skills.json → Posições na árvore (x, y, root)
5. connections.json → Conexões (normal e exclusive)
6. definitions.json → Propriedades (descrição, efeitos, recompensas)
```

## Referências

- Documentação oficial: https://puffish.net/skillsmod/docs/creators/configuration/
- Exemplos neste datapack: `data/minefy/puffish_skills/categories/`
