let n = parseInt(require('fs').readFileSync(0, 'utf-8').trim());
console.log(`${n * (n - 1) / 2}\n${2}`)