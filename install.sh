#!/bin/sh
# Solarized Colors for ConnectBot 
# Priyesh Patel
# https://github.com/priyeshpatel/connectbot-colors-solarized

echo "+--------------------------------------------------------------+"
echo "| Solarized for ConnectBot                                     |"
echo "| https://github.com/priyeshpatel/connectbot-colors-solarized  |"
echo "+--------------------------------------------------------------+"
echo ""
echo "Enter the location of the Android SDK's platform tools with "
echo "no trailing slash."
echo "  e.g. /opt/android-sdk/platform-tools"
echo "  You can download the SDK from:"
echo "  http://developer.android.com/sdk/index.html"
read -p "> " SDK

if [ ! -f "$SDK/adb" ]
then
    echo "SDK not found."
    echo "Exiting..."
    exit
fi

echo ""
echo "+--------------------------------------------------------------+"
echo ""
$SDK/adb devices

echo "Please enable root access via ADB on your device and make sure "
echo "it is plugged in. This might be found under Developer Options "
echo "and then Root Access."
echo "  Continue?"
read -p "> " CONTINUE

echo ""
$SDK/adb devices
echo ""
echo ""
echo "+--------------------------------------------------------------+"
echo ""

echo "Running..."
echo ""

$SDK/adb root

$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"UPDATE colors SET scheme = '' WHERE scheme = 0;\""

$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (0, -16766154, 0);\"" 
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (8, -16304574, 0);\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (10, -10981771, 0);\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (11, -10126461, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (12, -8153962, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (14, -7102047, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (7, -1120043, 0);\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (15, -133405, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (3, -4880128, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (9, -3454186, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (1, -2346449, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (5, -2935166, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (13, -9670204, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (4, -14251054, 0)\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (6, -13983336, 0);\""
$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"INSERT INTO colors (number, value, scheme) VALUES (2, -8021760, 0)\""

$SDK/adb shell "sqlite3 -echo /data/data/org.connectbot/databases/hosts \
    \"UPDATE colorDefaults SET fg = 12, bg = 0 WHERE scheme = 0;\""

echo ""
echo "+--------------------------------------------------------------+"
echo ""
echo "Finished!"
echo ""

echo "+--------------------------------------------------------------+"
echo "| Solarized for ConnectBot                                     |"
echo "| https://github.com/priyeshpatel/connectbot-colors-solarized  |"
echo "+--------------------------------------------------------------+"
