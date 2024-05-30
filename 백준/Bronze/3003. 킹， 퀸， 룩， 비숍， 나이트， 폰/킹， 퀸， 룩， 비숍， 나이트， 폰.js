let input = require('fs').readFileSync(0, 'utf-8').trim().split(' ').map(Number);
const set = [1, 1, 2, 2, 2, 8];

let res = [];
for (let i = 0; i < input.length; i++) {
  res.push(set[i] - input[i]);
}
console.log(res.join(' '));