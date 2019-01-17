# gdiviewer-cli
🕹 Dreamcast GDI viewer. Parses basic information like title, id, date etc.

## Installation 

### Requirements

1. Vim (for the `xxd` command).

### Manual

Link the commands to a folder in your `PATH`.

``` bash
$ ln -s gdils.sh /usr/local/bin/gdils
$ ln -s gdiinfo.sh /usr/local/bin/gdiinfo
```

### Automatic

Coming soon(ish).

## Usage

``` bash
$ gdils
```

Output:
``` bash
Path:           ./02
Hardware ID:    SEGA SEGAKATANA
Vendor ID:      SEGA ENTERPRISES
Media ID:       2FC5
Media Info:     GD-ROM1/1
Region:          U
Peripheral:     2799A10
Product Number: MK-51065
Version Number: V1.004
Release Date:   Thursday, 04 October 2001
Maker ID:       SEGA ENTERPRISES
Game Title:     BOMBERMAN ONLINE

Path:           ./03
Hardware ID:    SEGA SEGAKATANA
Vendor ID:      SEGA ENTERPRISES
Media ID:       02EE
Media Info:     GD-ROM1/1
Region:         J
Peripheral:     0199A10
Product Number: T46703M
Version Number: V1.000
Release Date:   Wednesday, 13 August 2003
Maker ID:       SEGA LC-T-467
Game Title:     BORDER DOWN

etc. etc.
```
