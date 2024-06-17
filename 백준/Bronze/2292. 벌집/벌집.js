let N = parseInt(require('fs').readFileSync(0, 'utf-8'));
let count = 1;
let maxOfBorder = 1;

while (maxOfBorder < N) {
  maxOfBorder += 6 * count;
  count++;
}

console.log(count);