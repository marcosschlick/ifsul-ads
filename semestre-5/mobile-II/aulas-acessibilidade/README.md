# Programação Mobile 2 — Material das Aulas (TADS)

Repositório com o código e exemplos usados nas aulas da disciplina **Programação Mobile 2** (TADS — Tecnólogo em Análise e Desenvolvimento de Sistemas). Cada aula fica em um arquivo e pode ser acessada pelo menu do app. O repositório é atualizado após cada aula, então vocês podem usar como referência e acompanhar o que já foi dado.

---

## Do que se trata

- App Flutter com um **menu inicial** onde cada item abre uma tela correspondente a uma aula.
- Em cada tela tem o conteúdo daquele dia (ex.: contador, acessibilidade, etc.) com comentários no código para estudo.
- Na aula de **Acessibilidade** há um botão no AppBar (ícone de acessibilidade) que liga/desliga o "Raio-X" de semântica (`showSemanticsDebugger`) para visualizar o que o leitor de tela enxerga.

---

## Pré-requisitos

- [Flutter](https://docs.flutter.dev/get-started/install) instalado e configurado (com `flutter doctor` ok).
- Opcional: Android Studio / Xcode para emulador, ou Chrome para rodar na web.

---

## Como instalar e rodar

### 1. Clonar o repositório

```bash
git clone https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git
cd SEU_REPOSITORIO/mobile2_aulas
```

*(Substitua `SEU_USUARIO` e `SEU_REPOSITORIO` pelo endereço real do repositório no GitHub. Se o repositório for só esta pasta, use `cd SEU_REPOSITORIO` após o clone.)*

### 2. Instalar dependências

```bash
flutter pub get
```

### 3. Rodar o app

- **No dispositivo/emulador padrão:**
  ```bash
  flutter run
  ```

- **No Chrome (web):**
  ```bash
  flutter run -d chrome
  ```

- **No Windows (desktop):**
  ```bash
  flutter run -d windows
  ```

Ao abrir o app, a primeira tela é o **Menu de Aulas**. Toque em um item para abrir a aula correspondente; use o botão voltar (ou seta no AppBar) para voltar ao menu.

---

## Estrutura do projeto (resumo)

| Arquivo / pasta | Descrição |
|----------------|-----------|
| `lib/main.dart` | Ponto de entrada e **menu** com os botões que levam a cada aula. |
| `lib/aula1.dart` | Aula 1 — Contador (revisão Flutter/Dart). |
| `lib/aula_acessibilidade.dart` | Aula — Acessibilidade (contraste 4,5:1, Semantics, Raio-X). |
| *(novas aulas)* | Cada aula nova vira um arquivo `lib/aula_*.dart` e um item no menu em `main.dart`. |

*(O nome do pacote no `pubspec.yaml` é `mobile2_aulas`.)*

---

## Observação

O conteúdo é commitado **depois** de ser dado em sala, para manter o repositório alinhado com o que foi efetivamente trabalhado nas aulas. Se precisarem do código de uma aula que ainda não apareceu no menu, é porque ela ainda não foi ministrada (e será adicionada em seguida).

---

## Dúvidas

Em caso de dúvidas sobre a disciplina ou o código, falem comigo em sala ou pelo canal combinado no curso.

---

## Para o professor: renomear a pasta e publicar no GitHub

O projeto já está configurado com o nome **mobile2_aulas** (pubspec, Android, iOS). Falta só renomear a pasta e criar o repositório.

### 1. Renomear a pasta `prova` para `mobile2_aulas`

**No Explorer (Windows):** entre em `FlutterProva`, clique com o botão direito na pasta `prova` → Renomear → `mobile2_aulas`.

**Ou no terminal** (na pasta `FlutterProva`):

```powershell
Rename-Item -Path prova -NewName mobile2_aulas
```

Depois, no Cursor, abra de novo a pasta `FlutterProva` (ou abra direto a pasta `mobile2_aulas` como workspace). Rode `flutter pub get` e `flutter clean` dentro de `mobile2_aulas` para atualizar o projeto.

### 2. Criar o repositório no GitHub

**Opção A — GitHub Desktop**

1. Abra o GitHub Desktop.
2. File → Add local repository e escolha a pasta `mobile2_aulas` (ou `FlutterProva` se o repositório for a raiz).
3. Se não for um repositório git ainda: Create repository (escolha a pasta, nome do repo, marque "Initialize with README" se quiser).
4. Depois: Publish repository (escolha o usuário, nome do repositório, público).

**Opção B — Linha de comando**

Na pasta do projeto (ex.: `mobile2_aulas`):

```bash
git init
git add .
git commit -m "Material inicial - Programação Mobile 2"
```

No GitHub (github.com), crie um repositório novo (vazio, sem README). Depois:

```bash
git remote add origin https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git
git branch -M main
git push -u origin main
```

*(Substitua pela URL real do repositório.)*

Depois de publicar, atualize no README a URL de clone e o caminho `SEU_REPOSITORIO/mobile2_aulas` (ou só `SEU_REPOSITORIO` se a raiz do repo for a pasta do app).
