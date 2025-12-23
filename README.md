# awesomewm-cyber-oled

A minimal, terminal-inspired AwesomeWM configuration with a pure black color scheme optimized for OLED displays. Features monospace typography, subtle cyan accents, and transparent Conky overlays that display system metrics in a clean, technical aesthetic. Perfect for those who prefer a pitch-black, distraction-free workspace with a cyberpunk edge.

## Features

- Pitch-black theme designed for OLED screens
- ASCII art wallpaper from Serial Experiments Lain
- Collection of widgets from awesome-wm-widgets
- Multiple Conky displays for system monitoring
- Custom shortcuts for getting things done

## Structure

```
awesomewm-cyber-oled/
├── awesome/
│   ├── rc.lua                    # Main AwesomeWM configuration
│   ├── default/
│   │   ├── theme.lua             # Theme configuration
│   │   ├── lain.jpg              # Wallpaper (ASCII art)
│   │   ├── lain2.jpg             # Lock screen wallpaper
│   │   └── README                # Theme assets attribution
│   └── awesome-wm-widgets/       # Widget collection
└── conky/
    ├── conkyrc_clock             # Clock and system info
    ├── conkyrc_disk              # Disk usage monitoring
    ├── conkyrc_sys               # CPU, RAM and processes
    ├── conkyrc_weather           # Network and system logs
    ├── conkyForecast.template    # Weather template (optional)
    ├── conkyRhythmbox.template   # Music player template (optional)
    └── scripts/                  # Helper scripts
```

## Installation

1. **Install the basics:**
   - AwesomeWM (4.3 or newer)
   - Conky (1.22.2 or newer)
   - LuaRocks (needed for some widgets)
   - Whatever extra packages your chosen widgets need

2. **Back up your current setup:**
   ```bash
   mv ~/.config/awesome ~/.config/awesome.backup
   ```

3. **Get the config:**
   ```bash
   # Clone the repository
   git clone https://github.com/Tenshi18/awesomewm-cyber-oled

   # Change directory
   cd awesomewm-cyber-oled
   ```
4. **Set up AwesomeWM:**
   ```bash
   # Create AwesomeWM directory if it doesn't exist
   mkdir -p ~/.config/awesome

   # Copy AwesomeWM configs from the repo
   cp -r awesome/* ~/.config/awesome/
   ```

5. **Widget extras:**
   Some widgets need their own dependencies. Check the README files in `awesome/awesome-wm-widgets/` for details.

6. **Set up Conky:**
   ```bash
   # Create Conky directory if it doesn't exist
   mkdir -p ~/.config/conky
   
   # Copy Conky configs from the repo
   cp -r conky/* ~/.config/conky/
   ```

7. **Restart AwesomeWM:**
   ```bash
   awesome --replace
   # Or just log out and back in
   ```

## Configuration

### Main Setup

Everything starts with `awesome/rc.lua`. Here are the main settings:

- Terminal: `kitty`
- Modkey: `Mod4` (Super/Windows key)
- Layouts: Tile, spiral, floating, and more

### Theme

Tweak the look in `awesome/default/theme.lua`:

- Colors
- Fonts
- Wallpaper
- Border styles

### Conky

The Conky configs are located in the `conky/` folder in the repository. After copying them to `~/.config/conky/` (see Installation step 6), you may need to:

1. **Update mount points** in `conkyrc_disk` to match your system (e.g., `/home` if it's a separate partition)
2. **Adjust file paths** if needed (e.g., network interface names in `conkyrc_weather`)

Conky will start automatically when AwesomeWM loads. The configs can also be run manually with:
```bash
conky -c ~/.config/conky/conkyrc_clock &
conky -c ~/.config/conky/conkyrc_weather &
conky -c ~/.config/conky/conkyrc_sys &
conky -c ~/.config/conky/conkyrc_disk
```

## Keybindings

- `Mod4 + Enter`: Terminal
- `Mod4 + r`: Rofi launcher
- `Mod4 + b`: Browser (update path in `rc.lua` to match your browser)
- `Mod4 + f`: File manager (Thunar)
- `Mod4 + Shift + l`: Lock screen (i3lock)
- `Mod4 + s`: Help screen
- `Mod4 + Shift + q`: Quit AwesomeWM
- `Mod4 + Ctrl + r`: Restart AwesomeWM

Check `awesome/rc.lua` for all the shortcuts.

## Widgets

This setup includes a solid collection of widgets from [awesome-wm-widgets](https://github.com/streetturtle/awesome-wm-widgets):

- Battery monitor (arc style)
- Volume control (arc style)
- System tray
- Keyboard layout switcher
- Plus plenty more...

## Conky Displays

The repo includes several Conky configurations:

- **conkyrc_clock**: Time and basic system info
- **conkyrc_disk**: Disk space for multiple drives
- **conkyrc_sys**: CPU/RAM usage and process list
- **conkyrc_weather**: Network traffic and system logs

These work with Conky 1.22.2.

## Credits

### Wallpaper

The wallpaper (`awesome/default/lain.jpg`) comes from:
- **Artist**: PsyBear
- **License**: CC BY-NC-SA 3.0
- **Source**: [DeviantArt](https://www.deviantart.com/psybear/art/Serial-Experiments-Lain-ASCII-65841237)

The i3lock lock screen wallpaper (`awesome/default/lain2.jpg`) comes from:
- **Artist**: Original artist unknown
- **Usage**: For personal use only
- **Source**: [Wallhaven](https://wallhaven.cc/w/l3lx7r)

### Theme Assets

Default theme backgrounds by:
- **Author**: Mikael Eriksson <mikael_eriksson@miffe.org>
- **License**: CC-BY-SA-3.0

### Widgets

Widgets from the [awesome-wm-widgets](https://github.com/streetturtle/awesome-wm-widgets) project. Check their individual licenses.

## About the Wallpapers

The included wallpapers (`awesome/default/lain.jpg` and `awesome/default/lain2.jpg`) are fan art based on *Serial Experiments Lain*.

*Serial Experiments Lain* is copyrighted by:
- **Production**: Triangle Staff
- **Original Concept**: Yasuyuki Ueda
- **Director**: Ryutaro Nakamura
- **Character Design**: Yoshitoshi ABe
- **Copyright**: © 1998 Triangle Staff / Pioneer LDC Inc.

This repo is not affiliated with or endorsed by the copyright holders. The wallpaper is included for personal, non-commercial use only.

If you're a copyright holder and have concerns, please get in touch with the maintainer.

## License

This is all provided as-is for personal use. Different parts have their own licenses:

- AwesomeWM config: MIT License (see LICENSE file)
- Widgets: See their licenses in `awesome/awesome-wm-widgets/`
- Wallpaper: CC BY-NC-SA 3.0 (PsyBear)
- Theme assets: CC-BY-SA-3.0 (Mikael Eriksson)

## Thanks

- [AwesomeWM](https://awesomewm.org/) - The window manager
- [awesome-wm-widgets](https://github.com/streetturtle/awesome-wm-widgets) - Widget collection
- [Conky](https://github.com/brndnmtthws/conky) - System monitoring
- [v1ewport/reality-explorer-theme](https://github.com/v1ewport/reality-explorer-theme) - Conky configurations

## Notes

- Built for personal use - you might need to tweak things for your setup
- Some widgets need API keys or extra setup
- Conky configs might need path changes depending on your system (especially mount points in `conkyrc_disk`)
- Conky starts automatically from `rc.lua` with direct calls
- Update lock screen wallpaper path in `rc.lua` if using i3lock
- Update picom config path in `rc.lua` if using picom
- Always back up before making changes

---