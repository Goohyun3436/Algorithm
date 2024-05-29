let input = require('fs').readFileSync(0, 'utf-8').trim().split(' ');

const [A, B] = input.map((el) => el.split('').reverse().join('')).map(Number);
console.log(A > B ? A : B);