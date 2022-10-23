/**
 This file contains the functions/modules needed to create models of Chicago Coin score camwheels.
 Copyright (C) 2022  Charles (Null Builds)

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

use <score_camwheel.scad>;

// Thanks to Deverezieaux at the Vintage Arcade Preservation Society (VAPS) and at Pinside and
// cerebral3d (cerebral3d@gmail.com, https://www.artstation.com/pat_kesterson,
// https://www.twitch.tv/cerebral3d) for providing their own 3D model of the 190-517-X cam for me to
// reference.
CHICAGO_COIN_190_620_X = create_score_camwheel_specification(
    label_text                      = "190-620-X",
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
    index_hole_boss_diameter        = inches_to_millimeters(7/32),
    index_hole_boss_height          = inches_to_millimeters(5/64),
    index_hole_boss_fillet_radius   = 0,
    cam_specifications = [for(cam_angle = [0:2])
        create_cam_specification(
            size = inches_to_millimeters(5/32),
            start_angle = 120 * cam_angle - 61.5,
            engaged_span = 88,
            ease_in_span = 6,
            ease_out_span = 2
        )
    ]
);
