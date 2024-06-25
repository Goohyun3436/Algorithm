let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(Number);
input.pop();

for (let n of input) {
  let factors = [1];

  for (let i = 2; i < n / 2; i++) {
    if (n % i === 0) factors.push(i, n / i);
  }
  let set = [...new Set(factors)];
  const sum = set.reduce((a, b) => a + b);
  
  sum === n ? console.log(`${n} = ${set.sort((a, b) => a - b).join(' + ')}`) : console.log(`${n} is NOT perfect.`);
}