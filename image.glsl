// Welcome! This is a Shadertoy-style shader.
// mainImage runs once for each pixel, every frame.
// Try changing a number, then watch the preview on the right.



void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Pixel position, from 0 to 1 across the screen.
    vec2 uv = fragCoord / iResolution.xy;
    float w = 0.0f;
    float x = 1.0f;
    float y = 1.0f;
    float z = 0.0f;
    while (w <= 0.9f)
    {
        w = w + 0.01f;
    }
    while (z <= 0.9f)
    {
        z = z + 0.01f;
    }
    if (z > )
    
    // A colour that shifts over time.
    vec3 col = x + y * sin(iTime + uv.xyx + vec3(0.0 + x, 2.0 - y, 4.0 + x - y));
    
    // A soft circle in the middle that follows the mouse while you hold a button.
    vec2 centre = iMouse.z > 0.0 ? iMouse.xy : 0.5 * iResolution.xy;
    float d = length(fragCoord - centre) / iResolution.y;
    col *= smoothstep(0.25 + z, 0.4 - w, d) * 0.5 + 0.5;

    fragColor = vec4(col, 1.0);
}
