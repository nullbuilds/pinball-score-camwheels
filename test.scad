/**
 * TODO - FILE HEADER
 */


// TODO - REMOVE

$fa = 0.1;

// Spec for 190-517-X
spec = create_score_camwheel_specification(
    wheel_minor_diameter = inches_to_millimeters(3 + 5/32),
    wheel_thickness = inches_to_millimeters(7/64),
    shaft_diameter = inches_to_millimeters(1/4),
    collar_outer_diameter = inches_to_millimeters(1 + 3/32),
    collar_fillet_radius = inches_to_millimeters(1/16),
    collar_height = inches_to_millimeters(1/2),
    collar_boss_diameter = inches_to_millimeters(31/64),
    collar_boss_height = inches_to_millimeters(5/64),
    collar_boss_recess_depth = 0, // TODO
    collar_boss_recess_diameter = 0, // TODO
    set_screw_hole_diameter = 0, // TODO
    set_screw_hole_offset = 0, // TODO
    support_height = inches_to_millimeters(37/64),
    support_base_diameter = inches_to_millimeters(11/32),
    support_tip_diameter = inches_to_millimeters(9/32),
    support_fillet_radius = inches_to_millimeters(1/16),
    support_inner_diameter = inches_to_millimeters(5/32),
    support_spacing = inches_to_millimeters(1 + 1/4),
    support_retainer_outer_diameter = 0, // TODO
    support_retainer_inner_diameter = 0, // TODO
    support_retainer_height = 0, // TODO
    support_retainer_fillet_radius = 0, // TODO
    support_recess_depth = 0, // TODO
    support_recess_diameter = 0, // TODO
    index_hole_diameter = 0, // TODO
    index_hole_spacing = 0, // TODO
    index_hole_boss_diameter = 0, // TODO
    index_hole_boss_height = 0, // TODO
    index_hole_boss_fillet_radius = 0, // TODO
    cam_specifications = [for(angle = [0:2])
        create_cam_specification(
            size = inches_to_millimeters(5/32),
            start_angle = 120 * angle,
            engaged_span = 102,
            ease_in_span = 6,
            ease_out_span = 3
        )
    ]
);

score_camwheel(specification = spec);


/**
 * Converts a value in inches to millimeters.
 * 
 * @param the value in inches
 * @return the value in mm
 */
function inches_to_millimeters(inches) = 25.4 * inches;

/**
 * Converts a point in polar coordinates to cartesian coordinates.
 * 
 * @param theta the angle component of the polar coordinate in degrees
 * @param radius the length component of the polar coordinate
 * @return the coordinates in cartesian space as a vector
 */
function polar_to_cartesian(theta, radius) = [radius * cos(theta), radius * sin(theta)];

/**
 * Returns a imperceptibly small number used by Boolean operations to ensure all difference and
 * union operations slightly overlap to prevent invisible thin walls and imperceptible gaps
 * respectively.
 * 
 * @return the epsilon amount in mm
 */
function epsilon() = 0.01;

/**
 * Gets the index of a specific parameter within a specification vector.
 * 
 * @param specification the specification to check
 * @param parameter_name the name of the parameter to search for
 * @return the index of the parameter in the specification vector
 */
function get_specification_parameter_index(specification, parameter_name) = search([parameter_name], specification)[0];

/**
 * Gets the argument for a specific parameter in the given specification.
 * 
 * @param specification the specification to check
 * @param parameter_name the name of the parameter to fetch the argument for
 * @return the argument (type is parameter-specific)
 */
function get_specification_argument(specification, parameter_name) = specification[get_specification_parameter_index(specification, parameter_name)][1];

