let n = BigInt(require('fs').readFileSync(0, 'utf-8').trim());
console.log(`${((n - BigInt(2)) * (n - BigInt(1)) * n) / BigInt(6)}\n${3}`);