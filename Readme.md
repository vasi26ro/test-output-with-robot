For testing `output` function from app.py where used the following tehniques:
1. Black-box testing
2. White-box testing
3. Experience based testing

## 1. Black-box testing

Test from one to 13 are used for *boundary analysis* and tests from 14 to 17 are used for *equivalence partitioning*.

## 2. White-box testing

Same tests as used for black-box can be used for statement coverage and decision coverage over the if statement of the output function.
In order to test the last statement of the function which is a `print`, `utils.py` wrapper was used alongside with `Run Procces` which enables the capture of `stdout` and `stderr`.

Tests for input data validation and division by zero where created.

## 3. Experience based testing

All values where used and tests where created based on tester experience since no requirement was available at the time of testing.

## How to run tests

1. Create a virtualenv: `python3 -m venv venv`
2. Activate virtualenv: `. ./venv/bin/activate` or `.\venv\Scripts\activate.exe`
3. Install requirements: `pip install -r requirements.txt`
4. Run tests: `robot tests/`
5. Check report: Open `report.html`