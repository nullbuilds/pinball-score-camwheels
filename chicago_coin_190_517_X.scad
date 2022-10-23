/**
 * TODO - FILE HEADER
 */

use <score_camwheel.scad>;

// Thanks to Deverezieaux at the Vintage Arcade Preservation Society (VAPS) and at Pinside and
// cerebral3d (cerebral3d@gmail.com, https://www.artstation.com/pat_kesterson,
// https://www.twitch.tv/cerebral3d) for providing their own 3D model of this cam for me to
// reference.
CHICAGO_COIN_190_517_X = create_score_camwheel_specification(
    model_name                      = "190-517-X",
    wheel_minor_diameter            = inches_to_millimeters(3 + 5/32),
    wheel_thickness                 = inches_to_millimeters(7/64),
    shaft_diameter                  = inches_to_millimeters(1/4),
    collar_outer_diameter           = inches_to_millimeters(1 + 3/32),
    collar_fillet_radius            = inches_to_millimeters(1/16),
    collar_height                   = inches_to_millimeters(1/2),
    collar_boss_diameter            = inches_to_millimeters(31/64),
    collar_boss_height              = inches_to_millimeters(5/64),
    collar_boss_recess_depth        = inches_to_millimeters(3/32),
    collar_boss_recess_diameter     = inches_to_millimeters(1/2),
    set_screw_hole_diameter         = inches_to_millimeters(17/128),
    set_screw_hole_offset           = inches_to_millimeters(7/32),
    support_height                  = inches_to_millimeters(37/64),
    support_base_diameter           = inches_to_millimeters(11/32),
    support_tip_diameter            = inches_to_millimeters(9/32),
    support_fillet_radius           = inches_to_millimeters(1/16),
    support_inner_diameter          = inches_to_millimeters(5/32),
    support_spacing                 = inches_to_millimeters(1 + 1/4),
    support_retainer_outer_diameter = inches_to_millimeters(13/32),
    support_retainer_height         = inches_to_millimeters(1/8),
    support_retainer_fillet_radius  = inches_to_millimeters(1/16),
    support_recess_depth            = inches_to_millimeters(5/64),
    support_recess_diameter         = inches_to_millimeters(11/32),
    index_hole_diameter             = inches_to_millimeters(9/64),
    index_hole_spacing              = inches_to_millimeters(43/64),
    index_hole_boss_diameter        = inches_to_millimeters(8/32),
    index_hole_boss_height          = inches_to_millimeters(5/64),
    index_hole_boss_fillet_radius   = 0,
    cam_specifications = [for(angle = [0:2])
        create_cam_specification(
            size = inches_to_millimeters(5/32),
            start_angle = 120 * angle - 16.5,
            engaged_span = 102,
            ease_in_span = 6,
            ease_out_span = 3
        )
    ]
);
