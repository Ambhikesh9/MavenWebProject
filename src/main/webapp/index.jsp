<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        input, button {
            margin: 5px;
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h2>Simple Calculator</h2>
    <form onsubmit="return false;">
        <input type="number" id="num1" placeholder="Enter first number">
        <input type="number" id="num2" placeholder="Enter second number"><br>
        <button onclick="calculate('add')">Add</button>
        <button onclick="calculate('subtract')">Subtract</button>
        <button onclick="calculate('multiply')">Multiply</button>
        <button onclick="calculate('divide')">Divide</button>
    </form>
    <h3>Result: <span id="result">0</span></h3>

    <script>
        function calculate(operation) {
            const num1 = parseFloat(document.getElementById('num1').value);
            const num2 = parseFloat(document.getElementById('num2').value);
            let result = 0;

            if (isNaN(num1) || isNaN(num2)) {
                alert('Please enter valid numbers');
                return;
            }

            switch (operation) {
                case 'add':
                    result = num1 + num2;
                    break;
                case 'subtract':
                    result = num1 - num2;
                    break;
                case 'multiply':
                    result = num1 * num2;
                    break;
                case 'divide':
                    if (num2 === 0) {
                        alert('Cannot divide by zero');
                        return;
                    }
                    result = num1 / num2;
                    break;
            }

            document.getElementById('result').textContent = result;
        }
    </script>
</body>
</html>
