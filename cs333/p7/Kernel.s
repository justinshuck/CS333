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
	.export	_P_Kernel_InitFirstProcess
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
	.export	_Method_P_Kernel_ProcessManager_6
	.export	_Method_P_Kernel_ProcessManager_7
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
	.skip	1756
_P_Kernel_threadManager:
	.skip	41712
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_192:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_191:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_190:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_189:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_188:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_187:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_186:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_185:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_184:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_183:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_182:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_181:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_180:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_179:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_178:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_177:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_176:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_175:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_174:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_173:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_172:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_171:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_170:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_169:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_168:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_167:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_166:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_165:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_164:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_163:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_162:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_161:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_160:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_159:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_158:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_157:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_156:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_155:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_154:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_153:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_152:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_151:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_150:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_149:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_148:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_147:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_146:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_145:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_144:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_143:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_142:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_141:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_140:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_139:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_136:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_133:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_131:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_130:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_128:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_127:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_126:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_125:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_123:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_121:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_120:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_119:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_118:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_117:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_116:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_115:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_114:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_113:
	.word	12			! length
	.ascii	"Never called"
	.align
_StringConst_112:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_111:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_110:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_109:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_108:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_107:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_106:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_105:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_104:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_103:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_102:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_101:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_100:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_99:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_98:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_97:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_96:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_95:
	.word	32			! length
	.ascii	"Trying to Free an Invalid Thread"
	.align
_StringConst_94:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_93:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_92:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_91:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_90:
	.word	8			! length
	.ascii	"thread_9"
	.align
_StringConst_89:
	.word	8			! length
	.ascii	"thread_8"
	.align
_StringConst_88:
	.word	8			! length
	.ascii	"thread_7"
	.align
_StringConst_87:
	.word	8			! length
	.ascii	"thread_6"
	.align
_StringConst_86:
	.word	8			! length
	.ascii	"thread_5"
	.align
_StringConst_85:
	.word	8			! length
	.ascii	"thread_4"
	.align
_StringConst_84:
	.word	8			! length
	.ascii	"thread_3"
	.align
_StringConst_83:
	.word	8			! length
	.ascii	"thread_2"
	.align
_StringConst_82:
	.word	8			! length
	.ascii	"thread_1"
	.align
_StringConst_81:
	.word	8			! length
	.ascii	"thread_0"
	.align
_StringConst_80:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_79:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_78:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_77:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_76:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_70:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_69:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_68:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_67:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_66:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_65:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_64:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_63:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_62:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_61:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_60:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_59:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_58:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_57:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_55:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_54:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_53:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_52:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_51:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_50:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_47:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_46:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_44:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_43:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_42:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_41:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_40:
	.word	45			! length
	.ascii	"ERROR: Error has occured in Handle_Sys_Create"
	.align
_StringConst_39:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_38:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_36:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_35:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_34:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_33:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_26:
	.word	34			! length
	.ascii	"ERROR: Cannot open \'TestProgram4\'."
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_24:
	.word	12			! length
	.ascii	"TestProgram4"
	.align
_StringConst_23:
	.word	17			! length
	.ascii	"UserProgramThread"
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
	set	0x7a079ae8,r4		! myHashVal = 2047318760
	cmp	r3,r4
	be	_Label_203
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
_Label_203:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_204
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_204
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_204
_Label_204:
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_205 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_205  sizeInBytes=4
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
_Label_3373:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3373
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_209 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_210 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_209  sizeInBytes=4
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
!   _temp_211 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_212 = _temp_211 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_212 = 3  (sizeInBytes=4)
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
_Label_3374:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3374
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_214 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_215 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_214  sizeInBytes=4
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
!   _temp_216 = _function_202_IdleFunction
	set	_function_202_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_217 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
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
	.word	_Label_218
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_219
	.word	-12
	.word	4
	.word	_Label_220
	.word	-16
	.word	4
	.word	_Label_221
	.word	-20
	.word	4
	.word	_Label_222
	.word	-24
	.word	4
	.word	_Label_223
	.word	-28
	.word	4
	.word	_Label_224
	.word	-32
	.word	4
	.word	_Label_225
	.word	-36
	.word	4
	.word	_Label_226
	.word	-40
	.word	4
	.word	_Label_227
	.word	-44
	.word	4
	.word	_Label_228
	.word	-48
	.word	4
	.word	_Label_229
	.word	-52
	.word	4
	.word	_Label_230
	.word	-56
	.word	4
	.word	_Label_231
	.word	-60
	.word	4
	.word	0
_Label_218:
	.ascii	"InitializeScheduler\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_202_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	34,r13		! source line 34
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0WH",r10
_Label_232:
!	jmp	_Label_233
_Label_233:
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
!   _temp_237 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_235 else goto _Label_236
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_236
	jmp	_Label_235
_Label_235:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_238
_Label_236:
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
_Label_238:
! END WHILE...
	jmp	_Label_232
_Label_234:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_IdleFunction:
	.word	_sourceFileName
	.word	_Label_239
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_240
	.word	8
	.word	4
	.word	_Label_241
	.word	-12
	.word	4
	.word	_Label_242
	.word	-16
	.word	4
	.word	0
_Label_239:
	.ascii	"IdleFunction\0"
	.align
_Label_240:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_242:
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
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
!   _temp_245 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_245 ) then goto _Label_244		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_244
!	jmp	_Label_243
_Label_243:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_247 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_247 [0 ] into _temp_248
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
!   _temp_246 = _temp_248		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_244:
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
!   _temp_249 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_249 = 3  (sizeInBytes=4)
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
_Label_250:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_254 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_253  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_253 then goto _Label_252 else goto _Label_251
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_251
	jmp	_Label_252
_Label_251:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_255 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_256 = &_P_Kernel_threadManager
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
	jmp	_Label_250
_Label_252:
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_259 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_259 ) then goto _Label_258		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_261 [0 ] into _temp_262
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
!   _temp_260 = _temp_262		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
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
!   _temp_264 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_263 = *_temp_264  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_263) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _temp_263 + 32
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
_Label_258:
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
	.word	_Label_266
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_267
	.word	8
	.word	4
	.word	_Label_268
	.word	-16
	.word	4
	.word	_Label_269
	.word	-20
	.word	4
	.word	_Label_270
	.word	-24
	.word	4
	.word	_Label_271
	.word	-28
	.word	4
	.word	_Label_272
	.word	-32
	.word	4
	.word	_Label_273
	.word	-36
	.word	4
	.word	_Label_274
	.word	-40
	.word	4
	.word	_Label_275
	.word	-44
	.word	4
	.word	_Label_276
	.word	-48
	.word	4
	.word	_Label_277
	.word	-52
	.word	4
	.word	_Label_278
	.word	-9
	.word	1
	.word	_Label_279
	.word	-56
	.word	4
	.word	_Label_280
	.word	-60
	.word	4
	.word	_Label_281
	.word	-64
	.word	4
	.word	_Label_282
	.word	-68
	.word	4
	.word	_Label_283
	.word	-72
	.word	4
	.word	_Label_284
	.word	-76
	.word	4
	.word	_Label_285
	.word	-80
	.word	4
	.word	0
_Label_266:
	.ascii	"Run\0"
	.align
_Label_267:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_278:
	.byte	'C'
	.ascii	"_temp_253\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_284:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_285:
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
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
!   _temp_286 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_287 = _function_201_ThreadPrintShort
	set	_function_201_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_288 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_287  sizeInBytes=4
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
	.word	_Label_289
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_290
	.word	-12
	.word	4
	.word	_Label_291
	.word	-16
	.word	4
	.word	_Label_292
	.word	-20
	.word	4
	.word	_Label_293
	.word	-24
	.word	4
	.word	0
_Label_289:
	.ascii	"PrintReadyList\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_293:
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
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
!   _temp_294 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_294  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_295 = *_temp_296  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
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
!   _temp_297 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
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
	.word	_Label_298
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_299
	.word	-12
	.word	4
	.word	_Label_300
	.word	-16
	.word	4
	.word	_Label_301
	.word	-20
	.word	4
	.word	_Label_302
	.word	-24
	.word	4
	.word	_Label_303
	.word	-28
	.word	4
	.word	_Label_304
	.word	-32
	.word	4
	.word	0
_Label_298:
	.ascii	"ThreadStartMain\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_303:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_304:
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
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
!   _temp_305 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_306 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
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
	.word	_Label_307
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_308
	.word	-12
	.word	4
	.word	_Label_309
	.word	-16
	.word	4
	.word	_Label_310
	.word	-20
	.word	4
	.word	0
_Label_307:
	.ascii	"ThreadFinish\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_310:
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
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
!   _temp_311 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_313		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_313
!	jmp	_Label_312
_Label_312:
! THEN...
	mov	169,r13		! source line 169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_314 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
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
!   _temp_316 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_315 = *_temp_316  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_313:
! CALL STATEMENT...
!   _temp_317 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
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
!   _temp_318 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_319 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
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
	.word	_Label_320
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_321
	.word	8
	.word	4
	.word	_Label_322
	.word	-12
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	_Label_325
	.word	-24
	.word	4
	.word	_Label_326
	.word	-28
	.word	4
	.word	_Label_327
	.word	-32
	.word	4
	.word	_Label_328
	.word	-36
	.word	4
	.word	_Label_329
	.word	-40
	.word	4
	.word	0
_Label_320:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_321:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_329:
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
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
!   if newStatus != 1 then goto _Label_331		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_331
!	jmp	_Label_330
_Label_330:
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
	jmp	_Label_332
_Label_331:
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
_Label_332:
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
	.word	_Label_333
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_334
	.word	8
	.word	4
	.word	_Label_335
	.word	-12
	.word	4
	.word	0
_Label_333:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_334:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_335:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_201_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
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
!   if t == 0 then goto _Label_339		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_339
!   _temp_338 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_340
_Label_339:
!   _temp_338 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_340:
!   if _temp_338 then goto _Label_337 else goto _Label_336
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_336
	jmp	_Label_337
_Label_336:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_341 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
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
_Label_337:
! CALL STATEMENT...
!   _temp_342 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
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
!   _temp_344 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_343 = *_temp_344  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_345 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
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
!   _temp_354 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_353 = *_temp_354  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_348
	cmp	r1,2
	be	_Label_349
	cmp	r1,3
	be	_Label_350
	cmp	r1,4
	be	_Label_351
	cmp	r1,5
	be	_Label_352
	jmp	_Label_346
! CASE 1...
_Label_348:
! CALL STATEMENT...
!   _temp_355 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 2...
_Label_349:
! CALL STATEMENT...
!   _temp_356 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 3...
_Label_350:
! CALL STATEMENT...
!   _temp_357 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 4...
_Label_351:
! CALL STATEMENT...
!   _temp_358 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0BR",r10
	jmp	_Label_347
! CASE 5...
_Label_352:
! CALL STATEMENT...
!   _temp_359 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0BR",r10
	jmp	_Label_347
! DEFAULT CASE...
_Label_346:
! CALL STATEMENT...
!   _temp_360 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
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
_Label_347:
! CALL STATEMENT...
!   _temp_361 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_362 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_363 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
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
_RoutineDescriptor__function_201_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_364
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_365
	.word	8
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
	.word	_Label_372
	.word	-40
	.word	4
	.word	_Label_373
	.word	-44
	.word	4
	.word	_Label_374
	.word	-48
	.word	4
	.word	_Label_375
	.word	-52
	.word	4
	.word	_Label_376
	.word	-56
	.word	4
	.word	_Label_377
	.word	-60
	.word	4
	.word	_Label_378
	.word	-64
	.word	4
	.word	_Label_379
	.word	-68
	.word	4
	.word	_Label_380
	.word	-72
	.word	4
	.word	_Label_381
	.word	-76
	.word	4
	.word	_Label_382
	.word	-9
	.word	1
	.word	_Label_383
	.word	-80
	.word	4
	.word	0
_Label_364:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_365:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_382:
	.byte	'C'
	.ascii	"_temp_338\0"
	.align
_Label_383:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_200_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	1104,r13		! source line 1104
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_384 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1109,r13		! source line 1109
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_385
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_386
	.word	8
	.word	4
	.word	_Label_387
	.word	-12
	.word	4
	.word	0
_Label_385:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_386:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_384\0"
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
	mov	22,r1
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	1114,r13		! source line 1114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_389 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_388 = *_temp_389  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_388) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_390 = _temp_388 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_390 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1130,r13		! source line 1130
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: proc = *_temp_391  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_392 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_392 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_393 = proc + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_393 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-52],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_394 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_394 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! FOR STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_399 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_400 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_399  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-84]
_Label_395:
!   Perform the FOR-LOOP termination test
!   if i > _temp_400 then goto _Label_398		
	load	[r14+-84],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_398
_Label_396:
	mov	1140,r13		! source line 1140
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_401 = proc + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_401 [i ] into _temp_402
!     make sure index expr is >= 0
	load	[r14+-84],r2
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
!   Data Move: open = *_temp_402  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_404
	load	[r14+-88],r1
	cmp	r1,r0
	be	_Label_404
!	jmp	_Label_403
_Label_403:
! THEN...
	mov	1143,r13		! source line 1143
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_405 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! END IF...
_Label_404:
!   Increment the FOR-LOOP index variable and jump back
_Label_397:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_395
! END FOR
_Label_398:
! ASSIGNMENT STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1149,r13		! source line 1149
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = proc + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_406 = _temp_407		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_408 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_406  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_409 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message TurnIntoZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1156,r13		! source line 1156
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_411
	.word	8
	.word	4
	.word	_Label_412
	.word	-12
	.word	4
	.word	_Label_413
	.word	-16
	.word	4
	.word	_Label_414
	.word	-20
	.word	4
	.word	_Label_415
	.word	-24
	.word	4
	.word	_Label_416
	.word	-28
	.word	4
	.word	_Label_417
	.word	-32
	.word	4
	.word	_Label_418
	.word	-36
	.word	4
	.word	_Label_419
	.word	-40
	.word	4
	.word	_Label_420
	.word	-44
	.word	4
	.word	_Label_421
	.word	-48
	.word	4
	.word	_Label_422
	.word	-52
	.word	4
	.word	_Label_423
	.word	-56
	.word	4
	.word	_Label_424
	.word	-60
	.word	4
	.word	_Label_425
	.word	-64
	.word	4
	.word	_Label_426
	.word	-68
	.word	4
	.word	_Label_427
	.word	-72
	.word	4
	.word	_Label_428
	.word	-76
	.word	4
	.word	_Label_429
	.word	-80
	.word	4
	.word	_Label_430
	.word	-84
	.word	4
	.word	_Label_431
	.word	-88
	.word	4
	.word	0
_Label_410:
	.ascii	"ProcessFinish\0"
	.align
_Label_411:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_428:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_430:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_431:
	.byte	'P'
	.ascii	"open\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	1161,r13		! source line 1161
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0AS",r10
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_432 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=ptrThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   _temp_433 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_433  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_434 = _function_199_StartUserProcess
	set	_function_199_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_435 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_434  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_435  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_436
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_437
	.word	-12
	.word	4
	.word	_Label_438
	.word	-16
	.word	4
	.word	_Label_439
	.word	-20
	.word	4
	.word	_Label_440
	.word	-24
	.word	4
	.word	_Label_441
	.word	-28
	.word	4
	.word	0
_Label_436:
	.ascii	"InitFirstProcess\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_441:
	.byte	'P'
	.ascii	"ptrThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_199_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	1173,r13		! source line 1173
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_442 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-76]
!   Send message GetANewProcess
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ptrToPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = ptrToPCB + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_443 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_444 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_444 = ptrToPCB  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
	mov	1196,r13		! source line 1196
	mov	"\0\0SE",r10
!   _temp_445 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_446 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_445  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ptrOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_447
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_447
	jmp	_Label_448
_Label_447:
! THEN...
	mov	1199,r13		! source line 1199
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_449 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1199,r13		! source line 1199
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_448:
! ASSIGNMENT STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_450 = _temp_451		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (ptrOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_450  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0SE",r10
!   _temp_452 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=ptrOpenFile  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_454 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_455 = _temp_454 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_453 = *_temp_455  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_453 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_456 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_456 [999 ] into _temp_457
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   ptrInitSystemStackTop = _temp_457		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1212,r13		! source line 1212
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! SEND STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_458 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1214,r13		! source line 1214
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_459 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_459 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_460 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_460  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_461
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_462
	.word	8
	.word	4
	.word	_Label_463
	.word	-12
	.word	4
	.word	_Label_464
	.word	-16
	.word	4
	.word	_Label_465
	.word	-20
	.word	4
	.word	_Label_466
	.word	-24
	.word	4
	.word	_Label_467
	.word	-28
	.word	4
	.word	_Label_468
	.word	-32
	.word	4
	.word	_Label_469
	.word	-36
	.word	4
	.word	_Label_470
	.word	-40
	.word	4
	.word	_Label_471
	.word	-44
	.word	4
	.word	_Label_472
	.word	-48
	.word	4
	.word	_Label_473
	.word	-52
	.word	4
	.word	_Label_474
	.word	-56
	.word	4
	.word	_Label_475
	.word	-60
	.word	4
	.word	_Label_476
	.word	-64
	.word	4
	.word	_Label_477
	.word	-68
	.word	4
	.word	_Label_478
	.word	-72
	.word	4
	.word	_Label_479
	.word	-76
	.word	4
	.word	_Label_480
	.word	-80
	.word	4
	.word	_Label_481
	.word	-84
	.word	4
	.word	_Label_482
	.word	-88
	.word	4
	.word	_Label_483
	.word	-92
	.word	4
	.word	_Label_484
	.word	-96
	.word	4
	.word	_Label_485
	.word	-100
	.word	4
	.word	0
_Label_461:
	.ascii	"StartUserProcess\0"
	.align
_Label_462:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_480:
	.byte	'P'
	.ascii	"ptrOpenFile\0"
	.align
_Label_481:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_482:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_483:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_484:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_485:
	.byte	'I'
	.ascii	"previousStatus\0"
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	1730,r13		! source line 1730
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1742,r13		! source line 1742
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
	mov	1743,r13		! source line 1743
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_486:
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
	mov	7,r1
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	1747,r13		! source line 1747
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0IF",r10
!   _temp_490 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_491 = _temp_490 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_489 = *_temp_491  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_489 == 0 then goto _Label_488		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_488
!	jmp	_Label_487
_Label_487:
! THEN...
	mov	1762,r13		! source line 1762
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0SE",r10
!   _temp_493 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_494 = _temp_493 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_492 = *_temp_494  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_492) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_488:
! RETURN STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_495
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_496
	.word	-12
	.word	4
	.word	_Label_497
	.word	-16
	.word	4
	.word	_Label_498
	.word	-20
	.word	4
	.word	_Label_499
	.word	-24
	.word	4
	.word	_Label_500
	.word	-28
	.word	4
	.word	_Label_501
	.word	-32
	.word	4
	.word	0
_Label_495:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_489\0"
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
	mov	1769,r13		! source line 1769
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
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
	.word	_Label_502
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_502:
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	1783,r13		! source line 1783
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_503 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
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
	.word	_Label_504
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_505
	.word	-12
	.word	4
	.word	0
_Label_504:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_503\0"
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	1795,r13		! source line 1795
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_506 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1802,r13		! source line 1802
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
	.word	_Label_507
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_508
	.word	-12
	.word	4
	.word	0
_Label_507:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_506\0"
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	1807,r13		! source line 1807
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_509 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1814,r13		! source line 1814
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
	.word	_Label_510
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_511
	.word	-12
	.word	4
	.word	0
_Label_510:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_509\0"
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	1819,r13		! source line 1819
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_512 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_512  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1826,r13		! source line 1826
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
	.word	_Label_513
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_514
	.word	-12
	.word	4
	.word	0
_Label_513:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_512\0"
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1831,r13		! source line 1831
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1837,r13		! source line 1837
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_515 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1838,r13		! source line 1838
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
	.word	_Label_516
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_515\0"
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1843,r13		! source line 1843
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1849,r13		! source line 1849
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_518 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1850,r13		! source line 1850
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
	.word	_Label_519
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_520
	.word	-12
	.word	4
	.word	0
_Label_519:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_518\0"
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1855,r13		! source line 1855
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_521 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_function_198_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
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
	.word	_Label_522
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_523
	.word	-12
	.word	4
	.word	0
_Label_522:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_198_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_524 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1873,r13		! source line 1873
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_525 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_529 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_528 = *_temp_529  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_528 == 0 then goto _Label_527		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_527
!	jmp	_Label_526
_Label_526:
! THEN...
	mov	1878,r13		! source line 1878
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_531 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_530 = *_temp_531  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_530) then goto _runtimeErrorNullPointer
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
	jmp	_Label_532
_Label_527:
! ELSE...
	mov	1880,r13		! source line 1880
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_533 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_532:
! SEND STATEMENT...
	mov	1882,r13		! source line 1882
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
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_534
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_535
	.word	8
	.word	4
	.word	_Label_536
	.word	-12
	.word	4
	.word	_Label_537
	.word	-16
	.word	4
	.word	_Label_538
	.word	-20
	.word	4
	.word	_Label_539
	.word	-24
	.word	4
	.word	_Label_540
	.word	-28
	.word	4
	.word	_Label_541
	.word	-32
	.word	4
	.word	_Label_542
	.word	-36
	.word	4
	.word	0
_Label_534:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_535:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	1893,r13		! source line 1893
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1900,r13		! source line 1900
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1914,r13		! source line 1914
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3398
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_543
_Label_3398:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_543
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_543
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_557,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_557:
	jmp	_Label_549	! 1:	
	jmp	_Label_556	! 2:	
	jmp	_Label_546	! 3:	
	jmp	_Label_545	! 4:	
	jmp	_Label_548	! 5:	
	jmp	_Label_547	! 6:	
	jmp	_Label_550	! 7:	
	jmp	_Label_551	! 8:	
	jmp	_Label_552	! 9:	
	jmp	_Label_553	! 10:	
	jmp	_Label_554	! 11:	
	jmp	_Label_555	! 12:	
! CASE 4...
_Label_545:
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_558  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_558  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_546:
! CALL STATEMENT...
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_547:
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_559  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_559  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_548:
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_560  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_549:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_550:
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1928,r13		! source line 1928
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_561  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_551:
! RETURN STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1930,r13		! source line 1930
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_562  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_562  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_552:
! RETURN STATEMENT...
	mov	1932,r13		! source line 1932
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
	mov	1932,r13		! source line 1932
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_563  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_563  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_553:
! RETURN STATEMENT...
	mov	1934,r13		! source line 1934
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
	mov	1934,r13		! source line 1934
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_564  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_564  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_554:
! RETURN STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_565  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_565  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_555:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_556:
! CALL STATEMENT...
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_543:
! CALL STATEMENT...
!   _temp_566 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_567 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1947,r13		! source line 1947
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_544:
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
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
	.word	_Label_568
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_569
	.word	8
	.word	4
	.word	_Label_570
	.word	12
	.word	4
	.word	_Label_571
	.word	16
	.word	4
	.word	_Label_572
	.word	20
	.word	4
	.word	_Label_573
	.word	24
	.word	4
	.word	_Label_574
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_580
	.word	-36
	.word	4
	.word	_Label_581
	.word	-40
	.word	4
	.word	_Label_582
	.word	-44
	.word	4
	.word	_Label_583
	.word	-48
	.word	4
	.word	0
_Label_568:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_573:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_558\0"
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
	mov	1,r1
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	1954,r13		! source line 1954
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_584
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_585
	.word	8
	.word	4
	.word	0
_Label_584:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_585:
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
	mov	2,r1
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	1961,r13		! source line 1961
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_586 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1963,r13		! source line 1963
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_587
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_588
	.word	-12
	.word	4
	.word	0
_Label_587:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_586\0"
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
	mov	1,r1
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	1967,r13		! source line 1967
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1971,r13		! source line 1971
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
! RETURN STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_589
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_589:
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
	mov	72,r1
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	1977,r13		! source line 1977
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1992,r13		! source line 1992
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
	mov	1996,r13		! source line 1996
	mov	"\0\0SE",r10
!   _temp_590 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-260]
!   Send message GetANewProcess
	load	[r14+-260],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: oldPCB = *_temp_591  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   _temp_592 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-252]
