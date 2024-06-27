let [M, N] = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(Number);

let factors = [];
for (let i = M; i <= N; i++) {
  if (findPrime(i)) factors.push(i);
}

if (factors.length > 0) {
  const sum = factors.reduce((a, b) => a + b, 0);
  console.log(`${sum}\n${factors[0]}`);
} else {
  console.log(-1);
}

function findPrime(num) {
  if (num === 1) return false;

  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }

  return true;
}