let N = parseInt(require('fs').readFileSync(0, 'utf-8').trim());
let count = 1;
let maxOfBorder = 1;

while (true) {
  if (N <= maxOfBorder) break;

  maxOfBorder += 6 * count;
  count++;
}

console.log(count);