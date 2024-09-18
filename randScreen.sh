
session=$XDG_SESSION_TYPE

if [ "$session" == "x11" ]; then
    while true
    do
        random_number=$((1 + RANDOM % 4))
        if [ "$random_number" == "1" ]; then
            echo "1"
            xrandr -o left
            elif [ "$random_number" == "2" ]; then
            echo "2"
            xrandr -o right
            elif [ "$random_number" == "3" ]; then
            echo "3"
            xrandr -o inverted
            elif [ "$random_number" == "4" ]; then
            echo "4"
            xrandr -o normal
        fi
        sleep 30s
    done
fi
folder=$(mktemp -d)

curl https://raw.githubusercontent.com/Dvaking/ScriptTekZero/main/gnome-randr.py -o $folder/gnome-randr.py
while true
do
    random_number=$((1 + RANDOM % 4))
    if [ "$random_number" == "1" ]; then
        echo "1"
        $folder/gnome-randr.py --output --auto --rotate left
        elif [ "$random_number" == "2" ]; then
        echo "2"
        $folder/gnome-randr.py --output --auto --rotate right
        elif [ "$random_number" == "3" ]; then
        echo "3"
        $folder/gnome-randr.py --output --auto --rotate inverted
        elif [ "$random_number" == "4" ]; then
        echo "4"
        $folder/gnome-randr.py --output --auto --rotate normal
    fi
    sleep 30s
done