!   Send message GetANewThread
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2001,r13		! source line 2001
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = newPCB + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-248]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_595 = oldPCB + 12
	load	[r14+-268],r1
	add	r1,12,r1
	store	r1,[r14+-240]
!   Data Move: _temp_594 = *_temp_595  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   Data Move: *_temp_593 = _temp_594  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = newThread + 72
	load	[r14+-272],r1
	add	r1,72,r1
	store	r1,[r14+-236]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-228]
!   Data Move: _temp_597 = *_temp_598  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   Data Move: *_temp_596 = _temp_597  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r14+-236],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = newThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-224]
!   Data Move: *_temp_599 = newPCB  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r14+-224],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = newPCB + 24
	load	[r14+-264],r1
	add	r1,24,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_600 = newThread  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-220],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = newThread + 4096
	load	[r14+-272],r1
	add	r1,4096,r1
	store	r1,[r14+-212]
!   Move address of _temp_602 [0 ] into _temp_603
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-212],r1
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
	store	r2,[r14+-208]
!   _temp_601 = _temp_603		(4 bytes)
	load	[r14+-208],r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2012,r13		! source line 2012
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! SEND STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0SE",r10
!   _temp_604 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-204]
!   _temp_605 = _temp_604 + 4
	load	[r14+-204],r1
	add	r1,4,r1
	store	r1,[r14+-200]
!   Send message Lock
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
!   Calculate and save the FOR-LOOP ending value
!   _temp_611 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-192]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_610  (sizeInBytes=4)
	load	[r14+-196],r1
	store	r1,[r14+-280]
_Label_606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_611 then goto _Label_609		
	load	[r14+-280],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_609
_Label_607:
	mov	2017,r13		! source line 2017
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-188]
!   Move address of _temp_612 [i ] into _temp_613
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
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
	store	r2,[r14+-184]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = oldPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-176]
!   Move address of _temp_615 [i ] into _temp_616
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
!   Data Move: _temp_614 = *_temp_616  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_613 = _temp_614  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0IF",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-164]
!   Move address of _temp_620 [i ] into _temp_621
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-164],r1
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
	store	r2,[r14+-160]
!   Data Move: _temp_619 = *_temp_621  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_619) then goto _Label_618
	load	[r14+-168],r1
	cmp	r1,r0
	be	_Label_618
!	jmp	_Label_617
_Label_617:
! THEN...
	mov	2020,r13		! source line 2020
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_623 [i ] into _temp_624
!     make sure index expr is >= 0
	load	[r14+-280],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-152],r1
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
	store	r2,[r14+-148]
!   Data Move: _temp_622 = *_temp_624  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_622) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_625 = _temp_622 + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-144]
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-128]
!   Move address of _temp_629 [i ] into _temp_630
!     make sure index expr is >= 0
	load	[r14+-280],r2
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
!   Data Move: _temp_628 = *_temp_630  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_628) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = _temp_628 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-120]
!   Data Move: _temp_627 = *_temp_631  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   _temp_626 = _temp_627 + 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   Data Move: *_temp_625 = _temp_626  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! END IF...
_Label_618:
!   Increment the FOR-LOOP index variable and jump back
_Label_608:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_606
! END FOR
_Label_609:
! SEND STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   _temp_632 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-116]
!   _temp_633 = _temp_632 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Unlock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_634 = newThread + 68
	load	[r14+-272],r1
	add	r1,68,r1
	store	r1,[r14+-108]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_636 = newThread + 88
	load	[r14+-272],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_636 [999 ] into _temp_637
!     make sure index expr is >= 0
	mov	999,r2
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
!   _temp_635 = _temp_637		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Data Move: *_temp_634 = _temp_635  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = newPCB + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_638 = _temp_639		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_642 = _temp_641 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_640 = *_temp_642  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_643 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_638  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_640  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_648 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_652 = _temp_651 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Data Move: _temp_650 = *_temp_652  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_649 = _temp_650 - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_648  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-280]
_Label_644:
!   Perform the FOR-LOOP termination test
!   if i > _temp_649 then goto _Label_647		
	load	[r14+-280],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_647
_Label_645:
	mov	2034,r13		! source line 2034
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0IF",r10
	mov	2035,r13		! source line 2035
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_653 else goto _Label_654
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_654
	jmp	_Label_653
_Label_653:
! THEN...
	mov	2036,r13		! source line 2036
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = newPCB + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_657
_Label_654:
! ELSE...
	mov	2038,r13		! source line 2038
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_658 = newPCB + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! END IF...
_Label_657:
! CALL STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_660 = newPCB + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_659  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
	mov	2041,r13		! source line 2041
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_662 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-280],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_661  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_659  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_661  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	2040,r13		! source line 2040
	mov	"\0\0CE",r10
	call	MemoryCopy
!   Increment the FOR-LOOP index variable and jump back
_Label_646:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_644
! END FOR
_Label_647:
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
!   Call the function
	mov	2047,r13		! source line 2047
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! SEND STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0SE",r10
!   _temp_663 = _function_196_ResumeChildAfterFork
	set	_function_196_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_663  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-284],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_665 = newPCB + 12
	load	[r14+-264],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_664 = *_temp_665  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_664  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,292,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_666
	.word	0		! total size of parameters
	.word	288		! frame size = 288
	.word	_Label_667
	.word	-12
	.word	4
	.word	_Label_668
	.word	-16
	.word	4
	.word	_Label_669
	.word	-20
	.word	4
	.word	_Label_670
	.word	-24
	.word	4
	.word	_Label_671
	.word	-28
	.word	4
	.word	_Label_672
	.word	-32
	.word	4
	.word	_Label_673
	.word	-36
	.word	4
	.word	_Label_674
	.word	-40
	.word	4
	.word	_Label_675
	.word	-44
	.word	4
	.word	_Label_676
	.word	-48
	.word	4
	.word	_Label_677
	.word	-52
	.word	4
	.word	_Label_678
	.word	-56
	.word	4
	.word	_Label_679
	.word	-60
	.word	4
	.word	_Label_680
	.word	-64
	.word	4
	.word	_Label_681
	.word	-68
	.word	4
	.word	_Label_682
	.word	-72
	.word	4
	.word	_Label_683
	.word	-76
	.word	4
	.word	_Label_684
	.word	-80
	.word	4
	.word	_Label_685
	.word	-84
	.word	4
	.word	_Label_686
	.word	-88
	.word	4
	.word	_Label_687
	.word	-92
	.word	4
	.word	_Label_688
	.word	-96
	.word	4
	.word	_Label_689
	.word	-100
	.word	4
	.word	_Label_690
	.word	-104
	.word	4
	.word	_Label_691
	.word	-108
	.word	4
	.word	_Label_692
	.word	-112
	.word	4
	.word	_Label_693
	.word	-116
	.word	4
	.word	_Label_694
	.word	-120
	.word	4
	.word	_Label_695
	.word	-124
	.word	4
	.word	_Label_696
	.word	-128
	.word	4
	.word	_Label_697
	.word	-132
	.word	4
	.word	_Label_698
	.word	-136
	.word	4
	.word	_Label_699
	.word	-140
	.word	4
	.word	_Label_700
	.word	-144
	.word	4
	.word	_Label_701
	.word	-148
	.word	4
	.word	_Label_702
	.word	-152
	.word	4
	.word	_Label_703
	.word	-156
	.word	4
	.word	_Label_704
	.word	-160
	.word	4
	.word	_Label_705
	.word	-164
	.word	4
	.word	_Label_706
	.word	-168
	.word	4
	.word	_Label_707
	.word	-172
	.word	4
	.word	_Label_708
	.word	-176
	.word	4
	.word	_Label_709
	.word	-180
	.word	4
	.word	_Label_710
	.word	-184
	.word	4
	.word	_Label_711
	.word	-188
	.word	4
	.word	_Label_712
	.word	-192
	.word	4
	.word	_Label_713
	.word	-196
	.word	4
	.word	_Label_714
	.word	-200
	.word	4
	.word	_Label_715
	.word	-204
	.word	4
	.word	_Label_716
	.word	-208
	.word	4
	.word	_Label_717
	.word	-212
	.word	4
	.word	_Label_718
	.word	-216
	.word	4
	.word	_Label_719
	.word	-220
	.word	4
	.word	_Label_720
	.word	-224
	.word	4
	.word	_Label_721
	.word	-228
	.word	4
	.word	_Label_722
	.word	-232
	.word	4
	.word	_Label_723
	.word	-236
	.word	4
	.word	_Label_724
	.word	-240
	.word	4
	.word	_Label_725
	.word	-244
	.word	4
	.word	_Label_726
	.word	-248
	.word	4
	.word	_Label_727
	.word	-252
	.word	4
	.word	_Label_728
	.word	-256
	.word	4
	.word	_Label_729
	.word	-260
	.word	4
	.word	_Label_730
	.word	-264
	.word	4
	.word	_Label_731
	.word	-268
	.word	4
	.word	_Label_732
	.word	-272
	.word	4
	.word	_Label_733
	.word	-276
	.word	4
	.word	_Label_734
	.word	-280
	.word	4
	.word	_Label_735
	.word	-284
	.word	4
	.word	0
_Label_666:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_730:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_731:
	.byte	'P'
	.ascii	"oldPCB\0"
	.align
_Label_732:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_733:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_734:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_735:
	.byte	'I'
	.ascii	"oldUserPC\0"
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
	mov	21,r1
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	2056,r13		! source line 2056
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2071,r13		! source line 2071
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_736 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: parent = *_temp_736  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
! FOR STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_741 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_742 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_741  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-72]
_Label_737:
!   Perform the FOR-LOOP termination test
!   if i > _temp_742 then goto _Label_740		
	load	[r14+-72],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_740
_Label_738:
	mov	2075,r13		! source line 2075
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   _temp_743 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_744 = _temp_743 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_744 [i ] into _temp_745
!     make sure index expr is >= 0
	load	[r14+-72],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   child = _temp_745		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_751 = child + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Data Move: _temp_750 = *_temp_751  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_750 != processID then goto _Label_747		(int)
	load	[r14+-44],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_747
!	jmp	_Label_749
_Label_749:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_753 = child + 16
	load	[r14+-76],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_752 = *_temp_753  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_755 = parent + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: _temp_754 = *_temp_755  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_752 != _temp_754 then goto _Label_747		(int)
	load	[r14+-36],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bne	_Label_747
!	jmp	_Label_748
_Label_748:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_757 = child + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: _temp_756 = *_temp_757  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if _temp_756 == 3 then goto _Label_747		(int)
	load	[r14+-20],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_747
!	jmp	_Label_746
_Label_746:
! THEN...
	mov	2079,r13		! source line 2079
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
	mov	2079,r13		! source line 2079
	mov	"\0\0SE",r10
!   _temp_758 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=child  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=childsExitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! RETURN STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0RE",r10
!   ReturnResult: childsExitStatus  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_747:
!   Increment the FOR-LOOP index variable and jump back
_Label_739:
!   i = i + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_737
! END FOR
_Label_740:
! RETURN STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_759
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_760
	.word	8
	.word	4
	.word	_Label_761
	.word	-12
	.word	4
	.word	_Label_762
	.word	-16
	.word	4
	.word	_Label_763
	.word	-20
	.word	4
	.word	_Label_764
	.word	-24
	.word	4
	.word	_Label_765
	.word	-28
	.word	4
	.word	_Label_766
	.word	-32
	.word	4
	.word	_Label_767
	.word	-36
	.word	4
	.word	_Label_768
	.word	-40
	.word	4
	.word	_Label_769
	.word	-44
	.word	4
	.word	_Label_770
	.word	-48
	.word	4
	.word	_Label_771
	.word	-52
	.word	4
	.word	_Label_772
	.word	-56
	.word	4
	.word	_Label_773
	.word	-60
	.word	4
	.word	_Label_774
	.word	-64
	.word	4
	.word	_Label_775
	.word	-68
	.word	4
	.word	_Label_776
	.word	-72
	.word	4
	.word	_Label_777
	.word	-76
	.word	4
	.word	_Label_778
	.word	-80
	.word	4
	.word	_Label_779
	.word	-84
	.word	4
	.word	0
_Label_759:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_760:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_776:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_777:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_778:
	.byte	'P'
	.ascii	"parent\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"childsExitStatus\0"
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
	mov	63,r1
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	2088,r13		! source line 2088
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-196,r4
	mov	23,r3
_Label_3405:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3405
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-196]
! SEND STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   _temp_781 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-96]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_782 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: ptrToPCB = *_temp_782  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
	mov	2116,r13		! source line 2116
	mov	"\0\0SE",r10
!   _temp_783 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-88]
!   _temp_784 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_783  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_784  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_787		(int)
	load	[r14+-232],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_787
!	jmp	_Label_786
_Label_786:
! THEN...
	mov	2118,r13		! source line 2118
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_787:
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_788 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-76]
!   _temp_789 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_788  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ptrOpenFile2  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
! IF STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile2) then goto _Label_790
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_790
	jmp	_Label_791
_Label_790:
! THEN...
	mov	2124,r13		! source line 2124
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_791:
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
	mov	2133,r13		! source line 2133
	mov	"\0\0SE",r10
!   _temp_792 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-68]
!   if intIsZero (ptrOpenFile2) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_792  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_794		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_794
!	jmp	_Label_793
_Label_793:
! THEN...
	mov	2135,r13		! source line 2135
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_794:
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_795 = newAddrSpace  (sizeInBytes=92)
	add	r14,-196,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3406:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3406
! SEND STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0SE",r10
!   _temp_796 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=ptrOpenFile2  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_799 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_798 = *_temp_799  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_798) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _temp_798 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_797 = _temp_800		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_801 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_797  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   _temp_803 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-32]
!   _temp_804 = _temp_803 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_802 = *_temp_804  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_802 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_805 [999 ] into _temp_806
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
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
	store	r2,[r14+-20]
!   ptrInitSystemStackTop = _temp_806		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2145,r13		! source line 2145
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_807 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_807 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_808 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-240],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_808  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2147,r13		! source line 2147
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2148,r13		! source line 2148
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_809
	.word	4		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_810
	.word	8
	.word	4
	.word	_Label_811
	.word	-12
	.word	4
	.word	_Label_812
	.word	-16
	.word	4
	.word	_Label_813
	.word	-20
	.word	4
	.word	_Label_814
	.word	-24
	.word	4
	.word	_Label_815
	.word	-28
	.word	4
	.word	_Label_816
	.word	-32
	.word	4
	.word	_Label_817
	.word	-36
	.word	4
	.word	_Label_818
	.word	-40
	.word	4
	.word	_Label_819
	.word	-44
	.word	4
	.word	_Label_820
	.word	-48
	.word	4
	.word	_Label_821
	.word	-52
	.word	4
	.word	_Label_822
	.word	-56
	.word	4
	.word	_Label_823
	.word	-60
	.word	4
	.word	_Label_824
	.word	-64
	.word	4
	.word	_Label_825
	.word	-68
	.word	4
	.word	_Label_826
	.word	-72
	.word	4
	.word	_Label_827
	.word	-76
	.word	4
	.word	_Label_828
	.word	-80
	.word	4
	.word	_Label_829
	.word	-84
	.word	4
	.word	_Label_830
	.word	-88
	.word	4
	.word	_Label_831
	.word	-92
	.word	4
	.word	_Label_832
	.word	-96
	.word	4
	.word	_Label_833
	.word	-100
	.word	4
	.word	_Label_834
	.word	-104
	.word	4
	.word	_Label_835
	.word	-196
	.word	92
	.word	_Label_836
	.word	-220
	.word	24
	.word	_Label_837
	.word	-224
	.word	4
	.word	_Label_838
	.word	-228
	.word	4
	.word	_Label_839
	.word	-232
	.word	4
	.word	_Label_840
	.word	-236
	.word	4
	.word	_Label_841
	.word	-240
	.word	4
	.word	_Label_842
	.word	-244
	.word	4
	.word	0
_Label_809:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_810:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_834:
	.byte	'P'
	.ascii	"ptrOpenFile2\0"
	.align
_Label_835:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_836:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_837:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_839:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_841:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_842:
	.byte	'I'
	.ascii	"previousStatus\0"
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
	mov	17,r1
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	2151,r13		! source line 2151
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
	mov	2156,r13		! source line 2156
	mov	"\0\0SE",r10
!   _temp_843 = &stringStorage
	add	r14,-56,r1
	store	r1,[r14+-32]
!   _temp_844 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_845 = *_temp_846  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_845) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_847 = _temp_845 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_843  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_844  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! IF STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_849		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_849
!	jmp	_Label_848
_Label_848:
! THEN...
	mov	2160,r13		! source line 2160
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_850 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_850  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2160,r13		! source line 2160
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_849:
! RETURN STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_851
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_852
	.word	8
	.word	4
	.word	_Label_853
	.word	-12
	.word	4
	.word	_Label_854
	.word	-16
	.word	4
	.word	_Label_855
	.word	-20
	.word	4
	.word	_Label_856
	.word	-24
	.word	4
	.word	_Label_857
	.word	-28
	.word	4
	.word	_Label_858
	.word	-32
	.word	4
	.word	_Label_859
	.word	-56
	.word	24
	.word	_Label_860
	.word	-60
	.word	4
	.word	0
_Label_851:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_852:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_850\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_859:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_860:
	.byte	'I'
	.ascii	"numOfBytes\0"
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
	mov	32,r1
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
	mov	2170,r13		! source line 2170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_861 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: pcb = *_temp_861  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
	mov	2194,r13		! source line 2194
	mov	"\0\0SE",r10
!   _temp_862 = &stringStorage
	add	r14,-104,r1
	store	r1,[r14+-72]
!   _temp_863 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_865 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_864 = *_temp_865  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_864) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_866 = _temp_864 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_862  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_863  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0IF",r10
!   _temp_870 = &stringStorage
	add	r14,-104,r1
	store	r1,[r14+-48]
!   Data Move: _temp_869 = *_temp_870  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_869 <= 20 then goto _Label_868		(int)
	load	[r14+-52],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_868
!	jmp	_Label_867
_Label_867:
! THEN...
	mov	2198,r13		! source line 2198
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_868:
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   open = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-116]
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   holdI = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-120]
! FOR STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_875 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_876 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_875  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-108]
_Label_871:
!   Perform the FOR-LOOP termination test
!   if i > _temp_876 then goto _Label_874		
	load	[r14+-108],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_874
_Label_872:
	mov	2205,r13		! source line 2205
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_880 = pcb + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_880 [i ] into _temp_881
!     make sure index expr is >= 0
	load	[r14+-108],r2
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
!   Data Move: _temp_879 = *_temp_881  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_879) then goto _Label_877
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_877
	jmp	_Label_878
_Label_877:
! THEN...
	mov	2207,r13		! source line 2207
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
	mov	2207,r13		! source line 2207
	mov	"\0\0SE",r10
!   _temp_882 = &stringStorage
	add	r14,-104,r1
	store	r1,[r14+-24]
!   _temp_883 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_882  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   holdI = i		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-120]
! BREAK STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0BR",r10
	jmp	_Label_874
! END IF...
_Label_878:
!   Increment the FOR-LOOP index variable and jump back
_Label_873:
!   i = i + 1
	load	[r14+-108],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-108]
	jmp	_Label_871
! END FOR
_Label_874:
! IF STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_884
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_884
!	jmp	_Label_886
_Label_886:
!   if holdI != -1 then goto _Label_885		(int)
	load	[r14+-120],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_885
!	jmp	_Label_884
_Label_884:
! THEN...
	mov	2216,r13		! source line 2216
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_885:
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_887 = pcb + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_887 [holdI ] into _temp_888
!     make sure index expr is >= 0
	load	[r14+-120],r2
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
!   Data Move: *_temp_888 = open  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0RE",r10
!   ReturnResult: holdI  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_889
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_890
	.word	8
	.word	4
	.word	_Label_891
	.word	-12
	.word	4
	.word	_Label_892
	.word	-16
	.word	4
	.word	_Label_893
	.word	-20
	.word	4
	.word	_Label_894
	.word	-24
	.word	4
	.word	_Label_895
	.word	-28
	.word	4
	.word	_Label_896
	.word	-32
	.word	4
	.word	_Label_897
	.word	-36
	.word	4
	.word	_Label_898
	.word	-40
	.word	4
	.word	_Label_899
	.word	-44
	.word	4
	.word	_Label_900
	.word	-48
	.word	4
	.word	_Label_901
	.word	-52
	.word	4
	.word	_Label_902
	.word	-56
	.word	4
	.word	_Label_903
	.word	-60
	.word	4
	.word	_Label_904
	.word	-64
	.word	4
	.word	_Label_905
	.word	-68
	.word	4
	.word	_Label_906
	.word	-72
	.word	4
	.word	_Label_907
	.word	-76
	.word	4
	.word	_Label_908
	.word	-80
	.word	4
	.word	_Label_909
	.word	-104
	.word	24
	.word	_Label_910
	.word	-108
	.word	4
	.word	_Label_911
	.word	-112
	.word	4
	.word	_Label_912
	.word	-116
	.word	4
	.word	_Label_913
	.word	-120
	.word	4
	.word	0
_Label_889:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_890:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_908:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_909:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_910:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_911:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_912:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_913:
	.byte	'I'
	.ascii	"holdI\0"
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
	mov	2227,r13		! source line 2227
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2237,r13		! source line 2237
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
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
	.word	_Label_914
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_915
	.word	8
	.word	4
	.word	_Label_916
	.word	12
	.word	4
	.word	_Label_917
	.word	16
	.word	4
	.word	0
_Label_914:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_915:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_916:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_917:
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
	mov	2240,r13		! source line 2240
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
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
	.word	_Label_918
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_919
	.word	8
	.word	4
	.word	_Label_920
	.word	12
	.word	4
	.word	_Label_921
	.word	16
	.word	4
	.word	0
_Label_918:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_919:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_920:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_921:
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
	mov	2253,r13		! source line 2253
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
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
	.word	_Label_922
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_923
	.word	8
	.word	4
	.word	_Label_924
	.word	12
	.word	4
	.word	0
_Label_922:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_923:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_924:
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
	mov	2264,r13		! source line 2264
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2264,r13		! source line 2264
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
	.word	_Label_925
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_926
	.word	8
	.word	4
	.word	0
_Label_925:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_926:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  FUNCTION printString  ===============
! 
_function_197_printString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_printString,r1
	push	r1
	mov	1,r1
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	2272,r13		! source line 2272
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2274,r13		! source line 2274
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_printString:
	.word	_sourceFileName
	.word	_Label_927
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_928
	.word	8
	.word	4
	.word	0
_Label_927:
	.ascii	"printString\0"
	.align
_Label_928:
	.byte	'P'
	.ascii	"arg\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_196_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	2278,r13		! source line 2278
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2290,r13		! source line 2290
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_930 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_929 = *_temp_930  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_929) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_931 = _temp_929 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Send message SetToThisPageTable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_933 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_933 [0 ] into _temp_934
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
!   _temp_932 = _temp_934		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_935 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_936 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_936 [999 ] into _temp_937
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
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
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_937		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_938 [14 ] into _temp_939
!     make sure index expr is >= 0
	mov	14,r2
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
!   Data Move: initUserStackTop = *_temp_939  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-64]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+8]
!   Call the function
	mov	2304,r13		! source line 2304
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_196_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_940
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_941
	.word	8
	.word	4
	.word	_Label_942
	.word	-12
	.word	4
	.word	_Label_943
	.word	-16
	.word	4
	.word	_Label_944
	.word	-20
	.word	4
	.word	_Label_945
	.word	-24
	.word	4
	.word	_Label_946
	.word	-28
	.word	4
	.word	_Label_947
	.word	-32
	.word	4
	.word	_Label_948
	.word	-36
	.word	4
	.word	_Label_949
	.word	-40
	.word	4
	.word	_Label_950
	.word	-44
	.word	4
	.word	_Label_951
	.word	-48
	.word	4
	.word	_Label_952
	.word	-52
	.word	4
	.word	_Label_953
	.word	-56
	.word	4
	.word	_Label_954
	.word	-60
	.word	4
	.word	_Label_955
	.word	-64
	.word	4
	.word	0
