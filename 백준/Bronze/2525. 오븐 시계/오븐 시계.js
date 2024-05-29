const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

let h = parseInt(input[0].split(" ")[0]);
let m = parseInt(input[0].split(" ")[1]);
let remain = parseInt(input[1]);

m += remain;

if (m > 59) {
  h += Math.floor(m / 60);
  m = m % 60;
}

if (h > 23) {
  h -= 24;
}

console.log(`${h} ${m}`);