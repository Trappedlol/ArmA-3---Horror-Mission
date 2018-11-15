//Skipping time and the time now moves slow
skipTime 11.5;
setTimeMultiplier 0.1;

_filmGrain = ["FilmGrain", 2000, [0.2, 0.15, 1, 0.2, 1.0, 0]] spawn 
{ 
 params ["_name", "_priority", "_effect", "_handle"]; 
 _handle = ppEffectCreate [_name, _priority];
 _handle ppEffectEnable true; 
 _handle ppEffectAdjust _effect; 
 _handle ppEffectCommit 0;
 };

 trapTriggered = false;
{
  while {!trapTriggered} do {
  if (_x distance HumSkull < 3) then {
      [_x, ["HitLegs", 1]] remoteExec ["setHitPointDamage", _x];
      trapTriggered = true;
    };
  };
} forEach allPlayers;