_Label_940:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_941:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_953:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_954:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_955:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_195_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	2895,r13		! source line 2895
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_956 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_956  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2900,r13		! source line 2900
	mov	"\0\0AS",r10
!   _temp_957 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_957) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_959 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_959) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_958 = *_temp_959  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_957 = _temp_958  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0AS",r10
!   _temp_960 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_960) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_962 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_962) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_961 = *_temp_962  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_960 = _temp_961  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0AS",r10
!   _temp_963 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_963) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_965 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_965) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_964 = *_temp_965  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_963 = _temp_964  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_966
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_967
	.word	8
	.word	4
	.word	_Label_968
	.word	12
	.word	4
	.word	_Label_969
	.word	-16
	.word	4
	.word	_Label_970
	.word	-9
	.word	1
	.word	_Label_971
	.word	-20
	.word	4
	.word	_Label_972
	.word	-24
	.word	4
	.word	_Label_973
	.word	-10
	.word	1
	.word	_Label_974
	.word	-28
	.word	4
	.word	_Label_975
	.word	-32
	.word	4
	.word	_Label_976
	.word	-11
	.word	1
	.word	_Label_977
	.word	-36
	.word	4
	.word	_Label_978
	.word	-12
	.word	1
	.word	_Label_979
	.word	-40
	.word	4
	.word	_Label_980
	.word	-44
	.word	4
	.word	0
_Label_966:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_967:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_968:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_970:
	.byte	'C'
	.ascii	"_temp_964\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_973:
	.byte	'C'
	.ascii	"_temp_961\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_976:
	.byte	'C'
	.ascii	"_temp_958\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_978:
	.byte	'C'
	.ascii	"_temp_956\0"
	.align
_Label_979:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_980:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_194_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_194_printFCB,r1
	push	r1
	mov	3,r1
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	2905,r13		! source line 2905
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_981 = *_temp_982  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2906,r13		! source line 2906
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2907,r13		! source line 2907
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_194_printFCB:
	.word	_sourceFileName
	.word	_Label_983
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_984
	.word	8
	.word	4
	.word	_Label_985
	.word	-12
	.word	4
	.word	_Label_986
	.word	-16
	.word	4
	.word	0
_Label_983:
	.ascii	"printFCB\0"
	.align
_Label_984:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_193_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_193_printOpen,r1
	push	r1
	mov	4,r1
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	2910,r13		! source line 2910
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_987 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2911,r13		! source line 2911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_988 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_988  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_989 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_989  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2913,r13		! source line 2913
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_193_printOpen:
	.word	_sourceFileName
	.word	_Label_990
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_991
	.word	8
	.word	4
	.word	_Label_992
	.word	-12
	.word	4
	.word	_Label_993
	.word	-16
	.word	4
	.word	_Label_994
	.word	-20
	.word	4
	.word	0
_Label_990:
	.ascii	"printOpen\0"
	.align
_Label_991:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_995
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_995:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_996
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_996:
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_998		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_998
!	jmp	_Label_997
_Label_997:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_999 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
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
_Label_998:
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
	.word	_Label_1001
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1003
	.word	12
	.word	4
	.word	_Label_1004
	.word	-12
	.word	4
	.word	_Label_1005
	.word	-16
	.word	4
	.word	0
_Label_1001:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1002:
	.ascii	"Pself\0"
	.align
_Label_1003:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_999\0"
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
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
!   if count != 2147483647 then goto _Label_1007		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1007
!	jmp	_Label_1006
_Label_1006:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1008 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
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
_Label_1007:
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
!   if count > 0 then goto _Label_1010		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1010
!	jmp	_Label_1009
_Label_1009:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1011 = &waitingThreads
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
!   _temp_1012 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1012 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_1013 = &_P_Kernel_readyList
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
_Label_1010:
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
	.word	_Label_1014
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1016
	.word	-12
	.word	4
	.word	_Label_1017
	.word	-16
	.word	4
	.word	_Label_1018
	.word	-20
	.word	4
	.word	_Label_1019
	.word	-24
	.word	4
	.word	_Label_1020
	.word	-28
	.word	4
	.word	_Label_1021
	.word	-32
	.word	4
	.word	0
_Label_1014:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1015:
	.ascii	"Pself\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1020:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1021:
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
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
!   if count != -2147483648 then goto _Label_1023		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1023
!	jmp	_Label_1022
_Label_1022:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1024 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1024  sizeInBytes=4
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
_Label_1023:
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
!   if count >= 0 then goto _Label_1026		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1026
!	jmp	_Label_1025
_Label_1025:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_1027 = &waitingThreads
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
_Label_1026:
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
	.word	_Label_1028
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1029
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1030
	.word	-12
	.word	4
	.word	_Label_1031
	.word	-16
	.word	4
	.word	_Label_1032
	.word	-20
	.word	4
	.word	0
_Label_1028:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1029:
	.ascii	"Pself\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1032:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1033
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1033:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1034
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1034:
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
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
	.word	_Label_1036
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	-12
	.word	4
	.word	0
_Label_1036:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1035\0"
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1040		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
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
_Label_1040:
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
!   if heldBy == 0 then goto _Label_1045		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1045
!   _temp_1044 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1046
_Label_1045:
!   _temp_1044 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1046:
!   if _temp_1044 then goto _Label_1043 else goto _Label_1042
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1042
	jmp	_Label_1043
_Label_1042:
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
	jmp	_Label_1047
_Label_1043:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_1048 = &waitingThreads
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
_Label_1047:
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
	.word	_Label_1049
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1051
	.word	-16
	.word	4
	.word	_Label_1052
	.word	-9
	.word	1
	.word	_Label_1053
	.word	-20
	.word	4
	.word	_Label_1054
	.word	-24
	.word	4
	.word	0
_Label_1049:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1050:
	.ascii	"Pself\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1052:
	.byte	'C'
	.ascii	"_temp_1044\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1054:
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
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1056		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1056
!	jmp	_Label_1055
_Label_1055:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1057 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
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
_Label_1056:
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
!   _temp_1058 = &waitingThreads
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
!   if t == 0 then goto _Label_1060		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1060
!	jmp	_Label_1059
_Label_1059:
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
!   _temp_1061 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1061 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_1062 = &_P_Kernel_readyList
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
	jmp	_Label_1063
_Label_1060:
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
_Label_1063:
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
	.word	_Label_1064
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1066
	.word	-12
	.word	4
	.word	_Label_1067
	.word	-16
	.word	4
	.word	_Label_1068
	.word	-20
	.word	4
	.word	_Label_1069
	.word	-24
	.word	4
	.word	_Label_1070
	.word	-28
	.word	4
	.word	_Label_1071
	.word	-32
	.word	4
	.word	0
_Label_1064:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1065:
	.ascii	"Pself\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1070:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1071:
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
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1074		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1074
!	jmp	_Label_1073
_Label_1073:
!   _temp_1072 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1075
_Label_1074:
!   _temp_1072 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1075:
!   ReturnResult: _temp_1072  (sizeInBytes=1)
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
	.word	_Label_1076
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1078
	.word	-9
	.word	1
	.word	0
_Label_1076:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1077:
	.ascii	"Pself\0"
	.align
_Label_1078:
	.byte	'C'
	.ascii	"_temp_1072\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1079
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1079:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1080
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1080:
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
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
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
	.word	_Label_1082
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1083
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1084
	.word	-12
	.word	4
	.word	0
_Label_1082:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1083:
	.ascii	"Pself\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1081\0"
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
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
!   Retrieve Result: targetName=_temp_1087  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1087 then goto _Label_1086 else goto _Label_1085
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1085
	jmp	_Label_1086
_Label_1085:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1088 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
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
_Label_1086:
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
!   _temp_1089 = &waitingThreads
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
	.word	_Label_1090
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1092
	.word	12
	.word	4
	.word	_Label_1093
	.word	-16
	.word	4
	.word	_Label_1094
	.word	-20
	.word	4
	.word	_Label_1095
	.word	-9
	.word	1
	.word	_Label_1096
	.word	-24
	.word	4
	.word	0
_Label_1090:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1091:
	.ascii	"Pself\0"
	.align
_Label_1092:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1095:
	.byte	'C'
	.ascii	"_temp_1087\0"
	.align
_Label_1096:
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
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
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
!   Retrieve Result: targetName=_temp_1099  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1099 then goto _Label_1098 else goto _Label_1097
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1097
	jmp	_Label_1098
_Label_1097:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1100 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
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
_Label_1098:
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
!   _temp_1101 = &waitingThreads
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
!   if t == 0 then goto _Label_1103		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1103
!	jmp	_Label_1102
_Label_1102:
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
!   _temp_1104 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1104 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_1105 = &_P_Kernel_readyList
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
_Label_1103:
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
	.word	_Label_1106
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1107
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1108
	.word	12
	.word	4
	.word	_Label_1109
	.word	-16
	.word	4
	.word	_Label_1110
	.word	-20
	.word	4
	.word	_Label_1111
	.word	-24
	.word	4
	.word	_Label_1112
	.word	-28
	.word	4
	.word	_Label_1113
	.word	-9
	.word	1
	.word	_Label_1114
	.word	-32
	.word	4
	.word	_Label_1115
	.word	-36
	.word	4
	.word	0
_Label_1106:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1107:
	.ascii	"Pself\0"
	.align
_Label_1108:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1113:
	.byte	'C'
	.ascii	"_temp_1099\0"
	.align
_Label_1114:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1115:
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
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
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
!   Retrieve Result: targetName=_temp_1118  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1118 then goto _Label_1117 else goto _Label_1116
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1116
	jmp	_Label_1117
_Label_1116:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1119 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1119  sizeInBytes=4
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
_Label_1117:
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
_Label_1120:
!	jmp	_Label_1121
_Label_1121:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_1123 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1124
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1124
	jmp	_Label_1125
_Label_1124:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_1122
! END IF...
_Label_1125:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1126 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_1127 = &_P_Kernel_readyList
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
	jmp	_Label_1120
_Label_1122:
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
	.word	_Label_1128
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1130
	.word	12
	.word	4
	.word	_Label_1131
	.word	-16
	.word	4
	.word	_Label_1132
	.word	-20
	.word	4
	.word	_Label_1133
	.word	-24
	.word	4
	.word	_Label_1134
	.word	-28
	.word	4
	.word	_Label_1135
	.word	-9
	.word	1
	.word	_Label_1136
	.word	-32
	.word	4
	.word	_Label_1137
	.word	-36
	.word	4
	.word	0
_Label_1128:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1129:
	.ascii	"Pself\0"
	.align
_Label_1130:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1135:
	.byte	'C'
	.ascii	"_temp_1118\0"
	.align
_Label_1136:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1137:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1138
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
_Label_1138:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1139
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1139:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
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
!   _temp_1140 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1140) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1140 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1141 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1141 [0 ] into _temp_1142
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
!   Data Move: *_temp_1142 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1143 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1143 [999 ] into _temp_1144
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
!   Data Move: *_temp_1144 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1145 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1145 [999 ] into _temp_1146
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
!   stackTop = _temp_1146		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1147 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1149 = &_temp_1148
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1149 = _temp_1149 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1151:
!   Data Move: *_temp_1149 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1149 = _temp_1149 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1150 = _temp_1150 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1150) then goto _Label_1151
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1151
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1152 = &_temp_1148
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3426
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3426:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1147 = *_temp_1152  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3427:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3427
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
!   _temp_1153 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1155 = &_temp_1154
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1155 = _temp_1155 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1157:
!   Data Move: *_temp_1155 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1155 = _temp_1155 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1156 = _temp_1156 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1156) then goto _Label_1157
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1157
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1158 = &_temp_1154
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3428
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3428:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1153 = *_temp_1158  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3429:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3429
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
	.word	_Label_1159
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1160
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1161
	.word	12
	.word	4
	.word	_Label_1162
	.word	-12
	.word	4
	.word	_Label_1163
	.word	-16
	.word	4
	.word	_Label_1164
	.word	-20
	.word	4
	.word	_Label_1165
	.word	-84
	.word	64
	.word	_Label_1166
	.word	-88
	.word	4
	.word	_Label_1167
	.word	-92
	.word	4
	.word	_Label_1168
	.word	-96
	.word	4
	.word	_Label_1169
	.word	-100
	.word	4
	.word	_Label_1170
	.word	-156
	.word	56
	.word	_Label_1171
	.word	-160
	.word	4
	.word	_Label_1172
	.word	-164
	.word	4
	.word	_Label_1173
	.word	-168
	.word	4
	.word	_Label_1174
	.word	-172
	.word	4
	.word	_Label_1175
	.word	-176
	.word	4
	.word	_Label_1176
	.word	-180
	.word	4
	.word	_Label_1177
	.word	-184
	.word	4
	.word	_Label_1178
	.word	-188
	.word	4
	.word	0
_Label_1159:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1160:
	.ascii	"Pself\0"
	.align
_Label_1161:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1140\0"
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
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
!   _temp_1179 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1179  (sizeInBytes=4)
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
!   _temp_1181 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1180  sizeInBytes=4
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
	.word	_Label_1182
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1184
	.word	12
	.word	4
	.word	_Label_1185
	.word	16
	.word	4
	.word	_Label_1186
	.word	-12
	.word	4
	.word	_Label_1187
	.word	-16
	.word	4
	.word	_Label_1188
	.word	-20
	.word	4
	.word	_Label_1189
	.word	-24
	.word	4
	.word	_Label_1190
	.word	-28
	.word	4
	.word	0
_Label_1182:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1183:
	.ascii	"Pself\0"
	.align
_Label_1184:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1185:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1189:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1190:
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
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1193 == _P_Kernel_currentThread then goto _Label_1192		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1192
!	jmp	_Label_1191
_Label_1191:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1194 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1194  sizeInBytes=4
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
_Label_1192:
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
!   _temp_1195 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1197		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1197
!	jmp	_Label_1196
_Label_1196:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1199		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1199
!	jmp	_Label_1198
_Label_1198:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1200 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
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
_Label_1199:
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
!   _temp_1202 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1201  sizeInBytes=4
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
_Label_1197:
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
	.word	_Label_1203
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1204
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1205
	.word	-12
	.word	4
	.word	_Label_1206
	.word	-16
	.word	4
	.word	_Label_1207
	.word	-20
	.word	4
	.word	_Label_1208
	.word	-24
	.word	4
	.word	_Label_1209
	.word	-28
	.word	4
	.word	_Label_1210
	.word	-32
	.word	4
	.word	_Label_1211
	.word	-36
	.word	4
	.word	_Label_1212
	.word	-40
	.word	4
	.word	_Label_1213
	.word	-44
	.word	4
	.word	0
_Label_1203:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1204:
	.ascii	"Pself\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1211:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1212:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1213:
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1215		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1215
!	jmp	_Label_1214
_Label_1214:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1216 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
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
_Label_1215:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1219 == _P_Kernel_currentThread then goto _Label_1218		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1218
!	jmp	_Label_1217
_Label_1217:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1220 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
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
_Label_1218:
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
!   _temp_1221 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1222
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1222
	jmp	_Label_1223
_Label_1222:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1224 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1224  sizeInBytes=4
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
_Label_1223:
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
	.word	_Label_1225
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1226
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1227
	.word	-12
	.word	4
	.word	_Label_1228
	.word	-16
	.word	4
	.word	_Label_1229
	.word	-20
	.word	4
	.word	_Label_1230
	.word	-24
	.word	4
	.word	_Label_1231
	.word	-28
	.word	4
	.word	_Label_1232
	.word	-32
	.word	4
	.word	0
_Label_1225:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1226:
	.ascii	"Pself\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1232:
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1236 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1236 [0 ] into _temp_1237
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
!   Data Move: _temp_1235 = *_temp_1237  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1235 == 606348324 then goto _Label_1234		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1234
!	jmp	_Label_1233
_Label_1233:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1238 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
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
	jmp	_Label_1239
_Label_1234:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1243 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1243 [999 ] into _temp_1244
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
!   Data Move: _temp_1242 = *_temp_1244  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1242 == 606348324 then goto _Label_1241		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1241
!	jmp	_Label_1240
_Label_1240:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1245 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1245  sizeInBytes=4
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
_Label_1241:
! END IF...
_Label_1239:
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
	.word	_Label_1246
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1247
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1248
	.word	-12
	.word	4
	.word	_Label_1249
	.word	-16
	.word	4
	.word	_Label_1250
	.word	-20
	.word	4
	.word	_Label_1251
	.word	-24
	.word	4
	.word	_Label_1252
	.word	-28
	.word	4
	.word	_Label_1253
	.word	-32
	.word	4
	.word	_Label_1254
	.word	-36
	.word	4
	.word	_Label_1255
	.word	-40
	.word	4
	.word	0
_Label_1246:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1247:
	.ascii	"Pself\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1235\0"
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
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
!   _temp_1256 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
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
!   _temp_1257 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1259 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1260 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
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
!   _temp_1265 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1266 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1265  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1261:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1266 then goto _Label_1264		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1264
_Label_1262:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1267 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1268 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1268  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1269 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1269  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1271 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1271 [i ] into _temp_1272
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
!   Data Move: _temp_1270 = *_temp_1272  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1270  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1273 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1275 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1275 [i ] into _temp_1276
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
!   Data Move: _temp_1274 = *_temp_1276  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1277 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1263:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1261
! END FOR
_Label_1264:
! CALL STATEMENT...
!   _temp_1278 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-116]
!   _temp_1279 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1278  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1279  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1280 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-108]
!   _temp_1282 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1282 [0 ] into _temp_1283
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
!   _temp_1281 = _temp_1283		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1281  sizeInBytes=4
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
	be	_Label_1286
	cmp	r1,2
	be	_Label_1287
	cmp	r1,3
	be	_Label_1288
	cmp	r1,4
	be	_Label_1289
	cmp	r1,5
	be	_Label_1290
	jmp	_Label_1284
! CASE 1...
_Label_1286:
! CALL STATEMENT...
!   _temp_1291 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1285
! CASE 2...
_Label_1287:
! CALL STATEMENT...
!   _temp_1292 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1285
! CASE 3...
_Label_1288:
! CALL STATEMENT...
!   _temp_1293 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1285
! CASE 4...
_Label_1289:
! CALL STATEMENT...
!   _temp_1294 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1285
! CASE 5...
_Label_1290:
! CALL STATEMENT...
!   _temp_1295 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1285
! DEFAULT CASE...
_Label_1284:
! CALL STATEMENT...
!   _temp_1296 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1296  sizeInBytes=4
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
_Label_1285:
! CALL STATEMENT...
!   _temp_1297 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
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
!   _temp_1298 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
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
!   _temp_1303 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1304 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1303  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1299:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1304 then goto _Label_1302		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1302
_Label_1300:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1305 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1306 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1307 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1307  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1309 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1309 [i ] into _temp_1310
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
!   Data Move: _temp_1308 = *_temp_1310  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1308  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1311 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1311  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1313 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1313 [i ] into _temp_1314
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
!   Data Move: _temp_1312 = *_temp_1314  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1312  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1315 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1301:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1299
! END FOR
_Label_1302:
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
	.word	_Label_1316
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1317
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1318
	.word	-12
	.word	4
	.word	_Label_1319
	.word	-16
	.word	4
	.word	_Label_1320
	.word	-20
	.word	4
	.word	_Label_1321
	.word	-24
	.word	4
	.word	_Label_1322
	.word	-28
	.word	4
	.word	_Label_1323
	.word	-32
	.word	4
	.word	_Label_1324
	.word	-36
	.word	4
	.word	_Label_1325
	.word	-40
	.word	4
	.word	_Label_1326
	.word	-44
	.word	4
	.word	_Label_1327
	.word	-48
	.word	4
	.word	_Label_1328
	.word	-52
	.word	4
	.word	_Label_1329
	.word	-56
	.word	4
	.word	_Label_1330
	.word	-60
	.word	4
	.word	_Label_1331
	.word	-64
	.word	4
	.word	_Label_1332
	.word	-68
	.word	4
	.word	_Label_1333
	.word	-72
	.word	4
	.word	_Label_1334
	.word	-76
	.word	4
	.word	_Label_1335
	.word	-80
	.word	4
	.word	_Label_1336
	.word	-84
	.word	4
	.word	_Label_1337
	.word	-88
	.word	4
	.word	_Label_1338
	.word	-92
	.word	4
	.word	_Label_1339
	.word	-96
	.word	4
	.word	_Label_1340
	.word	-100
	.word	4
	.word	_Label_1341
	.word	-104
	.word	4
	.word	_Label_1342
	.word	-108
	.word	4
	.word	_Label_1343
	.word	-112
	.word	4
	.word	_Label_1344
	.word	-116
	.word	4
	.word	_Label_1345
	.word	-120
	.word	4
	.word	_Label_1346
	.word	-124
	.word	4
	.word	_Label_1347
	.word	-128
	.word	4
	.word	_Label_1348
	.word	-132
	.word	4
	.word	_Label_1349
	.word	-136
	.word	4
	.word	_Label_1350
	.word	-140
	.word	4
	.word	_Label_1351
	.word	-144
	.word	4
	.word	_Label_1352
	.word	-148
	.word	4
	.word	_Label_1353
	.word	-152
	.word	4
	.word	_Label_1354
	.word	-156
	.word	4
	.word	_Label_1355
	.word	-160
	.word	4
	.word	_Label_1356
	.word	-164
	.word	4
	.word	_Label_1357
	.word	-168
	.word	4
	.word	_Label_1358
	.word	-172
	.word	4
	.word	_Label_1359
	.word	-176
	.word	4
	.word	_Label_1360
	.word	-180
	.word	4
	.word	_Label_1361
	.word	-184
	.word	4
	.word	_Label_1362
	.word	-188
	.word	4
	.word	_Label_1363
	.word	-192
	.word	4
	.word	_Label_1364
	.word	-196
	.word	4
	.word	0
_Label_1316:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1317:
	.ascii	"Pself\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1363:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1364:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1365
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1365:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1366
	.word	_sourceFileName
	.word	193		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1366:
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
_Label_3435:
	push	r0
	sub	r1,1,r1
	bne	_Label_3435
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1367 = _StringConst_80
	set	_StringConst_80,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1367  sizeInBytes=4
	set	-46024,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
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
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   _temp_1369 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1371 = &_temp_1370
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1371 = _temp_1371 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1373 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_3436:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3436
!   _temp_1373 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1375:
!   Data Move: *_temp_1371 = _temp_1373  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_3437:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3437
!   _temp_1371 = _temp_1371 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1372 = _temp_1372 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1372) then goto _Label_1375
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1375
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1376 = &_temp_1370
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3438
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3438:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1369 = *_temp_1376  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3439:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3439
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1377 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-188]
!   _temp_1378 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1378 [0 ] into _temp_1379
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
!   Prepare Argument: offset=12  value=_temp_1377  sizeInBytes=4
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
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_1380 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-176]
!   _temp_1381 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1381 [1 ] into _temp_1382
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
!   Prepare Argument: offset=12  value=_temp_1380  sizeInBytes=4
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
	mov	706,r13		! source line 706
	mov	"\0\0SE",r10
!   _temp_1383 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-164]
!   _temp_1384 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1384 [2 ] into _temp_1385
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
!   Prepare Argument: offset=12  value=_temp_1383  sizeInBytes=4
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
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_1386 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-152]
!   _temp_1387 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1387 [3 ] into _temp_1388
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
!   Prepare Argument: offset=12  value=_temp_1386  sizeInBytes=4
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
	mov	708,r13		! source line 708
	mov	"\0\0SE",r10
!   _temp_1389 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-140]
!   _temp_1390 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1390 [4 ] into _temp_1391
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
!   Prepare Argument: offset=12  value=_temp_1389  sizeInBytes=4
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
	mov	709,r13		! source line 709
	mov	"\0\0SE",r10
!   _temp_1392 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-128]
!   _temp_1393 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1393 [5 ] into _temp_1394
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
!   Prepare Argument: offset=12  value=_temp_1392  sizeInBytes=4
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
	mov	710,r13		! source line 710
	mov	"\0\0SE",r10
