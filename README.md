# OpenZeppelin Fellowship Research
This repo contains example contracts used to demonstrate the YUL IR-optimizer mechanics.

## Compile
Change your `solc` version to the one in the contract by executing
`solc-select use <version>`

To compile any file run the following command
`solc --optimize --ir-optimized -o out contracts/<filename>.sol`

The contracts can be found in the `contracts`  folder. Once the file is compiled, you can find the IR-optimized version in the `out` folder under the filename `<filename>_opt.yul`