let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n').map(Number);
const cashs = [25, 10, 5, 1];
const T = input.shift();
let res = Array.from({ length: T }, () => []);

input.map((change, index) => {
  let remain = change;
  cashs.map(cash => {
    res[index].push(parseInt(remain / cash));
    remain %= cash;
  });
});

console.log(res.map(el => el.join(' ')).join('\n'));