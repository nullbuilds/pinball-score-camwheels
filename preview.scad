use <score_camwheel.scad>;
include<chicago_coin_190_517_X.scad>;

/* [Preview Options] */

// The cam model to display
part = "chicago_coin_190_517_X"; // [chicago_coin_190_517_X:Chicago Coin 190-517-X]

// Whether to remove features from the bottom of the camwheels to make them easier to reproduce on FDM 3D printers
optimize_for_fdm = false;

// How much detail to render the part in (at least Medium detail is recommended for 3D printing)
detail = "low"; // [low:Low,medium:Medium,high:High]

/* [Hidden] */

$fa = detail == "high" ? 0.1 : detail == "medium" ? 1 : 12;
$fs = detail == "high" ? 0.5 : detail == "medium" ? 1 : 2;

build_part();

/**
 * Displays the cam selected in OpenSCAD's customizer menu.
 */
module build_part() {
  if (part == "chicago_coin_190_517_X") {
    score_camwheel(specification = CHICAGO_COIN_190_517_X, optimize_for_fdm = optimize_for_fdm);
  }
}