/**
 * The name of the camwheel minor diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_wheel_minor_diameter_parameter_name() = "wheel_minor_diameter";

/**
 * The name of the camwheel thickness parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_wheel_thickness_parameter_name() = "wheel_thickness";

/**
 * The name of the camwheel shaft diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_shaft_diameter_parameter_name() = "shaft_diameter";

/**
 * The name of the camwheel collar outer diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_collar_outer_diameter_parameter_name() = "collar_outer_diameter";

/**
 * The name of the camwheel collar fillet radius parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_collar_fillet_radius_parameter_name() = "collar_fillet_radius";

/**
 * The name of the camwheel collar height parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_collar_height_parameter_name() = "collar_height";

/**
 * The name of the camwheel collar boss diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_collar_boss_diameter_parameter_name() = "collar_boss_diameter";

/**
 * The name of the camwheel collar boss height parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_collar_boss_height_parameter_name() = "collar_boss_height";

/**
 * The name of the camwheel collar boss recess depth parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_collar_boss_recess_depth_parameter_name() = "collar_boss_recess_depth";

/**
 * The name of the camwheel collar boss recess diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_collar_boss_recess_diameter_parameter_name() = "collar_boss_recess_diameter";

/**
 * The name of the camwheel set screw diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_set_screw_hole_diameter_parameter_name() = "set_screw_hole_diameter";

/**
 * The name of the camwheel set screw hole offset parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_set_screw_hole_offset_parameter_name() = "set_screw_hole_offset";

/**
 * The name of the camwheel support height parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_height_parameter_name() = "support_height";

/**
 * The name of the camwheel support base diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_base_diameter_parameter_name() = "support_base_diameter";

/**
 * The name of the camwheel support tip diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_tip_diameter_parameter_name() = "support_tip_diameter";

/**
 * The name of the camwheel support fillet radius parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_fillet_radius_parameter_name() = "support_fillet_radius";

/**
 * The name of the camwheel support inner diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_inner_diameter_parameter_name() = "support_inner_diameter";

/**
 * The name of the camwheel support spacing parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_spacing_parameter_name() = "support_spacing";

/**
 * The name of the camwheel support retainer outer diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_retainer_outer_diameter_parameter_name() = "support_retainer_outer_diameter";

/**
 * The name of the camwheel support retainer inner diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_retainer_inner_diameter_parameter_name() = "support_retainer_inner_diameter";

/**
 * The name of the camwheel support retainer height parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_retainer_height_parameter_name() = "support_retainer_height";

/**
 * The name of the camwheel support retainer fillet radius parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_retainer_fillet_radius_parameter_name() = "support_retainer_fillet_radius";

/**
 * The name of the camwheel support recess depth parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_recess_depth_parameter_name() = "support_recess_depth";

/**
 * The name of the camwheel support recess diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_support_recess_diameter_parameter_name() = "support_recess_diameter";

/**
 * The name of the camwheel index hole diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_index_hole_diameter_parameter_name() = "index_hole_diameter";

/**
 * The name of the camwheel index hole spacing parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_index_hole_spacing_parameter_name() = "index_hole_spacing";

/**
 * The name of the camwheel index hole boss diameter parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_index_hole_boss_diameter_parameter_name() = "index_hole_boss_diameter";

/**
 * The name of the camwheel index hole boss height parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_index_hole_boss_height_parameter_name() = "index_hole_boss_height";

/**
 * The name of the camwheel index hole boss fillet radius parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_index_hole_boss_fillet_radius_parameter_name() = "index_hole_boss_fillet_radius";

/**
 * The name of the camwheel cam specifications parameter in a camwheel specification.
 * 
 * @return the parameter name
 */
function score_camwheel_specification_cam_specifications_parameter_name() = "cam_specifications";

