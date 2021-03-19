import os
import sys
from datetime import timedelta
from time import perf_counter


def get_runtime(command):
    start = perf_counter()
    os.system(command)
    end = perf_counter()
    runtime = timedelta(seconds=end-start)
    return str(runtime).split(".")[0]


if __name__ == "__main__":
    total_code = len(sys.argv)
    if total_code < 3:
        print("Enter one or more .py files with the Python versions, eg: python3 timer.run code_1.py 3")
        sys.exit()

    for i in range(1, total_code, 2):
        code = sys.argv[i]
        if not os.path.exists(code) or not code.lower().endswith(".py"):
            print(code, "invalid file")
            continue

        py_version = sys.argv[i+1]
        if py_version != "2" and py_version != "3":
            print(code, "invalid Python version:", py_version, "\n")
            continue

        command = "python" + py_version + " " + code
        print(code, get_runtime(command), "\n")
