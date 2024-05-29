const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

const [N, M] = input[0].split(" ").map(Number);
let basket = new Array(N).fill("0");

for (let n = 0; n < M; n++) {
  const [i, j, k] = input[n + 1].split(" ");

  for (let target = parseInt(i) - 1; target < j; target++) {
    basket[target] = k;
  }
}

console.log(basket.join(" "));