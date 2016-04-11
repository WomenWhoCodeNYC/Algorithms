// Using RegEx:

function maskify(cc) {
  return cc.slice(0, -4).replace(/./g, '#') + cc.slice(-4);
}

maskify("Skippy");
maskify("13243567897065");
