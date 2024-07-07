let [l1, l2, l3] = require('fs').readFileSync(0, 'utf-8').trim().split(' ').map(Number).sort((a, b) => a - b);
let sum = l1 + l2;
console.log(sum + (sum <= l3 ? sum - 1 : l3));