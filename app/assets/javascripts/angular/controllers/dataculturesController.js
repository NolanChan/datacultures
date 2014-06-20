console.log(2);
(function(window, angular) {
  'use strict';

  /**
   * Datacultures main controller
   */
   console.log(window, angular);
  angular.module('datacultures.controllers').controller('DataculturesController', function() {
    console.log('3');
  });

})(window, window.angular);