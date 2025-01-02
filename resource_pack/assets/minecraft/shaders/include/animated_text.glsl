// Convert the Color to RGB that ranges from 0 to 255
ivec3 colorInt = ivec3(Color.rgb * 255);

float time = abs(fract(fract(GameTime * 300) / 1.0) - 0.5) * 2.0;
float t = abs(fract(time / 1.0) - 0.5) * 2.0;
float speed = 0.5;
float hue = mod(time * speed, 1.0);

// Colorful names 
// Infernal Infusion enchantment
if (colorInt.rgb == vec3(226, 126, 19)) {
	color = vec4(hsvToRgb(hue, 0.3, 0.9).rgb, Color.a);
}
// Empress drops names
else if (colorInt.rgb == vec3(255, 118, 208)) {
	color = vec4(hsvToRgb(hue, 1, 1).rgb, Color.a);
}
// Void Strike/Void Shot/Critical Strike enchantments
else if (colorInt.rgb == vec3(214, 0, 244)) {
	color = mix(vec4(0.7, 0, 0.7, Color.a), vec4(1, 0, 1, Color.a), t);
}
// Dune Speed enchantment
else if (colorInt.rgb == vec3(255, 208, 38)) {
	t = abs(fract(time / 2.0) - 0.5) * 2.0;
	color = mix(vec4(0.7, 0, 0.7, Color.a), vec4(1.0, 0.8627, 0.0, Color.a), t);
}
// Soul Harvest enchantment
else if (colorInt.rgb == vec3(32, 193, 232)) {
	t = abs(fract(time / 2.0) - 0.5) * 2.0;
	color = mix(vec4(0.125, 0.7569, 0.9098, Color.a), vec4(1.0, 0.4118, 0.9216, Color.a), t);
}

// Text shadow
// Order is the same as above
if (colorInt.rgb == vec3(56, 31, 4)) {
	color = vec4(hsvToRgb(hue, 0.3, 0.9 * 0.25).rgb, Color.a);
}
else if (colorInt.rgb == vec3(63, 29, 52)) {
	color = vec4(hsvToRgb(hue, 1, 1 * 0.25).rgb, Color.a);
}
else if (colorInt.rgb == vec3(53, 0, 61)) {
	color = vec4((mix(vec4(0.7, 0, 0.7, Color.a), vec4(1, 0, 1, Color.a), t)).rgb * 0.25, Color.a);
}
else if (colorInt.rgb == vec3(63, 52, 9)) {
	t = abs(fract(time / 2.0) - 0.5) * 2.0;
	color = vec4((mix(vec4(0.7, 0, 0.7, Color.a), vec4(1.0, 0.8627, 0.0, Color.a), t)).rgb * 0.25, Color.a);
}

else if (colorInt.rgb == vec3(8, 48, 58)) {
	t = abs(fract(time / 2.0) - 0.5) * 2.0;
	color = vec4((mix(vec4(0.125, 0.7569, 0.9098, Color.a), vec4(1.0, 0.4118, 0.9216, Color.a), t)).rgb * 0.25, Color.a);
}
