// inculde js in html
<script src="main.js"></script>

console.log("log in console");

// variabkes
// primative data type
var stringLiteral = 'stirng';

let numberLiteral = 1;

const booleanLiteral = true;

let nullvalue = null;

let temp; // undefined

// we can reassign variable to different data type after creation
let a = 1;
a = 'temp';

a + 1 + 2 + a // temp12temp
1 + 2 + a // 3temp
let message = `${a} text ${a}` // temp text temp

// reference data type
let arrayLiteral = new Array(1,2,3,4);
arrayLiteral = [1,2,3,4];
arrayLiteral.push(7); // [1,2,3,4,7]
temp = arrayLiteral.pop(); // 7, arrayLiteral = [1,2,3,4]
arrayLiteral.indexOf(4) // 3
arrayLiteral = [1, true, null, [1,2,3]] // valid

let objectLiteral = {
    value1: 1,
    value2: 'temp',
    innerObject: {
        innerVariable: 1
    },
    innerArray: [1,2]
}

objectLiteral.value1; // 1
objectLiteral['value2']; // temp
objectLiteral.newValue = 'new'; // append new value to object
delete objectLiteral.newValue;

const {value1, innerObject: {innerVariable}} = objectLiteral; // variable name must be the same
console.log(innerVariable); 


// functions
function fun() {
    console.log('basic function');
}

function fun(value1, value2) {
    console.log(`value ${value1} ${value2}`);
}

function fun(value1, value2) {
    return value1 - value2;
}

const fun = (v1, v2) => {
    return v1 / v2;
}

const fun = v1 => v1 / 100;

// for loop
for (let t of a) {
    console.log(t);
}

a.forEach(element => {
    console.log(element);
});

a.array.forEach(function(element){ console.log(element) });

const mapExample = a.map(num => num + 1); // create a new array with the results
const filterExample = a.filter(num => num > 10);

// conditions
let cond = 30;

cond == 30; // true
cond == '30'; // true, it will convert the string into number and compare
cond === 30; // false, it will check the data type

switch(cond) {
    case 1:
        console.log();
        break;
    
        default:
            break;
}


// interacting with the doc
const list = document.getElementById('id');
list = document.querySelector('#id'); // using id
list = document.querySelector('.classname'); // using class name 
list = document.querySelector('ul'); // get the first <ul>

list = document.querySelectorAll('.classname'); // get array of all element with the query


// events
const btn = document.getElementById('id');
btn.addEventListener('click', function(e) {
    console.log();
})

btn.addEventListener('click', (e) => {
    console.log();
})

btn.addEventListener('mouseover', (e) => {
    console.log();
})

btn.addEventListener('keyup', (e) => {
    console.log();
})


// fetch
fetch(url)
    .then(res => res.json()) // convert response into json
    .then(json => console.log(json))
    .catch(err => console.log(err)); 

const postMethod = post => {
    const options = {
        method: 'POST',
        body: {
            temp: "asd",
            value: 1
        },
        headers: new Headers({
            'Content-Type': 'application/json'
        })
    }

    return fetch(url, options).then(res => res.json()).then(json => console.log(json));
}


