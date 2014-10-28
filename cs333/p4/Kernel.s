! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41712
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_133:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_132:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_127:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_126:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_125:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_120:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_119:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_118:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_117:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_116:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_114:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_113:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_112:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_111:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_110:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_109:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_108:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_107:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_106:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_104:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_103:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_102:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_101:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_100:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_99:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_98:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_97:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_96:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_95:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_94:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_93:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_92:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_91:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_90:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_89:
	.word	32			! length
	.ascii	"Trying to Free an Invalid Thread"
	.align
_StringConst_88:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_87:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_86:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_85:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_84:
	.word	8			! length
	.ascii	"thread_9"
	.align
_StringConst_83:
	.word	8			! length
	.ascii	"thread_8"
	.align
_StringConst_82:
	.word	8			! length
	.ascii	"thread_7"
	.align
_StringConst_81:
	.word	8			! length
	.ascii	"thread_6"
	.align
_StringConst_80:
	.word	8			! length
	.ascii	"thread_5"
	.align
_StringConst_79:
	.word	8			! length
	.ascii	"thread_4"
	.align
_StringConst_78:
	.word	8			! length
	.ascii	"thread_3"
	.align
_StringConst_77:
	.word	8			! length
	.ascii	"thread_2"
	.align
_StringConst_76:
	.word	8			! length
	.ascii	"thread_1"
	.align
_StringConst_75:
	.word	8			! length
	.ascii	"thread_0"
	.align
_StringConst_74:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_73:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_72:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_71:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_70:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_67:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_62:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_61:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_60:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_59:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_58:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_57:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_56:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_54:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_53:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_51:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_49:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_47:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_45:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0xa01d4321,r4		! myHashVal = -1608695007
	cmp	r3,r4
	be	_Label_138
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_138:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_139
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_139
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_139
_Label_139:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1783:
	push	r0
	sub	r1,1,r1
	bne	_Label_1783
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_140 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_140  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	17,r13		! source line 17
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1784:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1784
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_144 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_145 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_144  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   _temp_146 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_147 = _temp_146 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_147 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1785:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1785
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_149 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_150 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_149  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_151 = _function_137_IdleFunction
	set	_function_137_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_152 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_151  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	29,r13		! source line 29
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_153
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_154
	.word	-12
	.word	4
	.word	_Label_155
	.word	-16
	.word	4
	.word	_Label_156
	.word	-20
	.word	4
	.word	_Label_157
	.word	-24
	.word	4
	.word	_Label_158
	.word	-28
	.word	4
	.word	_Label_159
	.word	-32
	.word	4
	.word	_Label_160
	.word	-36
	.word	4
	.word	_Label_161
	.word	-40
	.word	4
	.word	_Label_162
	.word	-44
	.word	4
	.word	_Label_163
	.word	-48
	.word	4
	.word	_Label_164
	.word	-52
	.word	4
	.word	_Label_165
	.word	-56
	.word	4
	.word	_Label_166
	.word	-60
	.word	4
	.word	0
_Label_153:
	.ascii	"InitializeScheduler\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_137_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_137_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1786:
	push	r0
	sub	r1,1,r1
	bne	_Label_1786
	mov	34,r13		! source line 34
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0WH",r10
_Label_167:
!	jmp	_Label_168
_Label_168:
	mov	44,r13		! source line 44
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0IF",r10
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   _temp_172 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_170 else goto _Label_171
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_171
	jmp	_Label_170
_Label_170:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_173
_Label_171:
! ELSE...
	mov	49,r13		! source line 49
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_173:
! END WHILE...
	jmp	_Label_167
_Label_169:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_137_IdleFunction:
	.word	_sourceFileName
	.word	_Label_174
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_175
	.word	8
	.word	4
	.word	_Label_176
	.word	-12
	.word	4
	.word	_Label_177
	.word	-16
	.word	4
	.word	0
_Label_174:
	.ascii	"IdleFunction\0"
	.align
_Label_175:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_177:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1787:
	push	r0
	sub	r1,1,r1
	bne	_Label_1787
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_180 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_180 ) then goto _Label_179		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_179
!	jmp	_Label_178
_Label_178:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_182 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_182 [0 ] into _temp_183
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_181 = _temp_183		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_181  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_179:
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_184 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_184 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0WH",r10
_Label_185:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_189 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_188  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_188 then goto _Label_187 else goto _Label_186
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_186
	jmp	_Label_187
_Label_186:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_190 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	88,r13		! source line 88
	mov	"\0\0SE",r10
!   _temp_191 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_185
_Label_187:
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_194 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_194 ) then goto _Label_193		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_193
!	jmp	_Label_192
_Label_192:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_196 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_196 [0 ] into _temp_197
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_195 = _temp_197		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_195  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_199 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_198 = *_temp_199  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_198) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_200 = _temp_198 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_193:
! RETURN STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_201
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_202
	.word	8
	.word	4
	.word	_Label_203
	.word	-16
	.word	4
	.word	_Label_204
	.word	-20
	.word	4
	.word	_Label_205
	.word	-24
	.word	4
	.word	_Label_206
	.word	-28
	.word	4
	.word	_Label_207
	.word	-32
	.word	4
	.word	_Label_208
	.word	-36
	.word	4
	.word	_Label_209
	.word	-40
	.word	4
	.word	_Label_210
	.word	-44
	.word	4
	.word	_Label_211
	.word	-48
	.word	4
	.word	_Label_212
	.word	-52
	.word	4
	.word	_Label_213
	.word	-9
	.word	1
	.word	_Label_214
	.word	-56
	.word	4
	.word	_Label_215
	.word	-60
	.word	4
	.word	_Label_216
	.word	-64
	.word	4
	.word	_Label_217
	.word	-68
	.word	4
	.word	_Label_218
	.word	-72
	.word	4
	.word	_Label_219
	.word	-76
	.word	4
	.word	_Label_220
	.word	-80
	.word	4
	.word	0
_Label_201:
	.ascii	"Run\0"
	.align
_Label_202:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_213:
	.byte	'C'
	.ascii	"_temp_188\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_219:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_220:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1788:
	push	r0
	sub	r1,1,r1
	bne	_Label_1788
	mov	99,r13		! source line 99
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_221 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_222 = _function_136_ThreadPrintShort
	set	_function_136_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_223 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_222  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_224
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_225
	.word	-12
	.word	4
	.word	_Label_226
	.word	-16
	.word	4
	.word	_Label_227
	.word	-20
	.word	4
	.word	_Label_228
	.word	-24
	.word	4
	.word	0
_Label_224:
	.ascii	"PrintReadyList\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_228:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1789:
	push	r0
	sub	r1,1,r1
	bne	_Label_1789
	mov	114,r13		! source line 114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	126,r13		! source line 126
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_229 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_229  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_231 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_230 = *_temp_231  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_230  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	129,r13		! source line 129
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_232 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	130,r13		! source line 130
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_233
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	_Label_236
	.word	-20
	.word	4
	.word	_Label_237
	.word	-24
	.word	4
	.word	_Label_238
	.word	-28
	.word	4
	.word	_Label_239
	.word	-32
	.word	4
	.word	0
_Label_233:
	.ascii	"ThreadStartMain\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_239:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1790:
	push	r0
	sub	r1,1,r1
	bne	_Label_1790
	mov	135,r13		! source line 135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	146,r13		! source line 146
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	146,r13		! source line 146
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   _temp_240 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_241 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	153,r13		! source line 153
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_242
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_243
	.word	-12
	.word	4
	.word	_Label_244
	.word	-16
	.word	4
	.word	_Label_245
	.word	-20
	.word	4
	.word	0
_Label_242:
	.ascii	"ThreadFinish\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_245:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1791:
	push	r0
	sub	r1,1,r1
	bne	_Label_1791
	mov	158,r13		! source line 158
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_246 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_248		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_248
!	jmp	_Label_247
_Label_247:
! THEN...
	mov	169,r13		! source line 169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_249 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_249  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_251 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_250 = *_temp_251  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_248:
! CALL STATEMENT...
!   _temp_252 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_253 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_254 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_255
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_256
	.word	8
	.word	4
	.word	_Label_257
	.word	-12
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	_Label_259
	.word	-20
	.word	4
	.word	_Label_260
	.word	-24
	.word	4
	.word	_Label_261
	.word	-28
	.word	4
	.word	_Label_262
	.word	-32
	.word	4
	.word	_Label_263
	.word	-36
	.word	4
	.word	_Label_264
	.word	-40
	.word	4
	.word	0
_Label_255:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_256:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_264:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1792:
	push	r0
	sub	r1,1,r1
	bne	_Label_1792
	mov	181,r13		! source line 181
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_266		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_266
!	jmp	_Label_265
_Label_265:
! THEN...
	mov	197,r13		! source line 197
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	198,r13		! source line 198
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_267
_Label_266:
! ELSE...
	mov	200,r13		! source line 200
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_267:
! RETURN STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_268
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_269
	.word	8
	.word	4
	.word	_Label_270
	.word	-12
	.word	4
	.word	0
_Label_268:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_269:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_270:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_136_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_136_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1793:
	push	r0
	sub	r1,1,r1
	bne	_Label_1793
	mov	642,r13		! source line 642
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	650,r13		! source line 650
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_274		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_274
!   _temp_273 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_275
_Label_274:
!   _temp_273 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_275:
!   if _temp_273 then goto _Label_272 else goto _Label_271
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_271
	jmp	_Label_272
_Label_271:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_276 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	652,r13		! source line 652
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_272:
! CALL STATEMENT...
!   _temp_277 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_277  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_278 = *_temp_279  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_280 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	657,r13		! source line 657
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_289 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_288 = *_temp_289  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_283
	cmp	r1,2
	be	_Label_284
	cmp	r1,3
	be	_Label_285
	cmp	r1,4
	be	_Label_286
	cmp	r1,5
	be	_Label_287
	jmp	_Label_281
! CASE 1...
_Label_283:
! CALL STATEMENT...
!   _temp_290 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_282
! CASE 2...
_Label_284:
! CALL STATEMENT...
!   _temp_291 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_282
! CASE 3...
_Label_285:
! CALL STATEMENT...
!   _temp_292 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0BR",r10
	jmp	_Label_282
! CASE 4...
_Label_286:
! CALL STATEMENT...
!   _temp_293 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0BR",r10
	jmp	_Label_282
! CASE 5...
_Label_287:
! CALL STATEMENT...
!   _temp_294 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0BR",r10
	jmp	_Label_282
! DEFAULT CASE...
_Label_281:
! CALL STATEMENT...
!   _temp_295 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	674,r13		! source line 674
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_282:
! CALL STATEMENT...
!   _temp_296 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_296  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_297 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_298 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_298  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_136_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_299
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_300
	.word	8
	.word	4
	.word	_Label_301
	.word	-16
	.word	4
	.word	_Label_302
	.word	-20
	.word	4
	.word	_Label_303
	.word	-24
	.word	4
	.word	_Label_304
	.word	-28
	.word	4
	.word	_Label_305
	.word	-32
	.word	4
	.word	_Label_306
	.word	-36
	.word	4
	.word	_Label_307
	.word	-40
	.word	4
	.word	_Label_308
	.word	-44
	.word	4
	.word	_Label_309
	.word	-48
	.word	4
	.word	_Label_310
	.word	-52
	.word	4
	.word	_Label_311
	.word	-56
	.word	4
	.word	_Label_312
	.word	-60
	.word	4
	.word	_Label_313
	.word	-64
	.word	4
	.word	_Label_314
	.word	-68
	.word	4
	.word	_Label_315
	.word	-72
	.word	4
	.word	_Label_316
	.word	-76
	.word	4
	.word	_Label_317
	.word	-9
	.word	1
	.word	_Label_318
	.word	-80
	.word	4
	.word	0
_Label_299:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_300:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_317:
	.byte	'C'
	.ascii	"_temp_273\0"
	.align
_Label_318:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_135_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_135_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1794:
	push	r0
	sub	r1,1,r1
	bne	_Label_1794
	mov	1018,r13		! source line 1018
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_319 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1022,r13		! source line 1022
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1023,r13		! source line 1023
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_135_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_320
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_321
	.word	8
	.word	4
	.word	_Label_322
	.word	-12
	.word	4
	.word	0