!   _temp_1395 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-116]
!   _temp_1396 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1396 [6 ] into _temp_1397
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
!   Prepare Argument: offset=12  value=_temp_1395  sizeInBytes=4
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
	mov	711,r13		! source line 711
	mov	"\0\0SE",r10
!   _temp_1398 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-104]
!   _temp_1399 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1399 [7 ] into _temp_1400
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
!   Prepare Argument: offset=12  value=_temp_1398  sizeInBytes=4
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
	mov	712,r13		! source line 712
	mov	"\0\0SE",r10
!   _temp_1401 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-92]
!   _temp_1402 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1402 [8 ] into _temp_1403
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
!   Prepare Argument: offset=12  value=_temp_1401  sizeInBytes=4
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
	mov	713,r13		! source line 713
	mov	"\0\0SE",r10
!   _temp_1404 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-80]
!   _temp_1405 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1405 [9 ] into _temp_1406
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
!   Prepare Argument: offset=12  value=_temp_1404  sizeInBytes=4
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
	mov	717,r13		! source line 717
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1411 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1412 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1411  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1407:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1412 then goto _Label_1410		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1410
_Label_1408:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1413 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1413 [index ] into _temp_1414
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
!   _temp_1415 = _temp_1414 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1415 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1417 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1417 [index ] into _temp_1418
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
!   _temp_1416 = _temp_1418		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1419 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1416  sizeInBytes=4
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
_Label_1409:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1407
! END FOR
_Label_1410:
! ASSIGNMENT STATEMENT...
	mov	724,r13		! source line 724
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
	mov	725,r13		! source line 725
	mov	"\0\0SE",r10
!   _temp_1421 = &threadManagerLock
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
	mov	726,r13		! source line 726
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
	mov	727,r13		! source line 727
	mov	"\0\0SE",r10
!   _temp_1423 = &aThreadBecameFree
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
	mov	728,r13		! source line 728
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
	mov	729,r13		! source line 729
	mov	"\0\0SE",r10
!   _temp_1425 = &leadThread
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
	mov	729,r13		! source line 729
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
	.word	_Label_1426
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1427
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1428
	.word	-12
	.word	4
	.word	_Label_1429
	.word	-16
	.word	4
	.word	_Label_1430
	.word	-20
	.word	4
	.word	_Label_1431
	.word	-24
	.word	4
	.word	_Label_1432
	.word	-28
	.word	4
	.word	_Label_1433
	.word	-32
	.word	4
	.word	_Label_1434
	.word	-36
	.word	4
	.word	_Label_1435
	.word	-40
	.word	4
	.word	_Label_1436
	.word	-44
	.word	4
	.word	_Label_1437
	.word	-48
	.word	4
	.word	_Label_1438
	.word	-52
	.word	4
	.word	_Label_1439
	.word	-56
	.word	4
	.word	_Label_1440
	.word	-60
	.word	4
	.word	_Label_1441
	.word	-64
	.word	4
	.word	_Label_1442
	.word	-68
	.word	4
	.word	_Label_1443
	.word	-72
	.word	4
	.word	_Label_1444
	.word	-76
	.word	4
	.word	_Label_1445
	.word	-80
	.word	4
	.word	_Label_1446
	.word	-84
	.word	4
	.word	_Label_1447
	.word	-88
	.word	4
	.word	_Label_1448
	.word	-92
	.word	4
	.word	_Label_1449
	.word	-96
	.word	4
	.word	_Label_1450
	.word	-100
	.word	4
	.word	_Label_1451
	.word	-104
	.word	4
	.word	_Label_1452
	.word	-108
	.word	4
	.word	_Label_1453
	.word	-112
	.word	4
	.word	_Label_1454
	.word	-116
	.word	4
	.word	_Label_1455
	.word	-120
	.word	4
	.word	_Label_1456
	.word	-124
	.word	4
	.word	_Label_1457
	.word	-128
	.word	4
	.word	_Label_1458
	.word	-132
	.word	4
	.word	_Label_1459
	.word	-136
	.word	4
	.word	_Label_1460
	.word	-140
	.word	4
	.word	_Label_1461
	.word	-144
	.word	4
	.word	_Label_1462
	.word	-148
	.word	4
	.word	_Label_1463
	.word	-152
	.word	4
	.word	_Label_1464
	.word	-156
	.word	4
	.word	_Label_1465
	.word	-160
	.word	4
	.word	_Label_1466
	.word	-164
	.word	4
	.word	_Label_1467
	.word	-168
	.word	4
	.word	_Label_1468
	.word	-172
	.word	4
	.word	_Label_1469
	.word	-176
	.word	4
	.word	_Label_1470
	.word	-180
	.word	4
	.word	_Label_1471
	.word	-184
	.word	4
	.word	_Label_1472
	.word	-188
	.word	4
	.word	_Label_1473
	.word	-192
	.word	4
	.word	_Label_1474
	.word	-196
	.word	4
	.word	_Label_1475
	.word	-4360
	.word	4164
	.word	_Label_1476
	.word	-4364
	.word	4
	.word	_Label_1477
	.word	-4368
	.word	4
	.word	_Label_1478
	.word	-46012
	.word	41644
	.word	_Label_1479
	.word	-46016
	.word	4
	.word	_Label_1480
	.word	-46020
	.word	4
	.word	_Label_1481
	.word	-46024
	.word	4
	.word	_Label_1482
	.word	-46028
	.word	4
	.word	0
_Label_1426:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1427:
	.ascii	"Pself\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1482:
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	734,r13		! source line 734
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	741,r13		! source line 741
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1483 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1488 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1489 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1488  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1484:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1489 then goto _Label_1487		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1487
_Label_1485:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1490 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1490  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1491 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1491  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1493 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1493 [i ] into _temp_1494
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
!   _temp_1492 = _temp_1494		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_201_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1486:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1484
! END FOR
_Label_1487:
! CALL STATEMENT...
!   _temp_1495 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1496 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1497 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1496  sizeInBytes=4
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
	mov	751,r13		! source line 751
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	752,r13		! source line 752
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	752,r13		! source line 752
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
	.word	_Label_1498
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1499
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1500
	.word	-12
	.word	4
	.word	_Label_1501
	.word	-16
	.word	4
	.word	_Label_1502
	.word	-20
	.word	4
	.word	_Label_1503
	.word	-24
	.word	4
	.word	_Label_1504
	.word	-28
	.word	4
	.word	_Label_1505
	.word	-32
	.word	4
	.word	_Label_1506
	.word	-36
	.word	4
	.word	_Label_1507
	.word	-40
	.word	4
	.word	_Label_1508
	.word	-44
	.word	4
	.word	_Label_1509
	.word	-48
	.word	4
	.word	_Label_1510
	.word	-52
	.word	4
	.word	_Label_1511
	.word	-56
	.word	4
	.word	_Label_1512
	.word	-60
	.word	4
	.word	0
_Label_1498:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1499:
	.ascii	"Pself\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1511:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1512:
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
	mov	10,r1
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1513 = &threadManagerLock
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
! WHILE STATEMENT...
	mov	768,r13		! source line 768
	mov	"\0\0WH",r10
_Label_1514:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1517 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1515 else goto _Label_1516
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1516
	jmp	_Label_1515
_Label_1515:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1518 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   _temp_1519 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1518  sizeInBytes=4
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
	jmp	_Label_1514
_Label_1516:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1520 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=threadToReturn  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   if intIsZero (threadToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1521 = threadToReturn + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1521 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1522 = &threadManagerLock
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
	mov	775,r13		! source line 775
	mov	"\0\0RE",r10
!   ReturnResult: threadToReturn  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1523
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1525
	.word	-12
	.word	4
	.word	_Label_1526
	.word	-16
	.word	4
	.word	_Label_1527
	.word	-20
	.word	4
	.word	_Label_1528
	.word	-24
	.word	4
	.word	_Label_1529
	.word	-28
	.word	4
	.word	_Label_1530
	.word	-32
	.word	4
	.word	_Label_1531
	.word	-36
	.word	4
	.word	_Label_1532
	.word	-40
	.word	4
	.word	0
_Label_1523:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1524:
	.ascii	"Pself\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1532:
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1533 = &threadManagerLock
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
	mov	789,r13		! source line 789
	mov	"\0\0IF",r10
!   if th == 0 then goto _Label_1535		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1535
!	jmp	_Label_1534
_Label_1534:
! THEN...
	mov	790,r13		! source line 790
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	790,r13		! source line 790
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1536 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1536 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1537 = &freeList
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
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
!   _temp_1538 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1539 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1538  sizeInBytes=4
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
	jmp	_Label_1540
_Label_1535:
! ELSE...
	mov	794,r13		! source line 794
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1541 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1541  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	794,r13		! source line 794
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1540:
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1542 = &threadManagerLock
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
	mov	796,r13		! source line 796
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
	.word	_Label_1543
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1545
	.word	12
	.word	4
	.word	_Label_1546
	.word	-12
	.word	4
	.word	_Label_1547
	.word	-16
	.word	4
	.word	_Label_1548
	.word	-20
	.word	4
	.word	_Label_1549
	.word	-24
	.word	4
	.word	_Label_1550
	.word	-28
	.word	4
	.word	_Label_1551
	.word	-32
	.word	4
	.word	_Label_1552
	.word	-36
	.word	4
	.word	0
_Label_1543:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1544:
	.ascii	"Pself\0"
	.align
_Label_1545:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1553
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1553:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1554
	.word	_sourceFileName
	.word	215		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1554:
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
	mov	18,r1
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	809,r13		! source line 809
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3444:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3444
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_1556 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0AS",r10
!   _temp_1557 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1559 = &_temp_1558
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1559 = _temp_1559 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1561:
!   Data Move: *_temp_1559 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1559 = _temp_1559 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1560 = _temp_1560 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1560) then goto _Label_1561
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1561
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1562 = &_temp_1558
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3445
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3445:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1557 = *_temp_1562  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3446:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3446
! RETURN STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1563
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1564
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1565
	.word	-12
	.word	4
	.word	_Label_1566
	.word	-16
	.word	4
	.word	_Label_1567
	.word	-20
	.word	4
	.word	_Label_1568
	.word	-64
	.word	44
	.word	_Label_1569
	.word	-68
	.word	4
	.word	_Label_1570
	.word	-72
	.word	4
	.word	_Label_1571
	.word	-76
	.word	4
	.word	0
_Label_1563:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1564:
	.ascii	"Pself\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1555\0"
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1572) then goto _runtimeErrorNullPointer
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
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
!   _temp_1573 = &addrSpace
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
!   _temp_1574 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	830,r13		! source line 830
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CA",r10
	call	_function_201_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	841,r13		! source line 841
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
	.word	_Label_1575
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1577
	.word	-12
	.word	4
	.word	_Label_1578
	.word	-16
	.word	4
	.word	_Label_1579
	.word	-20
	.word	4
	.word	0
_Label_1575:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1576:
	.ascii	"Pself\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1572\0"
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1580 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1580  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1581  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1582 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1582  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1583 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1583  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1585		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1585
!	jmp	_Label_1584
_Label_1584:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1586 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1586  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1587
_Label_1585:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1589		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1589
!	jmp	_Label_1588
_Label_1588:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1590 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1590  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1591
_Label_1589:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1593		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1593
!	jmp	_Label_1592
_Label_1592:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1594 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1594  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1595
_Label_1593:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1596 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1596  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	862,r13		! source line 862
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1595:
! END IF...
_Label_1591:
! END IF...
_Label_1587:
! CALL STATEMENT...
!   _temp_1597 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1598 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1598  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	868,r13		! source line 868
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
	.word	_Label_1599
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1600
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1607
	.word	-36
	.word	4
	.word	_Label_1608
	.word	-40
	.word	4
	.word	_Label_1609
	.word	-44
	.word	4
	.word	_Label_1610
	.word	-48
	.word	4
	.word	0
_Label_1599:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1600:
	.ascii	"Pself\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1611
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	jmp	_Method_P_Kernel_ProcessManager_6	! 24:	TurnIntoZombie
	jmp	_Method_P_Kernel_ProcessManager_7	! 28:	WaitForZombie
	.word	0
! 
! Class descriptor:
! 
_Label_1611:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1612
	.word	_sourceFileName
	.word	235		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1612:
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
	mov	486,r1
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1724,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1724]
! ASSIGNMENT STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0AS",r10
!   _temp_1614 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1936]
!   NEW ARRAY Constructor...
!   _temp_1616 = &_temp_1615
	add	r14,-1932,r1
	store	r1,[r14+-248]
!   _temp_1616 = _temp_1616 + 4
	load	[r14+-248],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1618 = zeros  (sizeInBytes=168)
	add	r14,-240,r4
	mov	42,r3
_Label_3450:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3450
!   _temp_1618 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-240]
	mov	10,r1
	store	r1,[r14+-244]
_Label_1620:
!   Data Move: *_temp_1616 = _temp_1618  (sizeInBytes=168)
	add	r14,-240,r5
	load	[r14+-248],r4
	mov	42,r3
_Label_3451:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3451
!   _temp_1616 = _temp_1616 + 168
	load	[r14+-248],r1
	add	r1,168,r1
	store	r1,[r14+-248]
!   _temp_1617 = _temp_1617 + -1
	load	[r14+-244],r1
	add	r1,-1,r1
	store	r1,[r14+-244]
!   if intNotZero (_temp_1617) then goto _Label_1620
	load	[r14+-244],r1
	cmp	r1,r0
	bne	_Label_1620
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1932]
!   _temp_1621 = &_temp_1615
	add	r14,-1932,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1936],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3452
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3452:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1614 = *_temp_1621  (sizeInBytes=1684)
	load	[r14+-68],r5
	load	[r14+-1936],r4
	mov	421,r3
_Label_3453:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3453
! FOR STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1626 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1627 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1626  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1944]
_Label_1622:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1627 then goto _Label_1625		
	load	[r14+-1944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1625
_Label_1623:
	mov	898,r13		! source line 898
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1628 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1628 [index ] into _temp_1629
!     make sure index expr is >= 0
	load	[r14+-1944],r2
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
	set	168,r3
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
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1631 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1631 [index ] into _temp_1632
!     make sure index expr is >= 0
	load	[r14+-1944],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1630 = _temp_1632		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1633 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1630  sizeInBytes=4
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
_Label_1624:
!   index = index + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_1622
! END FOR
_Label_1625:
! ASSIGNMENT STATEMENT...
	mov	904,r13		! source line 904
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1688,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1688]
! SEND STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0SE",r10
!   _temp_1635 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	906,r13		! source line 906
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1708,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1708]
! SEND STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0SE",r10
!   _temp_1637 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
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
	mov	908,r13		! source line 908
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1736,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1736]
! SEND STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0SE",r10
!   _temp_1639 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1752]
! RETURN STATEMENT...
	mov	910,r13		! source line 910
	mov	"\0\0RE",r10
	add	r15,1948,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1640
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_1641
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1642
	.word	-12
	.word	4
	.word	_Label_1643
	.word	-16
	.word	4
	.word	_Label_1644
	.word	-20
	.word	4
	.word	_Label_1645
	.word	-24
	.word	4
	.word	_Label_1646
	.word	-28
	.word	4
	.word	_Label_1647
	.word	-32
	.word	4
	.word	_Label_1648
	.word	-36
	.word	4
	.word	_Label_1649
	.word	-40
	.word	4
	.word	_Label_1650
	.word	-44
	.word	4
	.word	_Label_1651
	.word	-48
	.word	4
	.word	_Label_1652
	.word	-52
	.word	4
	.word	_Label_1653
	.word	-56
	.word	4
	.word	_Label_1654
	.word	-60
	.word	4
	.word	_Label_1655
	.word	-64
	.word	4
	.word	_Label_1656
	.word	-68
	.word	4
	.word	_Label_1657
	.word	-72
	.word	4
	.word	_Label_1658
	.word	-240
	.word	168
	.word	_Label_1659
	.word	-244
	.word	4
	.word	_Label_1660
	.word	-248
	.word	4
	.word	_Label_1661
	.word	-1932
	.word	1684
	.word	_Label_1662
	.word	-1936
	.word	4
	.word	_Label_1663
	.word	-1940
	.word	4
	.word	_Label_1664
	.word	-1944
	.word	4
	.word	0
_Label_1640:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1641:
	.ascii	"Pself\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1660:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1661:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1662:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1664:
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	915,r13		! source line 915
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	922,r13		! source line 922
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1665 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1665  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1670 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1671 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1670  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1666:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1671 then goto _Label_1669		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1669
_Label_1667:
	mov	924,r13		! source line 924
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1672 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1673 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1673  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1674 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1674 [i ] into _temp_1675
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
	set	168,r3
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
_Label_1668:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1666
! END FOR
_Label_1669:
! CALL STATEMENT...
!   _temp_1676 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1676  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1677 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1678 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1677  sizeInBytes=4
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
	mov	932,r13		! source line 932
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	933,r13		! source line 933
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	933,r13		! source line 933
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
	.word	_Label_1679
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1681
	.word	-12
	.word	4
	.word	_Label_1682
	.word	-16
	.word	4
	.word	_Label_1683
	.word	-20
	.word	4
	.word	_Label_1684
	.word	-24
	.word	4
	.word	_Label_1685
	.word	-28
	.word	4
	.word	_Label_1686
	.word	-32
	.word	4
	.word	_Label_1687
	.word	-36
	.word	4
	.word	_Label_1688
	.word	-40
	.word	4
	.word	_Label_1689
	.word	-44
	.word	4
	.word	_Label_1690
	.word	-48
	.word	4
	.word	_Label_1691
	.word	-52
	.word	4
	.word	_Label_1692
	.word	-56
	.word	4
	.word	0
_Label_1679:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1680:
	.ascii	"Pself\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1691:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1692:
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	938,r13		! source line 938
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1693 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1693  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1698 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1699 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1698  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1694:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1699 then goto _Label_1697		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1697
_Label_1695:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1700 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1701 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1701 [i ] into _temp_1702
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
	set	168,r3
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
_Label_1696:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1694
! END FOR
_Label_1697:
! CALL STATEMENT...
!   _temp_1703 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1703  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1704 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1705 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1704  sizeInBytes=4
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
	mov	955,r13		! source line 955
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	956,r13		! source line 956
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
	.word	_Label_1706
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1707
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1708
	.word	-12
	.word	4
	.word	_Label_1709
	.word	-16
	.word	4
	.word	_Label_1710
	.word	-20
	.word	4
	.word	_Label_1711
	.word	-24
	.word	4
	.word	_Label_1712
	.word	-28
	.word	4
	.word	_Label_1713
	.word	-32
	.word	4
	.word	_Label_1714
	.word	-36
	.word	4
	.word	_Label_1715
	.word	-40
	.word	4
	.word	_Label_1716
	.word	-44
	.word	4
	.word	_Label_1717
	.word	-48
	.word	4
	.word	_Label_1718
	.word	-52
	.word	4
	.word	0
_Label_1706:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1707:
	.ascii	"Pself\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1717:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1718:
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
	mov	11,r1
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1719 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0WH",r10
_Label_1720:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1723 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1721 else goto _Label_1722
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1722
	jmp	_Label_1721
_Label_1721:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1724 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_1725 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1724  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1720
_Label_1722:
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1752],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1752]
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
	mov	978,r13		! source line 978
	mov	"\0\0SE",r10
!   _temp_1726 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=processToReturn  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0AS",r10
!   if intIsZero (processToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1727 = processToReturn + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1727 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   if intIsZero (processToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1728 = processToReturn + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1728 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1729 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	984,r13		! source line 984
	mov	"\0\0RE",r10
!   ReturnResult: processToReturn  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1730
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1731
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1732
	.word	-12
	.word	4
	.word	_Label_1733
	.word	-16
	.word	4
	.word	_Label_1734
	.word	-20
	.word	4
	.word	_Label_1735
	.word	-24
	.word	4
	.word	_Label_1736
	.word	-28
	.word	4
	.word	_Label_1737
	.word	-32
	.word	4
	.word	_Label_1738
	.word	-36
	.word	4
	.word	_Label_1739
	.word	-40
	.word	4
	.word	_Label_1740
	.word	-44
	.word	4
	.word	0
_Label_1730:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1731:
	.ascii	"Pself\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1740:
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
	mov	9,r1
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	991,r13		! source line 991
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1741 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1741  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	999,r13		! source line 999
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0SE",r10
!   _temp_1742 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	1001,r13		! source line 1001
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1743 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1743 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1744 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_1745 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1746 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1745  sizeInBytes=4
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
	mov	1004,r13		! source line 1004
	mov	"\0\0SE",r10
!   _temp_1747 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	1004,r13		! source line 1004
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1748
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1749
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1750
	.word	12
	.word	4
	.word	_Label_1751
	.word	-12
	.word	4
	.word	_Label_1752
	.word	-16
	.word	4
	.word	_Label_1753
	.word	-20
	.word	4
	.word	_Label_1754
	.word	-24
	.word	4
	.word	_Label_1755
	.word	-28
	.word	4
	.word	_Label_1756
	.word	-32
	.word	4
	.word	_Label_1757
	.word	-36
	.word	4
	.word	0
_Label_1748:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1749:
	.ascii	"Pself\0"
	.align
_Label_1750:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
! 
! ===============  METHOD TurnIntoZombie  ===============
! 
_Method_P_Kernel_ProcessManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_6,r1
	push	r1
	mov	40,r1
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	1010,r13		! source line 1010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1758 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-148]
!   Send message Lock
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1763 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1764 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1763  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-152]
_Label_1759:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1764 then goto _Label_1762		
	load	[r14+-152],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1762
_Label_1760:
	mov	1035,r13		! source line 1035
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   _temp_1765 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1765 [i ] into _temp_1766
!     make sure index expr is >= 0
	load	[r14+-152],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-132]
!   child = _temp_1766		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1771 = child + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1770 = *_temp_1771  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1773 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1772 = *_temp_1773  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_1770 != _temp_1772 then goto _Label_1768		(int)
	load	[r14+-128],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_1768
!	jmp	_Label_1769
_Label_1769:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1775 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1774 = *_temp_1775  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1774 != 2 then goto _Label_1768		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1768
!	jmp	_Label_1767
_Label_1767:
! THEN...
	mov	1038,r13		! source line 1038
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0AS",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1776 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_1776 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1777 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=child  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0SE",r10
!   _temp_1778 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-96]
!   _temp_1779 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_1778  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_1768:
!   Increment the FOR-LOOP index variable and jump back
_Label_1761:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_1759
! END FOR
_Label_1762:
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   parent = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-160]
! FOR STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1784 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1785 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1784  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-152]
_Label_1780:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1785 then goto _Label_1783		
	load	[r14+-152],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1783
_Label_1781:
	mov	1046,r13		! source line 1046
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
!   _temp_1789 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1789 [i ] into _temp_1790
!     make sure index expr is >= 0
	load	[r14+-152],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   _temp_1791 = _temp_1790 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1788 = *_temp_1791  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1793 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1792 = *_temp_1793  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1788 != _temp_1792 then goto _Label_1787		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_1787
!	jmp	_Label_1786
_Label_1786:
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   _temp_1794 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1794 [i ] into _temp_1795
!     make sure index expr is >= 0
	load	[r14+-152],r2
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
	set	168,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   parent = _temp_1795		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-160]
! END IF...
_Label_1787:
!   Increment the FOR-LOOP index variable and jump back
_Label_1782:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_1780
! END FOR
_Label_1783:
! IF STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0IF",r10
!   if parent == 0 then goto _Label_1797		(int)
	load	[r14+-160],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1797
!	jmp	_Label_1798
_Label_1798:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1800 = parent + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1799 = *_temp_1800  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1799 != 1 then goto _Label_1797		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1797
!	jmp	_Label_1796
_Label_1796:
! THEN...
	mov	1055,r13		! source line 1055
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1801 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1801 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1802 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_1803 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1802  sizeInBytes=4
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
	jmp	_Label_1804
