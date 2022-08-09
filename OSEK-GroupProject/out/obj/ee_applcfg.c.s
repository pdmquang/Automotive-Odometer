	.file	"ee_applcfg.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.global	KDB
	.section	.rodata.KDB,"a",@progbits
	.type	KDB, @object
	.size	KDB, 22
KDB:
	.word	KCB
	.word	tdb_ptr_array
	.word	sn_array
	.word	5
	.word	4
	.word	res_db_ptr_array
	.word	1
	.word	counter_db_ptr_array
	.word	1
	.word	alarm_db_ptr_array
	.word	1
	.comm	KCB,1,1
.global	CDB
	.section	.rodata.CDB,"a",@progbits
	.type	CDB, @object
	.size	CDB, 16
CDB:
	.word	CCB
	.word	gs(idle_hook)
	.word	tdb_array+56
	.word	counter_db_array
	.word	osEE_autostart_tdb
	.word	3
	.word	osEE_autostart_trigger_db
	.word	3
.global	CCB
	.section	.data.CCB,"aw",@progbits
	.type	CCB, @object
	.size	CCB, 18
CCB:
	.word	tdb_array+56
	.word	0
	.word	sn_array
	.word	0
	.word	0
	.byte	-1
	.word	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.global	osEE_autostart_trigger_db
	.section	.rodata.osEE_autostart_trigger_db,"a",@progbits
	.type	osEE_autostart_trigger_db, @object
	.size	osEE_autostart_trigger_db, 12
osEE_autostart_trigger_db:
	.word	trigger_autostart_info_Kilometers
	.word	1
	.word	trigger_autostart_info_Miles
	.word	1
	.word	trigger_autostart_info_OSDEFAULTAPPMODE
	.word	1
.global	trigger_autostart_info_OSDEFAULTAPPMODE
	.section	.rodata.trigger_autostart_info_OSDEFAULTAPPMODE,"a",@progbits
	.type	trigger_autostart_info_OSDEFAULTAPPMODE, @object
	.size	trigger_autostart_info_OSDEFAULTAPPMODE, 6
trigger_autostart_info_OSDEFAULTAPPMODE:
	.word	alarm_db_array
	.word	1000
	.word	1000
.global	trigger_autostart_info_Miles
	.section	.rodata.trigger_autostart_info_Miles,"a",@progbits
	.type	trigger_autostart_info_Miles, @object
	.size	trigger_autostart_info_Miles, 6
trigger_autostart_info_Miles:
	.word	alarm_db_array
	.word	1000
	.word	1000
.global	trigger_autostart_info_Kilometers
	.section	.rodata.trigger_autostart_info_Kilometers,"a",@progbits
	.type	trigger_autostart_info_Kilometers, @object
	.size	trigger_autostart_info_Kilometers, 6
trigger_autostart_info_Kilometers:
	.word	alarm_db_array
	.word	1000
	.word	1000
.global	alarm_db_ptr_array
	.section	.rodata.alarm_db_ptr_array,"a",@progbits
	.type	alarm_db_ptr_array, @object
	.size	alarm_db_ptr_array, 2
alarm_db_ptr_array:
	.word	alarm_db_array
.global	alarm_db_array
	.section	.rodata.alarm_db_array,"a",@progbits
	.type	alarm_db_array, @object
	.size	alarm_db_array, 14
alarm_db_array:
	.word	alarm_cb_array
	.word	counter_db_array
	.word	0
	.word	tdb_array+28
	.word	0
	.word	2
	.word	1
	.comm	alarm_cb_array,8,1
.global	counter_db_ptr_array
	.section	.rodata.counter_db_ptr_array,"a",@progbits
	.type	counter_db_ptr_array, @object
	.size	counter_db_ptr_array, 2
counter_db_ptr_array:
	.word	counter_db_array
.global	counter_db_array
	.section	.rodata.counter_db_array,"a",@progbits
	.type	counter_db_array, @object
	.size	counter_db_array, 8
counter_db_array:
	.word	counter_cb_array
	.word	-1
	.word	1
	.word	1
	.comm	counter_cb_array,4,1
