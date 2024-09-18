
session=$XDG_SESSION_TYPE
folder=$(mktemp -d)

curl https://github.com/Dvaking/ScriptTekZero/raw/main/wlr-randr -o $folder/


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
while true
do
    random_number=$((1 + RANDOM % 4))
    if [ "$random_number" == "1" ]; then
        echo "1"
        $folder/wlr-randr --output eDP-1 --transform 270
        elif [ "$random_number" == "2" ]; then
        echo "2"
        $folder/wlr-randr --output eDP-1 --transform 90
        elif [ "$random_number" == "3" ]; then
        echo "3"
        $folder/wlr-randr --output eDP-1 --transform 180
        elif [ "$random_number" == "4" ]; then
        echo "4"
        $folder/wlr-randr --output eDP-1 --transform normal
    fi
    sleep 30s
done