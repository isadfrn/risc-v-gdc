# GCD in RISC-V Assembly

![Languages used](https://img.shields.io/github/languages/count/isadfrn/risc-v-gdc?style=flat-square)
![Repository size](https://img.shields.io/github/repo-size/isadfrn/risc-v-gdc?style=flat-square)
![Last commit](https://img.shields.io/github/last-commit/isadfrn/risc-v-gdc?style=flat-square)

## About

This repository contains two RISC-V Assembly implementations of the **Greatest Common Divisor (GCD)** algorithm — known in Portuguese as **MDC (Máximo Divisor Comum)** — using the subtractive Euclidean method. Both solutions were developed for a Computer Architecture class taken during a Master's Degree, and are meant to run on the [RARS - RISC-V Assembler and Runtime Simulator](https://github.com/TheThirdOne/rars).

| Solution | Description |
|----------|-------------|
| [`solucao1/`](./solucao1/) | Fixed inputs (`x = 12`, `y = 18`); result stays in register `a0` |
| [`solucao2/`](./solucao2/) | Interactive; reads two integers from stdin and prints the GCD |

Each folder contains the `.asm` (RISC-V Assembly) file and the equivalent `.c` (C reference) file.

## Run

1. Install a [Java Runtime](https://www.java.com/) on your machine.
2. Download the RARS JAR from the [RARS releases page](https://github.com/TheThirdOne/rars/releases).
3. Open RARS, then copy/paste or import the desired `.asm` file.
4. Click **Assemble** and then **Run**.

## Contributing

This repository uses [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) and [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/), so if you want to contribute:

- create a branch from the `develop` branch;
- make your contributions;
- open a [Pull Request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request) to the `develop` branch;
- wait for discussion and future approval;

I thank you in advance for any contribution.

## Status

Finished

## License

[MIT](./LICENSE)