_Label_320:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_321:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	1028,r13		! source line 1028
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_323 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1034,r13		! source line 1034
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_324
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_325
	.word	8
	.word	4
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_324:
	.ascii	"ProcessFinish\0"
	.align
_Label_325:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1796:
	push	r0
	sub	r1,1,r1
	bne	_Label_1796
	mov	1552,r13		! source line 1552
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_327
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_327:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1797:
	push	r0
	sub	r1,1,r1
	bne	_Label_1797
	mov	1570,r13		! source line 1570
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_328 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1580,r13		! source line 1580
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1592,r13		! source line 1592
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_331:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1798:
	push	r0
	sub	r1,1,r1
	bne	_Label_1798
	mov	1606,r13		! source line 1606
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_332 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1613,r13		! source line 1613
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_333
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_334
	.word	-12
	.word	4
	.word	0
_Label_333:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1799:
	push	r0
	sub	r1,1,r1
	bne	_Label_1799
	mov	1618,r13		! source line 1618
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_335 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1625,r13		! source line 1625
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_336
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_337
	.word	-12
	.word	4
	.word	0
_Label_336:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1800:
	push	r0
	sub	r1,1,r1
	bne	_Label_1800
	mov	1630,r13		! source line 1630
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_338 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1637,r13		! source line 1637
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_339
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_340
	.word	-12
	.word	4
	.word	0
_Label_339:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1801:
	push	r0
	sub	r1,1,r1
	bne	_Label_1801
	mov	1642,r13		! source line 1642
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_341 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1649,r13		! source line 1649
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_342
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_343
	.word	-12
	.word	4
	.word	0
_Label_342:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1802:
	push	r0
	sub	r1,1,r1
	bne	_Label_1802
	mov	1654,r13		! source line 1654
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_344 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_345
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_346
	.word	-12
	.word	4
	.word	0
_Label_345:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1803:
	push	r0
	sub	r1,1,r1
	bne	_Label_1803
	mov	1666,r13		! source line 1666
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_347 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_348
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_349
	.word	-12
	.word	4
	.word	0
_Label_348:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1804:
	push	r0
	sub	r1,1,r1
	bne	_Label_1804
	mov	1678,r13		! source line 1678
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_350 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_function_134_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_351
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_352
	.word	-12
	.word	4
	.word	0
_Label_351:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_134_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_134_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1805:
	push	r0
	sub	r1,1,r1
	bne	_Label_1805
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_353 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_353  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_354 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1697,r13		! source line 1697
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_358 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_357 = *_temp_358  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_357 == 0 then goto _Label_356		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_356
!	jmp	_Label_355
_Label_355:
! THEN...
	mov	1701,r13		! source line 1701
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_359) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_361
_Label_356:
! ELSE...
	mov	1703,r13		! source line 1703
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_362 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1703,r13		! source line 1703
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_361:
! SEND STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1711,r13		! source line 1711
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_134_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_363
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_364
	.word	8
	.word	4
	.word	_Label_365
	.word	-12
	.word	4
	.word	_Label_366
	.word	-16
	.word	4
	.word	_Label_367
	.word	-20
	.word	4
	.word	_Label_368
	.word	-24
	.word	4
	.word	_Label_369
	.word	-28
	.word	4
	.word	_Label_370
	.word	-32
	.word	4
	.word	_Label_371
	.word	-36
	.word	4
	.word	0
_Label_363:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_364:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1806:
	push	r0
	sub	r1,1,r1
	bne	_Label_1806
	mov	1716,r13		! source line 1716
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1737,r13		! source line 1737
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1807
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_372
_Label_1807:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_372
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_372
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_386,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_386:
	jmp	_Label_378	! 1:	
	jmp	_Label_385	! 2:	
	jmp	_Label_375	! 3:	
	jmp	_Label_374	! 4:	
	jmp	_Label_377	! 5:	
	jmp	_Label_376	! 6:	
	jmp	_Label_379	! 7:	
	jmp	_Label_380	! 8:	
	jmp	_Label_381	! 9:	
	jmp	_Label_382	! 10:	
	jmp	_Label_383	! 11:	
	jmp	_Label_384	! 12:	
! CASE 4...
_Label_374:
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_387  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_387  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_375:
! CALL STATEMENT...
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_376:
! RETURN STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_388  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_388  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_377:
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1746,r13		! source line 1746
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_389  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_389  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_378:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1748,r13		! source line 1748
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_379:
! RETURN STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_390  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_390  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_380:
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_391  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_381:
! RETURN STATEMENT...
	mov	1755,r13		! source line 1755
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1755,r13		! source line 1755
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_392  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_392  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_382:
! RETURN STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_393  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_393  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_383:
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_394  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_394  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_384:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1761,r13		! source line 1761
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_385:
! CALL STATEMENT...
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_372:
! CALL STATEMENT...
!   _temp_395 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_396 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1770,r13		! source line 1770
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_373:
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_397
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_398
	.word	8
	.word	4
	.word	_Label_399
	.word	12
	.word	4
	.word	_Label_400
	.word	16
	.word	4
	.word	_Label_401
	.word	20
	.word	4
	.word	_Label_402
	.word	24
	.word	4
	.word	_Label_403
	.word	-12
	.word	4
	.word	_Label_404
	.word	-16
	.word	4
	.word	_Label_405
	.word	-20
	.word	4
	.word	_Label_406
	.word	-24
	.word	4
	.word	_Label_407
	.word	-28
	.word	4
	.word	_Label_408
	.word	-32
	.word	4
	.word	_Label_409
	.word	-36
	.word	4
	.word	_Label_410
	.word	-40
	.word	4
	.word	_Label_411
	.word	-44
	.word	4
	.word	_Label_412
	.word	-48
	.word	4
	.word	0
_Label_397:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_398:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_399:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_400:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_401:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1777,r13		! source line 1777
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_413
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_414
	.word	8
	.word	4
	.word	0
_Label_413:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_414:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_415
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1789,r13		! source line 1789
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_416
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1795,r13		! source line 1795
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_417
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_417:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1802,r13		! source line 1802
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_418
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_419
	.word	8
	.word	4
	.word	0
_Label_418:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1809,r13		! source line 1809
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_420
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_421
	.word	8
	.word	4
	.word	0
_Label_420:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_421:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1816,r13		! source line 1816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_422
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_423
	.word	8
	.word	4
	.word	0
_Label_422:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_423:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_424
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_425
	.word	8
	.word	4
	.word	0
_Label_424:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1830,r13		! source line 1830
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_426
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	_Label_428
	.word	12
	.word	4
	.word	_Label_429
	.word	16
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_428:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_430
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_431
	.word	8
	.word	4
	.word	_Label_432
	.word	12
	.word	4
	.word	_Label_433
	.word	16
	.word	4
	.word	0
_Label_430:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_432:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_433:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_434
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_435
	.word	8
	.word	4
	.word	_Label_436
	.word	12
	.word	4
	.word	0
_Label_434:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_436:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_437
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_438
	.word	8
	.word	4
	.word	0
_Label_437:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_438:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_439
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_439:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_440
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_440:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1808:
	push	r0
	sub	r1,1,r1
	bne	_Label_1808
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_442		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_442
!	jmp	_Label_441
_Label_441:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_443 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	234,r13		! source line 234
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_442:
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_445
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_447
	.word	12
	.word	4
	.word	_Label_448
	.word	-12
	.word	4
	.word	_Label_449
	.word	-16
	.word	4
	.word	0
_Label_445:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_446:
	.ascii	"Pself\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1809:
	push	r0
	sub	r1,1,r1
	bne	_Label_1809
	mov	242,r13		! source line 242
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_451		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_451
!	jmp	_Label_450
_Label_450:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_452 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	248,r13		! source line 248
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_451:
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_454		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_454
!	jmp	_Label_453
_Label_453:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_455 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_456 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_457 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_454:
! ASSIGNMENT STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_458
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_460
	.word	-12
	.word	4
	.word	_Label_461
	.word	-16
	.word	4
	.word	_Label_462
	.word	-20
	.word	4
	.word	_Label_463
	.word	-24
	.word	4
	.word	_Label_464
	.word	-28
	.word	4
	.word	_Label_465
	.word	-32
	.word	4
	.word	0
_Label_458:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_459:
	.ascii	"Pself\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_465:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1810:
	push	r0
	sub	r1,1,r1
	bne	_Label_1810
	mov	261,r13		! source line 261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_467		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_467
!	jmp	_Label_466
_Label_466:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_468 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	266,r13		! source line 266
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_467:
! ASSIGNMENT STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_470		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_470
!	jmp	_Label_469
_Label_469:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_471 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_470:
! ASSIGNMENT STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_472
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_473
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_474
	.word	-12
	.word	4
	.word	_Label_475
	.word	-16
	.word	4
	.word	_Label_476
	.word	-20
	.word	4
	.word	0
_Label_472:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_473:
	.ascii	"Pself\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_477
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_477:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_478
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_478:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1811:
	push	r0
	sub	r1,1,r1
	bne	_Label_1811
	mov	296,r13		! source line 296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_480
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_482
	.word	-12
	.word	4
	.word	0
_Label_480:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_481:
	.ascii	"Pself\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1812:
	push	r0
	sub	r1,1,r1
	bne	_Label_1812
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_484		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_484
!	jmp	_Label_483
_Label_483:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_485 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_485  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	306,r13		! source line 306
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_484:
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	308,r13		! source line 308
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_489		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_489
!   _temp_488 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_490
_Label_489:
!   _temp_488 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_490:
!   if _temp_488 then goto _Label_487 else goto _Label_486
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_486
	jmp	_Label_487
_Label_486:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_491
_Label_487:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_492 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_491:
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_493
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_494
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_495
	.word	-16
	.word	4
	.word	_Label_496
	.word	-9
	.word	1
	.word	_Label_497
	.word	-20
	.word	4
	.word	_Label_498
	.word	-24
	.word	4
	.word	0
_Label_493:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_494:
	.ascii	"Pself\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_496:
	.byte	'C'
	.ascii	"_temp_488\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_498:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1813:
	push	r0
	sub	r1,1,r1
	bne	_Label_1813
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_500		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_500
!	jmp	_Label_499
_Label_499:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_501 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	325,r13		! source line 325
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_500:
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	327,r13		! source line 327
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
	mov	328,r13		! source line 328
	mov	"\0\0SE",r10
!   _temp_502 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_504		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_504
!	jmp	_Label_503
_Label_503:
! THEN...
	mov	330,r13		! source line 330
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_505 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_505 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_506 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_507
_Label_504:
! ELSE...
	mov	334,r13		! source line 334
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_507:
! ASSIGNMENT STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_508
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_510
	.word	-12
	.word	4
	.word	_Label_511
	.word	-16
	.word	4
	.word	_Label_512
	.word	-20
	.word	4
	.word	_Label_513
	.word	-24
	.word	4
	.word	_Label_514
	.word	-28
	.word	4
	.word	_Label_515
	.word	-32
	.word	4
	.word	0
_Label_508:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_509:
	.ascii	"Pself\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_514:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_515:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1814:
	push	r0
	sub	r1,1,r1
	bne	_Label_1814
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_518		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_518
!	jmp	_Label_517
_Label_517:
!   _temp_516 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_519
_Label_518:
!   _temp_516 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_519:
!   ReturnResult: _temp_516  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_520
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_521
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_522
	.word	-9
	.word	1
	.word	0
_Label_520:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_521:
	.ascii	"Pself\0"
	.align
_Label_522:
	.byte	'C'
	.ascii	"_temp_516\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_523
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_523:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_524
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_524:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1815:
	push	r0
	sub	r1,1,r1
	bne	_Label_1815
	mov	382,r13		! source line 382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_526
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_528
	.word	-12
	.word	4
	.word	0
_Label_526:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_527:
	.ascii	"Pself\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1816:
	push	r0
	sub	r1,1,r1
	bne	_Label_1816
	mov	388,r13		! source line 388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0IF",r10
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_531  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_531 then goto _Label_530 else goto _Label_529
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_529
	jmp	_Label_530
