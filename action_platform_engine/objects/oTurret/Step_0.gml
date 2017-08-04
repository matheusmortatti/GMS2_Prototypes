/// @description Insert description here
// You can write your code in this editor

if(stretch) {
	
}

var f, hh, oo, hoo, hhoo, detInv, detX, detV;

f = 1.0 + (2.0 * h * zeta * omega)
hh = h * h;
oo = omega * omega
hoo = h * oo;
hhoo = h * hoo;
detInv = 1.0 / (f + hhoo);
detX = (f * val) + (h * vel) + (hhoo * target);
detV = vel + (hoo * (target - val));
val = detX * detInv;
vel = detV * detInv;