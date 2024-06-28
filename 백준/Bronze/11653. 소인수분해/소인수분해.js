let N = parseInt(require('fs').readFileSync(0, 'utf-8').trim());
console.log(PrimeFactorate(N).join('\n'));

function PrimeFactorate(num) {
  let factors = [];
  let factor = 2;
  while (num !== 1) {
    if (num % factor === 0) {
      factors.push(factor);
      num /= factor;
    } else {
      factor++;
    }
  }
  return factors;
}