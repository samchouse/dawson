import sys
import subprocess
import json
import re

args = sys.argv[1:]
if len(args) == 0:
    print("Missing script argument")
    sys.exit(1)

with open("tests.json", "r") as file:
    cases = json.load(file)

for idx, case in enumerate(cases):
    is_python_3 = (
        subprocess.run(["which", "python3"], stdout=subprocess.DEVNULL).returncode == 0
    )

    process = subprocess.run(
        ["python3" if is_python_3 else "python", args[0]],
        input="\n".join(case["inputs"]).encode(),
        stdout=subprocess.PIPE,
    )
    grade = re.search(
        r"\d+(\.\d+)?(?!.*\d)", process.stdout.decode().replace("\n", "")
    ).group(0)

    if grade == case["output"]:
        print(f"Passed test {idx + 1}/{len(cases)}")
    else:
        print(f"!!! Failed test {idx + 1}/{len(cases)}")
        print(f"!!! Got: {grade}, Expected: {case['output']}")
        if abs(float(grade) - float(case["output"])) <= 1:
            print(
                "!!! This may be a difference in rounding styles, please verify for yourself"
            )
