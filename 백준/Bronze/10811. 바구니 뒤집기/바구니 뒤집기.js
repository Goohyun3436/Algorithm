const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split('\n');

const [N, M] = input[0].split(" ").map(Number);
let basket = Array.from({ length: N }, (_, i) => i + 1);

for (let n = 0; n < M; n++) {
  const [i, j] = input[n + 1].split(" ").map(Number);
  const target = [...basket].splice(i - 1, j - (i - 1));
  basket.splice(i - 1, j - (i - 1), ...target.reverse());
}

console.log(basket.join(" "));