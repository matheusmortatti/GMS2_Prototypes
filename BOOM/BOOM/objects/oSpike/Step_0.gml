/// Player death

if(place_meeting(x, y, oPlayer)) {
    var player = instance_place(x, y, oPlayer);
    
    with(player)
        instance_destroy();
}