_Label_529:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_532 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	392,r13		! source line 392
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_530:
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_533 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_534
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_535
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_536
	.word	12
	.word	4
	.word	_Label_537
	.word	-16
	.word	4
	.word	_Label_538
	.word	-20
	.word	4
	.word	_Label_539
	.word	-9
	.word	1
	.word	_Label_540
	.word	-24
	.word	4
	.word	0
_Label_534:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_535:
	.ascii	"Pself\0"
	.align
_Label_536:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_539:
	.byte	'C'
	.ascii	"_temp_531\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1817:
	push	r0
	sub	r1,1,r1
	bne	_Label_1817
	mov	404,r13		! source line 404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0IF",r10
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_543  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_543 then goto _Label_542 else goto _Label_541
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_541
	jmp	_Label_542
_Label_541:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_544 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_544  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	409,r13		! source line 409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_542:
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	411,r13		! source line 411
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_545 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_547		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_547
!	jmp	_Label_546
_Label_546:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_548 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_548 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_549 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_547:
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_550
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_551
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_552
	.word	12
	.word	4
	.word	_Label_553
	.word	-16
	.word	4
	.word	_Label_554
	.word	-20
	.word	4
	.word	_Label_555
	.word	-24
	.word	4
	.word	_Label_556
	.word	-28
	.word	4
	.word	_Label_557
	.word	-9
	.word	1
	.word	_Label_558
	.word	-32
	.word	4
	.word	_Label_559
	.word	-36
	.word	4
	.word	0
_Label_550:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_551:
	.ascii	"Pself\0"
	.align
_Label_552:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_557:
	.byte	'C'
	.ascii	"_temp_543\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_559:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1818:
	push	r0
	sub	r1,1,r1
	bne	_Label_1818
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
	mov	426,r13		! source line 426
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_562  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_562 then goto _Label_561 else goto _Label_560
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_560
	jmp	_Label_561
_Label_560:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_563 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	427,r13		! source line 427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_561:
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0WH",r10
_Label_564:
!	jmp	_Label_565
_Label_565:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_567 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_568
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_568
	jmp	_Label_569
_Label_568:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_566
! END IF...
_Label_569:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_570 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_571 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_564
_Label_566:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_572
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_573
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_574
	.word	12
	.word	4
	.word	_Label_575
	.word	-16
	.word	4
	.word	_Label_576
	.word	-20
	.word	4
	.word	_Label_577
	.word	-24
	.word	4
	.word	_Label_578
	.word	-28
	.word	4
	.word	_Label_579
	.word	-9
	.word	1
	.word	_Label_580
	.word	-32
	.word	4
	.word	_Label_581
	.word	-36
	.word	4
	.word	0
_Label_572:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_573:
	.ascii	"Pself\0"
	.align
_Label_574:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_579:
	.byte	'C'
	.ascii	"_temp_562\0"
	.align
_Label_580:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_581:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_582
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_582:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_583
	.word	_sourceFileName
	.word	164		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_583:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1819:
	push	r0
	sub	r1,1,r1
	bne	_Label_1819
	mov	449,r13		! source line 449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_584 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_584) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_584 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_585 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_585 [0 ] into _temp_586
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_586 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_587 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_587 [999 ] into _temp_588
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_588 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_589 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_589 [999 ] into _temp_590
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_590		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_591 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_593 = &_temp_592
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_593 = _temp_593 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_595:
!   Data Move: *_temp_593 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_593 = _temp_593 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_594 = _temp_594 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_594) then goto _Label_595
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_595
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_596 = &_temp_592
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1820
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1820:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_591 = *_temp_596  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1821:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1821
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   _temp_597 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_599 = &_temp_598
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_599 = _temp_599 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_601:
!   Data Move: *_temp_599 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_599 = _temp_599 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_600 = _temp_600 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_600) then goto _Label_601
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_601
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_602 = &_temp_598
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1822
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1822:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_597 = *_temp_602  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1823:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1823
! RETURN STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_603
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_605
	.word	12
	.word	4
	.word	_Label_606
	.word	-12
	.word	4
	.word	_Label_607
	.word	-16
	.word	4
	.word	_Label_608
	.word	-20
	.word	4
	.word	_Label_609
	.word	-84
	.word	64
	.word	_Label_610
	.word	-88
	.word	4
	.word	_Label_611
	.word	-92
	.word	4
	.word	_Label_612
	.word	-96
	.word	4
	.word	_Label_613
	.word	-100
	.word	4
	.word	_Label_614
	.word	-156
	.word	56
	.word	_Label_615
	.word	-160
	.word	4
	.word	_Label_616
	.word	-164
	.word	4
	.word	_Label_617
	.word	-168
	.word	4
	.word	_Label_618
	.word	-172
	.word	4
	.word	_Label_619
	.word	-176
	.word	4
	.word	_Label_620
	.word	-180
	.word	4
	.word	_Label_621
	.word	-184
	.word	4
	.word	_Label_622
	.word	-188
	.word	4
	.word	0
_Label_603:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_604:
	.ascii	"Pself\0"
	.align
_Label_605:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1824:
	push	r0
	sub	r1,1,r1
	bne	_Label_1824
	mov	468,r13		! source line 468
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_623  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_625 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_624  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_626
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_627
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_628
	.word	12
	.word	4
	.word	_Label_629
	.word	16
	.word	4
	.word	_Label_630
	.word	-12
	.word	4
	.word	_Label_631
	.word	-16
	.word	4
	.word	_Label_632
	.word	-20
	.word	4
	.word	_Label_633
	.word	-24
	.word	4
	.word	_Label_634
	.word	-28
	.word	4
	.word	0
_Label_626:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_627:
	.ascii	"Pself\0"
	.align
_Label_628:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_629:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_634:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1825:
	push	r0
	sub	r1,1,r1
	bne	_Label_1825
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_637 == _P_Kernel_currentThread then goto _Label_636		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_636
!	jmp	_Label_635
_Label_635:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_638 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	509,r13		! source line 509
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_636:
! ASSIGNMENT STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
	mov	515,r13		! source line 515
	mov	"\0\0SE",r10
!   _temp_639 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_641		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_641
!	jmp	_Label_640
_Label_640:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_643		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_643
!	jmp	_Label_642
_Label_642:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_644 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	521,r13		! source line 521
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_643:
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_646 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_645  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_641:
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_647
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_649
	.word	-12
	.word	4
	.word	_Label_650
	.word	-16
	.word	4
	.word	_Label_651
	.word	-20
	.word	4
	.word	_Label_652
	.word	-24
	.word	4
	.word	_Label_653
	.word	-28
	.word	4
	.word	_Label_654
	.word	-32
	.word	4
	.word	_Label_655
	.word	-36
	.word	4
	.word	_Label_656
	.word	-40
	.word	4
	.word	_Label_657
	.word	-44
	.word	4
	.word	0
_Label_647:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_648:
	.ascii	"Pself\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_655:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_656:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_657:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1826:
	push	r0
	sub	r1,1,r1
	bne	_Label_1826
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_659		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_659
!	jmp	_Label_658
_Label_658:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_660 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	545,r13		! source line 545
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_659:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_663 == _P_Kernel_currentThread then goto _Label_662		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_662
!	jmp	_Label_661
_Label_661:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_664 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	549,r13		! source line 549
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_662:
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0AS",r10
	mov	555,r13		! source line 555
	mov	"\0\0SE",r10
!   _temp_665 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_666
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_666
	jmp	_Label_667
_Label_666:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_668 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_668  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	557,r13		! source line 557
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_667:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	559,r13		! source line 559
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_669
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_670
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_671
	.word	-12
	.word	4
	.word	_Label_672
	.word	-16
	.word	4
	.word	_Label_673
	.word	-20
	.word	4
	.word	_Label_674
	.word	-24
	.word	4
	.word	_Label_675
	.word	-28
	.word	4
	.word	_Label_676
	.word	-32
	.word	4
	.word	0
_Label_669:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_670:
	.ascii	"Pself\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_676:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1827:
	push	r0
	sub	r1,1,r1
	bne	_Label_1827
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_680 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_680 [0 ] into _temp_681
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_679 = *_temp_681  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_679 == 606348324 then goto _Label_678		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_678
!	jmp	_Label_677
_Label_677:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_682 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_683
_Label_678:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_687 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_687 [999 ] into _temp_688
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_686 = *_temp_688  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_686 == 606348324 then goto _Label_685		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_685
!	jmp	_Label_684
_Label_684:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	573,r13		! source line 573
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_685:
! END IF...
_Label_683:
! RETURN STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_690
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_692
	.word	-12
	.word	4
	.word	_Label_693
	.word	-16
	.word	4
	.word	_Label_694
	.word	-20
	.word	4
	.word	_Label_695
	.word	-24
	.word	4
	.word	_Label_696
	.word	-28
	.word	4
	.word	_Label_697
	.word	-32
	.word	4
	.word	_Label_698
	.word	-36
	.word	4
	.word	_Label_699
	.word	-40
	.word	4
	.word	0
_Label_690:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_691:
	.ascii	"Pself\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1828:
	push	r0
	sub	r1,1,r1
	bne	_Label_1828
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_700 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_701 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_703 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_704 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_709 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_710 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_709  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_705:
!   Perform the FOR-LOOP termination test
!   if i > _temp_710 then goto _Label_708		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_708
_Label_706:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_711 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_712 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_713 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_715 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_715 [i ] into _temp_716
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_714 = *_temp_716  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_717 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_719 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_719 [i ] into _temp_720
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_718 = *_temp_720  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_721 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_707:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_705
! END FOR
_Label_708:
! CALL STATEMENT...
!   _temp_722 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-116]
!   _temp_723 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_723  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_724 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-108]
!   _temp_726 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_726 [0 ] into _temp_727
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_725 = _temp_727		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_725  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	603,r13		! source line 603
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_730
	cmp	r1,2
	be	_Label_731
	cmp	r1,3
	be	_Label_732
	cmp	r1,4
	be	_Label_733
	cmp	r1,5
	be	_Label_734
	jmp	_Label_728
! CASE 1...
_Label_730:
! CALL STATEMENT...
!   _temp_735 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_729
! CASE 2...
_Label_731:
! CALL STATEMENT...
!   _temp_736 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_729
! CASE 3...
_Label_732:
! CALL STATEMENT...
!   _temp_737 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_729
! CASE 4...
_Label_733:
! CALL STATEMENT...
!   _temp_738 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_729
! CASE 5...
_Label_734:
! CALL STATEMENT...
!   _temp_739 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_729
! DEFAULT CASE...
_Label_728:
! CALL STATEMENT...
!   _temp_740 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	620,r13		! source line 620
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_729:
! CALL STATEMENT...
!   _temp_741 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_742 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	625,r13		! source line 625
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_747 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_748 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_747  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_743:
!   Perform the FOR-LOOP termination test
!   if i > _temp_748 then goto _Label_746		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_746
_Label_744:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_749 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_751 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_753 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_753 [i ] into _temp_754
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_752 = *_temp_754  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_755 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_757 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_757 [i ] into _temp_758
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_756 = *_temp_758  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_759 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_745:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_743
! END FOR
_Label_746:
! ASSIGNMENT STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_760
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_761
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_762
	.word	-12
	.word	4
	.word	_Label_763
	.word	-16
	.word	4
	.word	_Label_764
	.word	-20
	.word	4
	.word	_Label_765
	.word	-24
	.word	4
	.word	_Label_766
	.word	-28
	.word	4
	.word	_Label_767
	.word	-32
	.word	4
	.word	_Label_768
	.word	-36
	.word	4
	.word	_Label_769
	.word	-40
	.word	4
	.word	_Label_770
	.word	-44
	.word	4
	.word	_Label_771
	.word	-48
	.word	4
	.word	_Label_772
	.word	-52
	.word	4
	.word	_Label_773
	.word	-56
	.word	4
	.word	_Label_774
	.word	-60
	.word	4
	.word	_Label_775
	.word	-64
	.word	4
	.word	_Label_776
	.word	-68
	.word	4
	.word	_Label_777
	.word	-72
	.word	4
	.word	_Label_778
	.word	-76
	.word	4
	.word	_Label_779
	.word	-80
	.word	4
	.word	_Label_780
	.word	-84
	.word	4
	.word	_Label_781
	.word	-88
	.word	4
	.word	_Label_782
	.word	-92
	.word	4
	.word	_Label_783
	.word	-96
	.word	4
	.word	_Label_784
	.word	-100
	.word	4
	.word	_Label_785
	.word	-104
	.word	4
	.word	_Label_786
	.word	-108
	.word	4
	.word	_Label_787
	.word	-112
	.word	4
	.word	_Label_788
	.word	-116
	.word	4
	.word	_Label_789
	.word	-120
	.word	4
	.word	_Label_790
	.word	-124
	.word	4
	.word	_Label_791
	.word	-128
	.word	4
	.word	_Label_792
	.word	-132
	.word	4
	.word	_Label_793
	.word	-136
	.word	4
	.word	_Label_794
	.word	-140
	.word	4
	.word	_Label_795
	.word	-144
	.word	4
	.word	_Label_796
	.word	-148
	.word	4
	.word	_Label_797
	.word	-152
	.word	4
	.word	_Label_798
	.word	-156
	.word	4
	.word	_Label_799
	.word	-160
	.word	4
	.word	_Label_800
	.word	-164
	.word	4
	.word	_Label_801
	.word	-168
	.word	4
	.word	_Label_802
	.word	-172
	.word	4
	.word	_Label_803
	.word	-176
	.word	4
	.word	_Label_804
	.word	-180
	.word	4
	.word	_Label_805
	.word	-184
	.word	4
	.word	_Label_806
	.word	-188
	.word	4
	.word	_Label_807
	.word	-192
	.word	4
	.word	_Label_808
	.word	-196
	.word	4
	.word	0
