//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4  colour = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if((colour.r < 0.1 && colour.g < 0.1 && colour.b < 0.1) || 
		(colour.r > 0.75 && colour.g > 0.75 && colour.b > 0.75)) {
		gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);
	}
	else {
		gl_FragColor = colour;
	}
}
