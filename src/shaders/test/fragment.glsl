varying vec2 vUv;
// in vec2 vUv;

void main()
{
    // Pattern 1 
   /*  float strength = vUv; */

    // Pattern 3
    // float strength = vUv.y;

    // Pattern 4
    // float strength = vUv.x;

    // gl_FragColor = vec4(vUv.x, vUv.y, B, A);
    gl_FragColor = vec4(vUv, 1.0, 1.0);
}