_Label_760:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_761:
	.ascii	"Pself\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_709\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_808:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_809
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_809:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_810
	.word	_sourceFileName
	.word	191		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_810:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11507,r1
_Label_1829:
	push	r0
	sub	r1,1,r1
	bne	_Label_1829
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_811 = _StringConst_74
	set	_StringConst_74,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41700,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41700,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0AS",r10
!   _temp_813 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_815 = &_temp_814
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_815 = _temp_815 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_817 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_1830:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1830
!   _temp_817 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_819:
!   Data Move: *_temp_815 = _temp_817  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_1831:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1831
!   _temp_815 = _temp_815 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_816 = _temp_816 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_816) then goto _Label_819
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_819
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_820 = &_temp_814
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1832
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1832:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_813 = *_temp_820  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1833:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1833
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_821 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-188]
!   _temp_822 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_822 [0 ] into _temp_823
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Prepare Argument: offset=12  value=_temp_821  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0SE",r10
!   _temp_824 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-176]
!   _temp_825 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_825 [1 ] into _temp_826
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-172],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-168]
!   Prepare Argument: offset=12  value=_temp_824  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_827 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-164]
!   _temp_828 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_828 [2 ] into _temp_829
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-160],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-156]
!   Prepare Argument: offset=12  value=_temp_827  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-156],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
!   _temp_830 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-152]
!   _temp_831 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_831 [3 ] into _temp_832
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-148],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-144]
!   Prepare Argument: offset=12  value=_temp_830  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_833 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-140]
!   _temp_834 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_834 [4 ] into _temp_835
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   Prepare Argument: offset=12  value=_temp_833  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0SE",r10
!   _temp_836 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-128]
!   _temp_837 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_837 [5 ] into _temp_838
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Prepare Argument: offset=12  value=_temp_836  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0SE",r10
!   _temp_839 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-116]
!   _temp_840 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_840 [6 ] into _temp_841
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-112],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   Prepare Argument: offset=12  value=_temp_839  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0SE",r10
!   _temp_842 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-104]
!   _temp_843 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_843 [7 ] into _temp_844
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_842  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0SE",r10
!   _temp_845 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-92]
!   _temp_846 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_846 [8 ] into _temp_847
!     make sure index expr is >= 0
	mov	8,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Prepare Argument: offset=12  value=_temp_845  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0SE",r10
!   _temp_848 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-80]
!   _temp_849 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_849 [9 ] into _temp_850
!     make sure index expr is >= 0
	mov	9,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_848  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_855 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_856 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_855  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_851:
!   Perform the FOR-LOOP termination test
!   if index > _temp_856 then goto _Label_854		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_854
_Label_852:
	mov	718,r13		! source line 718
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0AS",r10
!   _temp_857 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_857 [index ] into _temp_858
!     make sure index expr is >= 0
	set	-46028,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_859 = _temp_858 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_859 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0SE",r10
!   _temp_861 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_861 [index ] into _temp_862
!     make sure index expr is >= 0
	set	-46028,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_860 = _temp_862		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_863 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_860  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_853:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_851
! END FOR
_Label_854:
! ASSIGNMENT STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0SE",r10
!   _temp_865 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	728,r13		! source line 728
	mov	"\0\0SE",r10
!   _temp_867 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: leadThread = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   leadThread = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0SE",r10
!   _temp_869 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	730,r13		! source line 730
	mov	"\0\0RE",r10
	set	46032,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_870
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_872
	.word	-12
	.word	4
	.word	_Label_873
	.word	-16
	.word	4
	.word	_Label_874
	.word	-20
	.word	4
	.word	_Label_875
	.word	-24
	.word	4
	.word	_Label_876
	.word	-28
	.word	4
	.word	_Label_877
	.word	-32
	.word	4
	.word	_Label_878
	.word	-36
	.word	4
	.word	_Label_879
	.word	-40
	.word	4
	.word	_Label_880
	.word	-44
	.word	4
	.word	_Label_881
	.word	-48
	.word	4
	.word	_Label_882
	.word	-52
	.word	4
	.word	_Label_883
	.word	-56
	.word	4
	.word	_Label_884
	.word	-60
	.word	4
	.word	_Label_885
	.word	-64
	.word	4
	.word	_Label_886
	.word	-68
	.word	4
	.word	_Label_887
	.word	-72
	.word	4
	.word	_Label_888
	.word	-76
	.word	4
	.word	_Label_889
	.word	-80
	.word	4
	.word	_Label_890
	.word	-84
	.word	4
	.word	_Label_891
	.word	-88
	.word	4
	.word	_Label_892
	.word	-92
	.word	4
	.word	_Label_893
	.word	-96
	.word	4
	.word	_Label_894
	.word	-100
	.word	4
	.word	_Label_895
	.word	-104
	.word	4
	.word	_Label_896
	.word	-108
	.word	4
	.word	_Label_897
	.word	-112
	.word	4
	.word	_Label_898
	.word	-116
	.word	4
	.word	_Label_899
	.word	-120
	.word	4
	.word	_Label_900
	.word	-124
	.word	4
	.word	_Label_901
	.word	-128
	.word	4
	.word	_Label_902
	.word	-132
	.word	4
	.word	_Label_903
	.word	-136
	.word	4
	.word	_Label_904
	.word	-140
	.word	4
	.word	_Label_905
	.word	-144
	.word	4
	.word	_Label_906
	.word	-148
	.word	4
	.word	_Label_907
	.word	-152
	.word	4
	.word	_Label_908
	.word	-156
	.word	4
	.word	_Label_909
	.word	-160
	.word	4
	.word	_Label_910
	.word	-164
	.word	4
	.word	_Label_911
	.word	-168
	.word	4
	.word	_Label_912
	.word	-172
	.word	4
	.word	_Label_913
	.word	-176
	.word	4
	.word	_Label_914
	.word	-180
	.word	4
	.word	_Label_915
	.word	-184
	.word	4
	.word	_Label_916
	.word	-188
	.word	4
	.word	_Label_917
	.word	-192
	.word	4
	.word	_Label_918
	.word	-196
	.word	4
	.word	_Label_919
	.word	-4360
	.word	4164
	.word	_Label_920
	.word	-4364
	.word	4
	.word	_Label_921
	.word	-4368
	.word	4
	.word	_Label_922
	.word	-46012
	.word	41644
	.word	_Label_923
	.word	-46016
	.word	4
	.word	_Label_924
	.word	-46020
	.word	4
	.word	_Label_925
	.word	-46024
	.word	4
	.word	_Label_926
	.word	-46028
	.word	4
	.word	0
_Label_870:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_871:
	.ascii	"Pself\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_855\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_821\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_926:
	.byte	'I'
	.ascii	"index\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1834:
	push	r0
	sub	r1,1,r1
	bne	_Label_1834
	mov	736,r13		! source line 736
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_927 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_927  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	745,r13		! source line 745
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_932 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_933 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_932  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_928:
!   Perform the FOR-LOOP termination test
!   if i > _temp_933 then goto _Label_931		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_931
_Label_929:
	mov	745,r13		! source line 745
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_934 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_934  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_935 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_935  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_937 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_937 [i ] into _temp_938
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_936 = _temp_938		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_936  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CA",r10
	call	_function_136_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_930:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_928
! END FOR
_Label_931:
! CALL STATEMENT...
!   _temp_939 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_939  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0SE",r10
!   _temp_940 = _function_135_PrintObjectAddr
	set	_function_135_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_941 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_940  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_942
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_944
	.word	-12
	.word	4
	.word	_Label_945
	.word	-16
	.word	4
	.word	_Label_946
	.word	-20
	.word	4
	.word	_Label_947
	.word	-24
	.word	4
	.word	_Label_948
	.word	-28
	.word	4
	.word	_Label_949
	.word	-32
	.word	4
	.word	_Label_950
	.word	-36
	.word	4
	.word	_Label_951
	.word	-40
	.word	4
	.word	_Label_952
	.word	-44
	.word	4
	.word	_Label_953
	.word	-48
	.word	4
	.word	_Label_954
	.word	-52
	.word	4
	.word	_Label_955
	.word	-56
	.word	4
	.word	_Label_956
	.word	-60
	.word	4
	.word	0
_Label_942:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_943:
	.ascii	"Pself\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_955:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_956:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	12,r1
_Label_1835:
	push	r0
	sub	r1,1,r1
	bne	_Label_1835
	mov	759,r13		! source line 759
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_957 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0WH",r10
_Label_958:
	mov	771,r13		! source line 771
	mov	"\0\0SE",r10
!   _temp_961 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_959 else goto _Label_960
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_960
	jmp	_Label_959
_Label_959:
	mov	771,r13		! source line 771
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_962 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_963 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_962  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_958
_Label_960:
! ASSIGNMENT STATEMENT...
	mov	775,r13		! source line 775
	mov	"\0\0AS",r10
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_964 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadToReturn  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0AS",r10
!   if intIsZero (threadToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_965 = threadToReturn + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_965 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0SE",r10
!   _temp_966 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_967 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_966  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	778,r13		! source line 778
	mov	"\0\0SE",r10
!   _temp_968 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	779,r13		! source line 779
	mov	"\0\0RE",r10
!   ReturnResult: threadToReturn  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_969
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_971
	.word	-12
	.word	4
	.word	_Label_972
	.word	-16
	.word	4
	.word	_Label_973
	.word	-20
	.word	4
	.word	_Label_974
	.word	-24
	.word	4
	.word	_Label_975
	.word	-28
	.word	4
	.word	_Label_976
	.word	-32
	.word	4
	.word	_Label_977
	.word	-36
	.word	4
	.word	_Label_978
	.word	-40
	.word	4
	.word	_Label_979
	.word	-44
	.word	4
	.word	_Label_980
	.word	-48
	.word	4
	.word	0
_Label_969:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_970:
	.ascii	"Pself\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_980:
	.byte	'P'
	.ascii	"threadToReturn\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	9,r1
_Label_1836:
	push	r0
	sub	r1,1,r1
	bne	_Label_1836
	mov	786,r13		! source line 786
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0SE",r10
!   _temp_981 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	795,r13		! source line 795
	mov	"\0\0IF",r10
!   if th == 0 then goto _Label_983		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_983
!	jmp	_Label_982
_Label_982:
! THEN...
	mov	796,r13		! source line 796
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_984 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_984 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_985 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	798,r13		! source line 798
	mov	"\0\0SE",r10
!   _temp_986 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_987 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_986  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_988
_Label_983:
! ELSE...
	mov	800,r13		! source line 800
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_989 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	800,r13		! source line 800
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_988:
! SEND STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_990 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_991
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_992
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_993
	.word	12
	.word	4
	.word	_Label_994
	.word	-12
	.word	4
	.word	_Label_995
	.word	-16
	.word	4
	.word	_Label_996
	.word	-20
	.word	4
	.word	_Label_997
	.word	-24
	.word	4
	.word	_Label_998
	.word	-28
	.word	4
	.word	_Label_999
	.word	-32
	.word	4
	.word	_Label_1000
	.word	-36
	.word	4
	.word	0
_Label_991:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_992:
	.ascii	"Pself\0"
	.align
_Label_993:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_986\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_985\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1001
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1001:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1002
	.word	_sourceFileName
	.word	215		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1002:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1837:
	push	r0
	sub	r1,1,r1
	bne	_Label_1837
	mov	816,r13		! source line 816
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1838:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1838
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0SE",r10
!   _temp_1004 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1005
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1007
	.word	-12
	.word	4
	.word	_Label_1008
	.word	-16
	.word	4
	.word	0
_Label_1005:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1006:
	.ascii	"Pself\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1839:
	push	r0
	sub	r1,1,r1
	bne	_Label_1839
	mov	830,r13		! source line 830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	835,r13		! source line 835
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1009) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	836,r13		! source line 836
	mov	"\0\0SE",r10
