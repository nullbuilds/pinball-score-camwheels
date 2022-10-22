
/*
"Known dimensions":
  * One online sources claim the score motor shaft diameter is 3/16"
  * Various online sources demonstrate the shaft collar has an OD of 3/4" and a length of at least 1/2"
Estimates:
  * Pixel measurements estimate the cam minor diameter at 3"
  * Pixel measurements estimate the cam major diameter at 3 1/8"
*/

/* [Cam] */

// The diameter of the cam wheel (in)
CAM_WHEEL_DIAMETER_IN = 3.25; // [2.5:0.03125:6]

// The thickness of the cam wheel (in)
CAM_THICKNESS_IN = 0.09375; // [0.03125:0.03125:0.5]

// The distance the cam protrudes from the cam wheel (in)
CAM_SIZE_IN = 0.125; // [0.03125:0.03125:0.5]

// The distance between two cam wheels (in)
CAM_SPACING_IN = 0.5; // [0.5:0.03125:2]

/* [Collar] */

// The outer diameter of the shaft collar (in)
COLLAR_OUTER_DIAMETER_IN = 0.75; // [0.25:0.03125:2]

// The diameter of the motor shaft (in)
COLLAR_INNER_DIAMETER_IN = 0.1875; // [0.03125:0.03125:1]

// The radius of the fillet around the shaft collar (in)
COLLAR_FILLET_RADIUS_IN = 0.0625; // [0.03125:0.03125:0.25]

// The diameter of the hole for the shaft set screw (in); should be smaller than the major diameter of the intended thread size
COLLAR_SET_SCREW_THREAD_DIAMETER_IN = 0.15625; // [0.03125:0.03125:0.25]

/* [Bosses] */

// Boss Center Offset (in)
BOSS_CENTER_OFFSET_IN = 1.25; // [0.5:0.03125:3]

// Boss Outer Diameter (in)
BOSS_OUTER_DIAMETER_IN = 0.31250; // [0.03125:0.03125:0.5]

// Boss Inner Diameter (in)
BOSS_INNER_DIAMETER_IN = 0.1875; // [0.03125:0.03125:0.5]

// Boss Fillet Radius (in)
BOSS_FILLET_RADIUS_IN = 0.0625; // [0.03125:0.03125:0.25]

// Boss Retainer Outer Diameter (in)
BOSS_RETAINER_OUTER_DIAMETER_IN = 0.375; // [0.03125:0.03125:0.5]

// Boss Retainer Inner Diameter (in)
BOSS_RETAINER_INNER_DIAMETER_IN = 0.31250; // [0.03125:0.03125:0.5]

// Boss Retainer Height (in)
BOSS_RETAINER_HEIGHT_IN = 0.15625; // [0.03125:0.03125:0.5]

// Boss Retainer Fillet Radius (in)
BOSS_RETAINER_FILLET_RADIUS_IN = 0.0625; // [0.03125:0.03125:0.25]

/* [Printability] */

// Increases the thickness of the cam to encompass the boss retainers such that the back of the cam is flat and easier to print
OPTIMIZE_FOR_PRINTING = false;

/* [Render] */

$fa = 0.5;
$fs = 0.5;

function inches_to_millimeters(inches) = 25.4 * inches;
function clamp(value, min, max) = min(max(value, min), max);
function rgb(r, g, b) = [clamp(r, 0, 255), clamp(g, 0, 255), clamp(b, 0, 255)] / 255;
function polar_to_cartesian(theta, radius) = [radius * cos(theta), radius * sin(theta)];
function epsilon() = 0.01;

function cam_definition(size, start_angle, engaged_span, right_slope_span = 0, left_slope_span = 0) = [size, start_angle, engaged_span, right_slope_span, left_slope_span];
function cam_size(cam_definition) = cam_definition[0];
function cam_start_angle(cam_definition) = cam_definition[1];
function cam_engaged_span(cam_definition) = cam_definition[2];
function cam_right_slope_span(cam_definition) = cam_definition[3];
function cam_left_slope_span(cam_definition) = cam_definition[4];