_Label_1797:
! ELSE...
	mov	1058,r13		! source line 1058
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1805 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1805 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1806 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
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
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1807 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1808 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1807  sizeInBytes=4
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
! END IF...
_Label_1804:
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1809 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	1064,r13		! source line 1064
	mov	"\0\0RE",r10
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_6:
	.word	_sourceFileName
	.word	_Label_1810
	.word	8		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_1811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1812
	.word	12
	.word	4
	.word	_Label_1813
	.word	-12
	.word	4
	.word	_Label_1814
	.word	-16
	.word	4
	.word	_Label_1815
	.word	-20
	.word	4
	.word	_Label_1816
	.word	-24
	.word	4
	.word	_Label_1817
	.word	-28
	.word	4
	.word	_Label_1818
	.word	-32
	.word	4
	.word	_Label_1819
	.word	-36
	.word	4
	.word	_Label_1820
	.word	-40
	.word	4
	.word	_Label_1821
	.word	-44
	.word	4
	.word	_Label_1822
	.word	-48
	.word	4
	.word	_Label_1823
	.word	-52
	.word	4
	.word	_Label_1824
	.word	-56
	.word	4
	.word	_Label_1825
	.word	-60
	.word	4
	.word	_Label_1826
	.word	-64
	.word	4
	.word	_Label_1827
	.word	-68
	.word	4
	.word	_Label_1828
	.word	-72
	.word	4
	.word	_Label_1829
	.word	-76
	.word	4
	.word	_Label_1830
	.word	-80
	.word	4
	.word	_Label_1831
	.word	-84
	.word	4
	.word	_Label_1832
	.word	-88
	.word	4
	.word	_Label_1833
	.word	-92
	.word	4
	.word	_Label_1834
	.word	-96
	.word	4
	.word	_Label_1835
	.word	-100
	.word	4
	.word	_Label_1836
	.word	-104
	.word	4
	.word	_Label_1837
	.word	-108
	.word	4
	.word	_Label_1838
	.word	-112
	.word	4
	.word	_Label_1839
	.word	-116
	.word	4
	.word	_Label_1840
	.word	-120
	.word	4
	.word	_Label_1841
	.word	-124
	.word	4
	.word	_Label_1842
	.word	-128
	.word	4
	.word	_Label_1843
	.word	-132
	.word	4
	.word	_Label_1844
	.word	-136
	.word	4
	.word	_Label_1845
	.word	-140
	.word	4
	.word	_Label_1846
	.word	-144
	.word	4
	.word	_Label_1847
	.word	-148
	.word	4
	.word	_Label_1848
	.word	-152
	.word	4
	.word	_Label_1849
	.word	-156
	.word	4
	.word	_Label_1850
	.word	-160
	.word	4
	.word	0
_Label_1810:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1811:
	.ascii	"Pself\0"
	.align
_Label_1812:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1848:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1849:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_1850:
	.byte	'P'
	.ascii	"parent\0"
	.align
! 
! ===============  METHOD WaitForZombie  ===============
! 
_Method_P_Kernel_ProcessManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_7,r1
	push	r1
	mov	14,r1
_Label_3459:
	push	r0
	sub	r1,1,r1
	bne	_Label_3459
	mov	1068,r13		! source line 1068
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_1851 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0WH",r10
_Label_1852:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1856 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1855 = *_temp_1856  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1855 == 2 then goto _Label_1854		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1854
!	jmp	_Label_1853
_Label_1853:
	mov	1078,r13		! source line 1078
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1857 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_1858 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1857  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1852
_Label_1854:
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1859 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatusToReturn = *_temp_1859  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1860 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1860 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1861 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
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
	mov	1089,r13		! source line 1089
	mov	"\0\0SE",r10
!   _temp_1862 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1863 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1862  sizeInBytes=4
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
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1864 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
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
	mov	1095,r13		! source line 1095
	mov	"\0\0RE",r10
!   ReturnResult: exitStatusToReturn  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_7:
	.word	_sourceFileName
	.word	_Label_1865
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1867
	.word	12
	.word	4
	.word	_Label_1868
	.word	-12
	.word	4
	.word	_Label_1869
	.word	-16
	.word	4
	.word	_Label_1870
	.word	-20
	.word	4
	.word	_Label_1871
	.word	-24
	.word	4
	.word	_Label_1872
	.word	-28
	.word	4
	.word	_Label_1873
	.word	-32
	.word	4
	.word	_Label_1874
	.word	-36
	.word	4
	.word	_Label_1875
	.word	-40
	.word	4
	.word	_Label_1876
	.word	-44
	.word	4
	.word	_Label_1877
	.word	-48
	.word	4
	.word	_Label_1878
	.word	-52
	.word	4
	.word	_Label_1879
	.word	-56
	.word	4
	.word	0
_Label_1865:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1866:
	.ascii	"Pself\0"
	.align
_Label_1867:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1879:
	.byte	'I'
	.ascii	"exitStatusToReturn\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1880
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1880:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1881
	.word	_sourceFileName
	.word	258		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1881:
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
_Label_3460:
	push	r0
	sub	r1,1,r1
	bne	_Label_3460
	mov	1224,r13		! source line 1224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1882 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1882  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1230,r13		! source line 1230
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1231,r13		! source line 1231
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
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
!   _temp_1884 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=512  sizeInBytes=4
	mov	512,r1
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
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1234,r13		! source line 1234
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
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_1886 = &frameManagerLock
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
	mov	1236,r13		! source line 1236
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
	mov	1237,r13		! source line 1237
	mov	"\0\0SE",r10
!   _temp_1888 = &newFramesAvailable
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
	mov	1243,r13		! source line 1243
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1893 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1894 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1893  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1889:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1894 then goto _Label_1892		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1892
_Label_1890:
	mov	1243,r13		! source line 1243
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1897 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1897) then goto _Label_1896
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1896
!	jmp	_Label_1895
_Label_1895:
! THEN...
	mov	1247,r13		! source line 1247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1898 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1898  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1247,r13		! source line 1247
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1896:
!   Increment the FOR-LOOP index variable and jump back
_Label_1891:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1889
! END FOR
_Label_1892:
! RETURN STATEMENT...
	mov	1243,r13		! source line 1243
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
	.word	_Label_1899
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1900
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1901
	.word	-12
	.word	4
	.word	_Label_1902
	.word	-16
	.word	4
	.word	_Label_1903
	.word	-20
	.word	4
	.word	_Label_1904
	.word	-24
	.word	4
	.word	_Label_1905
	.word	-28
	.word	4
	.word	_Label_1906
	.word	-32
	.word	4
	.word	_Label_1907
	.word	-36
	.word	4
	.word	_Label_1908
	.word	-40
	.word	4
	.word	_Label_1909
	.word	-44
	.word	4
	.word	_Label_1910
	.word	-48
	.word	4
	.word	_Label_1911
	.word	-52
	.word	4
	.word	_Label_1912
	.word	-56
	.word	4
	.word	0
_Label_1899:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1900:
	.ascii	"Pself\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1912:
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
_Label_3461:
	push	r0
	sub	r1,1,r1
	bne	_Label_3461
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_1913 = &frameManagerLock
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
!   _temp_1914 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1914  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1915 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1915  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1916 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1916  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   _temp_1917 = &framesInUse
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
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
!   _temp_1918 = &frameManagerLock
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
	mov	1263,r13		! source line 1263
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
	.word	_Label_1919
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1920
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1921
	.word	-12
	.word	4
	.word	_Label_1922
	.word	-16
	.word	4
	.word	_Label_1923
	.word	-20
	.word	4
	.word	_Label_1924
	.word	-24
	.word	4
	.word	_Label_1925
	.word	-28
	.word	4
	.word	_Label_1926
	.word	-32
	.word	4
	.word	0
_Label_1919:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1920:
	.ascii	"Pself\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1913\0"
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
_Label_3462:
	push	r0
	sub	r1,1,r1
	bne	_Label_3462
	mov	1268,r13		! source line 1268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
!   _temp_1927 = &frameManagerLock
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
	mov	1279,r13		! source line 1279
	mov	"\0\0WH",r10
_Label_1928:
!   if numberFreeFrames >= 1 then goto _Label_1930		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1930
!	jmp	_Label_1929
_Label_1929:
	mov	1279,r13		! source line 1279
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1931 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1932 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1931  sizeInBytes=4
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
	jmp	_Label_1928
_Label_1930:
! ASSIGNMENT STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0AS",r10
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
!   _temp_1933 = &framesInUse
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
	mov	1285,r13		! source line 1285
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
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
!   _temp_1934 = &frameManagerLock
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
	mov	1291,r13		! source line 1291
	mov	"\0\0AS",r10
!   _temp_1935 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1935		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1293,r13		! source line 1293
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
	.word	_Label_1936
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1938
	.word	-12
	.word	4
	.word	_Label_1939
	.word	-16
	.word	4
	.word	_Label_1940
	.word	-20
	.word	4
	.word	_Label_1941
	.word	-24
	.word	4
	.word	_Label_1942
	.word	-28
	.word	4
	.word	_Label_1943
	.word	-32
	.word	4
	.word	_Label_1944
	.word	-36
	.word	4
	.word	_Label_1945
	.word	-40
	.word	4
	.word	0
_Label_1936:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1937:
	.ascii	"Pself\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1944:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1945:
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
_Label_3463:
	push	r0
	sub	r1,1,r1
	bne	_Label_3463
	mov	1298,r13		! source line 1298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0SE",r10
!   _temp_1946 = &frameManagerLock
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
	mov	1310,r13		! source line 1310
	mov	"\0\0WH",r10
_Label_1947:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1949		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1949
!	jmp	_Label_1948
_Label_1948:
	mov	1310,r13		! source line 1310
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_1950 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1951 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1950  sizeInBytes=4
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
	jmp	_Label_1947
_Label_1949:
! FOR STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1956 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1957 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1956  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1952:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1957 then goto _Label_1955		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1955
_Label_1953:
	mov	1317,r13		! source line 1317
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
	mov	1318,r13		! source line 1318
	mov	"\0\0SE",r10
!   _temp_1958 = &framesInUse
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
	mov	1319,r13		! source line 1319
	mov	"\0\0AS",r10
!   _temp_1959 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_1959		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1320,r13		! source line 1320
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
_Label_1954:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1952
! END FOR
_Label_1955:
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
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
	mov	1327,r13		! source line 1327
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1960 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1963 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1962 = *_temp_1963  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1961 = _temp_1962 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1960 = _temp_1961  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_1964 = &frameManagerLock
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
	mov	1329,r13		! source line 1329
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
	.word	_Label_1965
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1967
	.word	12
	.word	4
	.word	_Label_1968
	.word	16
	.word	4
	.word	_Label_1969
	.word	-12
	.word	4
	.word	_Label_1970
	.word	-16
	.word	4
	.word	_Label_1971
	.word	-20
	.word	4
	.word	_Label_1972
	.word	-24
	.word	4
	.word	_Label_1973
	.word	-28
	.word	4
	.word	_Label_1974
	.word	-32
	.word	4
	.word	_Label_1975
	.word	-36
	.word	4
	.word	_Label_1976
	.word	-40
	.word	4
	.word	_Label_1977
	.word	-44
	.word	4
	.word	_Label_1978
	.word	-48
	.word	4
	.word	_Label_1979
	.word	-52
	.word	4
	.word	_Label_1980
	.word	-56
	.word	4
	.word	_Label_1981
	.word	-60
	.word	4
	.word	_Label_1982
	.word	-64
	.word	4
	.word	_Label_1983
	.word	-68
	.word	4
	.word	0
_Label_1965:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1966:
	.ascii	"Pself\0"
	.align
_Label_1967:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1968:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1981:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1982:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1983:
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
_Label_3464:
	push	r0
	sub	r1,1,r1
	bne	_Label_3464
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
!   _temp_1984 = &frameManagerLock
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
	mov	1347,r13		! source line 1347
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
	mov	1349,r13		! source line 1349
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1985 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_1985  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1990 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1991 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1990  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1986:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1991 then goto _Label_1989		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1989
_Label_1987:
	mov	1354,r13		! source line 1354
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0AS",r10
	mov	1355,r13		! source line 1355
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
	mov	1356,r13		! source line 1356
	mov	"\0\0AS",r10
!   _temp_1992 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_1992 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0SE",r10
!   _temp_1993 = &framesInUse
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
	mov	1358,r13		! source line 1358
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
_Label_1988:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1986
! END FOR
_Label_1989:
! SEND STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_1994 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1995 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1994  sizeInBytes=4
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
	mov	1365,r13		! source line 1365
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1996 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1999 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1998 = *_temp_1999  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1997 = _temp_1998 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1996 = _temp_1997  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
!   _temp_2000 = &frameManagerLock
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
	mov	1367,r13		! source line 1367
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
	.word	_Label_2001
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_2002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2003
	.word	12
	.word	4
	.word	_Label_2004
	.word	-12
	.word	4
	.word	_Label_2005
	.word	-16
	.word	4
	.word	_Label_2006
	.word	-20
	.word	4
	.word	_Label_2007
	.word	-24
	.word	4
	.word	_Label_2008
	.word	-28
	.word	4
	.word	_Label_2009
	.word	-32
	.word	4
	.word	_Label_2010
	.word	-36
	.word	4
	.word	_Label_2011
	.word	-40
	.word	4
	.word	_Label_2012
	.word	-44
	.word	4
	.word	_Label_2013
	.word	-48
	.word	4
	.word	_Label_2014
	.word	-52
	.word	4
	.word	_Label_2015
	.word	-56
	.word	4
	.word	_Label_2016
	.word	-60
	.word	4
	.word	_Label_2017
	.word	-64
	.word	4
	.word	_Label_2018
	.word	-68
	.word	4
	.word	_Label_2019
	.word	-72
	.word	4
	.word	_Label_2020
	.word	-76
	.word	4
	.word	0
_Label_2001:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2002:
	.ascii	"Pself\0"
	.align
_Label_2003:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2017:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_2019:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2020:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2021
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
_Label_2021:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2022
	.word	_sourceFileName
	.word	277		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2022:
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
_Label_3465:
	push	r0
	sub	r1,1,r1
	bne	_Label_3465
	mov	1378,r13		! source line 1378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
!   _temp_2023 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2025 = &_temp_2024
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2025 = _temp_2025 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2027:
!   Data Move: *_temp_2025 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2025 = _temp_2025 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2026 = _temp_2026 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2026) then goto _Label_2027
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2027
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2028 = &_temp_2024
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3466
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3466:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2023 = *_temp_2028  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3467:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3467
! RETURN STATEMENT...
	mov	1383,r13		! source line 1383
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
	.word	_Label_2029
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2031
	.word	-12
	.word	4
	.word	_Label_2032
	.word	-16
	.word	4
	.word	_Label_2033
	.word	-20
	.word	4
	.word	_Label_2034
	.word	-104
	.word	84
	.word	_Label_2035
	.word	-108
	.word	4
	.word	0
_Label_2029:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2030:
	.ascii	"Pself\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2023\0"
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
_Label_3468:
	push	r0
	sub	r1,1,r1
	bne	_Label_3468
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2036 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2036  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2037 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2037  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2042 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2043 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2042  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2038:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2043 then goto _Label_2041		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2041
_Label_2039:
	mov	1395,r13		! source line 1395
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2044 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2044  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2046 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2046 [i ] into _temp_2047
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
!   _temp_2045 = _temp_2047		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2045  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2048 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2048  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2050 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2050 [i ] into _temp_2051
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
!   Data Move: _temp_2049 = *_temp_2051  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2052 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2052  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2053 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2053  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1401,r13		! source line 1401
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2054 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2056) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2055  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1403,r13		! source line 1403
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2057 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2057  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1404,r13		! source line 1404
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0IF",r10
	mov	1405,r13		! source line 1405
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2061) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2060  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2060) then goto _Label_2059
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2059
!	jmp	_Label_2058
_Label_2058:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2063) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2062  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2062  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2064
_Label_2059:
! ELSE...
	mov	1408,r13		! source line 1408
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2065 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2065  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2064:
! CALL STATEMENT...
!   _temp_2066 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2066  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1411,r13		! source line 1411
	mov	"\0\0IF",r10
	mov	1411,r13		! source line 1411
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2069) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2067 else goto _Label_2068
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2068
	jmp	_Label_2067
_Label_2067:
! THEN...
	mov	1412,r13		! source line 1412
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2070 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2070  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2071
_Label_2068:
! ELSE...
	mov	1414,r13		! source line 1414
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2072 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2072  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2071:
! CALL STATEMENT...
!   _temp_2073 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2073  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0IF",r10
	mov	1417,r13		! source line 1417
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2076) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2074 else goto _Label_2075
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2075
	jmp	_Label_2074
_Label_2074:
! THEN...
	mov	1418,r13		! source line 1418
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2077 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2077  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2078
_Label_2075:
! ELSE...
	mov	1420,r13		! source line 1420
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2079 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2078:
! CALL STATEMENT...
!   _temp_2080 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2080  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1422,r13		! source line 1422
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0IF",r10
	mov	1423,r13		! source line 1423
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2083) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2081 else goto _Label_2082
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2082
	jmp	_Label_2081
_Label_2081:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2084 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2084  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2085
_Label_2082:
! ELSE...
	mov	1426,r13		! source line 1426
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2086 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2086  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2085:
! CALL STATEMENT...
!   _temp_2087 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1428,r13		! source line 1428
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1429,r13		! source line 1429
	mov	"\0\0IF",r10
	mov	1429,r13		! source line 1429
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2090) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2088 else goto _Label_2089
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2089
	jmp	_Label_2088
_Label_2088:
! THEN...
	mov	1430,r13		! source line 1430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2091 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2091  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2092
_Label_2089:
! ELSE...
	mov	1432,r13		! source line 1432
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2093 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2093  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1432,r13		! source line 1432
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2092:
! CALL STATEMENT...
!   Call the function
	mov	1434,r13		! source line 1434
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2040:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2038
! END FOR
_Label_2041:
! RETURN STATEMENT...
	mov	1395,r13		! source line 1395
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
	.word	_Label_2094
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2095
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2096
	.word	-12
	.word	4
	.word	_Label_2097
	.word	-16
	.word	4
	.word	_Label_2098
	.word	-20
	.word	4
	.word	_Label_2099
	.word	-24
	.word	4
	.word	_Label_2100
	.word	-28
	.word	4
	.word	_Label_2101
	.word	-32
	.word	4
	.word	_Label_2102
	.word	-36
	.word	4
	.word	_Label_2103
	.word	-40
	.word	4
	.word	_Label_2104
	.word	-44
	.word	4
	.word	_Label_2105
	.word	-48
	.word	4
	.word	_Label_2106
	.word	-52
	.word	4
	.word	_Label_2107
	.word	-56
	.word	4
	.word	_Label_2108
	.word	-60
	.word	4
	.word	_Label_2109
	.word	-64
	.word	4
	.word	_Label_2110
	.word	-68
	.word	4
	.word	_Label_2111
	.word	-72
	.word	4
	.word	_Label_2112
	.word	-76
	.word	4
	.word	_Label_2113
	.word	-80
	.word	4
	.word	_Label_2114
	.word	-84
	.word	4
	.word	_Label_2115
	.word	-88
	.word	4
	.word	_Label_2116
	.word	-92
	.word	4
	.word	_Label_2117
	.word	-96
	.word	4
	.word	_Label_2118
	.word	-100
	.word	4
	.word	_Label_2119
	.word	-104
	.word	4
	.word	_Label_2120
	.word	-108
	.word	4
	.word	_Label_2121
	.word	-112
	.word	4
	.word	_Label_2122
	.word	-116
	.word	4
	.word	_Label_2123
	.word	-120
	.word	4
	.word	_Label_2124
	.word	-124
	.word	4
	.word	_Label_2125
	.word	-128
	.word	4
	.word	_Label_2126
	.word	-132
	.word	4
	.word	_Label_2127
	.word	-136
	.word	4
	.word	_Label_2128
	.word	-140
	.word	4
	.word	_Label_2129
	.word	-144
	.word	4
	.word	_Label_2130
	.word	-148
	.word	4
	.word	_Label_2131
	.word	-152
	.word	4
	.word	_Label_2132
	.word	-156
	.word	4
	.word	_Label_2133
	.word	-160
	.word	4
	.word	_Label_2134
	.word	-164
	.word	4
	.word	_Label_2135
	.word	-168
	.word	4
	.word	0
_Label_2094:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2095:
	.ascii	"Pself\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2135:
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
_Label_3469:
	push	r0
	sub	r1,1,r1
	bne	_Label_3469
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0RE",r10
!   _temp_2138 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2138 [entry ] into _temp_2139
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
!   Data Move: _temp_2137 = *_temp_2139  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2136 = _temp_2137 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2136  (sizeInBytes=4)
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
	.word	_Label_2140
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2142
	.word	12
	.word	4
	.word	_Label_2143
	.word	-12
	.word	4
	.word	_Label_2144
	.word	-16
	.word	4
	.word	_Label_2145
	.word	-20
	.word	4
	.word	_Label_2146
	.word	-24
	.word	4
	.word	0
_Label_2140:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2141:
	.ascii	"Pself\0"
	.align
_Label_2142:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2136\0"
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
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	1450,r13		! source line 1450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0RE",r10
!   _temp_2149 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2149 [entry ] into _temp_2150
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
!   Data Move: _temp_2148 = *_temp_2150  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2147 = _temp_2148 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2147  (sizeInBytes=4)
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
	.word	_Label_2151
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2153
	.word	12
	.word	4
	.word	_Label_2154
	.word	-12
	.word	4
	.word	_Label_2155
	.word	-16
	.word	4
	.word	_Label_2156
	.word	-20
	.word	4
	.word	_Label_2157
	.word	-24
	.word	4
	.word	0
_Label_2151:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2152:
	.ascii	"Pself\0"
	.align
_Label_2153:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2147\0"
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	1459,r13		! source line 1459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   _temp_2158 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2158 [entry ] into _temp_2159
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
!   _temp_2163 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2163 [entry ] into _temp_2164
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
!   Data Move: _temp_2162 = *_temp_2164  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2161 = _temp_2162 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2160 = _temp_2161 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2159 = _temp_2160  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
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
	.word	_Label_2165
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2166
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2167
	.word	12
	.word	4
	.word	_Label_2168
	.word	16
	.word	4
	.word	_Label_2169
	.word	-12
	.word	4
	.word	_Label_2170
	.word	-16
	.word	4
	.word	_Label_2171
	.word	-20
	.word	4
	.word	_Label_2172
	.word	-24
	.word	4
	.word	_Label_2173
	.word	-28
	.word	4
	.word	_Label_2174
	.word	-32
	.word	4
	.word	_Label_2175
	.word	-36
	.word	4
	.word	0
_Label_2165:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2166:
	.ascii	"Pself\0"
	.align
_Label_2167:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2168:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2158\0"
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
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   _temp_2179 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2179 [entry ] into _temp_2180
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
!   Data Move: _temp_2178 = *_temp_2180  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2177 = _temp_2178 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2177) then goto _Label_2181
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2181
!   _temp_2176 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2182
_Label_2181:
!   _temp_2176 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2182:
!   ReturnResult: _temp_2176  (sizeInBytes=1)
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
	.word	_Label_2183
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2184
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2185
	.word	12
	.word	4
	.word	_Label_2186
	.word	-16
	.word	4
	.word	_Label_2187
	.word	-20
	.word	4
	.word	_Label_2188
	.word	-24
	.word	4
	.word	_Label_2189
	.word	-28
	.word	4
	.word	_Label_2190
	.word	-9
	.word	1
	.word	0
_Label_2183:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2184:
	.ascii	"Pself\0"
	.align
_Label_2185:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2190:
	.byte	'C'
	.ascii	"_temp_2176\0"
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
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	1478,r13		! source line 1478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   _temp_2194 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2194 [entry ] into _temp_2195
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
!   Data Move: _temp_2193 = *_temp_2195  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2192 = _temp_2193 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2192) then goto _Label_2196
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2196
!   _temp_2191 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2197
_Label_2196:
!   _temp_2191 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2197:
!   ReturnResult: _temp_2191  (sizeInBytes=1)
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
	.word	_Label_2198
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2199
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2200
	.word	12
	.word	4
	.word	_Label_2201
	.word	-16
	.word	4
	.word	_Label_2202
	.word	-20
	.word	4
	.word	_Label_2203
	.word	-24
	.word	4
	.word	_Label_2204
	.word	-28
	.word	4
	.word	_Label_2205
	.word	-9
	.word	1
	.word	0
