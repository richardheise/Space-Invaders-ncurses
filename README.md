# Space Invaders ncurses

Esta é uma implementação simples do clássico jogo Space Invaders utilizando a biblioteca ncurses para renderização no terminal.

## Dependências

Certifique-se de ter a biblioteca ncurses instalada em seu sistema. Você pode instalá-la usando um dos seguintes comandos, dependendo da sua distribuição Linux:

**Debian/Ubuntu:**
```bash
sudo apt-get install libncurses5-dev libncursesw5-dev
```

**CentOS/RHEL/Fedora (até a versão 21):**
```bash
sudo yum install ncurses-devel
```

**Fedora (versão 22 e posteriores):**
```bash
sudo dnf install ncurses-devel
```

## Como Compilar e Executar

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/richardheise/Space-Invaders-ncurses.git
    cd Space-Invaders-ncurses
    ```

2.  **Compile o jogo:**
    ```bash
    make
    ```
    **Observação:** O `makefile` atual precisa ser atualizado para refletir a nova estrutura de pastas (`src`, `inc`, `bin`).

3.  **Execute o jogo:**
    ```bash
    ./bin/main
    ```

4.  **Divirta-se!**

---

Desenvolvido por Richard Heise (rfhf19@inf.ufpr.br)