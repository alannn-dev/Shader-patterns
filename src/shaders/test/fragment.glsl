varying vec2 vUv;
// in vec2 vUv;

void main()
{
    // Pattern 1 
    // gl_FragColor = vec4(vUv.x, vUv.y, B, A);

    // Pattern 3
    // float strength = vUv.y;

    // Pattern 4
    // float strength = vUv.x;

    // Pattern 5
    // float strength = 1.0 - vUv.x;

    // Pattern 6
    float strength = vUv.y * 10.0;

    gl_FragColor = vec4(strength, strength, strength, 1.0);
}