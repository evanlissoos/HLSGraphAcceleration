from danke_assembler import *

intop_imm(op_add, r1, r0, 1)		# r1 = 1
intop_reg(op_add, r2, r0, coreid)	# r2 = coreid
branch(coreid, r0, 5)				# if(coreid == 0) done

intop_reg(op_mul, r1, r2, r1)		# r1 = r1 * r2
intop_imm(op_sub, r2, r2, 1)		# r2 -= 1
intop_reg(op_eq, r3, r2, r0)		# r3 = r2 == 0
branch(r3, r0, -3)					# if(r2 != 0)	loop

load(r2, r0, 0)						# r2 = base_addr
intop_reg(op_add, r2, r2, coreid)	# r2 += coreid
store(r1, r2, 0)					# M[r2] = r1
halt()								# halt()