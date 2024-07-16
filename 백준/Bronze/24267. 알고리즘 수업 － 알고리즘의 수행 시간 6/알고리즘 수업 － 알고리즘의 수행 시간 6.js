let n = BigInt(require('fs').readFileSync(0, 'utf-8').trim());
console.log(`${(n * n * n - (n * n + n * n + n * n) + (n + n)) / BigInt(6)}\n${3}`);