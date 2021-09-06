class SchrodingerBoolean {
  bool _b;

  SchrodingerBoolean(this._b);

  @override
  bool operator ==(dynamic other) {
    _b = !_b;
    return _b;
  }
}

var omnibool = SchrodingerBoolean(true);
