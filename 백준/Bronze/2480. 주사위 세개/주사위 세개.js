const fs = require('fs');
const input = fs.readFileSync(0, 'utf-8').trim().split(' ');

let reward = 0;
const res = {};
input.forEach((x) => {
  res[x] = (res[x] || 0) + 1;
});

const diceType = Object.keys(res);
const diceCnt = Object.values(res);

if (diceType.length === 1) {
  reward = 10000 + parseInt(diceType[0]) * 1000;
} else if (diceType.length === 2) {
  reward = 1000 + diceType[diceCnt.indexOf(2)] * 100;
} else {
  reward = diceType[diceType.length - 1] * 100;
}

console.log(reward);