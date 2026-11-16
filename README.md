# scripting

A small collection of Bash scripts used as hands-on demos of shell scripting
basics: reading input, handling command-line arguments, loops, conditionals,
arithmetic, and simple text processing.

Each script is self-contained and prints its own prompts, so they can be run
one at a time to see how a specific feature behaves.

## Scripts

| Script | What it demonstrates |
| --- | --- |
| `arguments_demo.sh` | The difference between `"$@"` and `"$*"` when expanding arguments |
| `read_name.sh` | Reading a line of input with `read` |
| `add_two_numbers.sh` | Reading two values and adding them with `$(( ))` |
| `compare_number.sh` | Comparing numeric input with `if [ ... -gt ... ]` |
| `print_numbers.sh` | Counting up with a `for` loop and `seq` |
| `list_files.sh` | Iterating over the files in the current directory |
| `file_exists.sh` | Testing a path with `[ -f ]` |
| `count_lines.sh` | Counting the lines of a file with `wc -l` |
| `top_ip_addresses.sh` | Extracting the most frequent IP addresses with `awk`, `sort`, `uniq`, `head` |

## Prerequisites

- Bash 4 or newer
- Standard Unix tools: `awk`, `sort`, `uniq`, `head`, `wc`, `seq`

Nothing needs to be built or installed.

## Usage

Run a script from the repository root:

```sh
./read_name.sh
```

The scripts are already executable. If your checkout lost the permission bit,
restore it with:

```sh
chmod +x ./*.sh
```

Some scripts read input interactively:

```sh
$ ./add_two_numbers.sh
enter first number
4
enter second number
7
The added value is 11
```

`arguments_demo.sh` takes its input from the command line:

```sh
./arguments_demo.sh arg_1 arg_2 arg_3
```

`top_ip_addresses.sh` expects an `iplog.txt` file in the current directory,
with one log line per record and the IP address in the first whitespace-
separated field:

```sh
./top_ip_addresses.sh
```

## Notes

- These are teaching demos, not hardened utilities: most scripts do not
  validate their input (for example, a non-numeric answer to
  `add_two_numbers.sh` will fail).
- `top_ip_addresses.sh` reports "top 3" but currently prints four lines
  (`head -n 4`); check it before relying on the output.