function cam_wheel_diameter() = inches_to_millimeters(CAM_WHEEL_DIAMETER_IN);
function cam_thickness() = inches_to_millimeters(CAM_THICKNESS_IN);
function cam_spacing() = inches_to_millimeters(CAM_SPACING_IN);
function cam_color() = rgb(255, 135, 45);
function collar_outer_diameter() = inches_to_millimeters(COLLAR_OUTER_DIAMETER_IN);
function collar_inner_diameter() = inches_to_millimeters(COLLAR_INNER_DIAMETER_IN);
function collar_fillet_radius() = inches_to_millimeters(COLLAR_FILLET_RADIUS_IN);
function collar_set_screw_thread_diameter() = inches_to_millimeters(COLLAR_SET_SCREW_THREAD_DIAMETER_IN);
function boss_center_offset() = inches_to_millimeters(BOSS_CENTER_OFFSET_IN);
function boss_outer_diameter() = inches_to_millimeters(BOSS_OUTER_DIAMETER_IN);
function boss_inner_diameter() = inches_to_millimeters(BOSS_INNER_DIAMETER_IN);
function boss_fillet_radius() = inches_to_millimeters(BOSS_FILLET_RADIUS_IN);
function boss_retainer_outer_diameter() = inches_to_millimeters(BOSS_RETAINER_OUTER_DIAMETER_IN);
function boss_retainer_inner_diameter() = inches_to_millimeters(BOSS_RETAINER_INNER_DIAMETER_IN);
function boss_retainer_height() = inches_to_millimeters(BOSS_RETAINER_HEIGHT_IN);
function boss_retainer_fillet_radius() = inches_to_millimeters(BOSS_RETAINER_FILLET_RADIUS_IN);
function bosses() = 3;
function optimize_for_printing() = OPTIMIZE_FOR_PRINTING;

translate([0, 0, (cam_spacing() + cam_thickness()) * 0]) color(rgb(255, 135, 45)) score_camwheel_190_620_x();
//translate([0, 0, (cam_spacing() + cam_thickness()) * 1]) color(rgb(135, 255, 45)) score_camwheel_190_548_x();
//translate([0, 0, (cam_spacing() + cam_thickness()) * 2]) color(rgb(45, 135, 255)) score_camwheel_190_518_x();

module score_camwheel_190_620_x() {
  score_camwheel([
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 0 + 40 + 37.5, 90, 3, 0),
      
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 120 + 40 + 37.5, 90, 3, 0),
      
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 240 + 40 + 37.5, 90, 3, 0)
  ]);
}

module score_camwheel_190_518_x() {
  score_camwheel([
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 0 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 15 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 30 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 45 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 60 + 40, 3, 3, 0),
      
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 120 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 135 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 150 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 165 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 180 + 40, 3, 3, 0),
      
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 240 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 255 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 270 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 285 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 300 + 40, 3, 3, 0)
  ]);
}

module score_camwheel_190_548_x() {
  score_camwheel([
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 0 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 30 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 60 + 40, 3, 3, 0),
      
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 120 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 150 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 180 + 40, 3, 3, 0),
      
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 240 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 270 + 40, 3, 3, 0),
      cam_definition(inches_to_millimeters(CAM_SIZE_IN), 300 + 40, 3, 3, 0)
  ]);
}

module score_camwheel(cam_definitions) {
  cam_thickness = cam_thickness();
  cam_wheel_diameter = cam_wheel_diameter();
  cam_spacing = cam_spacing();
  collar_outer_diameter = collar_outer_diameter();
  collar_inner_diameter = collar_inner_diameter();
  collar_fillet_radius = collar_fillet_radius();
  boss_center_offset = boss_center_offset();
  boss_outer_diameter = boss_outer_diameter();
  boss_inner_diameter = boss_inner_diameter();
  boss_fillet_radius = boss_fillet_radius();
  boss_retainer_outer_diameter = boss_retainer_outer_diameter();
  boss_retainer_inner_diameter = boss_retainer_inner_diameter();
  boss_retainer_height = boss_retainer_height();
  boss_retainer_fillet_radius = boss_retainer_fillet_radius();
  collar_set_screw_thread_diameter = collar_set_screw_thread_diameter();
  optimize_for_printing = optimize_for_printing();
  bosses = bosses();
  
