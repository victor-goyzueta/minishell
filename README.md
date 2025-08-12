# minishell

*Mini shell en C desarrollado como parte del Common Core en 42 Madrid.*

---

## 📌 Descripción

Un **shell minimalista** escrito en C que interpreta y ejecuta comandos de forma similar a Bash. Implementa funcionalidades clave de sistemas Unix, como redirecciones, pipes, built-ins y manejo de señales.

**Características destacadas**:
- Ejecución de comandos simples e internamente definidos (*built-ins*).
- Redirecciones: `>`, `<`, `<<`, `>>`.
- Pipes: `|`.
- Manejo de señales: `SIGINT` (Ctrl+C), `SIGQUIT` (Ctrl+\).
- Uso de llamadas al sistema: `fork`, `execve`, `dup2`, `waitpid`.
- Gestión manual de memoria y parsing robusto.

---

## ⚙️ Cómo compilar

```bash
make
```

---

## 🚀 Ejecución

```bash
./minishell [-c] [...]
```

Entrarás en un modo interactivo tipo terminal:

```bash
minishell$ echo "Hola Mundo"
Hola Mundo
minishell$ ls -l | grep minishell
```

---

## 📂 Estructura del proyecto

```
minishell/
├── inc/         # Cabeceras (.h)
├── src/         # Código fuente (.c)
├── libft/       # Biblioteca propia (funciones utilitarias)
├── Makefile
└── README.md
```

---

## 💡 Ejemplos prácticos

```bash
minishell$ ls > file.txt
minishell$ cat < file.txt
minishell$ echo "texto" >> file.txt
minishell$ ps aux | grep minishell
```

---

## 📋 Dependencias

- Entorno Unix/Linux
- Compilador `cc`
- `make`

---

## 🛠️ Tecnologías utilizadas

- **Lenguaje:** C
- **Sistema operativo:** Linux/Unix
- **Herramientas:** `make`, `git`
- **Conceptos:** llamadas al sistema, gestión de procesos, concurrencia, parsing, señales

---

## 🎯 Sobre el proyecto

Este proyecto forma parte del Common Core de 42 Madrid y permite profundizar en la programación de sistemas, aprender cómo funcionan las shells reales y comprender los fundamentos de la creación de procesos y comunicación entre ellos.

---

## 🙌 Agradecimientos

Quiero agradecer enormemente a mi compañero **[jocalder](https://github.com/jocalder)** por su colaboración, apoyo y trabajo conjunto en el desarrollo de este proyecto.
El trabajo en equipo y el aprendizaje mutuo han sido clave para completar `minishell`.

