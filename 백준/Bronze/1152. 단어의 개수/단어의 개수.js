let input = require('fs').readFileSync(0, 'utf-8').trim().split(' ').filter((s) => s !== '');
console.log(input.length);