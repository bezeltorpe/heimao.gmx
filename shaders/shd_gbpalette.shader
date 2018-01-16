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





//credit to Kyle Pulver for this shader!
uniform sampler2D texture; // The main input texture (the screen.)
uniform sampler2D palette; // The palette texture.
uniform float screenScale; // The current scale of the screen. (1x, 2x, etc)
uniform int screenX;
uniform int screenY;
vec2 screenSize = vec2(screenX, screenY); // The size of the core game screen (320 x 240)

uniform vec2 TexCoord;

 
void main() {
    // The size of the game window.
    vec2 screenSizeScaled = screenScale * screenSize;
    // The pixel coordinate being operated on.
    vec2 pixpos = TexCoord.xy;
 
    // Get dither pixel
    vec2 overlayCoord = floor(gl_FragCoord.xy / screenScale);
    // Get 1 or 0 based on the pixel location.
    float overlayPixelColor = (overlayCoord.x + overlayCoord.y) * floor((overlayCoord.x + overlayCoord.y) * 0.5);
    // Dither is black and white every other pixel.
    vec4 overlayPixel = vec4(overlayPixelColor, overlayPixelColor, overlayPixelColor, 1.0);
 
    // Scale the frag position to match the screen scale
    vec2 scaledpos = floor(pixpos * screenSizeScaled);
    // Adjust the position based on the scale of the screen.
    scaledpos -= mod(scaledpos, screenScale);
    // Convert back to 0 - 1 coordinate space.
    scaledpos = scaledpos / screenSizeScaled;
 
    // Get base color.
    vec4 pixcol = texture2D(texture, pixpos);
 
    // Mix dither texture.
    pixcol = mix(pixcol, overlayPixel, 0.1);
 
    // Determine the brightness of the pixel in a dumb way.
    float gray = (pixcol.r + pixcol.g + pixcol.b) / 3.0;
 
    // Round it to the nearest 0.25.
    gray = floor(gray / 0.25) * 0.25;
 
    // Map the palette to the pixel based on the brightness and shift.
    pixcol = texture2D(palette, vec2(gray, 1)); //it's 1 because the palette is 1d... - rebecca
    
    // Multiply through the gl_Color for final output.
    gl_FragColor = pixcol * gl_FragColor;
}