  color(cam_color()) {
    render() { // Needed to prevent visual artifacting due to the high convexity of the model
      difference() {
        union() {
          if (optimize_for_printing) {
            translate([0, 0, -boss_retainer_height]) {
              camwheel(thickness = cam_thickness + boss_retainer_height, wheel_diameter = cam_wheel_diameter, cam_definitions = cam_definitions);
            }
          } else {
            camwheel(thickness = cam_thickness, wheel_diameter = cam_wheel_diameter, cam_definitions = cam_definitions);
          }
          
          translate([0, 0, cam_thickness - epsilon()]) {
            // Collar
            cylinder_with_fillet(diameter = collar_outer_diameter, height = cam_spacing, fillet_radius = collar_fillet_radius);
            
            // Bosses
            for(boss = [1:bosses]) {
              translate(polar_to_cartesian(boss * (360 / bosses), boss_center_offset)) {
                cylinder_with_fillet(diameter = boss_outer_diameter, height = cam_spacing, fillet_radius = boss_fillet_radius);
              }
            }
          }
          
          translate([0, 0, epsilon()]) {
            // Boss retainers
            for(boss = [1:bosses]) {
              translate(polar_to_cartesian(boss * (360 / bosses), boss_center_offset)) {
                rotate([180, 0, 0]) {
                  cylinder_with_fillet(diameter = boss_retainer_outer_diameter, height = boss_retainer_height, fillet_radius = boss_retainer_fillet_radius);
                }
              }
            }
          }
        }
        
        // Axel hole
        cylinder(d = collar_inner_diameter, h = cam_spacing * 3, center = true);
        
        // Boss holes
        for(boss = [1:bosses]) {
          translate(polar_to_cartesian(boss * (360 / bosses), boss_center_offset)) {
            // Bolt holes
            cylinder(d = boss_inner_diameter, h = cam_spacing * 3, center = true);
            
            // Retainer holes
            translate([0, 0, -boss_retainer_height]) {
              cylinder(d = boss_retainer_inner_diameter, h = boss_retainer_height * 2, center = true);
            }
          }
        }
        
        // Set screw
        translate([-collar_outer_diameter / 2, 0, cam_spacing / 2 + cam_thickness]) {
          rotate([0, 90, 0]) {
            cylinder(d = collar_set_screw_thread_diameter, h = collar_outer_diameter, center = true);
          }
        }
      }
    }
  }
}

module camwheel(thickness, wheel_diameter, cam_definitions) {
  wheel_radius = wheel_diameter / 2;
  
  linear_extrude(height = thickness, slices = 1) {
    union() {
      circle(d = wheel_diameter);
      for(cam_definition = cam_definitions) {
        rotate([0, 0, cam_start_angle(cam_definition)]) {
          cam(
              minor_radius = wheel_radius,
              major_radius = wheel_radius + cam_size(cam_definition),
              engaged_span = cam_engaged_span(cam_definition),
              right_slope_span = cam_right_slope_span(cam_definition),
              left_slope_span = cam_left_slope_span(cam_definition)
          );
        }
      }
    }
  }
}

module cam(minor_radius, major_radius, engaged_span, right_slope_span = 0, left_slope_span = 0) {
  assert(right_slope_span >= 0, "right_slope_span must not be negative");
  assert(left_slope_span >= 0, "left_slope_span must not be negative");
  
  right_slope_points = [
    [0, 0],
    polar_to_cartesian(epsilon(), major_radius),
    polar_to_cartesian(-right_slope_span, minor_radius - epsilon())
  ];
  
  left_slope_points = [
    [0, 0],
    polar_to_cartesian(-epsilon() + engaged_span, major_radius),
    polar_to_cartesian(left_slope_span + engaged_span, minor_radius - epsilon())
  ];
  
  union() {
    pie_slice(radius = major_radius, start_angle = 0, end_angle = engaged_span);
    
    if(right_slope_span != 0) {
      polygon(points = right_slope_points);
    }
    
    if(left_slope_span != 0) {
      polygon(points = left_slope_points);
    }
  }
}

module cylinder_with_fillet(diameter, height, fillet_radius) {
  rotate([0, 0, 0]) {
    rotate_extrude() {
      difference() {
        square(size = [diameter / 2 + fillet_radius, height]);
        
        translate([diameter / 2 + fillet_radius, fillet_radius + epsilon()]) {
          hull() {
            circle(r = fillet_radius);
            translate([0, height]) circle(r = fillet_radius);
          }
        }
      }
    }
  }
}

module pie_slice(radius, start_angle, end_angle) {
  // Creating an accurate slice is difficult to do correctly while still respecting the $fa, $fs,
  // and $fn variables. There are libraries which accomplish this but including them just for this
  // functionality is not worth it. To get a decent slice, we first create a slice with an imperfect
  // arc of a larger size than we desire then intersect it with a circle. The circle will have the
  // correct points for the arc while the imperfect slice will set the angular bounds.
  
  assert(start_angle < end_angle, "The start and end angles must not be equal.");
  
  points = [
      [0, 0],
      for(angle = [start_angle : $fa : end_angle]) polar_to_cartesian(angle, radius * 2)
  ];
  
  intersection() {
    circle(r = radius);
    
    polygon(points = points);
  }
}
