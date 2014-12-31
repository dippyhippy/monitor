(function() {
  var MyComponent, noflo,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  noflo = require('noflo');

  MyComponent = (function(_super) {
    __extends(MyComponent, _super);

    function MyComponent(options) {
      MyComponent.__super__.constructor.call(this, options);
    }

    return MyComponent;

  })(noflo.LoggingComponent);

}).call(this);
