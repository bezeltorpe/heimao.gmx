//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 texSize;
uniform sampler2D ditherTex;

float height = 4.;
vec2 size = vec2(16, 16);
vec2 tSize = vec2(32, 64);

vec2 rSize = size / tSize;


void main()
{
    float band = floor(texture2D( gm_BaseTexture, v_vTexcoord ).r * 7.);
    vec2 offset = vec2(rSize.x * floor(band / height), rSize.y * mod(band, height));
    vec2 texcoord = vec2( (mod((v_vTexcoord.x * texSize.x), size.x) / (tSize.x * 2.)),
                          (mod((v_vTexcoord.y * texSize.y), size.y) / (tSize.y * 2.)));
    gl_FragColor = texture2D(ditherTex, texcoord + offset);
}