!   _temp_1010 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1011 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1011  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CA",r10
	call	_function_136_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1012
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1013
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1014
	.word	-12
	.word	4
	.word	_Label_1015
	.word	-16
	.word	4
	.word	_Label_1016
	.word	-20
	.word	4
	.word	0
_Label_1012:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1013:
	.ascii	"Pself\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1840:
	push	r0
	sub	r1,1,r1
	bne	_Label_1840
	mov	853,r13		! source line 853
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1017 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1017  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1018  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1019 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1020 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1022		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1022
!	jmp	_Label_1021
_Label_1021:
! THEN...
	mov	863,r13		! source line 863
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1023 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1024
_Label_1022:
! ELSE...
	mov	864,r13		! source line 864
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1026		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1026
!	jmp	_Label_1025
_Label_1025:
! THEN...
	mov	865,r13		! source line 865
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1027 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1028
_Label_1026:
! ELSE...
	mov	866,r13		! source line 866
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	866,r13		! source line 866
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1030		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1030
!	jmp	_Label_1029
_Label_1029:
! THEN...
	mov	867,r13		! source line 867
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1031 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1032
_Label_1030:
! ELSE...
	mov	869,r13		! source line 869
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1033 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	869,r13		! source line 869
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1032:
! END IF...
_Label_1028:
! END IF...
_Label_1024:
! CALL STATEMENT...
!   _temp_1034 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	872,r13		! source line 872
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1035 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	875,r13		! source line 875
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	875,r13		! source line 875
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1036
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	-12
	.word	4
	.word	_Label_1039
	.word	-16
	.word	4
	.word	_Label_1040
	.word	-20
	.word	4
	.word	_Label_1041
	.word	-24
	.word	4
	.word	_Label_1042
	.word	-28
	.word	4
	.word	_Label_1043
	.word	-32
	.word	4
	.word	_Label_1044
	.word	-36
	.word	4
	.word	_Label_1045
	.word	-40
	.word	4
	.word	_Label_1046
	.word	-44
	.word	4
	.word	_Label_1047
	.word	-48
	.word	4
	.word	0
_Label_1036:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1048
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1048:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1049
	.word	_sourceFileName
	.word	235		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1049:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	365,r1
_Label_1841:
	push	r0
	sub	r1,1,r1
	bne	_Label_1841
	mov	886,r13		! source line 886
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	902,r13		! source line 902
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0AS",r10
!   _temp_1051 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1452]
!   NEW ARRAY Constructor...
!   _temp_1053 = &_temp_1052
	add	r14,-1448,r1
	store	r1,[r14+-204]
!   _temp_1053 = _temp_1053 + 4
	load	[r14+-204],r1
	add	r1,4,r1
	store	r1,[r14+-204]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1055 = zeros  (sizeInBytes=124)
	add	r14,-196,r4
	mov	31,r3
_Label_1842:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1842
!   _temp_1055 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-196]
	mov	10,r1
	store	r1,[r14+-200]
_Label_1057:
!   Data Move: *_temp_1053 = _temp_1055  (sizeInBytes=124)
	add	r14,-196,r5
	load	[r14+-204],r4
	mov	31,r3
_Label_1843:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1843
!   _temp_1053 = _temp_1053 + 124
	load	[r14+-204],r1
	add	r1,124,r1
	store	r1,[r14+-204]
!   _temp_1054 = _temp_1054 + -1
	load	[r14+-200],r1
	add	r1,-1,r1
	store	r1,[r14+-200]
!   if intNotZero (_temp_1054) then goto _Label_1057
	load	[r14+-200],r1
	cmp	r1,r0
	bne	_Label_1057
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1448]
!   _temp_1058 = &_temp_1052
	add	r14,-1448,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1452],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1844
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1844:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1051 = *_temp_1058  (sizeInBytes=1244)
	load	[r14+-68],r5
	load	[r14+-1452],r4
	mov	311,r3
_Label_1845:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1845
! FOR STATEMENT...
	mov	906,r13		! source line 906
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1063 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1064 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1063  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1460]
_Label_1059:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1064 then goto _Label_1062		
	load	[r14+-1460],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1062
_Label_1060:
	mov	906,r13		! source line 906
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_1065 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1065 [index ] into _temp_1066
!     make sure index expr is >= 0
	load	[r14+-1460],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1068 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1068 [index ] into _temp_1069
!     make sure index expr is >= 0
	load	[r14+-1460],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1067 = _temp_1069		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1070 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1067  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1061:
!   index = index + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1059
! END FOR
_Label_1062:
! ASSIGNMENT STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1072 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	915,r13		! source line 915
	mov	"\0\0SE",r10
!   _temp_1074 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0SE",r10
!   _temp_1076 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0RE",r10
	add	r15,1464,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1077
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1079
	.word	-12
	.word	4
	.word	_Label_1080
	.word	-16
	.word	4
	.word	_Label_1081
	.word	-20
	.word	4
	.word	_Label_1082
	.word	-24
	.word	4
	.word	_Label_1083
	.word	-28
	.word	4
	.word	_Label_1084
	.word	-32
	.word	4
	.word	_Label_1085
	.word	-36
	.word	4
	.word	_Label_1086
	.word	-40
	.word	4
	.word	_Label_1087
	.word	-44
	.word	4
	.word	_Label_1088
	.word	-48
	.word	4
	.word	_Label_1089
	.word	-52
	.word	4
	.word	_Label_1090
	.word	-56
	.word	4
	.word	_Label_1091
	.word	-60
	.word	4
	.word	_Label_1092
	.word	-64
	.word	4
	.word	_Label_1093
	.word	-68
	.word	4
	.word	_Label_1094
	.word	-72
	.word	4
	.word	_Label_1095
	.word	-196
	.word	124
	.word	_Label_1096
	.word	-200
	.word	4
	.word	_Label_1097
	.word	-204
	.word	4
	.word	_Label_1098
	.word	-1448
	.word	1244
	.word	_Label_1099
	.word	-1452
	.word	4
	.word	_Label_1100
	.word	-1456
	.word	4
	.word	_Label_1101
	.word	-1460
	.word	4
	.word	0
_Label_1077:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1078:
	.ascii	"Pself\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1101:
	.byte	'I'
	.ascii	"index\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1846:
	push	r0
	sub	r1,1,r1
	bne	_Label_1846
	mov	924,r13		! source line 924
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1102 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	932,r13		! source line 932
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1107 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1108 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1107  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1103:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1108 then goto _Label_1106		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1106
_Label_1104:
	mov	933,r13		! source line 933
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1109 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1110 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0SE",r10
!   _temp_1111 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1111 [i ] into _temp_1112
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1105:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1103
! END FOR
_Label_1106:
! CALL STATEMENT...
!   _temp_1113 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1113  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1114 = _function_135_PrintObjectAddr
	set	_function_135_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1115 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1114  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	941,r13		! source line 941
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1116
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1117
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1118
	.word	-12
	.word	4
	.word	_Label_1119
	.word	-16
	.word	4
	.word	_Label_1120
	.word	-20
	.word	4
	.word	_Label_1121
	.word	-24
	.word	4
	.word	_Label_1122
	.word	-28
	.word	4
	.word	_Label_1123
	.word	-32
	.word	4
	.word	_Label_1124
	.word	-36
	.word	4
	.word	_Label_1125
	.word	-40
	.word	4
	.word	_Label_1126
	.word	-44
	.word	4
	.word	_Label_1127
	.word	-48
	.word	4
	.word	_Label_1128
	.word	-52
	.word	4
	.word	_Label_1129
	.word	-56
	.word	4
	.word	0
_Label_1116:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1117:
	.ascii	"Pself\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1128:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1129:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1847:
	push	r0
	sub	r1,1,r1
	bne	_Label_1847
	mov	947,r13		! source line 947
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1130 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1135 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1136 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1135  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1131:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1136 then goto _Label_1134		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1134
_Label_1132:
	mov	956,r13		! source line 956
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1137 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	958,r13		! source line 958
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1138 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1138 [i ] into _temp_1139
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1133:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1131
! END FOR
_Label_1134:
! CALL STATEMENT...
!   _temp_1140 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	961,r13		! source line 961
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_1141 = _function_135_PrintObjectAddr
	set	_function_135_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1142 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1141  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	963,r13		! source line 963
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	964,r13		! source line 964
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	964,r13		! source line 964
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1143
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1144
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1145
	.word	-12
	.word	4
	.word	_Label_1146
	.word	-16
	.word	4
	.word	_Label_1147
	.word	-20
	.word	4
	.word	_Label_1148
	.word	-24
	.word	4
	.word	_Label_1149
	.word	-28
	.word	4
	.word	_Label_1150
	.word	-32
	.word	4
	.word	_Label_1151
	.word	-36
	.word	4
	.word	_Label_1152
	.word	-40
	.word	4
	.word	_Label_1153
	.word	-44
	.word	4
	.word	_Label_1154
	.word	-48
	.word	4
	.word	_Label_1155
	.word	-52
	.word	4
	.word	0
_Label_1143:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1144:
	.ascii	"Pself\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1154:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1155:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	10,r1
_Label_1848:
	push	r0
	sub	r1,1,r1
	bne	_Label_1848
	mov	969,r13		! source line 969
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1156 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0WH",r10
_Label_1157:
	mov	981,r13		! source line 981
	mov	"\0\0SE",r10
!   _temp_1160 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1158 else goto _Label_1159
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1159
	jmp	_Label_1158
_Label_1158:
	mov	981,r13		! source line 981
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1161 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1162 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1161  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1157
_Label_1159:
! ASSIGNMENT STATEMENT...
	mov	985,r13		! source line 985
	mov	"\0\0AS",r10
	mov	985,r13		! source line 985
	mov	"\0\0SE",r10
!   _temp_1163 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processToReturn  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	986,r13		! source line 986
	mov	"\0\0AS",r10
