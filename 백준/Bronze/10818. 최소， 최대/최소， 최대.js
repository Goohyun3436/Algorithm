const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

let res = [1000000, -1000000];
const N = parseInt(input[0]);
const A = input[1].split(" ").map(Number);

for (let i = 0; i < N; i++) {
  if (A[i] < res[0]) {
    res[0] = A[i];
  }
  if (A[i] > res[1]) {
    res[1] = A[i];
  }
}

console.log(res.join(" "));