const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split(' ');

let h = parseInt(input[0]);
let m = parseInt(input[1]);

m -= 45;

if (m < 0) {
  h -= 1;
  m += 60;
}

if (h < 0) {
  h += 24;
}

console.log(`${h} ${m}`);