import { add, subtract } from "./math.js";

const userName: string = "Ari";
function greet(name: string): string {
    return `Hello, ${name}!`;
}

console.log(greet(userName));
console.log(`2 + 3 = ${add(2, 3)}`);
console.log(`5 - 2 = ${subtract(5, 2)}`);
