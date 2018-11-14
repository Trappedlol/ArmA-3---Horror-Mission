//Skipping time and the time now moves slow
skipTime 11;
setTimeMultiplier 0.1;

0 = ["FilmGrain", 2000, [0.2, 0.15, 1, 0.2, 1.0, true]] spawn 
{ 
 params ["_name", "_priority", "_effect", "_handle"]; 
 while { 
  _handle = ppEffectCreate [_name, _priority]; 
  _handle < 0; 
 } do { 
  _priority = _priority + 1; 
 }; 
 _handle ppEffectEnable true; 
 _handle ppEffectAdjust _effect; 
 _handle ppEffectCommit 0;};

