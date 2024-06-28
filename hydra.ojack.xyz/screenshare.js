// ------------------------------------------------------------------------- //
// Title: screenshare.js
//
// Date: 2024-05-30
// Unix: 1717089397
// Author: the_virtual_machine
// Licence: CC BY-SA 4.0 - creativecommons.org/licenses/by-sa/4.0
//
// Description: Hydra code to share your screen and add some effects.
// Run with CTRL+SHIFT+ENTER
// ------------------------------------------------------------------------- //

// Set higher resolution (e.g., Full HD 1920x1080)
// setResolution(2880, 1800)
// setResolution(1920, 1080)

// Initialize the video capture
s0.initScreen()

// Each variation below uses the screen capture as the visual source. Try each one by uncommenting!
// Run 0 if you want to reset it to a normal screenshare without effects.

// // 0 - Reset
// src(s0)
//   .out(o0)


// // 1 - Waves
src(s0)
  .modulate(noise(3), 0.3)
  .out(o0)


// // 2 - Glitch Effect
// src(s0)
//   .modulate(noise(5), 0.1)
//   .diff(src(s0).scale(1.01))
//   .out(o0)


// // 3 - Pixelation
// src(s0)
//   .pixelate(20, 20)
//   .out(o0)


// Output the visual to the screen
render(o0)