!   if intIsZero (processToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1164 = processToReturn + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1164 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_1165 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0RE",r10
!   ReturnResult: processToReturn  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1166
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1167
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1168
	.word	-12
	.word	4
	.word	_Label_1169
	.word	-16
	.word	4
	.word	_Label_1170
	.word	-20
	.word	4
	.word	_Label_1171
	.word	-24
	.word	4
	.word	_Label_1172
	.word	-28
	.word	4
	.word	_Label_1173
	.word	-32
	.word	4
	.word	_Label_1174
	.word	-36
	.word	4
	.word	_Label_1175
	.word	-40
	.word	4
	.word	0
_Label_1166:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1167:
	.ascii	"Pself\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1175:
	.byte	'P'
	.ascii	"processToReturn\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1849:
	push	r0
	sub	r1,1,r1
	bne	_Label_1849
	mov	997,r13		! source line 997
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1005,r13		! source line 1005
	mov	"\0\0SE",r10
!   _temp_1176 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1177 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1177 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1007,r13		! source line 1007
	mov	"\0\0SE",r10
!   _temp_1178 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1008,r13		! source line 1008
	mov	"\0\0SE",r10
!   _temp_1179 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1180 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1179  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1181 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1182
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1184
	.word	12
	.word	4
	.word	_Label_1185
	.word	-12
	.word	4
	.word	_Label_1186
	.word	-16
	.word	4
	.word	_Label_1187
	.word	-20
	.word	4
	.word	_Label_1188
	.word	-24
	.word	4
	.word	_Label_1189
	.word	-28
	.word	4
	.word	_Label_1190
	.word	-32
	.word	4
	.word	0
_Label_1182:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1183:
	.ascii	"Pself\0"
	.align
_Label_1184:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1191
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1191:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1192
	.word	_sourceFileName
	.word	258		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1192:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1850:
	push	r0
	sub	r1,1,r1
	bne	_Label_1850
	mov	1043,r13		! source line 1043
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1193 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1050,r13		! source line 1050
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1195 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1052,r13		! source line 1052
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1197 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1199 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1204 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1205 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1204  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1200:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1205 then goto _Label_1203		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1203
_Label_1201:
	mov	1062,r13		! source line 1062
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1208 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1208) then goto _Label_1207
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1207
!	jmp	_Label_1206
_Label_1206:
! THEN...
	mov	1066,r13		! source line 1066
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1209 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1209  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1066,r13		! source line 1066
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1207:
!   Increment the FOR-LOOP index variable and jump back
_Label_1202:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1200
! END FOR
_Label_1203:
! RETURN STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1210
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1211
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1212
	.word	-12
	.word	4
	.word	_Label_1213
	.word	-16
	.word	4
	.word	_Label_1214
	.word	-20
	.word	4
	.word	_Label_1215
	.word	-24
	.word	4
	.word	_Label_1216
	.word	-28
	.word	4
	.word	_Label_1217
	.word	-32
	.word	4
	.word	_Label_1218
	.word	-36
	.word	4
	.word	_Label_1219
	.word	-40
	.word	4
	.word	_Label_1220
	.word	-44
	.word	4
	.word	_Label_1221
	.word	-48
	.word	4
	.word	_Label_1222
	.word	-52
	.word	4
	.word	_Label_1223
	.word	-56
	.word	4
	.word	0
_Label_1210:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1211:
	.ascii	"Pself\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1223:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1851:
	push	r0
	sub	r1,1,r1
	bne	_Label_1851
	mov	1073,r13		! source line 1073
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0SE",r10
!   _temp_1224 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1225 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1078,r13		! source line 1078
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1226 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1079,r13		! source line 1079
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1227 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1081,r13		! source line 1081
	mov	"\0\0SE",r10
!   _temp_1228 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0SE",r10
!   _temp_1229 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1230
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1231
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1232
	.word	-12
	.word	4
	.word	_Label_1233
	.word	-16
	.word	4
	.word	_Label_1234
	.word	-20
	.word	4
	.word	_Label_1235
	.word	-24
	.word	4
	.word	_Label_1236
	.word	-28
	.word	4
	.word	_Label_1237
	.word	-32
	.word	4
	.word	0
_Label_1230:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1231:
	.ascii	"Pself\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1852:
	push	r0
	sub	r1,1,r1
	bne	_Label_1852
	mov	1087,r13		! source line 1087
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1238 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1098,r13		! source line 1098
	mov	"\0\0WH",r10
_Label_1239:
!   if numberFreeFrames >= 1 then goto _Label_1241		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1241
!	jmp	_Label_1240
_Label_1240:
	mov	1098,r13		! source line 1098
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1099,r13		! source line 1099
	mov	"\0\0SE",r10
!   _temp_1242 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1243 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1242  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1239
_Label_1241:
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
	mov	1103,r13		! source line 1103
	mov	"\0\0SE",r10
!   _temp_1244 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0SE",r10
!   _temp_1245 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0AS",r10
!   _temp_1246 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1246		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1112,r13		! source line 1112
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1247
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1248
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1249
	.word	-12
	.word	4
	.word	_Label_1250
	.word	-16
	.word	4
	.word	_Label_1251
	.word	-20
	.word	4
	.word	_Label_1252
	.word	-24
	.word	4
	.word	_Label_1253
	.word	-28
	.word	4
	.word	_Label_1254
	.word	-32
	.word	4
	.word	_Label_1255
	.word	-36
	.word	4
	.word	_Label_1256
	.word	-40
	.word	4
	.word	0
_Label_1247:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1248:
	.ascii	"Pself\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1255:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1256:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	18,r1
_Label_1853:
	push	r0
	sub	r1,1,r1
	bne	_Label_1853
	mov	1117,r13		! source line 1117
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1257 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   Send message Lock
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0WH",r10
_Label_1258:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1260		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1260
!	jmp	_Label_1259
_Label_1259:
	mov	1130,r13		! source line 1130
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1261 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1262 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1261  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1258
_Label_1260:
! FOR STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1267 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1268 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1267  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1263:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1268 then goto _Label_1266		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1266
_Label_1264:
	mov	1137,r13		! source line 1137
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0AS",r10
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   _temp_1269 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Send message FindZeroAndSet
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=frame  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   _temp_1270 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_1270		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=index  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=addr  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1265:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1263
! END FOR
_Label_1266:
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1271 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1274 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1273 = *_temp_1274  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1272 = _temp_1273 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1271 = _temp_1272  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_1275 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1276
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1278
	.word	12
	.word	4
	.word	_Label_1279
	.word	16
	.word	4
	.word	_Label_1280
	.word	-12
	.word	4
	.word	_Label_1281
	.word	-16
	.word	4
	.word	_Label_1282
	.word	-20
	.word	4
	.word	_Label_1283
	.word	-24
	.word	4
	.word	_Label_1284
	.word	-28
	.word	4
	.word	_Label_1285
	.word	-32
	.word	4
	.word	_Label_1286
	.word	-36
	.word	4
	.word	_Label_1287
	.word	-40
	.word	4
	.word	_Label_1288
	.word	-44
	.word	4
	.word	_Label_1289
	.word	-48
	.word	4
	.word	_Label_1290
	.word	-52
	.word	4
	.word	_Label_1291
	.word	-56
	.word	4
	.word	_Label_1292
	.word	-60
	.word	4
	.word	_Label_1293
	.word	-64
	.word	4
	.word	_Label_1294
	.word	-68
	.word	4
	.word	0
_Label_1276:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1277:
	.ascii	"Pself\0"
	.align
_Label_1278:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1279:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1292:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1293:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1294:
	.byte	'I'
	.ascii	"frame\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	19,r1
_Label_1854:
	push	r0
	sub	r1,1,r1
	bne	_Label_1854
	mov	1155,r13		! source line 1155
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_1295 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1296 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_1296  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1301 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1302 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1301  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1297:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1302 then goto _Label_1300		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1300
_Label_1298:
	mov	1175,r13		! source line 1175
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0AS",r10
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=index  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   _temp_1303 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_1303 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0SE",r10
!   _temp_1304 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=bit  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1299:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1297
! END FOR
_Label_1300:
! SEND STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
!   _temp_1305 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1306 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1305  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1307 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1310 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1309 = *_temp_1310  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1308 = _temp_1309 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1307 = _temp_1308  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_1311 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1312
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1314
	.word	12
	.word	4
	.word	_Label_1315
	.word	-12
	.word	4
	.word	_Label_1316
	.word	-16
	.word	4
	.word	_Label_1317
	.word	-20
	.word	4
	.word	_Label_1318
	.word	-24
	.word	4
	.word	_Label_1319
	.word	-28
	.word	4
	.word	_Label_1320
	.word	-32
	.word	4
	.word	_Label_1321
	.word	-36
	.word	4
	.word	_Label_1322
	.word	-40
	.word	4
	.word	_Label_1323
	.word	-44
	.word	4
	.word	_Label_1324
	.word	-48
	.word	4
	.word	_Label_1325
	.word	-52
	.word	4
	.word	_Label_1326
	.word	-56
	.word	4
	.word	_Label_1327
	.word	-60
	.word	4
	.word	_Label_1328
	.word	-64
	.word	4
	.word	_Label_1329
	.word	-68
	.word	4
	.word	_Label_1330
	.word	-72
	.word	4
	.word	_Label_1331
	.word	-76
	.word	4
	.word	0
_Label_1312:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1313:
	.ascii	"Pself\0"
	.align
_Label_1314:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1328:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1329:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_1330:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1331:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1332
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1332:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1333
	.word	_sourceFileName
	.word	277		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1333:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1855:
	push	r0
	sub	r1,1,r1
	bne	_Label_1855
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
!   _temp_1334 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1336 = &_temp_1335
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1336 = _temp_1336 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1338:
!   Data Move: *_temp_1336 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1336 = _temp_1336 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1337 = _temp_1337 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1337) then goto _Label_1338
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1338
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1339 = &_temp_1335
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1856
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1856:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1334 = *_temp_1339  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1857:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1857
! RETURN STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1340
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1341
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1342
	.word	-12
	.word	4
	.word	_Label_1343
	.word	-16
	.word	4
	.word	_Label_1344
	.word	-20
	.word	4
	.word	_Label_1345
	.word	-104
	.word	84
	.word	_Label_1346
	.word	-108
	.word	4
	.word	0
_Label_1340:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1341:
	.ascii	"Pself\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1858:
	push	r0
	sub	r1,1,r1
	bne	_Label_1858
	mov	1210,r13		! source line 1210
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1347 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1347  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1348 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1348  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1216,r13		! source line 1216
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1353 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1354 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1353  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1349:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1354 then goto _Label_1352		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1352
_Label_1350:
	mov	1217,r13		! source line 1217
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1355 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1355  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1218,r13		! source line 1218
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1357 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1357 [i ] into _temp_1358
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1356 = _temp_1358		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1356  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1219,r13		! source line 1219
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1359 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1359  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1361 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1361 [i ] into _temp_1362
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1360 = *_temp_1362  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1360  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1221,r13		! source line 1221
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1363 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1363  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1222,r13		! source line 1222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1364 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1364  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1223,r13		! source line 1223
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1365 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1365  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1224,r13		! source line 1224
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1367) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1366  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1366  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1225,r13		! source line 1225
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1368 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1368  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1226,r13		! source line 1226
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0IF",r10
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1372) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1371  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1371) then goto _Label_1370
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1370
!	jmp	_Label_1369
_Label_1369:
! THEN...
	mov	1228,r13		! source line 1228
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1374) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1373  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1373  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1375
_Label_1370:
! ELSE...
	mov	1230,r13		! source line 1230
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1376 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1376  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1375:
! CALL STATEMENT...
!   _temp_1377 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1377  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0IF",r10
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1380) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1378 else goto _Label_1379
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1379
	jmp	_Label_1378
_Label_1378:
! THEN...
	mov	1234,r13		! source line 1234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1381 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1381  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1382
_Label_1379:
! ELSE...
	mov	1236,r13		! source line 1236
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1383 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1383  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1382:
! CALL STATEMENT...
!   _temp_1384 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1384  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1239,r13		! source line 1239
	mov	"\0\0IF",r10
	mov	1239,r13		! source line 1239
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1387) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1385 else goto _Label_1386
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1386
	jmp	_Label_1385
_Label_1385:
! THEN...
	mov	1240,r13		! source line 1240
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1388 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1240,r13		! source line 1240
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1389
_Label_1386:
! ELSE...
	mov	1242,r13		! source line 1242
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1390 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1389:
! CALL STATEMENT...
!   _temp_1391 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0IF",r10
	mov	1245,r13		! source line 1245
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1394) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1392 else goto _Label_1393
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1393
	jmp	_Label_1392
_Label_1392:
! THEN...
	mov	1246,r13		! source line 1246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1395 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1396
_Label_1393:
! ELSE...
	mov	1248,r13		! source line 1248
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1397 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1397  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1396:
! CALL STATEMENT...
!   _temp_1398 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1398  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1250,r13		! source line 1250
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0IF",r10
	mov	1251,r13		! source line 1251
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1401) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1399 else goto _Label_1400
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1400
	jmp	_Label_1399
