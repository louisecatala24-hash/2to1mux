# 2-to-1 Multiplexer

A 2-to-1 multiplexer implemented in Verilog and Logisim.

## Files

- `2to1mux.v` — Verilog multiplexer module.
- `2to1mux_tb.v` — Testbench for all eight input combinations.
- `2to1mux.circ` — Logisim circuit using NOT, AND, and OR gates.

## How It Works

The select input `S` determines which input passes to output `Y`.

| S | Y |
|---|---|
| 0 | I0 |
| 1 | I1 |

Boolean expression:

```text
Y = (I0 AND NOT S) OR (I1 AND S)
```

## Requirements

- Logisim 2.7.1 or a compatible version
- Icarus Verilog
- GTKWave

## Run the Verilog Simulation

Save both Verilog files in the same folder. Open a terminal in that folder and run:

```bash
iverilog -s mux2to1_tb -o mux2to1.vvp 2to1mux.v 2to1mux_tb.v
vvp mux2to1.vvp
```

The simulation prints the truth table and generates `mux2to1.vcd`.

View the waveform:

```bash
gtkwave mux2to1.vcd
```

Add `I0`, `I1`, `S`, and `Y` to the waveform display.

## Open the Logisim Circuit

1. Open Logisim.
2. Select File → Open.
3. Choose `2to1mux.circ`.
4. Use the Poke Tool to toggle `I0`, `I1`, and `S`.
5. Observe output `Y`.

## Truth Table

| I0 | I1 | S | Y |
|----|----|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |
