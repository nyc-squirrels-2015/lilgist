// var newObject = Object.create(prototype)

if (typeof Object.create !== 'function') {
  Object.create = function (o) {
    var F = function () {};
    F.prototype = o;
    return new F();
  };
}

// Object.method('methodName', function() {};)

Function.prototype.method = function (name, func) {
  this.prototype[name] = func;
  return this;
};