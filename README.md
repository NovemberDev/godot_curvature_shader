# Godot curvature shader
This shader adds curvature to any mesh in the godot game engine.
You can download the shader over here or on the Godot Asset Library.

# Installation
Download and extract the .zip file and then drag the "curvature_shader.shader"
into your project.

Here is a list of steps to work with the shader:

1. Create a MeshInstance with a Plane, click the plane in the inspector and set the subdivision to 20x20
2. Assign a new ShaderMaterial, assign the "curvature_shader.shader"-File to the shader slot
3. Click the shader and set the shader parameters to these values:

CURVATURE (default: 5.0) - This property modifies the steepness of the falloff effect
CURVATURE_ACTIVE (default: true) - Tells the shader to activate curvature
CURVATURE_DISTANCE (default: 25.0) - The distance to start the curvature from the camera's position

BASE_TEX (Texture for mesh)

4. Scale the Plane to 100x100 or move far away with the camera to see the curvature in action!