_Label_2198:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2199:
	.ascii	"Pself\0"
	.align
_Label_2200:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2205:
	.byte	'C'
	.ascii	"_temp_2191\0"
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
!   _temp_2209 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2209 [entry ] into _temp_2210
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
!   Data Move: _temp_2208 = *_temp_2210  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2207 = _temp_2208 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2207) then goto _Label_2211
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2211
!   _temp_2206 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2212
_Label_2211:
!   _temp_2206 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2212:
!   ReturnResult: _temp_2206  (sizeInBytes=1)
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
	.word	_Label_2213
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2214
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2215
	.word	12
	.word	4
	.word	_Label_2216
	.word	-16
	.word	4
	.word	_Label_2217
	.word	-20
	.word	4
	.word	_Label_2218
	.word	-24
	.word	4
	.word	_Label_2219
	.word	-28
	.word	4
	.word	_Label_2220
	.word	-9
	.word	1
	.word	0
_Label_2213:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2214:
	.ascii	"Pself\0"
	.align
_Label_2215:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2220:
	.byte	'C'
	.ascii	"_temp_2206\0"
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
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   _temp_2224 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2224 [entry ] into _temp_2225
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
!   Data Move: _temp_2223 = *_temp_2225  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2222 = _temp_2223 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2222) then goto _Label_2226
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2226
!   _temp_2221 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2227
_Label_2226:
!   _temp_2221 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2227:
!   ReturnResult: _temp_2221  (sizeInBytes=1)
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
	.word	_Label_2228
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2229
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2230
	.word	12
	.word	4
	.word	_Label_2231
	.word	-16
	.word	4
	.word	_Label_2232
	.word	-20
	.word	4
	.word	_Label_2233
	.word	-24
	.word	4
	.word	_Label_2234
	.word	-28
	.word	4
	.word	_Label_2235
	.word	-9
	.word	1
	.word	0
_Label_2228:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2229:
	.ascii	"Pself\0"
	.align
_Label_2230:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2235:
	.byte	'C'
	.ascii	"_temp_2221\0"
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
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   _temp_2236 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2236 [entry ] into _temp_2237
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
!   _temp_2240 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2240 [entry ] into _temp_2241
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
!   Data Move: _temp_2239 = *_temp_2241  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2238 = _temp_2239 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2237 = _temp_2238  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1509,r13		! source line 1509
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
	.word	_Label_2242
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2244
	.word	12
	.word	4
	.word	_Label_2245
	.word	-12
	.word	4
	.word	_Label_2246
	.word	-16
	.word	4
	.word	_Label_2247
	.word	-20
	.word	4
	.word	_Label_2248
	.word	-24
	.word	4
	.word	_Label_2249
	.word	-28
	.word	4
	.word	_Label_2250
	.word	-32
	.word	4
	.word	0
_Label_2242:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2243:
	.ascii	"Pself\0"
	.align
_Label_2244:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2236\0"
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	1514,r13		! source line 1514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   _temp_2251 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2251 [entry ] into _temp_2252
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
!   _temp_2255 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2255 [entry ] into _temp_2256
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
!   Data Move: _temp_2254 = *_temp_2256  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2253 = _temp_2254 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2252 = _temp_2253  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1518,r13		! source line 1518
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
	.word	_Label_2257
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2258
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2259
	.word	12
	.word	4
	.word	_Label_2260
	.word	-12
	.word	4
	.word	_Label_2261
	.word	-16
	.word	4
	.word	_Label_2262
	.word	-20
	.word	4
	.word	_Label_2263
	.word	-24
	.word	4
	.word	_Label_2264
	.word	-28
	.word	4
	.word	_Label_2265
	.word	-32
	.word	4
	.word	0
_Label_2257:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2258:
	.ascii	"Pself\0"
	.align
_Label_2259:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2251\0"
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
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _temp_2266 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2266 [entry ] into _temp_2267
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
!   _temp_2270 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2270 [entry ] into _temp_2271
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
!   Data Move: _temp_2269 = *_temp_2271  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2268 = _temp_2269 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2267 = _temp_2268  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1527,r13		! source line 1527
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
	.word	_Label_2272
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2274
	.word	12
	.word	4
	.word	_Label_2275
	.word	-12
	.word	4
	.word	_Label_2276
	.word	-16
	.word	4
	.word	_Label_2277
	.word	-20
	.word	4
	.word	_Label_2278
	.word	-24
	.word	4
	.word	_Label_2279
	.word	-28
	.word	4
	.word	_Label_2280
	.word	-32
	.word	4
	.word	0
_Label_2272:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2273:
	.ascii	"Pself\0"
	.align
_Label_2274:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2266\0"
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
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _temp_2281 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2281 [entry ] into _temp_2282
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
!   _temp_2285 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2285 [entry ] into _temp_2286
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
!   Data Move: _temp_2284 = *_temp_2286  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2283 = _temp_2284 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2282 = _temp_2283  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1536,r13		! source line 1536
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
	.word	_Label_2287
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2288
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2289
	.word	12
	.word	4
	.word	_Label_2290
	.word	-12
	.word	4
	.word	_Label_2291
	.word	-16
	.word	4
	.word	_Label_2292
	.word	-20
	.word	4
	.word	_Label_2293
	.word	-24
	.word	4
	.word	_Label_2294
	.word	-28
	.word	4
	.word	_Label_2295
	.word	-32
	.word	4
	.word	0
_Label_2287:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2288:
	.ascii	"Pself\0"
	.align
_Label_2289:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2281\0"
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
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	1541,r13		! source line 1541
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   _temp_2296 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2296 [entry ] into _temp_2297
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
!   _temp_2300 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2300 [entry ] into _temp_2301
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
!   Data Move: _temp_2299 = *_temp_2301  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2298 = _temp_2299 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2297 = _temp_2298  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1545,r13		! source line 1545
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
	.word	_Label_2302
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2303
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2304
	.word	12
	.word	4
	.word	_Label_2305
	.word	-12
	.word	4
	.word	_Label_2306
	.word	-16
	.word	4
	.word	_Label_2307
	.word	-20
	.word	4
	.word	_Label_2308
	.word	-24
	.word	4
	.word	_Label_2309
	.word	-28
	.word	4
	.word	_Label_2310
	.word	-32
	.word	4
	.word	0
_Label_2302:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2303:
	.ascii	"Pself\0"
	.align
_Label_2304:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2296\0"
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
_Label_3481:
	push	r0
	sub	r1,1,r1
	bne	_Label_3481
	mov	1550,r13		! source line 1550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   _temp_2311 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2311 [entry ] into _temp_2312
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
!   _temp_2315 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2315 [entry ] into _temp_2316
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
!   Data Move: _temp_2314 = *_temp_2316  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2313 = _temp_2314 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2312 = _temp_2313  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
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
	.word	_Label_2317
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2318
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2319
	.word	12
	.word	4
	.word	_Label_2320
	.word	-12
	.word	4
	.word	_Label_2321
	.word	-16
	.word	4
	.word	_Label_2322
	.word	-20
	.word	4
	.word	_Label_2323
	.word	-24
	.word	4
	.word	_Label_2324
	.word	-28
	.word	4
	.word	_Label_2325
	.word	-32
	.word	4
	.word	0
_Label_2317:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2318:
	.ascii	"Pself\0"
	.align
_Label_2319:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2311\0"
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
_Label_3482:
	push	r0
	sub	r1,1,r1
	bne	_Label_3482
	mov	1559,r13		! source line 1559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   _temp_2326 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2326 [entry ] into _temp_2327
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
!   _temp_2330 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2330 [entry ] into _temp_2331
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
!   Data Move: _temp_2329 = *_temp_2331  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2328 = _temp_2329 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2327 = _temp_2328  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1563,r13		! source line 1563
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
	.word	_Label_2332
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2333
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2334
	.word	12
	.word	4
	.word	_Label_2335
	.word	-12
	.word	4
	.word	_Label_2336
	.word	-16
	.word	4
	.word	_Label_2337
	.word	-20
	.word	4
	.word	_Label_2338
	.word	-24
	.word	4
	.word	_Label_2339
	.word	-28
	.word	4
	.word	_Label_2340
	.word	-32
	.word	4
	.word	0
_Label_2332:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2333:
	.ascii	"Pself\0"
	.align
_Label_2334:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2326\0"
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
_Label_3483:
	push	r0
	sub	r1,1,r1
	bne	_Label_3483
	mov	1568,r13		! source line 1568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0AS",r10
!   _temp_2341 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2341 [entry ] into _temp_2342
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
!   _temp_2345 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2345 [entry ] into _temp_2346
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
!   Data Move: _temp_2344 = *_temp_2346  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2343 = _temp_2344 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2342 = _temp_2343  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1572,r13		! source line 1572
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
	.word	_Label_2347
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2348
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2349
	.word	12
	.word	4
	.word	_Label_2350
	.word	-12
	.word	4
	.word	_Label_2351
	.word	-16
	.word	4
	.word	_Label_2352
	.word	-20
	.word	4
	.word	_Label_2353
	.word	-24
	.word	4
	.word	_Label_2354
	.word	-28
	.word	4
	.word	_Label_2355
	.word	-32
	.word	4
	.word	0
_Label_2347:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2348:
	.ascii	"Pself\0"
	.align
_Label_2349:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2341\0"
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
_Label_3484:
	push	r0
	sub	r1,1,r1
	bne	_Label_3484
	mov	1577,r13		! source line 1577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2357 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2357 [0 ] into _temp_2358
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
!   _temp_2356 = _temp_2358		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2359 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2356  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2359  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1583,r13		! source line 1583
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1583,r13		! source line 1583
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
	.word	_Label_2360
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2361
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2362
	.word	-12
	.word	4
	.word	_Label_2363
	.word	-16
	.word	4
	.word	_Label_2364
	.word	-20
	.word	4
	.word	_Label_2365
	.word	-24
	.word	4
	.word	0
_Label_2360:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2361:
	.ascii	"Pself\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2356\0"
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
_Label_3485:
	push	r0
	sub	r1,1,r1
	bne	_Label_3485
	mov	1588,r13		! source line 1588
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2366
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2366
	jmp	_Label_2367
_Label_2366:
! THEN...
	mov	1604,r13		! source line 1604
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2368
_Label_2367:
! ELSE...
	mov	1605,r13		! source line 1605
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2370		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2370
!	jmp	_Label_2369
_Label_2369:
! THEN...
	mov	1606,r13		! source line 1606
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2370:
! END IF...
_Label_2368:
! ASSIGNMENT STATEMENT...
	mov	1608,r13		! source line 1608
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
	mov	1609,r13		! source line 1609
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
	mov	1612,r13		! source line 1612
	mov	"\0\0WH",r10
_Label_2371:
!	jmp	_Label_2372
_Label_2372:
	mov	1612,r13		! source line 1612
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2375		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2375
!	jmp	_Label_2374
_Label_2374:
! THEN...
	mov	1614,r13		! source line 1614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2376 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2376  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1614,r13		! source line 1614
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2375:
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
	mov	1617,r13		! source line 1617
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2380) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2379  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2379 then goto _Label_2378 else goto _Label_2377
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2377
	jmp	_Label_2378
_Label_2377:
! THEN...
	mov	1618,r13		! source line 1618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2381 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2381  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1618,r13		! source line 1618
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2378:
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
	mov	1621,r13		! source line 1621
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2383) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2382 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0WH",r10
_Label_2384:
!   if offset >= 8192 then goto _Label_2386		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2386
!	jmp	_Label_2385
_Label_2385:
	mov	1623,r13		! source line 1623
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2387 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2387  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2389		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2389
!	jmp	_Label_2388
_Label_2388:
! THEN...
	mov	1632,r13		! source line 1632
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2389:
! END WHILE...
	jmp	_Label_2384
_Label_2386:
! ASSIGNMENT STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2371
_Label_2373:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2390
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2391
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2392
	.word	12
	.word	4
	.word	_Label_2393
	.word	16
	.word	4
	.word	_Label_2394
	.word	20
	.word	4
	.word	_Label_2395
	.word	-9
	.word	1
	.word	_Label_2396
	.word	-16
	.word	4
	.word	_Label_2397
	.word	-20
	.word	4
	.word	_Label_2398
	.word	-24
	.word	4
	.word	_Label_2399
	.word	-28
	.word	4
	.word	_Label_2400
	.word	-10
	.word	1
	.word	_Label_2401
	.word	-32
	.word	4
	.word	_Label_2402
	.word	-36
	.word	4
	.word	_Label_2403
	.word	-40
	.word	4
	.word	_Label_2404
	.word	-44
	.word	4
	.word	_Label_2405
	.word	-48
	.word	4
	.word	0
_Label_2390:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2391:
	.ascii	"Pself\0"
	.align
_Label_2392:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2393:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2394:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2395:
	.byte	'C'
	.ascii	"_temp_2387\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2400:
	.byte	'C'
	.ascii	"_temp_2379\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2402:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2403:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2404:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2405:
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
_Label_3486:
	push	r0
	sub	r1,1,r1
	bne	_Label_3486
	mov	1642,r13		! source line 1642
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2406
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2406
	jmp	_Label_2407
_Label_2406:
! THEN...
	mov	1654,r13		! source line 1654
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2408
_Label_2407:
! ELSE...
	mov	1655,r13		! source line 1655
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2410		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2410
!	jmp	_Label_2409
_Label_2409:
! THEN...
	mov	1656,r13		! source line 1656
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2410:
! END IF...
_Label_2408:
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
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
	mov	1659,r13		! source line 1659
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
	mov	1660,r13		! source line 1660
	mov	"\0\0WH",r10
_Label_2411:
!	jmp	_Label_2412
_Label_2412:
	mov	1660,r13		! source line 1660
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2417		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2417
	jmp	_Label_2414
_Label_2417:
	mov	1662,r13		! source line 1662
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2419) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2418  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2418 then goto _Label_2416 else goto _Label_2414
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2414
	jmp	_Label_2416
_Label_2416:
	mov	1663,r13		! source line 1663
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2421) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2420  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2420 then goto _Label_2415 else goto _Label_2414
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2414
	jmp	_Label_2415
_Label_2414:
! THEN...
	mov	1664,r13		! source line 1664
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2415:
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
	mov	1666,r13		! source line 1666
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2423) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2422  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2422 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0WH",r10
_Label_2424:
!   if offset >= 8192 then goto _Label_2426		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2426
!	jmp	_Label_2425
_Label_2425:
	mov	1667,r13		! source line 1667
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2427 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2427  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2429		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2429
!	jmp	_Label_2428
_Label_2428:
! THEN...
	mov	1674,r13		! source line 1674
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1674,r13		! source line 1674
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2429:
! END WHILE...
	jmp	_Label_2424
_Label_2426:
! ASSIGNMENT STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2411
_Label_2413:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2430
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2431
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2432
	.word	12
	.word	4
	.word	_Label_2433
	.word	16
	.word	4
	.word	_Label_2434
	.word	20
	.word	4
	.word	_Label_2435
	.word	-9
	.word	1
	.word	_Label_2436
	.word	-16
	.word	4
	.word	_Label_2437
	.word	-20
	.word	4
	.word	_Label_2438
	.word	-24
	.word	4
	.word	_Label_2439
	.word	-10
	.word	1
	.word	_Label_2440
	.word	-28
	.word	4
	.word	_Label_2441
	.word	-11
	.word	1
	.word	_Label_2442
	.word	-32
	.word	4
	.word	_Label_2443
	.word	-36
	.word	4
	.word	_Label_2444
	.word	-40
	.word	4
	.word	_Label_2445
	.word	-44
	.word	4
	.word	0
_Label_2430:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2431:
	.ascii	"Pself\0"
	.align
_Label_2432:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2433:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2434:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2435:
	.byte	'C'
	.ascii	"_temp_2427\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2439:
	.byte	'C'
	.ascii	"_temp_2420\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2441:
	.byte	'C'
	.ascii	"_temp_2418\0"
	.align
_Label_2442:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2443:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2444:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2445:
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
_Label_3487:
	push	r0
	sub	r1,1,r1
	bne	_Label_3487
	mov	1684,r13		! source line 1684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0IF",r10
	mov	1708,r13		! source line 1708
	mov	"\0\0SE",r10
!   _temp_2449 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2450) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2449  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2448  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2448 >= 4 then goto _Label_2447		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2447
!	jmp	_Label_2446
_Label_2446:
! THEN...
	mov	1711,r13		! source line 1711
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1711,r13		! source line 1711
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2447:
! IF STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2452		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2452
!	jmp	_Label_2451
_Label_2451:
! THEN...
	mov	1716,r13		! source line 1716
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1716,r13		! source line 1716
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2452:
! ASSIGNMENT STATEMENT...
	mov	1719,r13		! source line 1719
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
	mov	1721,r13		! source line 1721
	mov	"\0\0RE",r10
	mov	1721,r13		! source line 1721
	mov	"\0\0SE",r10
!   _temp_2455 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2454 = _temp_2455 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2456 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2457) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2454  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2456  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2453  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2453  (sizeInBytes=4)
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
	.word	_Label_2458
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2459
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2460
	.word	12
	.word	4
	.word	_Label_2461
	.word	16
	.word	4
	.word	_Label_2462
	.word	20
	.word	4
	.word	_Label_2463
	.word	-12
	.word	4
	.word	_Label_2464
	.word	-16
	.word	4
	.word	_Label_2465
	.word	-20
	.word	4
	.word	_Label_2466
	.word	-24
	.word	4
	.word	_Label_2467
	.word	-28
	.word	4
	.word	_Label_2468
	.word	-32
	.word	4
	.word	_Label_2469
	.word	-36
	.word	4
	.word	_Label_2470
	.word	-40
	.word	4
	.word	_Label_2471
	.word	-44
	.word	4
	.word	0
_Label_2458:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2459:
	.ascii	"Pself\0"
	.align
_Label_2460:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2461:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2462:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2471:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2472
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2472:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2473
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2473:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3488:
	push	r0
	sub	r1,1,r1
	bne	_Label_3488
	mov	2331,r13		! source line 2331
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2474 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2474  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2332,r13		! source line 2332
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0SE",r10
!   _temp_2476 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0SE",r10
!   _temp_2478 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2342,r13		! source line 2342
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2479
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2480
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2481
	.word	-12
	.word	4
	.word	_Label_2482
	.word	-16
	.word	4
	.word	_Label_2483
	.word	-20
	.word	4
	.word	_Label_2484
	.word	-24
	.word	4
	.word	_Label_2485
	.word	-28
	.word	4
	.word	0
_Label_2479:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2480:
	.ascii	"Pself\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3489:
	push	r0
	sub	r1,1,r1
	bne	_Label_3489
	mov	2347,r13		! source line 2347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0SE",r10
!   _temp_2486 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0WH",r10
_Label_2487:
!	jmp	_Label_2488
_Label_2488:
	mov	2361,r13		! source line 2361
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0SE",r10
!   _temp_2490 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2491) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2490  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0SE",r10
!   _temp_2492 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2368,r13		! source line 2368
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2501 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2495
	cmp	r1,2
	be	_Label_2496
	cmp	r1,3
	be	_Label_2497
	cmp	r1,4
	be	_Label_2498
	cmp	r1,5
	be	_Label_2499
	cmp	r1,6
	be	_Label_2500
	jmp	_Label_2493
! CASE 1...
_Label_2495:
! SEND STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0SE",r10
!   _temp_2502 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2496:
! CALL STATEMENT...
!   _temp_2503 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2503  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2373,r13		! source line 2373
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2497:
! CALL STATEMENT...
!   _temp_2504 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2504  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2375,r13		! source line 2375
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2498:
! CALL STATEMENT...
!   _temp_2505 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2505  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2377,r13		! source line 2377
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2499:
! BREAK STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0BR",r10
	jmp	_Label_2494
! CASE 6...
_Label_2500:
! CALL STATEMENT...
!   _temp_2506 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2506  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2383,r13		! source line 2383
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2493:
! CALL STATEMENT...
!   _temp_2507 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2507  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2385,r13		! source line 2385
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2494:
! END WHILE...
	jmp	_Label_2487
_Label_2489:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2508
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2510
	.word	12
	.word	4
	.word	_Label_2511
	.word	16
	.word	4
	.word	_Label_2512
	.word	20
	.word	4
	.word	_Label_2513
	.word	-12
	.word	4
	.word	_Label_2514
	.word	-16
	.word	4
	.word	_Label_2515
	.word	-20
	.word	4
	.word	_Label_2516
	.word	-24
	.word	4
	.word	_Label_2517
	.word	-28
	.word	4
	.word	_Label_2518
	.word	-32
	.word	4
	.word	_Label_2519
	.word	-36
	.word	4
	.word	_Label_2520
	.word	-40
	.word	4
	.word	_Label_2521
	.word	-44
	.word	4
	.word	_Label_2522
	.word	-48
	.word	4
	.word	_Label_2523
	.word	-52
	.word	4
	.word	0
_Label_2508:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2509:
	.ascii	"Pself\0"
	.align
_Label_2510:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2511:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2512:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2394,r13		! source line 2394
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2524
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2525
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2526
	.word	12
	.word	4
	.word	_Label_2527
	.word	16
	.word	4
	.word	_Label_2528
	.word	20
	.word	4
	.word	_Label_2529
	.word	24
	.word	4
	.word	0
_Label_2524:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2525:
	.ascii	"Pself\0"
	.align
_Label_2526:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2527:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2528:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2529:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3490:
	push	r0
	sub	r1,1,r1
	bne	_Label_3490
	mov	2420,r13		! source line 2420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0SE",r10
!   _temp_2530 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0WH",r10
_Label_2531:
!	jmp	_Label_2532
_Label_2532:
	mov	2433,r13		! source line 2433
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0SE",r10
!   _temp_2534 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2535) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2534  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0SE",r10
!   _temp_2536 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2439,r13		! source line 2439
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2545 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2539
	cmp	r1,2
	be	_Label_2540
	cmp	r1,3
	be	_Label_2541
	cmp	r1,4
	be	_Label_2542
	cmp	r1,5
	be	_Label_2543
	cmp	r1,6
	be	_Label_2544
	jmp	_Label_2537
! CASE 1...
_Label_2539:
! SEND STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0SE",r10
!   _temp_2546 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2540:
! CALL STATEMENT...
!   _temp_2547 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2547  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2444,r13		! source line 2444
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2541:
! CALL STATEMENT...
!   _temp_2548 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2548  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2446,r13		! source line 2446
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2542:
! CALL STATEMENT...
!   _temp_2549 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2448,r13		! source line 2448
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2543:
! BREAK STATEMENT...
	mov	2452,r13		! source line 2452
	mov	"\0\0BR",r10
	jmp	_Label_2538
! CASE 6...
_Label_2544:
! CALL STATEMENT...
!   _temp_2550 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2454,r13		! source line 2454
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2537:
! CALL STATEMENT...
!   _temp_2551 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2456,r13		! source line 2456
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2538:
! END WHILE...
	jmp	_Label_2531
_Label_2533:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2552
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2554
	.word	12
	.word	4
	.word	_Label_2555
	.word	16
	.word	4
	.word	_Label_2556
	.word	20
	.word	4
	.word	_Label_2557
	.word	-12
	.word	4
	.word	_Label_2558
	.word	-16
	.word	4
	.word	_Label_2559
	.word	-20
	.word	4
	.word	_Label_2560
	.word	-24
	.word	4
	.word	_Label_2561
	.word	-28
	.word	4
	.word	_Label_2562
	.word	-32
	.word	4
	.word	_Label_2563
	.word	-36
	.word	4
	.word	_Label_2564
	.word	-40
	.word	4
	.word	_Label_2565
	.word	-44
	.word	4
	.word	_Label_2566
	.word	-48
	.word	4
	.word	_Label_2567
	.word	-52
	.word	4
	.word	0
_Label_2552:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2553:
	.ascii	"Pself\0"
	.align
_Label_2554:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2555:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2556:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2465,r13		! source line 2465
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2568
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2570
	.word	12
	.word	4
	.word	_Label_2571
	.word	16
	.word	4
	.word	_Label_2572
	.word	20
	.word	4
	.word	_Label_2573
	.word	24
	.word	4
	.word	0
