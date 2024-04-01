import subprocess
from os import path as p

HOMEDIR = p.expanduser("~")

SECOND_LINE_MPC = "mpc -f %title% | tail -n 2 | head -n 1"
FIRST_LINE_MPC = "mpc -f %title% | head -n 1"


def get_mpc_title():
    return str(subprocess.check_output(FIRST_LINE_MPC, shell=True))[2:][:-3]


def get_playing_position():
    return str(subprocess.check_output(SECOND_LINE_MPC, shell=True))[19:][:-8]


def get_mpd_state():
    if str(subprocess.check_output(SECOND_LINE_MPC, shell=True))[2:][:9] == "[playing]":
        return " "
    else:
        return "󰏤 "


def get_is_playing():
    if str(subprocess.check_output(SECOND_LINE_MPC, shell=True))[2:][:7] == "volume:":
        return False
    return True


def filter_umlauts(title):
    return (
        title.replace("ä", "ae")
        .replace("Ä", "Ae")
        .replace("ö", "oe")
        .replace("Ö", "Oe")
        .replace("ü", "ue")
        .replace("Ü", "Ue")
    )


def main():
    if not get_is_playing():
        print("No Music | Right-Click to Play")
        return

    statefile = open(HOMEDIR + "/.config/scripts/mpytstate", "r")
    if get_mpc_title() != "":
        title = filter_umlauts(get_mpc_title())
        print(
            get_mpd_state()
            + "["
            + get_playing_position().strip()
            + "] "
            + filter_umlauts(title),
            end="",
        )
        return

    else:
        print(
            get_mpd_state()
            + "["
            + get_playing_position().strip()
            + "] "
            + statefile.readline(),
            end="",
        )
        return


if __name__ == "__main__":
    main()
