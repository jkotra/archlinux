import argparse
import os

parser = argparse.ArgumentParser("Set custom theme")
parser.add_argument("--app", '-a', help="App name",dest="app", type=str, required=True)
parser.add_argument("--theme", '-t', help="Theme name",dest="theme", type=str, default="Adwaita:dark")
args = parser.parse_args()

conf = open("/usr/share/applications/{}.desktop".format(args.app), "r")
new_buf = ""
for line in conf.readlines():
    if "Exec=" in line:
        line = line.replace("Exec=", "Exec=env GTK_THEME={} ".format(args.theme))
    new_buf += line

print(new_buf)
f = open(os.path.expanduser("~/.local/share/applications/{}.desktop".format(args.app)), "w+")
f.write(new_buf)
f.close()