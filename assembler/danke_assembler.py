from __future__ import print_function

# Define register aliases
r0 = 0
r1 = 1
r2 = 2
r3 = 3
r4 = 4
r5 = 5
r6 = 6
r7 = 7
r8 = 8
r9 = 9
r10 = 10
r11 = 11
r12 = 12
r13 = 13
r14 = 14
r15 = 15
r16 = 16
r17 = 17
r18 = 18
r19 = 19
r20 = 20
r21 = 21
r22 = 22
r23 = 23
r24 = 24
r25 = 25
r26 = 26
r27 = 27
r28 = 28
r29 = 29
r30 = 30
r31 = 31

# Define special purpose registers
coreid = 32

# Define integer op aliases
op_add = 0
op_sub = 1
op_mul = 2
op_div = 3
op_gr  = 4
op_lt  = 5
op_gre = 6
op_lte = 7
op_eq  = 8
op_neq = 9
op_and = 10
op_or  = 11
op_not = 12
op_shr = 13
op_shl = 14


BITS_OPCODE		= 3
BITS_INTOP		= 4
BITS_REG		= 6
BITS_IMM 		= 6
BITS_OFF 		= 10
BITS_GRMTBLOP	= 1
BITS_GRMEMNDEOP	= 2
BITS_ATOMICOP	= 2
BITS_INSTR		= (BITS_OPCODE + BITS_INTOP + BITS_REG + BITS_REG + BITS_REG)


instructions = []

# dest = sr1 OP sr2
def intop_reg(operation, dr, sr1, sr2):
	instr  = 0 << (BITS_INSTR-BITS_OPCODE)
	instr |= sr1 << (BITS_INSTR-BITS_OPCODE-BITS_REG)
	instr |= sr2 << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*2)
	instr |= dr << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*3)
	instr |= operation
	instructions.append(instr)

# dest = sr1 OP const
def intop_imm(operation, dr, sr1, const):	
	instr  = 1 << (BITS_INSTR-BITS_OPCODE)
	instr |= sr1 << (BITS_INSTR-BITS_OPCODE-BITS_REG)
	instr |= (const & 0x3F) << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*2)
	instr |= dr << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*3)
	instr |= operation
	instructions.append(instr)

# halt
def halt():
	instr  = 6 << (BITS_INSTR-BITS_OPCODE)
	instructions.append(instr)
	instructions.append(0x800000)
	print_instructions_c()

# pc = (sr1 == sr2) ? pc + offset : pc + 1; 
def branch(sr1, sr2, offset):
	instr  = 2 << (BITS_INSTR-BITS_OPCODE)
	instr |= sr1 << (BITS_INSTR-BITS_OPCODE-BITS_REG)
	instr |= sr2 << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*2)
	instr |= (offset & 0x3FF)
	instructions.append(instr)

# dr = data_mem[sr1+sr2]
def load(dr, sr1, sr2):
	instr  = 3 << (BITS_INSTR-BITS_OPCODE)
	instr |= sr1 << (BITS_INSTR-BITS_OPCODE-BITS_REG)
	instr |= sr2 << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*2)
	instr |= dr << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*3)
	instructions.append(instr)

# data_mem[sr1+sr2] = src
def store(src, sr1, sr2):
	instr  = 4 << (BITS_INSTR-BITS_OPCODE)
	instr |= sr1 << (BITS_INSTR-BITS_OPCODE-BITS_REG)
	instr |= sr2 << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*2)
	instr |= src << (BITS_INSTR-BITS_OPCODE-(BITS_REG)*3)
	instructions.append(instr)

def print_instructions_c():
	print('{ ', end='')
	for i in range(len(instructions)):
		print(format(instructions[i], '#04x'), end='')
		if i != (len(instructions)-1):
			print(', ', end='')
	print(' };')