/**
 * Creates a new score camwheel specification.
 * 
 * @param wheel_minor_diameter the diameter of the camwheel when it is not engaged in mm
 * @param wheel_thickness the thickness of the camwheel in mm
 * @param shaft_diameter the diameter of the score motor shaft in mm
 * @param collar_outer_diameter the outside diameter of the motor shaft collar in mm
 * @param collar_fillet_radius the radius of the shaft collar's fillet in mm
 * @param collar_height the distance between two camwheels in mm
 * @param collar_boss_diameter the diameter of boss at the end of the shaft collar in mm
 * @param collar_boss_height the height of boss at the end of the shaft collar in mm
 * @param collar_boss_recess_depth the depth of the hole in the camwheel to fit the shaft collar
 *   boss in mm
 * @param collar_boss_recess_diameter the diameter of the hole in the camwheel to fit the shaft
 *   collar boss in mm
 * @param set_screw_hole_diameter the size of the hole for the shaft collar set screws in mm
 * @param set_screw_hole_offset the distance from the top of the shaft collar to the center of the
 *   set screw hole in mm
 * @param support_height the height of each support post in mm
 * @param support_base_diameter the diameter of the base of each support post (not including the
 *   fillet) in mm
 * @param support_tip_diameter the diameter of the tip of each support post in mm
 * @param support_fillet_radius the radius of the fillet at each support's base in mm
 * @param support_inner_diameter the inner diameter of each support post in mm
 * @param support_spacing the distance from the center of the score motor shaft to the center of
 *   each support post in mm
 * @param support_retainer_outer_diameter the outer diameter of the ring that holds each support
 *   post (not including the fillet) in mm
 * @param support_retainer_inner_diameter the inner diameter of the ring that holds each support
 *   post in mm
 * @param support_retainer_height the height of the ring that holds each support post in mm
 * @param support_retainer_fillet_radius the radius of the fillet at the base of each support
 *   retainer in mm
 * @param support_recess_depth the depth of the hole in the back of the camwheel for each support
 *   post to sit (not including the retainer height) in mm
 * @param support_recess_diameter the diameter of the hole in the back of the camwheel for each
 *   support post to sit in mm
 * @param index_hole_diameter the diameter of the index hole (4th hole on the cam) in mm
 * @param index_hole_spacing the distance from the center of the score motor shaft to the center of
 *   the index hole in mm
 * @param index_hole_boss_diameter the outer diameter of the boss around the index hole in mm
 * @param index_hole_boss_height the height of the boss around the index hole in mm
 * @param index_hole_boss_fillet_radius the radius of the fillet around the index hole boss in mm
 * @param cam_specifications a list of specifications for each cam on the wheel
 */
function create_score_camwheel_specification(
    wheel_minor_diameter,
    wheel_thickness,
    shaft_diameter,
    collar_outer_diameter,
    collar_fillet_radius,
    collar_height,
    collar_boss_diameter,
    collar_boss_height,
    collar_boss_recess_depth,
    collar_boss_recess_diameter,
    set_screw_hole_diameter,
    set_screw_hole_offset,
    support_height,
    support_base_diameter,
    support_tip_diameter,
    support_fillet_radius,
    support_inner_diameter,
    support_spacing,
    support_retainer_outer_diameter,
    support_retainer_inner_diameter,
    support_retainer_height,
    support_retainer_fillet_radius,
    support_recess_depth,
    support_recess_diameter,
    index_hole_diameter,
    index_hole_spacing,
    index_hole_boss_diameter,
    index_hole_boss_height,
    index_hole_boss_fillet_radius,
    cam_specifications) = [
  [score_camwheel_specification_wheel_minor_diameter_parameter_name(), wheel_minor_diameter],
  [score_camwheel_specification_wheel_thickness_parameter_name(), wheel_thickness],
  [score_camwheel_specification_shaft_diameter_parameter_name(), shaft_diameter],
  [score_camwheel_specification_collar_outer_diameter_parameter_name(), collar_outer_diameter],
  [score_camwheel_specification_collar_fillet_radius_parameter_name(), collar_fillet_radius],
  [score_camwheel_specification_collar_height_parameter_name(), collar_height],
  [score_camwheel_specification_collar_boss_diameter_parameter_name(), collar_boss_diameter],
  [score_camwheel_specification_collar_boss_height_parameter_name(), collar_boss_height],
  [score_camwheel_specification_collar_boss_recess_depth_parameter_name(), collar_boss_recess_depth],
  [score_camwheel_specification_collar_boss_recess_diameter_parameter_name(), collar_boss_recess_diameter],
  [score_camwheel_specification_set_screw_hole_diameter_parameter_name(), set_screw_hole_diameter],
  [score_camwheel_specification_set_screw_hole_offset_parameter_name(), set_screw_hole_offset],
  [score_camwheel_specification_support_height_parameter_name(), support_height],
  [score_camwheel_specification_support_base_diameter_parameter_name(), support_base_diameter],
  [score_camwheel_specification_support_tip_diameter_parameter_name(), support_tip_diameter],
  [score_camwheel_specification_support_fillet_radius_parameter_name(), support_fillet_radius],
  [score_camwheel_specification_support_inner_diameter_parameter_name(), support_inner_diameter],
  [score_camwheel_specification_support_spacing_parameter_name(), support_spacing],
  [score_camwheel_specification_support_retainer_outer_diameter_parameter_name(), support_retainer_outer_diameter],
  [score_camwheel_specification_support_retainer_inner_diameter_parameter_name(), support_retainer_inner_diameter],
  [score_camwheel_specification_support_retainer_height_parameter_name(), support_retainer_height],
  [score_camwheel_specification_support_retainer_fillet_radius_parameter_name(), support_retainer_fillet_radius],
  [score_camwheel_specification_support_recess_depth_parameter_name(), support_recess_depth],
  [score_camwheel_specification_support_recess_diameter_parameter_name(), support_recess_diameter],
  [score_camwheel_specification_index_hole_diameter_parameter_name(), index_hole_diameter],
  [score_camwheel_specification_index_hole_spacing_parameter_name(), index_hole_spacing],
  [score_camwheel_specification_index_hole_boss_diameter_parameter_name(), index_hole_boss_diameter],
  [score_camwheel_specification_index_hole_boss_height_parameter_name(), index_hole_boss_height],
  [score_camwheel_specification_index_hole_boss_fillet_radius_parameter_name(), index_hole_boss_fillet_radius],
  [score_camwheel_specification_cam_specifications_parameter_name(), cam_specifications]
];

