let input = require('fs').readFileSync(0, 'utf-8').trim().split('\n');
const N = parseInt(input.shift());
const nums = input[0].split(' ').map(Number);
let res = 0;

for (let num of nums) {
  let isPrime = true;

  if (num === 1) isPrime = false;

  let check = 2;
  while (isPrime && check < num) {
    if (num % check === 0) {
      isPrime = false;
      break;
    }
    check++;
  }

  if (isPrime) res++;
}

console.log(res);