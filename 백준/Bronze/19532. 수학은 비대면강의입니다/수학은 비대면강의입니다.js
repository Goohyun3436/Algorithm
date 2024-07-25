const [a, b, c, d, e, f] = require('fs').readFileSync(0, 'utf-8').trim().split(' ').map(Number);
let y, x;

if (a === 0 && e !== 0) {
  y = c / b;
  x = (f - e * y) / d;
} else if (a === 0 && e === 0) {
  x = f / d;
  y = c / b;
} else if (b === 0 && d !== 0) {
  x = c / a;
  y = (f - d * x) / e;
} else if (b === 0 && d === 0) {
  x = c / a;
  y = f / e;
} else if (d === 0) {
  y = f / e;
  x = (c - b * y) / a;
} else {
  y = (a * f - c * d) / (a * e - b * d);
  x = (c - b * y) / a;
}

console.log(`${x} ${y}`);