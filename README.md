# 🌟 Neo Dotfiles

My beautiful Hyprland setup with modern aesthetics and SF Pro Display font throughout.

## ✨ Features

- **🎨 Hyprland**: Window manager with gorgeous transparency effects and vim-style keybindings
- **📊 Waybar**: Modern status bar with Catppuccin-inspired colors and SF Pro Display font
- **🚀 Wofi**: Beautiful app launcher with transparency and large, readable text
- **🌈 Transparency**: Carefully tuned opacity for different applications
- **⌨️ Intuitive Keybindings**: Super+Enter for terminal, Super+Q to quit, Super+D for launcher

## 🎯 Keybindings

| Key Combination | Action |
|----------------|--------|
| `Super + Enter` | Open terminal |
| `Super + Q` | Close active window |
| `Super + D` | Open app launcher |
| `Super + hjkl` | Move focus between windows |
| `Super + Shift + h/l` | Switch workspaces |
| `Super + 1-9` | Go to specific workspace |

## 🎨 Transparency Controls

| Key Combination | Action |
|----------------|--------|
| `Super + Shift + =` | Make window fully opaque |
| `Super + Shift + -` | Make window very transparent |
| `Super + Shift + 0` | Reset to default transparency |

## 📁 Structure

```
.
├── hypr/               # Hyprland configuration
│   └── hyprland.conf   # Main config with keybindings and window rules
├── waybar/             # Status bar configuration
│   ├── config          # Waybar modules and layout
│   └── style.css       # Beautiful styling with SF Pro Display
└── wofi/               # App launcher configuration
    ├── config          # Launcher behavior
    └── style.css       # Modern styling with transparency
```

## 🚀 Installation

1. Clone this repository to your `.config` directory:
   ```bash
   git clone https://github.com/000geid/neo-dotfiles.git ~/.config-backup
   ```

2. Copy the configurations:
   ```bash
   cp -r ~/.config-backup/hypr ~/.config/
   cp -r ~/.config-backup/waybar ~/.config/
   cp -r ~/.config-backup/wofi ~/.config/
   ```

3. Reload Hyprland:
   ```bash
   hyprctl reload
   ```

## 🎨 Color Scheme

Based on Catppuccin with custom tweaks:
- **Background**: `rgba(30, 30, 46, 0.95)`
- **Accents**: `#89b4fa` (blue), `#cba6f7` (purple)
- **Text**: `#cdd6f4` (light gray)

## 💎 Font

**SF Pro Display** is used throughout for that premium Apple aesthetic.

---

*Made with 💅 for the perfect Linux desktop experience* 