_Label_1399:
! THEN...
	mov	1252,r13		! source line 1252
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1402 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1403
_Label_1400:
! ELSE...
	mov	1254,r13		! source line 1254
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1404 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1404  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1403:
! CALL STATEMENT...
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1351:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1349
! END FOR
_Label_1352:
! RETURN STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1405
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1406
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1407
	.word	-12
	.word	4
	.word	_Label_1408
	.word	-16
	.word	4
	.word	_Label_1409
	.word	-20
	.word	4
	.word	_Label_1410
	.word	-24
	.word	4
	.word	_Label_1411
	.word	-28
	.word	4
	.word	_Label_1412
	.word	-32
	.word	4
	.word	_Label_1413
	.word	-36
	.word	4
	.word	_Label_1414
	.word	-40
	.word	4
	.word	_Label_1415
	.word	-44
	.word	4
	.word	_Label_1416
	.word	-48
	.word	4
	.word	_Label_1417
	.word	-52
	.word	4
	.word	_Label_1418
	.word	-56
	.word	4
	.word	_Label_1419
	.word	-60
	.word	4
	.word	_Label_1420
	.word	-64
	.word	4
	.word	_Label_1421
	.word	-68
	.word	4
	.word	_Label_1422
	.word	-72
	.word	4
	.word	_Label_1423
	.word	-76
	.word	4
	.word	_Label_1424
	.word	-80
	.word	4
	.word	_Label_1425
	.word	-84
	.word	4
	.word	_Label_1426
	.word	-88
	.word	4
	.word	_Label_1427
	.word	-92
	.word	4
	.word	_Label_1428
	.word	-96
	.word	4
	.word	_Label_1429
	.word	-100
	.word	4
	.word	_Label_1430
	.word	-104
	.word	4
	.word	_Label_1431
	.word	-108
	.word	4
	.word	_Label_1432
	.word	-112
	.word	4
	.word	_Label_1433
	.word	-116
	.word	4
	.word	_Label_1434
	.word	-120
	.word	4
	.word	_Label_1435
	.word	-124
	.word	4
	.word	_Label_1436
	.word	-128
	.word	4
	.word	_Label_1437
	.word	-132
	.word	4
	.word	_Label_1438
	.word	-136
	.word	4
	.word	_Label_1439
	.word	-140
	.word	4
	.word	_Label_1440
	.word	-144
	.word	4
	.word	_Label_1441
	.word	-148
	.word	4
	.word	_Label_1442
	.word	-152
	.word	4
	.word	_Label_1443
	.word	-156
	.word	4
	.word	_Label_1444
	.word	-160
	.word	4
	.word	_Label_1445
	.word	-164
	.word	4
	.word	_Label_1446
	.word	-168
	.word	4
	.word	0
_Label_1405:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1406:
	.ascii	"Pself\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1446:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1859:
	push	r0
	sub	r1,1,r1
	bne	_Label_1859
	mov	1262,r13		! source line 1262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0RE",r10
!   _temp_1449 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1449 [entry ] into _temp_1450
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1448 = *_temp_1450  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1447 = _temp_1448 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1447  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1451
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1453
	.word	12
	.word	4
	.word	_Label_1454
	.word	-12
	.word	4
	.word	_Label_1455
	.word	-16
	.word	4
	.word	_Label_1456
	.word	-20
	.word	4
	.word	_Label_1457
	.word	-24
	.word	4
	.word	0
_Label_1451:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1452:
	.ascii	"Pself\0"
	.align
_Label_1453:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1860:
	push	r0
	sub	r1,1,r1
	bne	_Label_1860
	mov	1272,r13		! source line 1272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0RE",r10
!   _temp_1460 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1460 [entry ] into _temp_1461
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1459 = *_temp_1461  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1458 = _temp_1459 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1458  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1462
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1464
	.word	12
	.word	4
	.word	_Label_1465
	.word	-12
	.word	4
	.word	_Label_1466
	.word	-16
	.word	4
	.word	_Label_1467
	.word	-20
	.word	4
	.word	_Label_1468
	.word	-24
	.word	4
	.word	0
_Label_1462:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1463:
	.ascii	"Pself\0"
	.align
_Label_1464:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1861:
	push	r0
	sub	r1,1,r1
	bne	_Label_1861
	mov	1281,r13		! source line 1281
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0AS",r10
!   _temp_1469 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1469 [entry ] into _temp_1470
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1474 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1474 [entry ] into _temp_1475
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1473 = *_temp_1475  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1472 = _temp_1473 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1471 = _temp_1472 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1470 = _temp_1471  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1476
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1477
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1478
	.word	12
	.word	4
	.word	_Label_1479
	.word	16
	.word	4
	.word	_Label_1480
	.word	-12
	.word	4
	.word	_Label_1481
	.word	-16
	.word	4
	.word	_Label_1482
	.word	-20
	.word	4
	.word	_Label_1483
	.word	-24
	.word	4
	.word	_Label_1484
	.word	-28
	.word	4
	.word	_Label_1485
	.word	-32
	.word	4
	.word	_Label_1486
	.word	-36
	.word	4
	.word	0
_Label_1476:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1477:
	.ascii	"Pself\0"
	.align
_Label_1478:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1479:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1862:
	push	r0
	sub	r1,1,r1
	bne	_Label_1862
	mov	1291,r13		! source line 1291
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0RE",r10
!   _temp_1490 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1490 [entry ] into _temp_1491
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1489 = *_temp_1491  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1488 = _temp_1489 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1488) then goto _Label_1492
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1492
!   _temp_1487 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1493
_Label_1492:
!   _temp_1487 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1493:
!   ReturnResult: _temp_1487  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1494
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1495
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1496
	.word	12
	.word	4
	.word	_Label_1497
	.word	-16
	.word	4
	.word	_Label_1498
	.word	-20
	.word	4
	.word	_Label_1499
	.word	-24
	.word	4
	.word	_Label_1500
	.word	-28
	.word	4
	.word	_Label_1501
	.word	-9
	.word	1
	.word	0
_Label_1494:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1495:
	.ascii	"Pself\0"
	.align
_Label_1496:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1501:
	.byte	'C'
	.ascii	"_temp_1487\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1863:
	push	r0
	sub	r1,1,r1
	bne	_Label_1863
	mov	1300,r13		! source line 1300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0RE",r10
!   _temp_1505 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1505 [entry ] into _temp_1506
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1504 = *_temp_1506  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1503 = _temp_1504 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1503) then goto _Label_1507
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1507
!   _temp_1502 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1508
_Label_1507:
!   _temp_1502 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1508:
!   ReturnResult: _temp_1502  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1509
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1510
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1511
	.word	12
	.word	4
	.word	_Label_1512
	.word	-16
	.word	4
	.word	_Label_1513
	.word	-20
	.word	4
	.word	_Label_1514
	.word	-24
	.word	4
	.word	_Label_1515
	.word	-28
	.word	4
	.word	_Label_1516
	.word	-9
	.word	1
	.word	0
_Label_1509:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1510:
	.ascii	"Pself\0"
	.align
_Label_1511:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1516:
	.byte	'C'
	.ascii	"_temp_1502\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1864:
	push	r0
	sub	r1,1,r1
	bne	_Label_1864
	mov	1309,r13		! source line 1309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0RE",r10
!   _temp_1520 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1520 [entry ] into _temp_1521
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1519 = *_temp_1521  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1518 = _temp_1519 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1518) then goto _Label_1522
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1522
!   _temp_1517 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1523
_Label_1522:
!   _temp_1517 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1523:
!   ReturnResult: _temp_1517  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1524
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1526
	.word	12
	.word	4
	.word	_Label_1527
	.word	-16
	.word	4
	.word	_Label_1528
	.word	-20
	.word	4
	.word	_Label_1529
	.word	-24
	.word	4
	.word	_Label_1530
	.word	-28
	.word	4
	.word	_Label_1531
	.word	-9
	.word	1
	.word	0
_Label_1524:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1525:
	.ascii	"Pself\0"
	.align
_Label_1526:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1531:
	.byte	'C'
	.ascii	"_temp_1517\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1865:
	push	r0
	sub	r1,1,r1
	bne	_Label_1865
	mov	1318,r13		! source line 1318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1322,r13		! source line 1322
	mov	"\0\0RE",r10
!   _temp_1535 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1535 [entry ] into _temp_1536
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1534 = *_temp_1536  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1533 = _temp_1534 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1533) then goto _Label_1537
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1537
!   _temp_1532 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1538
_Label_1537:
!   _temp_1532 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1538:
!   ReturnResult: _temp_1532  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1539
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1541
	.word	12
	.word	4
	.word	_Label_1542
	.word	-16
	.word	4
	.word	_Label_1543
	.word	-20
	.word	4
	.word	_Label_1544
	.word	-24
	.word	4
	.word	_Label_1545
	.word	-28
	.word	4
	.word	_Label_1546
	.word	-9
	.word	1
	.word	0
_Label_1539:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1540:
	.ascii	"Pself\0"
	.align
_Label_1541:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1546:
	.byte	'C'
	.ascii	"_temp_1532\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1866:
	push	r0
	sub	r1,1,r1
	bne	_Label_1866
	mov	1327,r13		! source line 1327
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0AS",r10
!   _temp_1547 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1547 [entry ] into _temp_1548
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1551 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1551 [entry ] into _temp_1552
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1550 = *_temp_1552  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1549 = _temp_1550 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1548 = _temp_1549  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1553
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1555
	.word	12
	.word	4
	.word	_Label_1556
	.word	-12
	.word	4
	.word	_Label_1557
	.word	-16
	.word	4
	.word	_Label_1558
	.word	-20
	.word	4
	.word	_Label_1559
	.word	-24
	.word	4
	.word	_Label_1560
	.word	-28
	.word	4
	.word	_Label_1561
	.word	-32
	.word	4
	.word	0
_Label_1553:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1554:
	.ascii	"Pself\0"
	.align
_Label_1555:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1867:
	push	r0
	sub	r1,1,r1
	bne	_Label_1867
	mov	1336,r13		! source line 1336
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0AS",r10
!   _temp_1562 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1562 [entry ] into _temp_1563
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1566 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1566 [entry ] into _temp_1567
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1565 = *_temp_1567  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1564 = _temp_1565 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1563 = _temp_1564  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1568
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1570
	.word	12
	.word	4
	.word	_Label_1571
	.word	-12
	.word	4
	.word	_Label_1572
	.word	-16
	.word	4
	.word	_Label_1573
	.word	-20
	.word	4
	.word	_Label_1574
	.word	-24
	.word	4
	.word	_Label_1575
	.word	-28
	.word	4
	.word	_Label_1576
	.word	-32
	.word	4
	.word	0
_Label_1568:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1569:
	.ascii	"Pself\0"
	.align
_Label_1570:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1868:
	push	r0
	sub	r1,1,r1
	bne	_Label_1868
	mov	1345,r13		! source line 1345
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0AS",r10
!   _temp_1577 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1577 [entry ] into _temp_1578
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1581 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1581 [entry ] into _temp_1582
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1580 = *_temp_1582  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1579 = _temp_1580 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1578 = _temp_1579  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1349,r13		! source line 1349
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1583
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1585
	.word	12
	.word	4
	.word	_Label_1586
	.word	-12
	.word	4
	.word	_Label_1587
	.word	-16
	.word	4
	.word	_Label_1588
	.word	-20
	.word	4
	.word	_Label_1589
	.word	-24
	.word	4
	.word	_Label_1590
	.word	-28
	.word	4
	.word	_Label_1591
	.word	-32
	.word	4
	.word	0
_Label_1583:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1584:
	.ascii	"Pself\0"
	.align
_Label_1585:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1869:
	push	r0
	sub	r1,1,r1
	bne	_Label_1869
	mov	1354,r13		! source line 1354
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0AS",r10
!   _temp_1592 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1592 [entry ] into _temp_1593
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1596 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1596 [entry ] into _temp_1597
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1595 = *_temp_1597  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1594 = _temp_1595 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1593 = _temp_1594  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1358,r13		! source line 1358
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1598
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1599
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1600
	.word	12
	.word	4
	.word	_Label_1601
	.word	-12
	.word	4
	.word	_Label_1602
	.word	-16
	.word	4
	.word	_Label_1603
	.word	-20
	.word	4
	.word	_Label_1604
	.word	-24
	.word	4
	.word	_Label_1605
	.word	-28
	.word	4
	.word	_Label_1606
	.word	-32
	.word	4
	.word	0
