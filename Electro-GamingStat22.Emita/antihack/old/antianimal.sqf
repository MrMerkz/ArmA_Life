//created by razgriz
while {true} do
{
    //anti dead
    _animal = nearestObjects [getpos vehicle player,["Cow","Cow01","Cow02","Cow03","Cow04","Fin","Goat","Hen","Cock","Pastor","Sheep"], 1500];
    {
        deletevehicle _x;
    }
    foreach _animal;
    sleep 10;
};