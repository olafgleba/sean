/**
 * Comment below is eslint related and overwrites
 * default values of the definitions in `.eslintrc`
 * to supress warnings on undefined variables and such
 * in dev mode.
 *
 * Accordingly the values should be set to `true`
 * on code cleanup as they are useful for spotting leaks
 * and mistyped variables.
 */

/*eslint-disable no-undef */

var App = (function() {

  'use strict';

  // Private variables and methods
  // var _privateMethod = function() {};

  // Public variables and methods
  // var publicMethod = function() {};

  var init = function() {

    // FastClick initialisation
    FastClick.attach(document.body);

    // Avoid FOIT on web font loading, s. https://github.com/bramstein/fontfaceobserver
    var font = new FontFaceObserver('proxima-nova-1');
    font.load().then(function() {
      document.documentElement.className += ' fonts-loaded';
    }, function() {
      console.log('Font is not available after waiting 3 seconds');
    });

    // svg4everybody initialisation
    svg4everybody();

    // Fluidvids initialisation
    // fluidvids.init({
    //   selector: 'iframe', // runs querySelectorAll()
    //   players: ['player.vimeo.com'] // players to support
    // });

  };

  // Public API
  return {

    init: init

  };

})();


/**
 * If DOM is ready...
 */

$(function() {

  'use strict';

  App.init();

  // Init smooth scrolling
  $('a').smoothScroll({
    speed: 500
  });


  // Init fluidbox
  $('a[rel="fluidbox"]').fluidbox({
    immediateOpen: true
  })
  .one('openstart', function() {
    $(this).find('.fluidbox-ghost')
    .append('<div class="is-loading-fluidbox"><div class="progress progress--large"></div></div>');
  })
  .on('imageloaddone', function() {
    $(this).find('.is-loading-fluidbox').remove();
  });


});