_Label_2568:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2569:
	.ascii	"Pself\0"
	.align
_Label_2570:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2571:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2572:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2573:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2574
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2574:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2575
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2575:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3491:
	push	r0
	sub	r1,1,r1
	bne	_Label_3491
	mov	2496,r13		! source line 2496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2576 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2576  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2503,r13		! source line 2503
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0SE",r10
!   _temp_2578 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0SE",r10
!   _temp_2581 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   _temp_2582 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2584 = &_temp_2583
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2584 = _temp_2584 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2586 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3492:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3492
!   _temp_2586 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2588:
!   Data Move: *_temp_2584 = _temp_2586  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3493:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3493
!   _temp_2584 = _temp_2584 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2585 = _temp_2585 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2585) then goto _Label_2588
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2588
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2589 = &_temp_2583
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3494
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3494:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2582 = *_temp_2589  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3495:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3495
! FOR STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2594 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2595 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2594  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2590:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2595 then goto _Label_2593		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2593
_Label_2591:
	mov	2513,r13		! source line 2513
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   _temp_2596 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2596 [i ] into _temp_2597
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2598 = _temp_2597 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2598 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0SE",r10
!   _temp_2599 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2599 [i ] into _temp_2600
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0SE",r10
!   _temp_2602 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2602 [i ] into _temp_2603
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2601 = _temp_2603		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2604 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2601  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2592:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2590
! END FOR
_Label_2593:
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0SE",r10
!   _temp_2607 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0AS",r10
!   _temp_2608 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2610 = &_temp_2609
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2610 = _temp_2610 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2612 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3496:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3496
!   _temp_2612 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2614:
!   Data Move: *_temp_2610 = _temp_2612  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3497:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3497
!   _temp_2610 = _temp_2610 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2611 = _temp_2611 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2611) then goto _Label_2614
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2614
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2615 = &_temp_2609
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3498
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3498:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2608 = *_temp_2615  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3499:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3499
! FOR STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2620 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2621 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2620  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2616:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2621 then goto _Label_2619		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2619
_Label_2617:
	mov	2525,r13		! source line 2525
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   _temp_2622 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2622 [i ] into _temp_2623
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2624 = _temp_2623 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2624 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0SE",r10
!   _temp_2626 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2626 [i ] into _temp_2627
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2625 = _temp_2627		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2628 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2625  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2618:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2616
! END FOR
_Label_2619:
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3500:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3500
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   _temp_2630 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2631 = _temp_2630 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2631 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0AS",r10
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
!   _temp_2632 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
!   _temp_2633 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2634
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2636
	.word	-12
	.word	4
	.word	_Label_2637
	.word	-16
	.word	4
	.word	_Label_2638
	.word	-20
	.word	4
	.word	_Label_2639
	.word	-24
	.word	4
	.word	_Label_2640
	.word	-28
	.word	4
	.word	_Label_2641
	.word	-32
	.word	4
	.word	_Label_2642
	.word	-36
	.word	4
	.word	_Label_2643
	.word	-40
	.word	4
	.word	_Label_2644
	.word	-44
	.word	4
	.word	_Label_2645
	.word	-48
	.word	4
	.word	_Label_2646
	.word	-52
	.word	4
	.word	_Label_2647
	.word	-56
	.word	4
	.word	_Label_2648
	.word	-60
	.word	4
	.word	_Label_2649
	.word	-64
	.word	4
	.word	_Label_2650
	.word	-68
	.word	4
	.word	_Label_2651
	.word	-72
	.word	4
	.word	_Label_2652
	.word	-100
	.word	28
	.word	_Label_2653
	.word	-104
	.word	4
	.word	_Label_2654
	.word	-108
	.word	4
	.word	_Label_2655
	.word	-392
	.word	284
	.word	_Label_2656
	.word	-396
	.word	4
	.word	_Label_2657
	.word	-400
	.word	4
	.word	_Label_2658
	.word	-404
	.word	4
	.word	_Label_2659
	.word	-408
	.word	4
	.word	_Label_2660
	.word	-412
	.word	4
	.word	_Label_2661
	.word	-416
	.word	4
	.word	_Label_2662
	.word	-420
	.word	4
	.word	_Label_2663
	.word	-424
	.word	4
	.word	_Label_2664
	.word	-428
	.word	4
	.word	_Label_2665
	.word	-432
	.word	4
	.word	_Label_2666
	.word	-436
	.word	4
	.word	_Label_2667
	.word	-440
	.word	4
	.word	_Label_2668
	.word	-444
	.word	4
	.word	_Label_2669
	.word	-448
	.word	4
	.word	_Label_2670
	.word	-452
	.word	4
	.word	_Label_2671
	.word	-456
	.word	4
	.word	_Label_2672
	.word	-460
	.word	4
	.word	_Label_2673
	.word	-500
	.word	40
	.word	_Label_2674
	.word	-504
	.word	4
	.word	_Label_2675
	.word	-508
	.word	4
	.word	_Label_2676
	.word	-912
	.word	404
	.word	_Label_2677
	.word	-916
	.word	4
	.word	_Label_2678
	.word	-920
	.word	4
	.word	_Label_2679
	.word	-924
	.word	4
	.word	_Label_2680
	.word	-928
	.word	4
	.word	_Label_2681
	.word	-932
	.word	4
	.word	_Label_2682
	.word	-936
	.word	4
	.word	_Label_2683
	.word	-940
	.word	4
	.word	_Label_2684
	.word	-944
	.word	4
	.word	0
_Label_2634:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2635:
	.ascii	"Pself\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2684:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3501:
	push	r0
	sub	r1,1,r1
	bne	_Label_3501
	mov	2545,r13		! source line 2545
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   _temp_2685 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2686 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2686  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2691 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2692 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2691  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2687:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2692 then goto _Label_2690		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2690
_Label_2688:
	mov	2549,r13		! source line 2549
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2693 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2693  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2551,r13		! source line 2551
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2694 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2694  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2552,r13		! source line 2552
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   _temp_2695 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2695 [i ] into _temp_2696
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2689:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2687
! END FOR
_Label_2690:
! CALL STATEMENT...
!   _temp_2697 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2697  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2555,r13		! source line 2555
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0SE",r10
!   _temp_2698 = _function_194_printFCB
	set	_function_194_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2699 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2698  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2557,r13		! source line 2557
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2700 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2700  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2558,r13		! source line 2558
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2705 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2706 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2705  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2701:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2706 then goto _Label_2704		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2704
_Label_2702:
	mov	2559,r13		! source line 2559
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2707 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2707  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2560,r13		! source line 2560
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2561,r13		! source line 2561
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2708 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2708  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2562,r13		! source line 2562
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2710 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2710 [i ] into _temp_2711
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2709 = _temp_2711		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2709  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2563,r13		! source line 2563
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2712 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2712  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2564,r13		! source line 2564
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0SE",r10
!   _temp_2713 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2713 [i ] into _temp_2714
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2703:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2701
! END FOR
_Label_2704:
! CALL STATEMENT...
!   _temp_2715 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2715  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2567,r13		! source line 2567
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0SE",r10
!   _temp_2716 = _function_193_printOpen
	set	_function_193_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2717 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2716  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2569,r13		! source line 2569
	mov	"\0\0SE",r10
!   _temp_2718 = &fileManagerLock
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
	mov	2569,r13		! source line 2569
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2719
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2721
	.word	-12
	.word	4
	.word	_Label_2722
	.word	-16
	.word	4
	.word	_Label_2723
	.word	-20
	.word	4
	.word	_Label_2724
	.word	-24
	.word	4
	.word	_Label_2725
	.word	-28
	.word	4
	.word	_Label_2726
	.word	-32
	.word	4
	.word	_Label_2727
	.word	-36
	.word	4
	.word	_Label_2728
	.word	-40
	.word	4
	.word	_Label_2729
	.word	-44
	.word	4
	.word	_Label_2730
	.word	-48
	.word	4
	.word	_Label_2731
	.word	-52
	.word	4
	.word	_Label_2732
	.word	-56
	.word	4
	.word	_Label_2733
	.word	-60
	.word	4
	.word	_Label_2734
	.word	-64
	.word	4
	.word	_Label_2735
	.word	-68
	.word	4
	.word	_Label_2736
	.word	-72
	.word	4
	.word	_Label_2737
	.word	-76
	.word	4
	.word	_Label_2738
	.word	-80
	.word	4
	.word	_Label_2739
	.word	-84
	.word	4
	.word	_Label_2740
	.word	-88
	.word	4
	.word	_Label_2741
	.word	-92
	.word	4
	.word	_Label_2742
	.word	-96
	.word	4
	.word	_Label_2743
	.word	-100
	.word	4
	.word	_Label_2744
	.word	-104
	.word	4
	.word	_Label_2745
	.word	-108
	.word	4
	.word	_Label_2746
	.word	-112
	.word	4
	.word	_Label_2747
	.word	-116
	.word	4
	.word	0
_Label_2719:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2720:
	.ascii	"Pself\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2747:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3502:
	push	r0
	sub	r1,1,r1
	bne	_Label_3502
	mov	2574,r13		! source line 2574
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
!   _temp_2748 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2749
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2749
	jmp	_Label_2750
_Label_2749:
! THEN...
	mov	2592,r13		! source line 2592
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2750:
! SEND STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0SE",r10
!   _temp_2751 = &fileManagerLock
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
	mov	2597,r13		! source line 2597
	mov	"\0\0WH",r10
_Label_2752:
	mov	2597,r13		! source line 2597
	mov	"\0\0SE",r10
!   _temp_2755 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2753 else goto _Label_2754
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2754
	jmp	_Label_2753
_Label_2753:
	mov	2597,r13		! source line 2597
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   _temp_2756 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2757 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2756  sizeInBytes=4
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
	jmp	_Label_2752
_Label_2754:
! ASSIGNMENT STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0AS",r10
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   _temp_2758 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2759 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2759 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2760 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2760 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2761 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2761 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0SE",r10
!   _temp_2762 = &fileManagerLock
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
	mov	2610,r13		! source line 2610
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2763
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2764
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2765
	.word	12
	.word	4
	.word	_Label_2766
	.word	-12
	.word	4
	.word	_Label_2767
	.word	-16
	.word	4
	.word	_Label_2768
	.word	-20
	.word	4
	.word	_Label_2769
	.word	-24
	.word	4
	.word	_Label_2770
	.word	-28
	.word	4
	.word	_Label_2771
	.word	-32
	.word	4
	.word	_Label_2772
	.word	-36
	.word	4
	.word	_Label_2773
	.word	-40
	.word	4
	.word	_Label_2774
	.word	-44
	.word	4
	.word	_Label_2775
	.word	-48
	.word	4
	.word	_Label_2776
	.word	-52
	.word	4
	.word	_Label_2777
	.word	-56
	.word	4
	.word	0
_Label_2763:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2764:
	.ascii	"Pself\0"
	.align
_Label_2765:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2776:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2777:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3503:
	push	r0
	sub	r1,1,r1
	bne	_Label_3503
	mov	2615,r13		! source line 2615
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2779		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2779
!	jmp	_Label_2778
_Label_2778:
! THEN...
	mov	2646,r13		! source line 2646
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2780 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2780  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2646,r13		! source line 2646
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2779:
! ASSIGNMENT STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0WH",r10
_Label_2781:
!   if numFiles <= 0 then goto _Label_2783		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2783
!	jmp	_Label_2782
_Label_2782:
	mov	2656,r13		! source line 2656
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2784 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2784  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2657,r13		! source line 2657
	mov	"\0\0CA",r10
	call	_function_195_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2785 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2785  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2659,r13		! source line 2659
	mov	"\0\0CA",r10
	call	_function_195_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2786 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2786  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2661,r13		! source line 2661
	mov	"\0\0CA",r10
	call	_function_195_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2790 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2790 then goto _Label_2788		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2788
!	jmp	_Label_2789
_Label_2789:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2792
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2791 = _temp_2792		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2791  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2664,r13		! source line 2664
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2787 else goto _Label_2788
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2788
	jmp	_Label_2787
_Label_2787:
! THEN...
	mov	2665,r13		! source line 2665
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0BR",r10
	jmp	_Label_2783
! END IF...
_Label_2788:
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2781
_Label_2783:
! IF STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2794		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2794
!	jmp	_Label_2793
_Label_2793:
! THEN...
	mov	2673,r13		! source line 2673
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2794:
! SEND STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0SE",r10
!   _temp_2795 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2800 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2801 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2800  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2796:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2801 then goto _Label_2799		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2799
_Label_2797:
	mov	2678,r13		! source line 2678
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0AS",r10
!   _temp_2802 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2802 [i ] into _temp_2803
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2803		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2807 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2806 = *_temp_2807  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2806 != start then goto _Label_2805		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2805
!	jmp	_Label_2804
_Label_2804:
! THEN...
	mov	2681,r13		! source line 2681
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2808 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2811 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2810 = *_temp_2811  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2809 = _temp_2810 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2808 = _temp_2809  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0SE",r10
!   _temp_2812 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2805:
!   Increment the FOR-LOOP index variable and jump back
_Label_2798:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2796
! END FOR
_Label_2799:
! WHILE STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0WH",r10
_Label_2813:
	mov	2688,r13		! source line 2688
	mov	"\0\0SE",r10
!   _temp_2816 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2814 else goto _Label_2815
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2815
	jmp	_Label_2814
_Label_2814:
	mov	2688,r13		! source line 2688
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
!   _temp_2817 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2818 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2817  sizeInBytes=4
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
	jmp	_Label_2813
_Label_2815:
! ASSIGNMENT STATEMENT...
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
	mov	2691,r13		! source line 2691
	mov	"\0\0SE",r10
!   _temp_2819 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0SE",r10
!   _temp_2820 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2821 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2821 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2822 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2822 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2699,r13		! source line 2699
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2823 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2823 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2700,r13		! source line 2700
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2828 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2827 = *_temp_2828  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2827 < 0 then goto _Label_2826		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2826
	jmp	_Label_2824
_Label_2826:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2829 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2829 ) then goto _Label_2825		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2825
!	jmp	_Label_2824
_Label_2824:
! THEN...
	mov	2701,r13		! source line 2701
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2830 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2830  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2701,r13		! source line 2701
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2825:
! RETURN STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2831
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2833
	.word	12
	.word	4
	.word	_Label_2834
	.word	-12
	.word	4
	.word	_Label_2835
	.word	-16
	.word	4
	.word	_Label_2836
	.word	-20
	.word	4
	.word	_Label_2837
	.word	-24
	.word	4
	.word	_Label_2838
	.word	-28
	.word	4
	.word	_Label_2839
	.word	-32
	.word	4
	.word	_Label_2840
	.word	-36
	.word	4
	.word	_Label_2841
	.word	-40
	.word	4
	.word	_Label_2842
	.word	-44
	.word	4
	.word	_Label_2843
	.word	-48
	.word	4
	.word	_Label_2844
	.word	-52
	.word	4
	.word	_Label_2845
	.word	-56
	.word	4
	.word	_Label_2846
	.word	-60
	.word	4
	.word	_Label_2847
	.word	-64
	.word	4
	.word	_Label_2848
	.word	-68
	.word	4
	.word	_Label_2849
	.word	-72
	.word	4
	.word	_Label_2850
	.word	-76
	.word	4
	.word	_Label_2851
	.word	-80
	.word	4
	.word	_Label_2852
	.word	-84
	.word	4
	.word	_Label_2853
	.word	-88
	.word	4
	.word	_Label_2854
	.word	-92
	.word	4
	.word	_Label_2855
	.word	-96
	.word	4
	.word	_Label_2856
	.word	-100
	.word	4
	.word	_Label_2857
	.word	-104
	.word	4
	.word	_Label_2858
	.word	-108
	.word	4
	.word	_Label_2859
	.word	-112
	.word	4
	.word	_Label_2860
	.word	-116
	.word	4
	.word	_Label_2861
	.word	-120
	.word	4
	.word	_Label_2862
	.word	-124
	.word	4
	.word	_Label_2863
	.word	-128
	.word	4
	.word	_Label_2864
	.word	-132
	.word	4
	.word	_Label_2865
	.word	-136
	.word	4
	.word	_Label_2866
	.word	-140
	.word	4
	.word	_Label_2867
	.word	-144
	.word	4
	.word	_Label_2868
	.word	-148
	.word	4
	.word	_Label_2869
	.word	-152
	.word	4
	.word	_Label_2870
	.word	-156
	.word	4
	.word	_Label_2871
	.word	-160
	.word	4
	.word	0
_Label_2831:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2832:
	.ascii	"Pself\0"
	.align
_Label_2833:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2865:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2866:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2867:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2868:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2869:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2870:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2871:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3504:
	push	r0
	sub	r1,1,r1
	bne	_Label_3504
	mov	2716,r13		! source line 2716
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0IF",r10
!   _temp_2874 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2874 then goto _Label_2873		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2873
!	jmp	_Label_2872
_Label_2872:
! THEN...
	mov	2719,r13		! source line 2719
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2873:
! SEND STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0SE",r10
!   _temp_2875 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
!   _temp_2876 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2877 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2877  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2878 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2881 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2880 = *_temp_2881  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2879 = _temp_2880 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2878 = _temp_2879  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2885 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2884 = *_temp_2885  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2884 > 0 then goto _Label_2883		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2883
!	jmp	_Label_2882
_Label_2882:
! THEN...
	mov	2726,r13		! source line 2726
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0SE",r10
!   _temp_2886 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0SE",r10
!   _temp_2887 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2888 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2887  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2889 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2892 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2891 = *_temp_2892  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2890 = _temp_2891 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2889 = _temp_2890  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2896 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2895 = *_temp_2896  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2895 > 0 then goto _Label_2894		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2894
!	jmp	_Label_2893
_Label_2893:
! THEN...
	mov	2730,r13		! source line 2730
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
!   _temp_2897 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2731,r13		! source line 2731
	mov	"\0\0SE",r10
!   _temp_2898 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2899 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2898  sizeInBytes=4
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
! END IF...
_Label_2894:
! END IF...
_Label_2883:
! SEND STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
!   _temp_2900 = &fileManagerLock
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
	mov	2734,r13		! source line 2734
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2901
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2902
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2903
	.word	12
	.word	4
	.word	_Label_2904
	.word	-12
	.word	4
	.word	_Label_2905
	.word	-16
	.word	4
	.word	_Label_2906
	.word	-20
	.word	4
	.word	_Label_2907
	.word	-24
	.word	4
	.word	_Label_2908
	.word	-28
	.word	4
	.word	_Label_2909
	.word	-32
	.word	4
	.word	_Label_2910
	.word	-36
	.word	4
	.word	_Label_2911
	.word	-40
	.word	4
	.word	_Label_2912
	.word	-44
	.word	4
	.word	_Label_2913
	.word	-48
	.word	4
	.word	_Label_2914
	.word	-52
	.word	4
	.word	_Label_2915
	.word	-56
	.word	4
	.word	_Label_2916
	.word	-60
	.word	4
	.word	_Label_2917
	.word	-64
	.word	4
	.word	_Label_2918
	.word	-68
	.word	4
	.word	_Label_2919
	.word	-72
	.word	4
	.word	_Label_2920
	.word	-76
	.word	4
	.word	_Label_2921
	.word	-80
	.word	4
	.word	_Label_2922
	.word	-84
	.word	4
	.word	_Label_2923
	.word	-88
	.word	4
	.word	_Label_2924
	.word	-92
	.word	4
	.word	_Label_2925
	.word	-96
	.word	4
	.word	_Label_2926
	.word	-100
	.word	4
	.word	_Label_2927
	.word	-104
	.word	4
	.word	0
_Label_2901:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2902:
	.ascii	"Pself\0"
	.align
_Label_2903:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2927:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3505:
	push	r0
	sub	r1,1,r1
	bne	_Label_3505
	mov	2739,r13		! source line 2739
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2931 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2930 = *_temp_2931  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2930) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2932 = _temp_2930 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2932 ) then goto _Label_2929		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2929
!	jmp	_Label_2928
_Label_2928:
! THEN...
	mov	2745,r13		! source line 2745
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2937 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2936 = *_temp_2937  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2936) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2938 = _temp_2936 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2935 = *_temp_2938  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2935 >= 0 then goto _Label_2934		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2934
!	jmp	_Label_2933
_Label_2933:
! THEN...
	mov	2746,r13		! source line 2746
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2939 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2939  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2746,r13		! source line 2746
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2934:
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2941 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2940 = *_temp_2941  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2940) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2942 = _temp_2940 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2942 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2946 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2945 = *_temp_2946  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2945) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2947 = _temp_2945 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2944 = *_temp_2947  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2950 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2949 = *_temp_2950  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2949) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2951 = _temp_2949 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2948 = *_temp_2951  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2943 = _temp_2944 + _temp_2948		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2954 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2953 = *_temp_2954  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2953) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2955 = _temp_2953 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2952 = *_temp_2955  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2956 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2943  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2952  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2929:
! RETURN STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2957
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2959
	.word	12
	.word	4
	.word	_Label_2960
	.word	-12
	.word	4
	.word	_Label_2961
	.word	-16
	.word	4
	.word	_Label_2962
	.word	-20
	.word	4
	.word	_Label_2963
	.word	-24
	.word	4
	.word	_Label_2964
	.word	-28
	.word	4
	.word	_Label_2965
	.word	-32
	.word	4
	.word	_Label_2966
	.word	-36
	.word	4
	.word	_Label_2967
	.word	-40
	.word	4
	.word	_Label_2968
	.word	-44
	.word	4
	.word	_Label_2969
	.word	-48
	.word	4
	.word	_Label_2970
	.word	-52
	.word	4
	.word	_Label_2971
	.word	-56
	.word	4
	.word	_Label_2972
	.word	-60
	.word	4
	.word	_Label_2973
	.word	-64
	.word	4
	.word	_Label_2974
	.word	-68
	.word	4
	.word	_Label_2975
	.word	-72
	.word	4
	.word	_Label_2976
	.word	-76
	.word	4
	.word	_Label_2977
	.word	-80
	.word	4
	.word	_Label_2978
	.word	-84
	.word	4
	.word	_Label_2979
	.word	-88
	.word	4
	.word	_Label_2980
	.word	-92
	.word	4
	.word	_Label_2981
	.word	-96
	.word	4
	.word	_Label_2982
	.word	-100
	.word	4
	.word	_Label_2983
	.word	-104
	.word	4
	.word	_Label_2984
	.word	-108
	.word	4
	.word	0
_Label_2957:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2958:
	.ascii	"Pself\0"
	.align
_Label_2959:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2940\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3506:
	push	r0
	sub	r1,1,r1
	bne	_Label_3506
	mov	2758,r13		! source line 2758
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
!   _temp_2985 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2991		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2991
!   _temp_2990 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2992
_Label_2991:
!   _temp_2990 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2992:
!   if _temp_2990 then goto _Label_2989 else goto _Label_2986
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2986
	jmp	_Label_2989
_Label_2989:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2995 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2994 = *_temp_2995  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2994 == 0 then goto _Label_2996		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2996
!   _temp_2993 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2997
_Label_2996:
!   _temp_2993 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2997:
!   if _temp_2993 then goto _Label_2988 else goto _Label_2986
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2986
	jmp	_Label_2988
