from danke_assembler import *

intop_reg(op_mul, r1, coreid, coreid)	# r1 = coreid * coreid
store(r1, coreid, r0)					# M[coreid] = r1
halt()
branch(r0, r0, 0)


"""
intop_imm(op_add, r1, coreid, 1)
store(r1, r0, r0)
load(r2, r0, r0)
halt()
branch(r0, r0, 0)
"""

for instr in instructions:
	print(format(instr, '#04x'))