/**
 * The name of the cam size parameter in a cam specification.
 * 
 * @return the parameter name
 */
function cam_specification_cam_size_parameter_name() = "cam_size";

/**
 * The name of the cam start angle parameter in a cam specification.
 * 
 * @return the parameter name
 */
function cam_specification_cam_start_angle_parameter_name() = "cam_start_angle";

/**
 * The name of the cam engaged span parameter in a cam specification.
 * 
 * @return the parameter name
 */
function cam_specification_cam_engaged_span_parameter_name() = "cam_engaged_span";

/**
 * The name of the cam ease in span parameter in a cam specification.
 * 
 * @return the parameter name
 */
function cam_specification_cam_ease_in_span_parameter_name() = "cam_ease_in_span";

/**
 * The name of the cam ease out span parameter in a cam specification.
 * 
 * @return the parameter name
 */
function cam_specification_cam_ease_out_span_parameter_name() = "cam_ease_out_span";

/**
 * Creates a new cam specification.
 * 
 * @param cam_size the distance the cam protrudes in mm
 * @param cam_start_angle the angle at which the cam is first fully engaged on the cam wheel in
 *   degrees
 * @param cam_engaged_span the number of degrees for which the cam is fully engaged
 * @param cam_ease_in_span for how many degrees before the cam's engaged span has started that a
 *   slope will be created to ease into the engaged position
 * @param cam_ease_out_span for how many degrees after the cam's engaged span has ended that a slope
 *   will be created to ease back to unengaged position
 * @return the specification
 */
function create_cam_specification(size, start_angle, engaged_span, ease_in_span, ease_out_span) = [
  [cam_specification_cam_size_parameter_name(), size],
  [cam_specification_cam_start_angle_parameter_name(), start_angle],
  [cam_specification_cam_engaged_span_parameter_name(), engaged_span],
  [cam_specification_cam_ease_in_span_parameter_name(), ease_in_span],
  [cam_specification_cam_ease_out_span_parameter_name(), ease_out_span]
];

/**
 * Creates a score camwheel from the given specification.
 * 
 * @param specification the specification of the score camwheel
 * @param optimize_for_fdm whether to flatten the back of the cam for easier production on an FDM
 *   3D printer (default = false)
 */
