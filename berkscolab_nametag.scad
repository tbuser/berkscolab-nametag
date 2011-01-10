origin = [5.85,4.15];

module berks(height, scale=20, color=[0,0,0]) {
	color(color) {
		linear_extrude(file="berks.dxf", layer="0", height=height, scale=scale, origin=origin);
	}
}

module colab(height, scale=20, color=[100/255, 190/255, 50/255]) {
	color(color) {
		linear_extrude(file="colab.dxf", layer="0", height=height, scale=scale, origin=origin);
	}
}

module gear(height, scale=20, color=[100/255, 190/255, 50/255]) {
	color(color) {
		linear_extrude(file="gear.dxf", layer="0", height=height, scale=scale, origin=origin);
	}
}

module ellipse(height, scale=20, color=[1, 1, 1]) {
	color(color) {
		linear_extrude(file="ellipse.dxf", layer="0", height=height, scale=scale, origin=origin);
	}
}

module name(height, scale=20, color=[0, 0, 0]) {
	color(color) {
		linear_extrude(file="name_email.dxf", layer="0", height=height, scale=scale, origin=origin, convexity=50);
	}
}

module simple_tag() {
	translate([0, 0, 5]) {
		difference() {
			union() {
				translate([0, 0, -5]) ellipse(5);

				gear(2);
			}
			translate([0, 0, -2]) berks(4);
			translate([0, 0, -2]) colab(4);
			translate([0, 0, -4]) rotate([0, 180, 0]) name(2);
		}
	}
}

rotate([0, 0, 45]) simple_tag();
