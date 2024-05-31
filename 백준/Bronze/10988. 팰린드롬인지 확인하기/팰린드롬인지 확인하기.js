let input = require('fs').readFileSync(0, 'utf-8').trim();
console.log(input === [...input.split('')].reverse().join('') ? 1 : 0);