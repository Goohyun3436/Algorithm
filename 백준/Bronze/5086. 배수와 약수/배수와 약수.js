let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(el => el.split(' ').map(Number));
input.splice(input.length - 1);

let res = [];
for (let [a, b] of input) {
  if (a % b === 0) {
    res.push('multiple');
  } else if (b % a === 0) {
    res.push('factor');
  } else {
    res.push('neither');
  }
}
console.log(res.join('\n'));