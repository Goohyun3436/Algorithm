let [N, K] = require('fs').readFileSync(0, 'utf-8').trim().split(' ').map(Number);
let factors = [];

for (let i = 1; i <= N; i++) {
  if (factors.length >= K) break;
  if (N % i === 0) factors.push(i);
}

console.log(factors.length >= K ? factors[K - 1] : 0);