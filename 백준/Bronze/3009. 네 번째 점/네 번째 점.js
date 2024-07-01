let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(el => el.split(' ').map(Number));
let x = {};
let y = {};

input.map(ptn => {
  x[ptn[0]] = (x[ptn[0]] || 0) + 1;
  y[ptn[1]] = (y[ptn[1]] || 0) + 1;
});
console.log(getKeyByValue(x, 1), getKeyByValue(y, 1));

function getKeyByValue(obj, value) {
  return Object.keys(obj).find(key => obj[key] === value);
}