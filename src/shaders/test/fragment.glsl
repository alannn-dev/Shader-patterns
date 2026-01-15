varying vec2 vUv;
// in vec2 vUv;

void main()
{
    gl_FragColor = vec4(vUv, 1.0, 1.0);
    // gl_FragColor = vec4(vUv.x, vUV.y, 1.0, 1.0);


}