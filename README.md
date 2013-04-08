# ConnectBot Colors Solarized
*Priyesh Patel*
*https://github.com/priyeshpatel/connectbot-colors-solarized*

## Solarized by Ethan Schoonover
Solarized is a sixteen color palette (eight monotones, eight accent colors)
designed for use with terminal and gui applications. It has several unique
properties. Read more at http://ethanschoonover.com/solarized

![Solarized for ConnectBot](https://github.com/priyeshpatel/connectbot-colors-solarized/raw/master/connectbot-solarized.png)

## Installing automatically (Linux/Mac only)
  1. Clone this repository: `git clone
     https://github.com/priyeshpatel/connectbot-colors-solarized`
  2. Download the Android SDK from http://developer.android.com/sdk/index.html
  3. Enable Root access through ADB from Settings > Developer Tools
  4. Connect the device to the computer
  5. Run `connectbot-colors-solarized/install.sh` and follow the instructions

## Manual Installation

### Without ADB 
(Instructions provided by @adamgreig)
  1. Download (or copy and paste) the SQL file provided in this repository:
     https://raw.github.com/priyeshpatel/connectbot-colors-solarized/master/connectbot-solarized.sql.
  2. Open a terminal emulator.
  3. Gain superuser privileges using `su`.
  4. Navigate to the downloaded `.sql` file.
  5. Run `sqlite3 /data/data/org.connectbot/databases/hosts <
     path/to/downloaded.sql`.

### ConnectBot Color Chooser
ConnectBot has a color chooser found under Colors in the menu. You will need to
set the following colors on this page:
```
FG: 13
BG: 1
```
```
CONNECTBOT # SOLARIZED HEX     HSB
------------ --------- ------- -----------
0            base03    #002b36 193 100  21
8            base02    #073642 192  90  26
10           base01    #586e75 194  25  46
11           base00    #657b83 195  23  51
12           base0     #839496 186  13  59
14           base1     #93a1a1 180   9  63
7            base2     #eee8d5  44  11  93
15           base3     #fdf6e3  44  10  99
3            yellow    #b58900  45 100  71
9            orange    #cb4b16  18  89  80
1            red       #dc322f   1  79  86
5            magenta   #d33682 331  74  83
13           violet    #6c71c4 237  45  77
4            blue      #268bd2 205  82  82
6            cyan      #2aa198 175  74  63
2            green     #859900  68 100  60
```

## Uninstalling
To revert to the default color scheme, open ConnectBot and from the Colors page
select Reset in the menu.

## Recommendations
I recommend you install the latest ConnectBot from
http://code.google.com/p/connectbot/downloads/list over any version from the
marketplace as these are much newer. There is no need to uninstall the old
version as it will be replaced and all settings will be retained. A separate
tablet version is also available.