module score_camwheel(specification, optimize_for_printing = false) {
  wheel_minor_diameter = get_specification_argument(specification, score_camwheel_specification_wheel_minor_diameter_parameter_name());
  wheel_thickness = get_specification_argument(specification, score_camwheel_specification_wheel_thickness_parameter_name());
  shaft_diameter = get_specification_argument(specification, score_camwheel_specification_shaft_diameter_parameter_name());
  collar_outer_diameter = get_specification_argument(specification, score_camwheel_specification_collar_outer_diameter_parameter_name());
  collar_height = get_specification_argument(specification, score_camwheel_specification_collar_height_parameter_name());
  collar_fillet_radius = get_specification_argument(specification, score_camwheel_specification_collar_fillet_radius_parameter_name());
  collar_boss_diameter = get_specification_argument(specification, score_camwheel_specification_collar_boss_diameter_parameter_name());
  collar_boss_height = get_specification_argument(specification, score_camwheel_specification_collar_boss_height_parameter_name());
  support_height = get_specification_argument(specification, score_camwheel_specification_support_height_parameter_name());
  support_base_diameter = get_specification_argument(specification, score_camwheel_specification_support_base_diameter_parameter_name());
  support_tip_diameter = get_specification_argument(specification, score_camwheel_specification_support_tip_diameter_parameter_name());
  support_fillet_radius = get_specification_argument(specification, score_camwheel_specification_support_fillet_radius_parameter_name());
  support_inner_diameter = get_specification_argument(specification, score_camwheel_specification_support_inner_diameter_parameter_name());
  support_spacing = get_specification_argument(specification, score_camwheel_specification_support_spacing_parameter_name());
  cam_specifications = get_specification_argument(specification, score_camwheel_specification_cam_specifications_parameter_name());
  total_height = wheel_thickness + max(collar_height + collar_boss_height, support_height);
  supports = 3; // Hard-coded for now since I am not currently aware of any camwheel without 3 supports
  
  assert(wheel_minor_diameter > 0, "the camwheel minor diameter must be greater than zero");
  assert(wheel_thickness > 0, "the camwheel thickness must be greater than zero");
  assert(shaft_diameter > 0, "the camwheel shaft diameter must be greater than zero");
  assert(collar_outer_diameter > 0, "the camwheel collar outer diameter must be greater than zero");
  assert(collar_outer_diameter > shaft_diameter, "the camwheel collar outer diameter must be greater than the shaft diameter");
  assert(collar_height > 0, "the camwheel collar height must be greater than zero");
  assert(collar_fillet_radius >= 0, "the camwheel collar fillet radius must not be negative");
  assert(collar_fillet_radius <= collar_height, "the camwheel collar fillet radius must not be larger than the height of the collar");
  assert(collar_boss_diameter >= 0, "the camwheel collar boss diameter must not be negative");
  assert(collar_boss_diameter <= collar_outer_diameter, "the camwheel collar boss diameter must not be larger than the collar outer diameter");
  assert(collar_boss_diameter == 0 || collar_boss_diameter > shaft_diameter, "the camwheel collar boss diameter must either be zero or be greater than the shaft diameter");
  assert(collar_boss_height >= 0, "the camwheel collar boss height must not be negative");
  assert(support_height > 0, "the camwheel support height must be greater than zero");
  assert(support_base_diameter > 0, "the camwheel support base diameter must be greater than zero");
  assert(support_tip_diameter <= support_base_diameter, "the camwheel support tip diameter must be no more than the base diameter");
  assert(support_tip_diameter > 0, "the camwheel support tip diameter must be greater than zero");
  assert(support_fillet_radius >= 0, "the camwheel support fillet radius must not be negative");
  assert(support_fillet_radius <= support_height, "the camwheel support fillet radius must not be larger than the support height");
  assert(support_inner_diameter > 0, "the camwheel support inner diameter must be greater than zero");
  assert(support_inner_diameter < support_tip_diameter, "the camwheel support inner diameter must be less than the support tip diameter");
  assert(support_spacing >= (support_base_diameter + collar_outer_diameter) / 2, "the camwheel support spacing must be at least as long as the combined radiuses of the support and shaft collar");
  assert(support_spacing <= wheel_minor_diameter - support_base_diameter / 2 - support_fillet_radius, "the camwheel support spacing must be no more than the radius of the camwheel minor diameter minus the radius of the support and its fillet");
  
  support_positions = [
      for(support = [1:1:supports])
        polar_to_cartesian(theta = support * (360 / supports), radius = support_spacing)
  ];
  
