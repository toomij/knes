//
// Copyright 2009 Erik Gilling
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
`define DEBUG

`define SR_C		0
`define SR_Z		1
`define SR_I		2
`define SR_D		3
`define SR_B		4
`define SR_V		6
`define SR_N		7

`define X_SYNC_NEXT	0

`define X_INC_PC	1

`define X_INC_DL	2

`define X_PC_LATCH_L	3

`define X_PC_LATCH_H	4

`define X_DL_LATCH_L	5

`define X_DL_LATCH_H	6

`define X_ADDR_MODE	8:7
`define   ADDR_MODE_PC    2'b00
`define   ADDR_MODE_DL    2'b01
`define   ADDR_MODE_ZP    2'b10

`define X_REG_SEL       11:9
`define   R_N             3'b000
`define   R_X             3'b000
`define   R_Y             3'b001
`define   R_A             3'b010
`define   R_S             3'b011
`define   R_D             3'b100

`define X_REG_W		12

`define X_A_DATA_SEL	13
`define   AD		  1'b0
`define   AA		  1'b1

`define X_PC_UPDATE	14

`define X_DATA_SEL      17:15
`define   D_DI            3'h0
`define   D_RA            3'h1
`define   D_RX            3'h2
`define   D_RY            3'h3
`define   D_FF            3'h4
`define   D_FI            3'h5
`define   D_AL            3'h6
`define   D_RD            3'h7

`define X_RW		18
`define   R               1'b0
`define   W               1'b1

`define X_ALU_OP	22:19
`define   OP_XXX	  4'h0
`define   OP_ADC	  4'h0
`define   OP_AND          4'h1
`define   OP_ASL          4'h2
`define   OP_CMP          4'h3
`define   OP_DEC          4'h4
`define   OP_EOR          4'h5
`define   OP_INC          4'h6
`define   OP_LSR          4'h7
`define   OP_OR           4'h8
`define   OP_ROL          4'h9
`define   OP_ROR          4'hA
`define   OP_SBC          4'hB
`define   OP_TST          4'hC
`define   OP_BAD          4'hD
`define   OP_DAD          4'hE
`define   OP_ADD          4'hF

`define X_ALU_INPUT	25:23
`define A_N		  3'b000
`define A_A		  3'b001
`define A_X		  3'b010
`define A_Y		  3'b011
`define A_L		  3'b100
`define A_H		  3'b101
`define A_D		  3'b110
`define A_C		  3'b111

`define X_SR_SEL	27:26
`define   SR_0		  2'b00
`define   SR_F		  2'b01
`define   SR_A		  2'b10
`define   SR_X		  2'b11

`define X_UPDATE_C	28

`define X_UPDATE_Z	29

`define X_UPDATE_I	30

`define X_UPDATE_D	31

`define X_UPDATE_B	32

`define X_UPDATE_V	33

`define X_UPDATE_N	34

`define X_EXCEPTION     35
`define   E_0		  1'b0
`define   E_U		  1'b1

`define X_BITS		36


