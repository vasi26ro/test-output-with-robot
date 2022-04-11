from app import output
import argparse

if __name__ == "__main__":
    parser =  argparse.ArgumentParser()
    parser.add_argument(
        "--num", 
        help="Pass the input parameter 'num' for the output function"
        )
    parser.add_argument(
        "--type", 
        help="Pass the type of the parameter 'num' for the output function",
        )
    args = parser.parse_args()
    output(eval(f"""{args.type}({args.num})"""))