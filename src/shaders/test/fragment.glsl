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
    // float strength = vUv.y * 10.0;

    // Pattern 7 : MODULO (Create repeating patterns like stripes or checkerboards)
    // float strength = mod(vUv.y * 10.0, 1.0);

    // Pattern 8
        // float strength = mod(vUv.y * 10.0, 1.0);
    // if value < 0.5 -> 0 : If value > 0.5 -> 1
        // strength = step(0.5, strength);

    // Pattern 9
        // float strength = mod(vUv.y * 10.0, 1.0);
    // if value < 0.5 -> 0 : If value > 0.5 -> 1
        // strength = step(0.8, strength);

    // Pattern 10
        // float strength = mod(vUv.x * 10.0, 1.0);
    // if value < 0.5 -> 0 : If value > 0.5 -> 1
        // strength = step(0.8, strength);
        
    // Pattern 11
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength += step(0.8, mod(vUv.y * 10.0, 1.0));

    // Pattern 12
    // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // Pattern 13
    // float strength = step(0.2, mod(vUv.x * 10.0, 1.0));
    // strength *= step(0.8, mod(vUv.y * 10.0, 1.0));

    // Pattern 14
   /*  float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    barX *= step(0.8, mod(vUv.y * 10.0, 1.0));

    float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
    barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    float strength = barX + barY; */

    // Pattern 15
    /* float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
    barX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0));

    float barY = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
    barY *= step(0.4, mod(vUv.y * 10.0, 1.0));

    float strength = barX + barY; */

    // Pattern 16
    //Abs() transforms any negative value into its positive counterpart, while positive values ​​remain unchanged.
    // float strength = abs(vUv.x - 0.5);

    // Pattern 17
    // min() : takes two arguments and returns the smaller of the two values.
    // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));

    // Pattern 18
    // max() : takes two arguments and returns the bigger of the two values.
    // float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));

    // Pattern 19
    // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));

     // Pattern 20
    /* float square1 = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    float square2 = 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    float strength = square1 * square2; */

    // Pattern 21
    float strength = floor(vUv.x * 10.0) / 10.0;
    strength *= floor(vUv.y * 10.0) / 10.0;

    gl_FragColor = vec4(strength, strength, strength, 1.0);
}