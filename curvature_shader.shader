/*
Author: @November_Dev
Adds curvature to any mesh.

Assign this shader to a shadermaterial and set the shader parameters to following values:

Parameters:
CURVATURE (default: 5.0)
CURVATURE_ACTIVE (default: true)
CURVATURE_DISTANCE (default: 25.0)

BASE_TEX (Texture for mesh)

CAVEATS: This shader does not provide shadow mapping.

*/

shader_type spatial;
render_mode world_vertex_coords, depth_draw_alpha_prepass, cull_disabled, vertex_lighting;

uniform float CURVATURE;
uniform float CURVATURE_ACTIVE;
uniform float CURVATURE_DISTANCE;

uniform sampler2D BASE_TEX;

void vertex() {
	if(CURVATURE_ACTIVE == 1.0) {
		NORMAL = (WORLD_MATRIX * vec4(NORMAL, 0.0)).xyz;
		float dist = length(CAMERA_MATRIX[3].xyz - VERTEX) / CURVATURE_DISTANCE;
		VERTEX.y -= pow(dist, CURVATURE);
	}
}

void fragment() {
	vec4 tex = texture(BASE_TEX, UV);
	
	if(tex.a < 0.3) {
		discard;
	}
	
	ALBEDO = tex.rgb;
	ALPHA = tex.a;
}