_Label_2988:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3000 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2999 = *_temp_3000  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2999) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3001 = _temp_2999 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2998 = *_temp_3001  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2998 >= 0 then goto _Label_2987		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2987
!	jmp	_Label_2986
_Label_2986:
! THEN...
	mov	2775,r13		! source line 2775
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3002 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3002  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2775,r13		! source line 2775
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2987:
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3003 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3003  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0WH",r10
_Label_3004:
!   if numBytes <= 0 then goto _Label_3006		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3006
!	jmp	_Label_3005
_Label_3005:
	mov	2778,r13		! source line 2778
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3010 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3009 = *_temp_3010  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3009 == sector then goto _Label_3008		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3008
!	jmp	_Label_3007
_Label_3007:
! THEN...
	mov	2793,r13		! source line 2793
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3011) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3014 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3013 = *_temp_3014  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3012 = sector + _temp_3013		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3016 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3015 = *_temp_3016  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3017 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3012  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3015  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3018 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3018 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3019 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3019 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3008:
! ASSIGNMENT STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3021 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3020 = *_temp_3021  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3020 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
!   _temp_3022 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3022  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2802,r13		! source line 2802
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3004
_Label_3006:
! SEND STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0SE",r10
!   _temp_3023 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_3024
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3026
	.word	12
	.word	4
	.word	_Label_3027
	.word	16
	.word	4
	.word	_Label_3028
	.word	20
	.word	4
	.word	_Label_3029
	.word	24
	.word	4
	.word	_Label_3030
	.word	-16
	.word	4
	.word	_Label_3031
	.word	-20
	.word	4
	.word	_Label_3032
	.word	-24
	.word	4
	.word	_Label_3033
	.word	-28
	.word	4
	.word	_Label_3034
	.word	-32
	.word	4
	.word	_Label_3035
	.word	-36
	.word	4
	.word	_Label_3036
	.word	-40
	.word	4
	.word	_Label_3037
	.word	-44
	.word	4
	.word	_Label_3038
	.word	-48
	.word	4
	.word	_Label_3039
	.word	-52
	.word	4
	.word	_Label_3040
	.word	-56
	.word	4
	.word	_Label_3041
	.word	-60
	.word	4
	.word	_Label_3042
	.word	-64
	.word	4
	.word	_Label_3043
	.word	-68
	.word	4
	.word	_Label_3044
	.word	-72
	.word	4
	.word	_Label_3045
	.word	-76
	.word	4
	.word	_Label_3046
	.word	-80
	.word	4
	.word	_Label_3047
	.word	-84
	.word	4
	.word	_Label_3048
	.word	-88
	.word	4
	.word	_Label_3049
	.word	-92
	.word	4
	.word	_Label_3050
	.word	-96
	.word	4
	.word	_Label_3051
	.word	-100
	.word	4
	.word	_Label_3052
	.word	-104
	.word	4
	.word	_Label_3053
	.word	-9
	.word	1
	.word	_Label_3054
	.word	-10
	.word	1
	.word	_Label_3055
	.word	-108
	.word	4
	.word	_Label_3056
	.word	-112
	.word	4
	.word	_Label_3057
	.word	-116
	.word	4
	.word	_Label_3058
	.word	-120
	.word	4
	.word	_Label_3059
	.word	-124
	.word	4
	.word	_Label_3060
	.word	-128
	.word	4
	.word	0
_Label_3024:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3025:
	.ascii	"Pself\0"
	.align
_Label_3026:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3027:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3028:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3029:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3023\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3022\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3021\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_3011\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_3010\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3053:
	.byte	'C'
	.ascii	"_temp_2993\0"
	.align
_Label_3054:
	.byte	'C'
	.ascii	"_temp_2990\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3056:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3057:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3058:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3059:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3060:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3507:
	push	r0
	sub	r1,1,r1
	bne	_Label_3507
	mov	2822,r13		! source line 2822
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
!   _temp_3061 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3067		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3067
!   _temp_3066 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3068
_Label_3067:
!   _temp_3066 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3068:
!   if _temp_3066 then goto _Label_3065 else goto _Label_3062
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3062
	jmp	_Label_3065
_Label_3065:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3071 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3070 = *_temp_3071  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3070 == 0 then goto _Label_3072		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3072
!   _temp_3069 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3073
_Label_3072:
!   _temp_3069 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3073:
!   if _temp_3069 then goto _Label_3064 else goto _Label_3062
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3062
	jmp	_Label_3064
_Label_3064:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3076 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3075 = *_temp_3076  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3075) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3077 = _temp_3075 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3074 = *_temp_3077  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3074 >= 0 then goto _Label_3063		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3063
!	jmp	_Label_3062
_Label_3062:
! THEN...
	mov	2840,r13		! source line 2840
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3078 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3078  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2840,r13		! source line 2840
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3063:
! ASSIGNMENT STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3079 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3079  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0WH",r10
_Label_3080:
!   if numBytes <= 0 then goto _Label_3082		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3082
!	jmp	_Label_3081
_Label_3081:
	mov	2843,r13		! source line 2843
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3086 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3085 = *_temp_3086  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3085 == sector then goto _Label_3084		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3084
!	jmp	_Label_3083
_Label_3083:
! THEN...
	mov	2859,r13		! source line 2859
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3087) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_3084:
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3089 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3088 = *_temp_3089  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3088 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   _temp_3090 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3090  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2862,r13		! source line 2862
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3094 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3093 = *_temp_3094  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3093 != sector then goto _Label_3092		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3092
!	jmp	_Label_3091
_Label_3091:
	jmp	_Label_3095
_Label_3092:
! ELSE...
	mov	2865,r13		! source line 2865
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3098
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3098
	jmp	_Label_3097
_Label_3098:
!   if bytesToMove != 8192 then goto _Label_3097		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3097
!	jmp	_Label_3096
_Label_3096:
	jmp	_Label_3099
_Label_3097:
! ELSE...
	mov	2869,r13		! source line 2869
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3102 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3101 = *_temp_3102  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3100 = sector + _temp_3101		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3104 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3103 = *_temp_3104  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3105 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3100  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3103  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_3099:
! END IF...
_Label_3095:
! ASSIGNMENT STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3106 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3106 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3107 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3107 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2878,r13		! source line 2878
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3080
_Label_3082:
! SEND STATEMENT...
	mov	2888,r13		! source line 2888
	mov	"\0\0SE",r10
!   _temp_3108 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_3109
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3111
	.word	12
	.word	4
	.word	_Label_3112
	.word	16
	.word	4
	.word	_Label_3113
	.word	20
	.word	4
	.word	_Label_3114
	.word	24
	.word	4
	.word	_Label_3115
	.word	-16
	.word	4
	.word	_Label_3116
	.word	-20
	.word	4
	.word	_Label_3117
	.word	-24
	.word	4
	.word	_Label_3118
	.word	-28
	.word	4
	.word	_Label_3119
	.word	-32
	.word	4
	.word	_Label_3120
	.word	-36
	.word	4
	.word	_Label_3121
	.word	-40
	.word	4
	.word	_Label_3122
	.word	-44
	.word	4
	.word	_Label_3123
	.word	-48
	.word	4
	.word	_Label_3124
	.word	-52
	.word	4
	.word	_Label_3125
	.word	-56
	.word	4
	.word	_Label_3126
	.word	-60
	.word	4
	.word	_Label_3127
	.word	-64
	.word	4
	.word	_Label_3128
	.word	-68
	.word	4
	.word	_Label_3129
	.word	-72
	.word	4
	.word	_Label_3130
	.word	-76
	.word	4
	.word	_Label_3131
	.word	-80
	.word	4
	.word	_Label_3132
	.word	-84
	.word	4
	.word	_Label_3133
	.word	-88
	.word	4
	.word	_Label_3134
	.word	-92
	.word	4
	.word	_Label_3135
	.word	-96
	.word	4
	.word	_Label_3136
	.word	-100
	.word	4
	.word	_Label_3137
	.word	-104
	.word	4
	.word	_Label_3138
	.word	-108
	.word	4
	.word	_Label_3139
	.word	-112
	.word	4
	.word	_Label_3140
	.word	-9
	.word	1
	.word	_Label_3141
	.word	-10
	.word	1
	.word	_Label_3142
	.word	-116
	.word	4
	.word	_Label_3143
	.word	-120
	.word	4
	.word	_Label_3144
	.word	-124
	.word	4
	.word	_Label_3145
	.word	-128
	.word	4
	.word	_Label_3146
	.word	-132
	.word	4
	.word	_Label_3147
	.word	-136
	.word	4
	.word	0
_Label_3109:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3110:
	.ascii	"Pself\0"
	.align
_Label_3111:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3112:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3114:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3101\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3140:
	.byte	'C'
	.ascii	"_temp_3069\0"
	.align
_Label_3141:
	.byte	'C'
	.ascii	"_temp_3066\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3143:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3144:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3145:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3146:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3147:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3148
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3148:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3149
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3149:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3508:
	push	r0
	sub	r1,1,r1
	bne	_Label_3508
	mov	2926,r13		! source line 2926
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
	mov	2928,r13		! source line 2928
	mov	"\0\0SE",r10
!   _temp_3150 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_3151
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3153
	.word	-12
	.word	4
	.word	0
_Label_3151:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3152:
	.ascii	"Pself\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3509:
	push	r0
	sub	r1,1,r1
	bne	_Label_3509
	mov	2936,r13		! source line 2936
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3154 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3154  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2937,r13		! source line 2937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2938,r13		! source line 2938
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3155 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3155  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2939,r13		! source line 2939
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2940,r13		! source line 2940
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3156 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3156  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2941,r13		! source line 2941
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2942,r13		! source line 2942
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3157 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3157  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2943,r13		! source line 2943
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2944,r13		! source line 2944
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3158 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3158  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2945,r13		! source line 2945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2946,r13		! source line 2946
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3159 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3159  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2947,r13		! source line 2947
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2948,r13		! source line 2948
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2949,r13		! source line 2949
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_3160
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3161
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3162
	.word	-12
	.word	4
	.word	_Label_3163
	.word	-16
	.word	4
	.word	_Label_3164
	.word	-20
	.word	4
	.word	_Label_3165
	.word	-24
	.word	4
	.word	_Label_3166
	.word	-28
	.word	4
	.word	_Label_3167
	.word	-32
	.word	4
	.word	0
_Label_3160:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3161:
	.ascii	"Pself\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3168
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3168:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3169
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3169:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3510:
	push	r0
	sub	r1,1,r1
	bne	_Label_3510
	mov	2960,r13		! source line 2960
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3170 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3170  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2961,r13		! source line 2961
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2962,r13		! source line 2962
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3171 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3171  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2963,r13		! source line 2963
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2964,r13		! source line 2964
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3173		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3173
!	jmp	_Label_3172
_Label_3172:
! THEN...
	mov	2965,r13		! source line 2965
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2965,r13		! source line 2965
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_3174
_Label_3173:
! ELSE...
	mov	2967,r13		! source line 2967
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3175 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3175  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2967,r13		! source line 2967
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3174:
! RETURN STATEMENT...
	mov	2964,r13		! source line 2964
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_3176
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3177
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3178
	.word	-12
	.word	4
	.word	_Label_3179
	.word	-16
	.word	4
	.word	_Label_3180
	.word	-20
	.word	4
	.word	0
_Label_3176:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3177:
	.ascii	"Pself\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3511:
	push	r0
	sub	r1,1,r1
	bne	_Label_3511
	mov	2973,r13		! source line 2973
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0SE",r10
!   _temp_3181 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3182 = _temp_3181 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2984,r13		! source line 2984
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
!   _temp_3183 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3184 = _temp_3183 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0RE",r10
	mov	2987,r13		! source line 2987
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3187 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3186  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_3185  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3185  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_3188
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3189
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3190
	.word	12
	.word	4
	.word	_Label_3191
	.word	16
	.word	4
	.word	_Label_3192
	.word	-16
	.word	4
	.word	_Label_3193
	.word	-20
	.word	4
	.word	_Label_3194
	.word	-9
	.word	1
	.word	_Label_3195
	.word	-24
	.word	4
	.word	_Label_3196
	.word	-28
	.word	4
	.word	_Label_3197
	.word	-32
	.word	4
	.word	_Label_3198
	.word	-36
	.word	4
	.word	_Label_3199
	.word	-40
	.word	4
	.word	0
_Label_3188:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3189:
	.ascii	"Pself\0"
	.align
_Label_3190:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3191:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3187\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3194:
	.byte	'C'
	.ascii	"_temp_3185\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3199:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3512:
	push	r0
	sub	r1,1,r1
	bne	_Label_3512
	mov	2992,r13		! source line 2992
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2997,r13		! source line 2997
	mov	"\0\0IF",r10
	mov	2997,r13		! source line 2997
	mov	"\0\0SE",r10
!   _temp_3203 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3204) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3203  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3202  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3202 then goto _Label_3201 else goto _Label_3200
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3200
	jmp	_Label_3201
_Label_3200:
! THEN...
	mov	2998,r13		! source line 2998
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3205 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3205  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2998,r13		! source line 2998
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3201:
! RETURN STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_3206
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3207
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3208
	.word	-16
	.word	4
	.word	_Label_3209
	.word	-20
	.word	4
	.word	_Label_3210
	.word	-24
	.word	4
	.word	_Label_3211
	.word	-9
	.word	1
	.word	_Label_3212
	.word	-28
	.word	4
	.word	0
_Label_3206:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3207:
	.ascii	"Pself\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3211:
	.byte	'C'
	.ascii	"_temp_3202\0"
	.align
_Label_3212:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3513:
	push	r0
	sub	r1,1,r1
	bne	_Label_3513
	mov	3005,r13		! source line 3005
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3031,r13		! source line 3031
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3216 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3215 = *_temp_3216  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3215) then goto _Label_3214
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3214
!	jmp	_Label_3213
_Label_3213:
! THEN...
	mov	3032,r13		! source line 3032
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3217 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3217  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3032,r13		! source line 3032
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3214:
! IF STATEMENT...
	mov	3036,r13		! source line 3036
	mov	"\0\0IF",r10
	mov	3036,r13		! source line 3036
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3221) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3220  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3220 == 1112300152 then goto _Label_3219		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3219
!	jmp	_Label_3218
_Label_3218:
! THEN...
	mov	3037,r13		! source line 3037
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3222 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3222  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3037,r13		! source line 3037
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3219:
! ASSIGNMENT STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0AS",r10
	mov	3042,r13		! source line 3042
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3223) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	3043,r13		! source line 3043
	mov	"\0\0AS",r10
	mov	3043,r13		! source line 3043
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3224) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0AS",r10
	mov	3044,r13		! source line 3044
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3225) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	3045,r13		! source line 3045
	mov	"\0\0AS",r10
	mov	3045,r13		! source line 3045
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3226) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0AS",r10
	mov	3046,r13		! source line 3046
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3227) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	3047,r13		! source line 3047
	mov	"\0\0AS",r10
	mov	3047,r13		! source line 3047
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3228) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0IF",r10
!   _temp_3231 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3231) then goto _Label_3230
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3230
!	jmp	_Label_3229
_Label_3229:
! THEN...
	mov	3051,r13		! source line 3051
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3232 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3232  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3051,r13		! source line 3051
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3230:
! ASSIGNMENT STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3234
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3234
!	jmp	_Label_3233
_Label_3233:
! THEN...
	mov	3059,r13		! source line 3059
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3235 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3235  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3059,r13		! source line 3059
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3234:
! IF STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0IF",r10
!   _temp_3238 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3238) then goto _Label_3237
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3237
!	jmp	_Label_3236
_Label_3236:
! THEN...
	mov	3065,r13		! source line 3065
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3239 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3239  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3065,r13		! source line 3065
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3066,r13		! source line 3066
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3237:
! IF STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0IF",r10
!   _temp_3242 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3242 then goto _Label_3241		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3241
!	jmp	_Label_3240
_Label_3240:
! THEN...
	mov	3069,r13		! source line 3069
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3243 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3243  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3069,r13		! source line 3069
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3241:
! ASSIGNMENT STATEMENT...
	mov	3072,r13		! source line 3072
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	3075,r13		! source line 3075
	mov	"\0\0IF",r10
!   _temp_3246 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3246) then goto _Label_3245
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3245
!	jmp	_Label_3244
_Label_3244:
! THEN...
	mov	3076,r13		! source line 3076
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3247 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3247  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3076,r13		! source line 3076
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3245:
! IF STATEMENT...
	mov	3079,r13		! source line 3079
	mov	"\0\0IF",r10
!   _temp_3250 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3250 then goto _Label_3249		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3249
!	jmp	_Label_3248
_Label_3248:
! THEN...
	mov	3080,r13		! source line 3080
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3251 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3251  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3080,r13		! source line 3080
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3081,r13		! source line 3081
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3249:
! ASSIGNMENT STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0AS",r10
!   _temp_3254 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3253 = _temp_3254 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3252 = _temp_3253 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3252 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3101,r13		! source line 3101
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3256		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3256
!	jmp	_Label_3255
_Label_3255:
! THEN...
	mov	3102,r13		! source line 3102
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3257 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3257  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3102,r13		! source line 3102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3258 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3258  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3103,r13		! source line 3103
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3259 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3259  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3104,r13		! source line 3104
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3105,r13		! source line 3105
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3256:
! SEND STATEMENT...
	mov	3107,r13		! source line 3107
	mov	"\0\0SE",r10
!   _temp_3260 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0IF",r10
	mov	3113,r13		! source line 3113
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3264) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3263  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3263 == 707406378 then goto _Label_3262		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3262
!	jmp	_Label_3261
_Label_3261:
! THEN...
	mov	3114,r13		! source line 3114
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3265 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3265  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3114,r13		! source line 3114
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0SE",r10
!   _temp_3266 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3116,r13		! source line 3116
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3262:
! ASSIGNMENT STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	3121,r13		! source line 3121
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3271 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3272 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3271  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3267:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3272 then goto _Label_3270		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3270
_Label_3268:
	mov	3121,r13		! source line 3121
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0AS",r10
	mov	3122,r13		! source line 3122
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
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
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0IF",r10
	mov	3125,r13		! source line 3125
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3276) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3275  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3275 then goto _Label_3274 else goto _Label_3273
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3273
	jmp	_Label_3274
_Label_3273:
! THEN...
	mov	3126,r13		! source line 3126
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3277 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3277  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3126,r13		! source line 3126
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3127,r13		! source line 3127
	mov	"\0\0SE",r10
!   _temp_3278 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3128,r13		! source line 3128
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3274:
! SEND STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3269:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3267
! END FOR
_Label_3270:
! IF STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0IF",r10
	mov	3135,r13		! source line 3135
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3282) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3281  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3281 == 707406378 then goto _Label_3280		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3280
!	jmp	_Label_3279
_Label_3279:
! THEN...
	mov	3136,r13		! source line 3136
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3283 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3283  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3136,r13		! source line 3136
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3137,r13		! source line 3137
	mov	"\0\0SE",r10
!   _temp_3284 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3138,r13		! source line 3138
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3280:
! FOR STATEMENT...
	mov	3142,r13		! source line 3142
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3289 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3290 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3289  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3285:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3290 then goto _Label_3288		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3288
_Label_3286:
	mov	3142,r13		! source line 3142
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0AS",r10
	mov	3143,r13		! source line 3143
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
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
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3146,r13		! source line 3146
	mov	"\0\0IF",r10
	mov	3146,r13		! source line 3146
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3294) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_3293  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3293 then goto _Label_3292 else goto _Label_3291
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3291
	jmp	_Label_3292
_Label_3291:
! THEN...
	mov	3147,r13		! source line 3147
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3295 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3295  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3147,r13		! source line 3147
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3148,r13		! source line 3148
	mov	"\0\0SE",r10
!   _temp_3296 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3149,r13		! source line 3149
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3292:
! ASSIGNMENT STATEMENT...
	mov	3151,r13		! source line 3151
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3287:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3285
! END FOR
_Label_3288:
! IF STATEMENT...
	mov	3155,r13		! source line 3155
	mov	"\0\0IF",r10
	mov	3155,r13		! source line 3155
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3300) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_3299  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3299 == 707406378 then goto _Label_3298		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3298
!	jmp	_Label_3297
_Label_3297:
! THEN...
	mov	3156,r13		! source line 3156
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3301 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3301  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3156,r13		! source line 3156
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3157,r13		! source line 3157
	mov	"\0\0SE",r10
!   _temp_3302 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3298:
! ASSIGNMENT STATEMENT...
	mov	3162,r13		! source line 3162
	mov	"\0\0AS",r10
	mov	3162,r13		! source line 3162
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
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
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3166,r13		! source line 3166
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3169,r13		! source line 3169
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_3303
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3305
	.word	12
	.word	4
	.word	_Label_3306
	.word	-16
	.word	4
	.word	_Label_3307
	.word	-20
	.word	4
	.word	_Label_3308
	.word	-24
	.word	4
	.word	_Label_3309
	.word	-28
	.word	4
	.word	_Label_3310
	.word	-32
	.word	4
	.word	_Label_3311
	.word	-36
	.word	4
	.word	_Label_3312
	.word	-40
	.word	4
	.word	_Label_3313
	.word	-9
	.word	1
	.word	_Label_3314
	.word	-44
	.word	4
	.word	_Label_3315
	.word	-48
	.word	4
	.word	_Label_3316
	.word	-52
	.word	4
	.word	_Label_3317
	.word	-56
	.word	4
	.word	_Label_3318
	.word	-60
	.word	4
	.word	_Label_3319
	.word	-64
	.word	4
	.word	_Label_3320
	.word	-68
	.word	4
	.word	_Label_3321
	.word	-72
	.word	4
	.word	_Label_3322
	.word	-76
	.word	4
	.word	_Label_3323
	.word	-10
	.word	1
	.word	_Label_3324
	.word	-80
	.word	4
	.word	_Label_3325
	.word	-84
	.word	4
	.word	_Label_3326
	.word	-88
	.word	4
	.word	_Label_3327
	.word	-92
	.word	4
	.word	_Label_3328
	.word	-96
	.word	4
	.word	_Label_3329
	.word	-100
	.word	4
	.word	_Label_3330
	.word	-104
	.word	4
	.word	_Label_3331
	.word	-108
	.word	4
	.word	_Label_3332
	.word	-112
	.word	4
	.word	_Label_3333
	.word	-116
	.word	4
	.word	_Label_3334
	.word	-120
	.word	4
	.word	_Label_3335
	.word	-124
	.word	4
	.word	_Label_3336
	.word	-128
	.word	4
	.word	_Label_3337
	.word	-132
	.word	4
	.word	_Label_3338
	.word	-136
	.word	4
	.word	_Label_3339
	.word	-140
	.word	4
	.word	_Label_3340
	.word	-144
	.word	4
	.word	_Label_3341
	.word	-148
	.word	4
	.word	_Label_3342
	.word	-152
	.word	4
	.word	_Label_3343
	.word	-156
	.word	4
	.word	_Label_3344
	.word	-160
	.word	4
	.word	_Label_3345
	.word	-164
	.word	4
	.word	_Label_3346
	.word	-168
	.word	4
	.word	_Label_3347
	.word	-172
	.word	4
	.word	_Label_3348
	.word	-176
	.word	4
	.word	_Label_3349
	.word	-180
	.word	4
	.word	_Label_3350
	.word	-184
	.word	4
	.word	_Label_3351
	.word	-188
	.word	4
	.word	_Label_3352
	.word	-192
	.word	4
	.word	_Label_3353
	.word	-196
	.word	4
	.word	_Label_3354
	.word	-200
	.word	4
	.word	_Label_3355
	.word	-204
	.word	4
	.word	_Label_3356
	.word	-208
	.word	4
	.word	_Label_3357
	.word	-212
	.word	4
	.word	_Label_3358
	.word	-216
	.word	4
	.word	_Label_3359
	.word	-220
	.word	4
	.word	_Label_3360
	.word	-224
	.word	4
	.word	_Label_3361
	.word	-228
	.word	4
	.word	_Label_3362
	.word	-232
	.word	4
	.word	_Label_3363
	.word	-236
	.word	4
	.word	_Label_3364
	.word	-240
	.word	4
	.word	_Label_3365
	.word	-244
	.word	4
	.word	_Label_3366
	.word	-248
	.word	4
	.word	_Label_3367
	.word	-252
	.word	4
	.word	_Label_3368
	.word	-256
	.word	4
	.word	_Label_3369
	.word	-260
	.word	4
	.word	_Label_3370
	.word	-264
	.word	4
	.word	_Label_3371
	.word	-268
	.word	4
	.word	0
_Label_3303:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3304:
	.ascii	"Pself\0"
	.align
_Label_3305:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3294\0"
	.align
_Label_3313:
	.byte	'C'
	.ascii	"_temp_3293\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3290\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3283\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3282\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3323:
	.byte	'C'
	.ascii	"_temp_3275\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3266\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3254\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3339:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3340:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3342:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3343:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3344:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3345:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3346:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3360:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3361:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3362:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3363:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3364:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3365:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3366:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3367:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3368:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3369:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3370:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3371:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
