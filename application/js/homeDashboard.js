(function(global) {
    var dash = function(element) {
        "use strict";
        return {
            hide: function() {
                element.style.display = "none";
                return this;
            }
        }
    }
});