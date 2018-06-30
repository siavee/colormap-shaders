#include <metal_stdlib>
using namespace metal;

namespace colormap {
namespace IDL {
namespace CB_Reds {

float colormap_red(float x) {
	if (x < 0.7109796106815338) {
		return (((-9.58108609441667E+02 * x + 8.89060620527714E+02) * x - 2.42747192807495E+02) * x + 9.97906310565304E+00) * x + 2.54641252219400E+02;
	} else {
		return ((-9.93985373158007E+02 * x + 1.96524174972026E+03) * x - 1.54068189744713E+03) * x + 6.72947219603874E+02;
	}
}

float colormap_green(float x) {
	if (x < 0.7679868638515472) {
		return ((((2.66433610509335E+03 * x - 5.05488641558587E+03) * x + 3.69542277742922E+03) * x - 1.36931912848446E+03) * x - 5.12669839132577E+01) * x + 2.41929417192750E+02;
	} else {
		return (-2.11738816337853E+02 * x + 2.78333107855597E+02) * x - 6.66958752910143E+01;
	}
}

float colormap_blue(float x) {
	return (((-6.83475279000297E+02 * x + 1.55250107598171E+03) * x - 9.25799053039285E+02) * x - 1.67380812671938E+02) * x + 2.37145226675143E+02;
}

float4 colormap(float x) {
	float r = clamp(colormap_red(x) / 255.0, 0.0, 1.0);
	float g = clamp(colormap_green(x) / 255.0, 0.0, 1.0);
	float b = clamp(colormap_blue(x) / 255.0, 0.0, 1.0);
	return float4(r, g, b, 1.0);
}

} // namespace CB_Reds
} // namespace IDL
} // namespace colormap
