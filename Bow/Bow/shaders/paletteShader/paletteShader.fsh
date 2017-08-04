//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 darkColor;
uniform vec3 brightColor;

void main()
{
	vec4 col = texture2D( gm_BaseTexture, v_vTexcoord );
	
	if(col.rgb == 1.0)
		col.rgb = brightColor;
	if(col.rgb == 0.0)
		col.rgb = darkColor;
    gl_FragColor = v_vColour * col;
}