.global	osEE_autostart_tdb
	.section	.rodata.osEE_autostart_tdb,"a",@progbits
	.type	osEE_autostart_tdb, @object
	.size	osEE_autostart_tdb, 12
osEE_autostart_tdb:
	.word	tdb_ptr_autostart_Kilometers
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
.global	tdb_ptr_autostart_Kilometers
	.section	.rodata.tdb_ptr_autostart_Kilometers,"a",@progbits
	.type	tdb_ptr_autostart_Kilometers, @object
	.size	tdb_ptr_autostart_Kilometers, 4
tdb_ptr_autostart_Kilometers:
	.word	tdb_array+28
	.word	tdb_array+42
.global	res_db_ptr_array
	.section	.rodata.res_db_ptr_array,"a",@progbits
	.type	res_db_ptr_array, @object
	.size	res_db_ptr_array, 2
res_db_ptr_array:
	.word	res_db_array
.global	res_db_array
	.section	.rodata.res_db_array,"a",@progbits
	.type	res_db_array, @object
	.size	res_db_array, 3
res_db_array:
	.word	res_cb_array
	.byte	2
	.comm	res_cb_array,5,1
.global	sn_array
	.section	.data.sn_array,"aw",@progbits
	.type	sn_array, @object
	.size	sn_array, 16
sn_array:
	.word	sn_array+4
	.word	0
	.word	sn_array+8
	.word	0
	.word	sn_array+12
	.word	0
	.word	0
	.word	0
.global	tdb_ptr_array
	.section	.rodata.tdb_ptr_array,"a",@progbits
	.type	tdb_ptr_array, @object
	.size	tdb_ptr_array, 10
tdb_ptr_array:
	.word	tdb_array
	.word	tdb_array+14
	.word	tdb_array+28
	.word	tdb_array+42
	.word	tdb_array+56
.global	tdb_array
	.section	.rodata.tdb_array,"a",@progbits
	.type	tdb_array, @object
	.size	tdb_array, 70
tdb_array:
	.word	sdb_array+8
	.word	scb_array+4
	.word	tcb_array
	.byte	0
	.word	2
	.word	gs(osEE_avr8_system_timer_handler)
	.byte	-128
	.byte	-1
	.byte	1
	.word	sdb_array+8
	.word	scb_array+4
	.word	tcb_array+10
	.byte	1
	.word	2
	.word	gs(ButtonISR)
	.byte	-128
	.byte	-128
	.byte	1
	.word	sdb_array
	.word	scb_array
	.word	tcb_array+20
	.byte	2
	.word	1
	.word	gs(FuncMileageTask)
	.byte	2
	.byte	127
	.byte	1
	.word	sdb_array+4
	.word	scb_array+2
	.word	tcb_array+30
	.byte	3
	.word	1
	.word	gs(FuncDisplayTask)
	.byte	1
	.byte	1
	.byte	1
	.word	sdb_array+8
	.word	scb_array+4
	.word	tcb_array+40
	.byte	4
	.word	3
	.word	gs(osEE_idle_hook_wrapper)
	.byte	0
	.byte	0
	.byte	1
.global	tcb_array
	.section	.data.tcb_array,"aw",@progbits
	.type	tcb_array, @object
	.size	tcb_array, 50
tcb_array:
	.byte	0
	.byte	-128
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	-128
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	2
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	1
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	1
	.byte	0
	.word	4
	.word	0
	.word	0
	.word	0
.global	sdb_array
	.section	.rodata.sdb_array,"a",@progbits
	.type	sdb_array, @object
	.size	sdb_array, 12
sdb_array:
	.word	osEE_task_stack_1
	.word	128
	.word	osEE_task_stack_2
	.word	128
	.word	0
	.word	0
.global	scb_array
	.section	.data.scb_array,"aw",@progbits
	.type	scb_array, @object
	.size	scb_array, 6
scb_array:
	.word	osEE_task_stack_1+127
	.word	osEE_task_stack_2+127
	.word	0
	.comm	osEE_task_stack_2,128,1
	.comm	osEE_task_stack_1,128,1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