  difference() {
    union() {
      // Camwheel
      linear_extrude(height = wheel_thickness, slices = 1) {
        camwheel(
            wheel_minor_diameter = wheel_minor_diameter,
            cam_specifications = cam_specifications
        );
      }
      
      translate([0, 0, wheel_thickness - epsilon()]) {
        // Shaft collar
        cylinder_with_fillet(
            base_diameter = collar_outer_diameter,
            top_diameter = collar_outer_diameter,
            height = collar_height,
            fillet_radius = collar_fillet_radius
        );
        
        // Shaft collar boss
        translate([0, 0, collar_height - epsilon()]) {
          cylinder(d = collar_boss_diameter, h = collar_boss_height);
        }
        
        // Support posts
        for(support_position = support_positions) {
          translate(support_position) {
            cylinder_with_fillet(
                base_diameter = support_base_diameter,
                top_diameter = support_tip_diameter,
                height = support_height,
                fillet_radius = support_fillet_radius
            );
          }
        }
      }
    }
    
    // Shaft
    cylinder(d = shaft_diameter, h = total_height * 2.5, center = true);
    
    // Support holes
    for(support_position = support_positions) {
      translate(support_position) {
        cylinder(d = support_inner_diameter, h = total_height * 2.5, center = true);
      }
    }
  }
}

/**
 * Creates a cylinder with an optional taper and/or fillet.
 * 
 * @param base_diameter the diameter of the cylinder's base in mm (not including the fillet)
 * @param top_diameter the diameter of the cylinder's top in mm
 * @param height the height of the cylinder in mm
 * @param fillet_radius the radius of the base fillet in mm
 */
module cylinder_with_fillet(base_diameter, top_diameter, height, fillet_radius) {
  assert(base_diameter > 0, "the base diameter must be greater than zero");
  assert(top_diameter > 0, "the top diameter must be greater than zero");
  assert(height > 0, "the height must be greater than zero");
  assert(fillet_radius >= 0, "the fillet radius must not be negative");
  
  base_radius = base_diameter / 2;
  top_radius = top_diameter / 2;
  
  // The fillet would be simple if the cylinder were not tapered but since it is the arc required
  // for the fillet is not immediately obvious. The tangent-tangent-radius theorem (equation?) is
  // required to compute the position and span of the fillet's arc.
  taper_angle = atan2(x = height, y = top_radius - base_radius);
  fillet_arc_span = 180 - taper_angle;
  fillet_distance = fillet_radius / sin(taper_angle / 2);
  fillet_relative_offset = polar_to_cartesian(theta = taper_angle / 2, radius = fillet_distance);
  fillet_offset = fillet_relative_offset + [base_radius, 0];
  
  // The fillet is generated with a negative span to ensure the points are in the correct order for
  // the polygon. If the fillet radius is zero then return an empty array instead.
  fillet_arc_points = fillet_radius > 0
      ? arc(
          radius = fillet_radius,
          start_angle = 270,
          end_angle = 270 - fillet_arc_span,
          offset = fillet_offset
      )
      : [];
  
  points = concat_vectors([
      [[0, 0]],
      [[base_radius, 0]],
      fillet_arc_points,
      [[top_radius, height]],
      [[0, height]]
  ]);
  
  rotate_extrude() {
    polygon(points = points);
  }
}

/**
 * Creates a 2D camwheel intended for clockwise rotation.
 * 
 * <p>Note small ridges may be created at the start of a cam's ease in and end of its ease out if
 * high values of $fa are used. These ridges technically exist at all values of $fa but are unlikely
 * to be an issue at low $fa values when the cam is printed.
 * 
 * @param wheel_minor_diameter the diameter of the wheel not including the size of any cams in mm
 * @param cam_specifications an array of specifications for each cam on the wheel
 */
module camwheel(wheel_minor_diameter, cam_specifications) {
  assert(wheel_minor_diameter > 0, "the diameter of a camwheel must be greater than 0");
  
  wheel_minor_radius = wheel_minor_diameter / 2;
  
  union() {
    circle(d = wheel_minor_diameter);
    
    for(cam_specification = cam_specifications) {
      cam_start_angle = get_specification_argument(cam_specification, cam_specification_cam_start_angle_parameter_name());
      cam_size = get_specification_argument(cam_specification, cam_specification_cam_size_parameter_name());
      engaged_span = get_specification_argument(cam_specification, cam_specification_cam_engaged_span_parameter_name());
      ease_in_span = get_specification_argument(cam_specification, cam_specification_cam_ease_in_span_parameter_name());
      ease_out_span = get_specification_argument(cam_specification, cam_specification_cam_ease_out_span_parameter_name());
      
      rotate([0, 0, cam_start_angle]) {
        cam(
            cam_inner_radius = wheel_minor_radius - epsilon(),
            cam_outer_radius = wheel_minor_radius + cam_size,
            engaged_span = engaged_span,
            ease_in_span = ease_in_span,
            ease_out_span = ease_out_span
        );
      }
    }
  }
}

