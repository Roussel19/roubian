# 🐧 Roubian v0.19

<p align="center">
  <img src="wallpapers/logoroubian.png" width="300">
</p>

<h3 align="center">
Debian 13 + i3wm personal environment focused on programming, productivity and a beautiful workflow.
</h3>

---

## 📖 ¿Qué es Roubian?

**Roubian** es mi configuración personal basada en **Debian 13 (Trixie)** utilizando **i3wm** como gestor de ventanas.

Este proyecto nace de la idea de crear un entorno Linux que sea:

- ⚡ Rápido y ligero.
- 🧑‍💻 Cómodo para programar.
- 🚀 Enfocado en productividad.
- 🎨 Visualmente hermoso y agradable de usar.
- 🖥️ Minimalista pero funcional.

Roubian no es una distribución Linux independiente, sino un conjunto de configuraciones, scripts, temas y ajustes personales para transformar una instalación de Debian en un entorno de trabajo completo.

Lo desarrollé principalmente para mi propio uso, como una forma de tener mi configuración respaldada, organizada y versionada.

Sin embargo, si alguien encuentra útil esta configuración, es completamente libre de usarla, modificarla y adaptarla a sus propias necesidades.

---

# ✨ Filosofía

La idea detrás de Roubian es crear un entorno donde trabajar sea cómodo.

Un sistema operativo no solamente debe funcionar, también debe sentirse bien al utilizarlo.

Roubian busca combinar:

- Minimalismo.
- Buen rendimiento.
- Personalización.
- Productividad.
- Estética moderna.

Cada configuración ha sido ajustada con el objetivo de crear un flujo de trabajo agradable para programación, estudio y uso diario.

---

# 🖥️ Sistema base

| Componente | Tecnología |
|---|---|
| Distribución | Debian 13 (Trixie) |
| Window Manager | i3wm |
| Terminal | Kitty |
| Shell | Zsh |
| Barra de estado | Polybar |
| Launcher | Rofi |
| Compositor | Picom |
| Fuente principal | JetBrains Mono Nerd Font |

---

# 🛠️ Componentes incluidos

## 🪟 i3wm

Configuración personalizada del gestor de ventanas:

- Atajos personalizados.
- Organización de escritorios.
- Inicio automático de aplicaciones.
- Integración con Polybar.

---

## 🖥️ Kitty

Terminal configurada para desarrollo:

- Tema oscuro.
- Transparencia.
- JetBrains Mono Nerd Font.
- Ajustes visuales personalizados.

---

## 🚀 Polybar

Barra de estado personalizada:

Incluye:

- Workspaces.
- Información del sistema.
- Reproductor multimedia.
- Scripts personalizados.

---

## 🔍 Rofi

Launcher personalizado con temas propios:

Incluye:

- Menú de aplicaciones.
- Estilos oscuros.
- Temas personalizados Wine/Black.

---

## ✨ Picom

Configuración visual:

- Transparencias.
- Sombras.
- Efectos de ventana.
- Mejor integración visual.

---

## 🐚 Zsh

Configuración de shell:

Incluye:

- Oh My Zsh.
- zsh-autosuggestions.
- zsh-syntax-highlighting.
- Prompt personalizado Roubian.

---

# 📂 Estructura del proyecto

```
roubian/
│
├── .config/
│   ├── i3/
│   ├── kitty/
│   ├── picom/
│   ├── polybar/
│   └── rofi/
│
├── wallpapers/
│   ├── logoroubian.png
│   └── wallpaper1.png
│
├── fonts.md
├── packages.txt
├── install.sh
├── LICENSE
├── README.md
└── .zshrc
```

---

# 🚀 Instalación automática

Roubian incluye un instalador que prepara el entorno automáticamente.

## 1. Clonar repositorio

```bash
git clone https://github.com/Roussel19/roubian.git
```

Entrar al directorio:

```bash
cd roubian
```

---

## 2. Ejecutar instalador

Dar permisos:

```bash
chmod +x install.sh
```

Ejecutar:

```bash
./install.sh
```

---

El instalador realiza:

✅ Instalación de paquetes necesarios.  
✅ Instalación de JetBrains Mono Nerd Font.  
✅ Instalación de Oh My Zsh.  
✅ Instalación de plugins de Zsh.  
✅ Copia de configuraciones.  
✅ Instalación de wallpapers.  
✅ Configuración de permisos para scripts.  

---

# 🔤 Fuentes

Roubian utiliza:

- JetBrains Mono Nerd Font.
- Iconos Nerd Font.

Más información:

```
fonts.md
```

---

# 📦 Dependencias

Las dependencias utilizadas están documentadas en:

```
packages.txt
```

Incluye herramientas como:

```
i3-wm
kitty
polybar
rofi
picom
zsh
playerctl
brightnessctl
```

---

# 📸 Capturas

Próximamente se añadirán capturas del escritorio completo, terminal y launcher.

---

# 🔄 Desarrollo

Roubian seguirá evolucionando con el tiempo.

Este proyecto irá recibiendo:

- Nuevos temas.
- Mejoras visuales.
- Nuevos scripts.
- Automatización.
- Ajustes de productividad.

La versión actual es:

```
Roubian v0.19
```

---

# 📜 Licencia

Roubian es un proyecto personal, pero está disponible para que otras personas puedan utilizarlo y modificarlo libremente.

Puedes tomar partes de la configuración, adaptarlas o crear tu propia versión.

---

# 👤 Autor

Creado por:

**Roussel19**

Proyecto personal enfocado en crear un entorno Linux cómodo, productivo y visualmente hermoso.

⭐ Si esta configuración te sirve, considera dejar una estrella al repositorio.
