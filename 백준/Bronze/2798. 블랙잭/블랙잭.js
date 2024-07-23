let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
const [N, M] = input[0].split(' ').map(Number);
const cards = input[1].split(' ').map(Number);

let sumList = [];

for (let i = 0; i < cards.length - 2; i++) {
  for (let j = i + 1; j < cards.length - 1; j++) {
    for (let k = j + 1; k < cards.length; k++) {
      const sum = cards[i] + cards[j] + cards[k];
      if (sum <= M) sumList.push(sum);
    }
  }
}

console.log(sumList.sort((a, b) => a - b).pop() ?? 0);