/**
 * Creates a single 2D cam of a cam wheel.
 * 
 * @param cam_inner_radius the radius of the cam where it meets with the cam wheel in mm
 * @param cam_outer_radius the radius of the cam where it is fully engaged in mm
 * @param engaged_span for how many degrees of the wheel the cam is engaged (fully protruding from
 *   the wheel) in degrees
 * @param ease_in_span for how many degrees before the cam's engaged span begins that a slope will
 *   be created to ease into the engaged position
 * @param ease_out_span for how many degrees after the cam's engaged span has ended that a slope
 *   will be created to ease out of the engaged position
 */
module cam(cam_inner_radius, cam_outer_radius, engaged_span, ease_in_span, ease_out_span) {
  assert(cam_outer_radius > cam_inner_radius, "the outer radius of a cam must be greater than its inner radius");
  
  assert(engaged_span > 0, "the engaged span of a cam must be greater than 0 degrees");
  assert(engaged_span <= 360, "the engaged span of a cam must not exceed 360 degrees");
  assert(ease_in_span >= 0, "ease_in_span must not be negative");
  assert(ease_out_span >= 0, "ease_out_span must not be negative");
  
  outer_arc = arc(
      radius = cam_outer_radius,
      start_angle = 0,
      end_angle = engaged_span
  );
  
  ease_in_start = polar_to_cartesian(theta = -ease_in_span, radius = cam_inner_radius);
  ease_out_end = polar_to_cartesian(theta = engaged_span + ease_out_span, radius = cam_inner_radius);
  
  // Add [0, 0] as a point to guarantee the cam will fully intersect with its wheel at high values
  // of $fa.
  points = concat_vectors([outer_arc, [ease_out_end, [0, 0], ease_in_start]]);
  polygon(points = points);
}

/**
 * Creates a vector of points forming a 2D arc.
 * 
 * <p>Creating an accurate arc is difficult to do correctly while still respecting the $fa, $fs, and
 * $fn variables. There are libraries which accomplish this but including them just for this
 * functionality is not worth it. The inaccuracy of this method is acceptable for these purposes.
 * 
 * @param radius the radius of the arc in mm
 * @param start_angle the angle at which the arc starts in degrees
 * @param end_angle the angle at which the arc ends in degrees
 * @param offset how far to offset the center of the arc's radius (default = [0, 0])
 * @return the points forming the arc
 */
function arc(radius, start_angle, end_angle, offset = [0, 0]) =
    assert(radius > 0, "the radius must be greater than zero")
    assert(start_angle != end_angle, "the start angle and end angles must not be the same")
    
    let(
        span = abs(end_angle - start_angle),
        direction = sign(end_angle - start_angle),
        fragment_angle = optimal_fragment_angle(span) * direction
    )
    
    [for(angle = [start_angle : fragment_angle : end_angle])
        polar_to_cartesian(angle, radius) + offset];

/**
 * Computes the optimum angle of each fragment in a curve based on the value of $fa.
 * 
 * <p>The returned value is guaranteed to divide into the span without a remainder. Note that $fs
 *and $fn are ignored for simplicity sake.
 * 
 * @param span the span of the curve in degrees
 * @return the optimum fragment angle
 */
function optimal_fragment_angle(span) =
    assert(span > 0, "span must be greater than zero")
    let(
        maximum_fragments = span / $fa,
        whole_fragments = floor(maximum_fragments),
        remainder_fragment = maximum_fragments - whole_fragments,
        smallest_fragment_angle = $fa + (($fa / max(whole_fragments, 1)) * remainder_fragment),
        optimal_fragment_angle = smallest_fragment_angle != 0 ? smallest_fragment_angle : $fa
    )
    optimal_fragment_angle;

/**
 * Concatenates an arbitrary number of vectors.
 * 
 * @param vectors a vector containing the vectors to concatenate
 * @return a vector containing the elements in the order they were provided
 */
function concat_vectors(vectors) = [for(vector_of_vectors = vectors, e = vector_of_vectors) e];
