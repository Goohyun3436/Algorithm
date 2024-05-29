const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

let res = [];
const [N, X] = input[0].split(" ").map(Number);
const A = input[1].split(" ").map(Number);

for (let i = 0; i < N; i++) {
  A[i] < X && res.push(`${A[i]}`);
}

console.log(res.join(" "));