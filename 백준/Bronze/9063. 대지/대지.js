let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
const N = parseInt(input.shift());
let point = {
  minX: 10000,
  maxX: -10000,
  minY: 10000,
  maxY: -10000,
};

for (let i = 0; i < N; i++) {
  const [x, y] = input[i].split(' ').map(Number);
  if (x < point.minX) point.minX = x;
  if (x > point.maxX) point.maxX = x;
  if (y < point.minY) point.minY = y;
  if (y > point.maxY) point.maxY = y;
}
const area = (point.maxX - point.minX) * (point.maxY - point.minY);
console.log(area);