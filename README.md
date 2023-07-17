# printmarc

The script printmarc.pl takes a MARC binary file as input and outputs a human-readable list of the MARC records.

## printmarc.pl

The script works with just two Perl modules installed: MARC::Batch and MARC::Lint.

## Setup

Clone the repo

```
git clone git@github.com:dfulmer/printmarc.git
cd printmarc
```

Build container
```
docker build -t mydocker .
```

Run container with a shell
```
docker run -it --rm -v ${PWD}:/app mydocker
```

## Usage

Put your MARC binary file in the printmarc directory where you cloned the repository.
Give the command:
```
perl printmarc.pl [name of your file]
```

An alternative way of using the script is:
```
printmarc [name of your file]
```

To create a file with the human-readable output in a file called 'output.txt', do this:
```
printmarc [name of your file] > output.txt
```

When you're done, type ‘exit’ and press Enter.