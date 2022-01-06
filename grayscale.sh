 #Define shader
GRAYSCALE=$(cat <<-END
uniform sampler2D tex;
void main() {
   vec4 c = texture2D(tex, gl_TexCoord[0].xy);
   float y = dot(c.rgb, vec3(0.299, 0.587, 0.114));
   vec4 gray = vec4(y, y, y, 1.0);
   gl_FragColor = mix(c, gray, 0.95);
}
END
)
echo $GRAYSCALE