_Label_1598:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1599:
	.ascii	"Pself\0"
	.align
_Label_1600:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1870:
	push	r0
	sub	r1,1,r1
	bne	_Label_1870
	mov	1363,r13		! source line 1363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0AS",r10
!   _temp_1607 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1607 [entry ] into _temp_1608
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1611 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1611 [entry ] into _temp_1612
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1610 = *_temp_1612  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1609 = _temp_1610 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1608 = _temp_1609  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1613
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1614
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1615
	.word	12
	.word	4
	.word	_Label_1616
	.word	-12
	.word	4
	.word	_Label_1617
	.word	-16
	.word	4
	.word	_Label_1618
	.word	-20
	.word	4
	.word	_Label_1619
	.word	-24
	.word	4
	.word	_Label_1620
	.word	-28
	.word	4
	.word	_Label_1621
	.word	-32
	.word	4
	.word	0
_Label_1613:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1614:
	.ascii	"Pself\0"
	.align
_Label_1615:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1871:
	push	r0
	sub	r1,1,r1
	bne	_Label_1871
	mov	1372,r13		! source line 1372
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0AS",r10
!   _temp_1622 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1622 [entry ] into _temp_1623
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1626 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1626 [entry ] into _temp_1627
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1625 = *_temp_1627  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1624 = _temp_1625 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1623 = _temp_1624  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1376,r13		! source line 1376
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1628
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1630
	.word	12
	.word	4
	.word	_Label_1631
	.word	-12
	.word	4
	.word	_Label_1632
	.word	-16
	.word	4
	.word	_Label_1633
	.word	-20
	.word	4
	.word	_Label_1634
	.word	-24
	.word	4
	.word	_Label_1635
	.word	-28
	.word	4
	.word	_Label_1636
	.word	-32
	.word	4
	.word	0
_Label_1628:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1629:
	.ascii	"Pself\0"
	.align
_Label_1630:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1872:
	push	r0
	sub	r1,1,r1
	bne	_Label_1872
	mov	1381,r13		! source line 1381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0AS",r10
!   _temp_1637 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1637 [entry ] into _temp_1638
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1641 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1641 [entry ] into _temp_1642
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1640 = *_temp_1642  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1639 = _temp_1640 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1638 = _temp_1639  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1643
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1644
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1645
	.word	12
	.word	4
	.word	_Label_1646
	.word	-12
	.word	4
	.word	_Label_1647
	.word	-16
	.word	4
	.word	_Label_1648
	.word	-20
	.word	4
	.word	_Label_1649
	.word	-24
	.word	4
	.word	_Label_1650
	.word	-28
	.word	4
	.word	_Label_1651
	.word	-32
	.word	4
	.word	0
_Label_1643:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1644:
	.ascii	"Pself\0"
	.align
_Label_1645:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1873:
	push	r0
	sub	r1,1,r1
	bne	_Label_1873
	mov	1390,r13		! source line 1390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0AS",r10
!   _temp_1652 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1652 [entry ] into _temp_1653
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1656 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1656 [entry ] into _temp_1657
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1655 = *_temp_1657  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1654 = _temp_1655 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1653 = _temp_1654  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1394,r13		! source line 1394
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1658
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1660
	.word	12
	.word	4
	.word	_Label_1661
	.word	-12
	.word	4
	.word	_Label_1662
	.word	-16
	.word	4
	.word	_Label_1663
	.word	-20
	.word	4
	.word	_Label_1664
	.word	-24
	.word	4
	.word	_Label_1665
	.word	-28
	.word	4
	.word	_Label_1666
	.word	-32
	.word	4
	.word	0
_Label_1658:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1659:
	.ascii	"Pself\0"
	.align
_Label_1660:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1874:
	push	r0
	sub	r1,1,r1
	bne	_Label_1874
	mov	1399,r13		! source line 1399
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1668 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1668 [0 ] into _temp_1669
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1667 = _temp_1669		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1670 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1670  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1405,r13		! source line 1405
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1671
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1673
	.word	-12
	.word	4
	.word	_Label_1674
	.word	-16
	.word	4
	.word	_Label_1675
	.word	-20
	.word	4
	.word	_Label_1676
	.word	-24
	.word	4
	.word	0
_Label_1671:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1672:
	.ascii	"Pself\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1875:
	push	r0
	sub	r1,1,r1
	bne	_Label_1875
	mov	1410,r13		! source line 1410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1425,r13		! source line 1425
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1677
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1677
	jmp	_Label_1678
_Label_1677:
! THEN...
	mov	1426,r13		! source line 1426
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1679
_Label_1678:
! ELSE...
	mov	1427,r13		! source line 1427
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1681		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1681
!	jmp	_Label_1680
_Label_1680:
! THEN...
	mov	1428,r13		! source line 1428
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1681:
! END IF...
_Label_1679:
! ASSIGNMENT STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1431,r13		! source line 1431
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1434,r13		! source line 1434
	mov	"\0\0WH",r10
_Label_1682:
!	jmp	_Label_1683
_Label_1683:
	mov	1434,r13		! source line 1434
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1686		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1686
!	jmp	_Label_1685
_Label_1685:
! THEN...
	mov	1436,r13		! source line 1436
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1687 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1436,r13		! source line 1436
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1437,r13		! source line 1437
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1686:
! IF STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0IF",r10
	mov	1439,r13		! source line 1439
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1691) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1690  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1690 then goto _Label_1689 else goto _Label_1688
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1688
	jmp	_Label_1689
_Label_1688:
! THEN...
	mov	1440,r13		! source line 1440
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1692 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1692  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1440,r13		! source line 1440
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1689:
! ASSIGNMENT STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0AS",r10
	mov	1443,r13		! source line 1443
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1694) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1693  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1693 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0WH",r10
_Label_1695:
!   if offset >= 8192 then goto _Label_1697		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1697
!	jmp	_Label_1696
_Label_1696:
	mov	1445,r13		! source line 1445
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1698 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1698  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1700		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1700
!	jmp	_Label_1699
_Label_1699:
! THEN...
	mov	1454,r13		! source line 1454
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1700:
! END WHILE...
	jmp	_Label_1695
_Label_1697:
! ASSIGNMENT STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1682
_Label_1684:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1701
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1703
	.word	12
	.word	4
	.word	_Label_1704
	.word	16
	.word	4
	.word	_Label_1705
	.word	20
	.word	4
	.word	_Label_1706
	.word	-9
	.word	1
	.word	_Label_1707
	.word	-16
	.word	4
	.word	_Label_1708
	.word	-20
	.word	4
	.word	_Label_1709
	.word	-24
	.word	4
	.word	_Label_1710
	.word	-28
	.word	4
	.word	_Label_1711
	.word	-10
	.word	1
	.word	_Label_1712
	.word	-32
	.word	4
	.word	_Label_1713
	.word	-36
	.word	4
	.word	_Label_1714
	.word	-40
	.word	4
	.word	_Label_1715
	.word	-44
	.word	4
	.word	_Label_1716
	.word	-48
	.word	4
	.word	0
_Label_1701:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1702:
	.ascii	"Pself\0"
	.align
_Label_1703:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1704:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1705:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1706:
	.byte	'C'
	.ascii	"_temp_1698\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1711:
	.byte	'C'
	.ascii	"_temp_1690\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1713:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1714:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1715:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1716:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1876:
	push	r0
	sub	r1,1,r1
	bne	_Label_1876
	mov	1464,r13		! source line 1464
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1717
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1717
	jmp	_Label_1718
_Label_1717:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1719
_Label_1718:
! ELSE...
	mov	1477,r13		! source line 1477
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1721		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1721
!	jmp	_Label_1720
_Label_1720:
! THEN...
	mov	1478,r13		! source line 1478
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1721:
! END IF...
_Label_1719:
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0WH",r10
_Label_1722:
!	jmp	_Label_1723
_Label_1723:
	mov	1482,r13		! source line 1482
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1728		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1728
	jmp	_Label_1725
_Label_1728:
	mov	1484,r13		! source line 1484
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1730) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1729  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1729 then goto _Label_1727 else goto _Label_1725
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1725
	jmp	_Label_1727
_Label_1727:
	mov	1485,r13		! source line 1485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1732) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1731  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1731 then goto _Label_1726 else goto _Label_1725
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1725
	jmp	_Label_1726
_Label_1725:
! THEN...
	mov	1486,r13		! source line 1486
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1726:
! ASSIGNMENT STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0AS",r10
	mov	1488,r13		! source line 1488
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1734) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1733  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1733 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0WH",r10
_Label_1735:
!   if offset >= 8192 then goto _Label_1737		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1737
!	jmp	_Label_1736
_Label_1736:
	mov	1489,r13		! source line 1489
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1738 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1738  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1740		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1740
!	jmp	_Label_1739
_Label_1739:
! THEN...
	mov	1496,r13		! source line 1496
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1740:
! END WHILE...
	jmp	_Label_1735
_Label_1737:
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1722
_Label_1724:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1741
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1743
	.word	12
	.word	4
	.word	_Label_1744
	.word	16
	.word	4
	.word	_Label_1745
	.word	20
	.word	4
	.word	_Label_1746
	.word	-9
	.word	1
	.word	_Label_1747
	.word	-16
	.word	4
	.word	_Label_1748
	.word	-20
	.word	4
	.word	_Label_1749
	.word	-24
	.word	4
	.word	_Label_1750
	.word	-10
	.word	1
	.word	_Label_1751
	.word	-28
	.word	4
	.word	_Label_1752
	.word	-11
	.word	1
	.word	_Label_1753
	.word	-32
	.word	4
	.word	_Label_1754
	.word	-36
	.word	4
	.word	_Label_1755
	.word	-40
	.word	4
	.word	_Label_1756
	.word	-44
	.word	4
	.word	0
_Label_1741:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1742:
	.ascii	"Pself\0"
	.align
_Label_1743:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1744:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1745:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1746:
	.byte	'C'
	.ascii	"_temp_1738\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1750:
	.byte	'C'
	.ascii	"_temp_1731\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1752:
	.byte	'C'
	.ascii	"_temp_1729\0"
	.align
_Label_1753:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1754:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1755:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1756:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1877:
	push	r0
	sub	r1,1,r1
	bne	_Label_1877
	mov	1506,r13		! source line 1506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0IF",r10
	mov	1530,r13		! source line 1530
	mov	"\0\0SE",r10
!   _temp_1760 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1761) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1760  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1759  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1759 >= 4 then goto _Label_1758		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1758
!	jmp	_Label_1757
_Label_1757:
! THEN...
	mov	1533,r13		! source line 1533
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1758:
! IF STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1763		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1763
!	jmp	_Label_1762
_Label_1762:
! THEN...
	mov	1538,r13		! source line 1538
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1763:
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
	mov	1543,r13		! source line 1543
	mov	"\0\0SE",r10
!   _temp_1766 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1765 = _temp_1766 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1767 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1768) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1765  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1767  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1764  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1764  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1769
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1771
	.word	12
	.word	4
	.word	_Label_1772
	.word	16
	.word	4
	.word	_Label_1773
	.word	20
	.word	4
	.word	_Label_1774
	.word	-12
	.word	4
	.word	_Label_1775
	.word	-16
	.word	4
	.word	_Label_1776
	.word	-20
	.word	4
	.word	_Label_1777
	.word	-24
	.word	4
	.word	_Label_1778
	.word	-28
	.word	4
	.word	_Label_1779
	.word	-32
	.word	4
	.word	_Label_1780
	.word	-36
	.word	4
	.word	_Label_1781
	.word	-40
	.word	4
	.word	_Label_1782
	.word	-44
	.word	4
	.word	0
_Label_1769:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1770:
	.ascii	"Pself\0"
	.align
_Label_1771:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1772:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1773:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1782:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
