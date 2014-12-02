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
! The following class and its methods are from this package
	.export	_P_Kernel_SerialDriver
	.export	_Method_P_Kernel_SerialDriver_1
	.export	_Method_P_Kernel_SerialDriver_2
	.export	_Method_P_Kernel_SerialDriver_3
	.export	_Method_P_Kernel_SerialDriver_4
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
	.export	_P_Kernel_serialDriver
	.export	_P_Kernel_serialHasBeenInitialized
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
_P_Kernel_serialDriver:
	.skip	4308
_P_Kernel_fileManager:
	.skip	800
_P_Kernel_serialHasBeenInitialized:
	.skip	1
	.align
! String constants
_StringConst_197:
	.word	14			! length
	.ascii	"\' was ignored\n"
	.align
_StringConst_196:
	.word	42			! length
	.ascii	"\nSerial input buffer overrun - character \'"
	.align
_StringConst_195:
	.word	19			! length
	.ascii	"serialHandlerThread"
	.align
_StringConst_194:
	.word	29			! length
	.ascii	"Initializing Serial Driver..."
	.align
_StringConst_193:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_192:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_191:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_190:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_189:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_188:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_187:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_186:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_185:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_184:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_183:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_182:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_181:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_180:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_179:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_178:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_177:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_176:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_175:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_174:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_173:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_172:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_171:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_170:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_169:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_168:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_167:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_166:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_165:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_164:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_163:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_162:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_161:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_160:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_159:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_158:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_157:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_156:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_155:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_154:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_153:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_152:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_151:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_150:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_149:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_148:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_147:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_146:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_145:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_144:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_143:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_142:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_141:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_140:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_137:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_135:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_134:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_132:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_131:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_130:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_129:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_128:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_127:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_126:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_122:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_121:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_120:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_119:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_118:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_117:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_116:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_115:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_114:
	.word	12			! length
	.ascii	"Never called"
	.align
_StringConst_113:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_112:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_111:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_110:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_109:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_108:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_107:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_106:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_105:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_104:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_103:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_102:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_101:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_100:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_99:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_98:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_97:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_96:
	.word	32			! length
	.ascii	"Trying to Free an Invalid Thread"
	.align
_StringConst_95:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_94:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_92:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_91:
	.word	8			! length
	.ascii	"thread_9"
	.align
_StringConst_90:
	.word	8			! length
	.ascii	"thread_8"
	.align
_StringConst_89:
	.word	8			! length
	.ascii	"thread_7"
	.align
_StringConst_88:
	.word	8			! length
	.ascii	"thread_6"
	.align
_StringConst_87:
	.word	8			! length
	.ascii	"thread_5"
	.align
_StringConst_86:
	.word	8			! length
	.ascii	"thread_4"
	.align
_StringConst_85:
	.word	8			! length
	.ascii	"thread_3"
	.align
_StringConst_84:
	.word	8			! length
	.ascii	"thread_2"
	.align
_StringConst_83:
	.word	8			! length
	.ascii	"thread_1"
	.align
_StringConst_82:
	.word	8			! length
	.ascii	"thread_0"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_80:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_79:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_78:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_77:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_73:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_71:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_70:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_69:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_68:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_67:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_66:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_65:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_64:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_63:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_61:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_60:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_59:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_58:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_57:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_56:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_55:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_54:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_53:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_51:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_50:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_48:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_47:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_46:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_45:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_44:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_43:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_42:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_41:
	.word	8			! length
	.ascii	"terminal"
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
	.ascii	"ERROR: Cannot open \'TestProgram5\'."
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram5"
	.align
_StringConst_24:
	.word	12			! length
	.ascii	"TestProgram5"
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
	set	0xdfa5e74d,r4		! myHashVal = -542775475
	cmp	r3,r4
	be	_Label_209
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
_Label_209:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_210
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_210
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_210
_Label_210:
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
_Label_4035:
	push	r0
	sub	r1,1,r1
	bne	_Label_4035
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_211 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_211  sizeInBytes=4
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
_Label_4036:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4036
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_215 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_216 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
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
!   _temp_217 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_218 = _temp_217 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_218 = 3  (sizeInBytes=4)
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
_Label_4037:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4037
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_220 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_221 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_220  sizeInBytes=4
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
!   _temp_222 = _function_208_IdleFunction
	set	_function_208_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_223 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_222  sizeInBytes=4
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
	.word	_Label_224
	.word	0		! total size of parameters
	.word	64		! frame size = 64
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
	.word	_Label_229
	.word	-28
	.word	4
	.word	_Label_230
	.word	-32
	.word	4
	.word	_Label_231
	.word	-36
	.word	4
	.word	_Label_232
	.word	-40
	.word	4
	.word	_Label_233
	.word	-44
	.word	4
	.word	_Label_234
	.word	-48
	.word	4
	.word	_Label_235
	.word	-52
	.word	4
	.word	_Label_236
	.word	-56
	.word	4
	.word	_Label_237
	.word	-60
	.word	4
	.word	0
_Label_224:
	.ascii	"InitializeScheduler\0"
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
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_208_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_208_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_4038:
	push	r0
	sub	r1,1,r1
	bne	_Label_4038
	mov	34,r13		! source line 34
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0WH",r10
_Label_238:
!	jmp	_Label_239
_Label_239:
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
!   _temp_243 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_241 else goto _Label_242
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_242
	jmp	_Label_241
_Label_241:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_244
_Label_242:
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
_Label_244:
! END WHILE...
	jmp	_Label_238
_Label_240:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_208_IdleFunction:
	.word	_sourceFileName
	.word	_Label_245
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_246
	.word	8
	.word	4
	.word	_Label_247
	.word	-12
	.word	4
	.word	_Label_248
	.word	-16
	.word	4
	.word	0
_Label_245:
	.ascii	"IdleFunction\0"
	.align
_Label_246:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_248:
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
_Label_4039:
	push	r0
	sub	r1,1,r1
	bne	_Label_4039
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
!   _temp_251 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_251 ) then goto _Label_250		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_250
!	jmp	_Label_249
_Label_249:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_253 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_253 [0 ] into _temp_254
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
!   _temp_252 = _temp_254		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_250:
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
!   _temp_255 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_255 = 3  (sizeInBytes=4)
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
_Label_256:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_260 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_259  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_259 then goto _Label_258 else goto _Label_257
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_257
	jmp	_Label_258
_Label_257:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_261 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_262 = &_P_Kernel_threadManager
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
	jmp	_Label_256
_Label_258:
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_265 ) then goto _Label_264		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_264
!	jmp	_Label_263
_Label_263:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_267 [0 ] into _temp_268
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
!   _temp_266 = _temp_268		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
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
!   _temp_270 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_269 = *_temp_270  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_269) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = _temp_269 + 32
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
_Label_264:
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
	.word	_Label_272
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_273
	.word	8
	.word	4
	.word	_Label_274
	.word	-16
	.word	4
	.word	_Label_275
	.word	-20
	.word	4
	.word	_Label_276
	.word	-24
	.word	4
	.word	_Label_277
	.word	-28
	.word	4
	.word	_Label_278
	.word	-32
	.word	4
	.word	_Label_279
	.word	-36
	.word	4
	.word	_Label_280
	.word	-40
	.word	4
	.word	_Label_281
	.word	-44
	.word	4
	.word	_Label_282
	.word	-48
	.word	4
	.word	_Label_283
	.word	-52
	.word	4
	.word	_Label_284
	.word	-9
	.word	1
	.word	_Label_285
	.word	-56
	.word	4
	.word	_Label_286
	.word	-60
	.word	4
	.word	_Label_287
	.word	-64
	.word	4
	.word	_Label_288
	.word	-68
	.word	4
	.word	_Label_289
	.word	-72
	.word	4
	.word	_Label_290
	.word	-76
	.word	4
	.word	_Label_291
	.word	-80
	.word	4
	.word	0
_Label_272:
	.ascii	"Run\0"
	.align
_Label_273:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_284:
	.byte	'C'
	.ascii	"_temp_259\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_291:
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
_Label_4040:
	push	r0
	sub	r1,1,r1
	bne	_Label_4040
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
!   _temp_292 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_292  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_293 = _function_207_ThreadPrintShort
	set	_function_207_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_294 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_293  sizeInBytes=4
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
	.word	_Label_295
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_296
	.word	-12
	.word	4
	.word	_Label_297
	.word	-16
	.word	4
	.word	_Label_298
	.word	-20
	.word	4
	.word	_Label_299
	.word	-24
	.word	4
	.word	0
_Label_295:
	.ascii	"PrintReadyList\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_299:
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
_Label_4041:
	push	r0
	sub	r1,1,r1
	bne	_Label_4041
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
!   _temp_300 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_300  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_301 = *_temp_302  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_301  sizeInBytes=4
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
!   _temp_303 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_303  sizeInBytes=4
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
	.word	_Label_304
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_305
	.word	-12
	.word	4
	.word	_Label_306
	.word	-16
	.word	4
	.word	_Label_307
	.word	-20
	.word	4
	.word	_Label_308
	.word	-24
	.word	4
	.word	_Label_309
	.word	-28
	.word	4
	.word	_Label_310
	.word	-32
	.word	4
	.word	0
_Label_304:
	.ascii	"ThreadStartMain\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_309:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_310:
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
_Label_4042:
	push	r0
	sub	r1,1,r1
	bne	_Label_4042
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
!   _temp_311 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_312 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
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
	.word	_Label_313
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_314
	.word	-12
	.word	4
	.word	_Label_315
	.word	-16
	.word	4
	.word	_Label_316
	.word	-20
	.word	4
	.word	0
_Label_313:
	.ascii	"ThreadFinish\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_316:
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
_Label_4043:
	push	r0
	sub	r1,1,r1
	bne	_Label_4043
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
!   _temp_317 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_319		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_319
!	jmp	_Label_318
_Label_318:
! THEN...
	mov	169,r13		! source line 169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_320 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
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
!   _temp_322 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_319:
! CALL STATEMENT...
!   _temp_323 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
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
!   _temp_324 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_325 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
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
	.word	_Label_326
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_327
	.word	8
	.word	4
	.word	_Label_328
	.word	-12
	.word	4
	.word	_Label_329
	.word	-16
	.word	4
	.word	_Label_330
	.word	-20
	.word	4
	.word	_Label_331
	.word	-24
	.word	4
	.word	_Label_332
	.word	-28
	.word	4
	.word	_Label_333
	.word	-32
	.word	4
	.word	_Label_334
	.word	-36
	.word	4
	.word	_Label_335
	.word	-40
	.word	4
	.word	0
_Label_326:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_327:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_335:
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
_Label_4044:
	push	r0
	sub	r1,1,r1
	bne	_Label_4044
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
!   if newStatus != 1 then goto _Label_337		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_337
!	jmp	_Label_336
_Label_336:
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
	jmp	_Label_338
_Label_337:
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
_Label_338:
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
	.word	_Label_339
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_340
	.word	8
	.word	4
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_339:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_340:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_341:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_207_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_207_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_4045:
	push	r0
	sub	r1,1,r1
	bne	_Label_4045
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
!   if t == 0 then goto _Label_345		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_345
!   _temp_344 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_346
_Label_345:
!   _temp_344 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_346:
!   if _temp_344 then goto _Label_343 else goto _Label_342
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_342
	jmp	_Label_343
_Label_342:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_347 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
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
_Label_343:
! CALL STATEMENT...
!   _temp_348 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_348  sizeInBytes=4
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
!   _temp_350 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_349  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_351 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
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
!   _temp_360 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_354
	cmp	r1,2
	be	_Label_355
	cmp	r1,3
	be	_Label_356
	cmp	r1,4
	be	_Label_357
	cmp	r1,5
	be	_Label_358
	jmp	_Label_352
! CASE 1...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 2...
_Label_355:
! CALL STATEMENT...
!   _temp_362 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 3...
_Label_356:
! CALL STATEMENT...
!   _temp_363 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 4...
_Label_357:
! CALL STATEMENT...
!   _temp_364 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0BR",r10
	jmp	_Label_353
! CASE 5...
_Label_358:
! CALL STATEMENT...
!   _temp_365 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0BR",r10
	jmp	_Label_353
! DEFAULT CASE...
_Label_352:
! CALL STATEMENT...
!   _temp_366 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
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
_Label_353:
! CALL STATEMENT...
!   _temp_367 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_368 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_369 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
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
_RoutineDescriptor__function_207_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_370
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_371
	.word	8
	.word	4
	.word	_Label_372
	.word	-16
	.word	4
	.word	_Label_373
	.word	-20
	.word	4
	.word	_Label_374
	.word	-24
	.word	4
	.word	_Label_375
	.word	-28
	.word	4
	.word	_Label_376
	.word	-32
	.word	4
	.word	_Label_377
	.word	-36
	.word	4
	.word	_Label_378
	.word	-40
	.word	4
	.word	_Label_379
	.word	-44
	.word	4
	.word	_Label_380
	.word	-48
	.word	4
	.word	_Label_381
	.word	-52
	.word	4
	.word	_Label_382
	.word	-56
	.word	4
	.word	_Label_383
	.word	-60
	.word	4
	.word	_Label_384
	.word	-64
	.word	4
	.word	_Label_385
	.word	-68
	.word	4
	.word	_Label_386
	.word	-72
	.word	4
	.word	_Label_387
	.word	-76
	.word	4
	.word	_Label_388
	.word	-9
	.word	1
	.word	_Label_389
	.word	-80
	.word	4
	.word	0
_Label_370:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_371:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_388:
	.byte	'C'
	.ascii	"_temp_344\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_206_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_206_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_4046:
	push	r0
	sub	r1,1,r1
	bne	_Label_4046
	mov	1103,r13		! source line 1103
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_390 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_390  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1107,r13		! source line 1107
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1108,r13		! source line 1108
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_206_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_391
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_392
	.word	8
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	0
_Label_391:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_392:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_390\0"
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
_Label_4047:
	push	r0
	sub	r1,1,r1
	bne	_Label_4047
	mov	1113,r13		! source line 1113
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_394 = *_temp_395  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_394) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_396 = _temp_394 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_396 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_397 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: proc = *_temp_397  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1133,r13		! source line 1133
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_398 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_398 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1134,r13		! source line 1134
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_399 = proc + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_399 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-52],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_400 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_400 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! FOR STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_405 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_406 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_405  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-84]
_Label_401:
!   Perform the FOR-LOOP termination test
!   if i > _temp_406 then goto _Label_404		
	load	[r14+-84],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_404
_Label_402:
	mov	1138,r13		! source line 1138
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_407 = proc + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_407 [i ] into _temp_408
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
!   Data Move: open = *_temp_408  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_410
	load	[r14+-88],r1
	cmp	r1,r0
	be	_Label_410
!	jmp	_Label_409
_Label_409:
! THEN...
	mov	1141,r13		! source line 1141
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0SE",r10
!   _temp_411 = &_P_Kernel_fileManager
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
_Label_410:
!   Increment the FOR-LOOP index variable and jump back
_Label_403:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_401
! END FOR
_Label_404:
! ASSIGNMENT STATEMENT...
	mov	1146,r13		! source line 1146
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1146,r13		! source line 1146
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_413 = proc + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_412 = _temp_413		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_414 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_412  sizeInBytes=4
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
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_415 = &_P_Kernel_processManager
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
	mov	1153,r13		! source line 1153
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1153,r13		! source line 1153
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
	.word	_Label_416
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_417
	.word	8
	.word	4
	.word	_Label_418
	.word	-12
	.word	4
	.word	_Label_419
	.word	-16
	.word	4
	.word	_Label_420
	.word	-20
	.word	4
	.word	_Label_421
	.word	-24
	.word	4
	.word	_Label_422
	.word	-28
	.word	4
	.word	_Label_423
	.word	-32
	.word	4
	.word	_Label_424
	.word	-36
	.word	4
	.word	_Label_425
	.word	-40
	.word	4
	.word	_Label_426
	.word	-44
	.word	4
	.word	_Label_427
	.word	-48
	.word	4
	.word	_Label_428
	.word	-52
	.word	4
	.word	_Label_429
	.word	-56
	.word	4
	.word	_Label_430
	.word	-60
	.word	4
	.word	_Label_431
	.word	-64
	.word	4
	.word	_Label_432
	.word	-68
	.word	4
	.word	_Label_433
	.word	-72
	.word	4
	.word	_Label_434
	.word	-76
	.word	4
	.word	_Label_435
	.word	-80
	.word	4
	.word	_Label_436
	.word	-84
	.word	4
	.word	_Label_437
	.word	-88
	.word	4
	.word	0
_Label_416:
	.ascii	"ProcessFinish\0"
	.align
_Label_417:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_434:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_436:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_437:
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
_Label_4048:
	push	r0
	sub	r1,1,r1
	bne	_Label_4048
	mov	1158,r13		! source line 1158
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_438 = &_P_Kernel_threadManager
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
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_439 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_439  sizeInBytes=4
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
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_440 = _function_205_StartUserProcess
	set	_function_205_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_441 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_440  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_441  sizeInBytes=4
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
	mov	1164,r13		! source line 1164
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
	.word	_Label_442
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_443
	.word	-12
	.word	4
	.word	_Label_444
	.word	-16
	.word	4
	.word	_Label_445
	.word	-20
	.word	4
	.word	_Label_446
	.word	-24
	.word	4
	.word	_Label_447
	.word	-28
	.word	4
	.word	0
_Label_442:
	.ascii	"InitFirstProcess\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_447:
	.byte	'P'
	.ascii	"ptrThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_205_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_205_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_4049:
	push	r0
	sub	r1,1,r1
	bne	_Label_4049
	mov	1171,r13		! source line 1171
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0AS",r10
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   _temp_448 = &_P_Kernel_processManager
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
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = ptrToPCB + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_449 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_450 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_450 = ptrToPCB  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0AS",r10
	mov	1194,r13		! source line 1194
	mov	"\0\0SE",r10
!   _temp_451 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_452 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_451  sizeInBytes=4
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
	mov	1196,r13		! source line 1196
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_453
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_453
	jmp	_Label_454
_Label_453:
! THEN...
	mov	1197,r13		! source line 1197
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_455 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1197,r13		! source line 1197
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_454:
! ASSIGNMENT STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0AS",r10
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_456 = _temp_457		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (ptrOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_456  sizeInBytes=4
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
	mov	1204,r13		! source line 1204
	mov	"\0\0SE",r10
!   _temp_458 = &_P_Kernel_fileManager
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
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_460 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_461 = _temp_460 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_459 = *_temp_461  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_459 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_462 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_462 [999 ] into _temp_463
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
!   ptrInitSystemStackTop = _temp_463		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1210,r13		! source line 1210
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! SEND STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_464 = ptrToPCB + 32
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
	mov	1212,r13		! source line 1212
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_465 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_465 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_466 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_466  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1213,r13		! source line 1213
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1213,r13		! source line 1213
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_205_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_467
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_468
	.word	8
	.word	4
	.word	_Label_469
	.word	-12
	.word	4
	.word	_Label_470
	.word	-16
	.word	4
	.word	_Label_471
	.word	-20
	.word	4
	.word	_Label_472
	.word	-24
	.word	4
	.word	_Label_473
	.word	-28
	.word	4
	.word	_Label_474
	.word	-32
	.word	4
	.word	_Label_475
	.word	-36
	.word	4
	.word	_Label_476
	.word	-40
	.word	4
	.word	_Label_477
	.word	-44
	.word	4
	.word	_Label_478
	.word	-48
	.word	4
	.word	_Label_479
	.word	-52
	.word	4
	.word	_Label_480
	.word	-56
	.word	4
	.word	_Label_481
	.word	-60
	.word	4
	.word	_Label_482
	.word	-64
	.word	4
	.word	_Label_483
	.word	-68
	.word	4
	.word	_Label_484
	.word	-72
	.word	4
	.word	_Label_485
	.word	-76
	.word	4
	.word	_Label_486
	.word	-80
	.word	4
	.word	_Label_487
	.word	-84
	.word	4
	.word	_Label_488
	.word	-88
	.word	4
	.word	_Label_489
	.word	-92
	.word	4
	.word	_Label_490
	.word	-96
	.word	4
	.word	_Label_491
	.word	-100
	.word	4
	.word	0
_Label_467:
	.ascii	"StartUserProcess\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_486:
	.byte	'P'
	.ascii	"ptrOpenFile\0"
	.align
_Label_487:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_488:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_489:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_491:
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
_Label_4050:
	push	r0
	sub	r1,1,r1
	bne	_Label_4050
	mov	1728,r13		! source line 1728
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1740,r13		! source line 1740
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
	mov	1741,r13		! source line 1741
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1741,r13		! source line 1741
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
	.word	_Label_492
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_492:
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
_Label_4051:
	push	r0
	sub	r1,1,r1
	bne	_Label_4051
	mov	1745,r13		! source line 1745
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0IF",r10
!   _temp_496 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_497 = _temp_496 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_495 = *_temp_497  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_495 == 0 then goto _Label_494		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_494
!	jmp	_Label_493
_Label_493:
! THEN...
	mov	1760,r13		! source line 1760
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0SE",r10
!   _temp_499 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_500 = _temp_499 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_498 = *_temp_500  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_498) then goto _runtimeErrorNullPointer
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
_Label_494:
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
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
	.word	_Label_501
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_502
	.word	-12
	.word	4
	.word	_Label_503
	.word	-16
	.word	4
	.word	_Label_504
	.word	-20
	.word	4
	.word	_Label_505
	.word	-24
	.word	4
	.word	_Label_506
	.word	-28
	.word	4
	.word	_Label_507
	.word	-32
	.word	4
	.word	0
_Label_501:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_495\0"
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
	mov	3,r1
_Label_4052:
	push	r0
	sub	r1,1,r1
	bne	_Label_4052
	mov	1767,r13		! source line 1767
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_508 else goto _Label_509
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_509
	jmp	_Label_508
_Label_508:
! THEN...
	mov	1778,r13		! source line 1778
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0SE",r10
!   _temp_510 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_511 = _temp_510 + 124
	load	[r14+-16],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_509:
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_512
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_513
	.word	-12
	.word	4
	.word	_Label_514
	.word	-16
	.word	4
	.word	0
_Label_512:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_510\0"
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
_Label_4053:
	push	r0
	sub	r1,1,r1
	bne	_Label_4053
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
!   _temp_515 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_516
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_517
	.word	-12
	.word	4
	.word	0
_Label_516:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_515\0"
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
_Label_4054:
	push	r0
	sub	r1,1,r1
	bne	_Label_4054
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
!   _temp_518 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_518  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_519
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_520
	.word	-12
	.word	4
	.word	0
_Label_519:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_518\0"
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
_Label_4055:
	push	r0
	sub	r1,1,r1
	bne	_Label_4055
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
!   _temp_521 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_521  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_522
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_523
	.word	-12
	.word	4
	.word	0
_Label_522:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_521\0"
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
_Label_4056:
	push	r0
	sub	r1,1,r1
	bne	_Label_4056
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
!   _temp_524 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_525
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_526
	.word	-12
	.word	4
	.word	0
_Label_525:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_524\0"
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
_Label_4057:
	push	r0
	sub	r1,1,r1
	bne	_Label_4057
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
!   _temp_527 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_528
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_529
	.word	-12
	.word	4
	.word	0
_Label_528:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_527\0"
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
_Label_4058:
	push	r0
	sub	r1,1,r1
	bne	_Label_4058
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
!   _temp_530 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_530  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_531
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_532
	.word	-12
	.word	4
	.word	0
_Label_531:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_530\0"
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
_Label_4059:
	push	r0
	sub	r1,1,r1
	bne	_Label_4059
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
!   _temp_533 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_function_204_ErrorInUserProcess
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
	.word	_Label_534
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_535
	.word	-12
	.word	4
	.word	0
_Label_534:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_204_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_4060:
	push	r0
	sub	r1,1,r1
	bne	_Label_4060
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_536 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
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
!   _temp_537 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_537  sizeInBytes=4
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
!   _temp_541 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_540 = *_temp_541  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_540 == 0 then goto _Label_539		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_539
!	jmp	_Label_538
_Label_538:
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
!   _temp_543 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_542 = *_temp_543  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_542) then goto _runtimeErrorNullPointer
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
	jmp	_Label_544
_Label_539:
! ELSE...
	mov	1880,r13		! source line 1880
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_545 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_545  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_544:
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
_RoutineDescriptor__function_204_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_546
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_547
	.word	8
	.word	4
	.word	_Label_548
	.word	-12
	.word	4
	.word	_Label_549
	.word	-16
	.word	4
	.word	_Label_550
	.word	-20
	.word	4
	.word	_Label_551
	.word	-24
	.word	4
	.word	_Label_552
	.word	-28
	.word	4
	.word	_Label_553
	.word	-32
	.word	4
	.word	_Label_554
	.word	-36
	.word	4
	.word	0
_Label_546:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_547:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_536\0"
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
_Label_4061:
	push	r0
	sub	r1,1,r1
	bne	_Label_4061
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
	be	_Label_4062
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_555
_Label_4062:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_555
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_555
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_569,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_569:
	jmp	_Label_561	! 1:	
	jmp	_Label_568	! 2:	
	jmp	_Label_558	! 3:	
	jmp	_Label_557	! 4:	
	jmp	_Label_560	! 5:	
	jmp	_Label_559	! 6:	
	jmp	_Label_562	! 7:	
	jmp	_Label_563	! 8:	
	jmp	_Label_564	! 9:	
	jmp	_Label_565	! 10:	
	jmp	_Label_566	! 11:	
	jmp	_Label_567	! 12:	
! CASE 4...
_Label_557:
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_570  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_570  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_558:
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
_Label_559:
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
!   Retrieve Result: targetName=_temp_571  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_571  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_560:
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
!   Retrieve Result: targetName=_temp_572  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_572  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_561:
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
_Label_562:
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
!   Retrieve Result: targetName=_temp_573  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_573  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_563:
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
!   Retrieve Result: targetName=_temp_574  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_574  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_564:
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
!   Retrieve Result: targetName=_temp_575  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_575  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_565:
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
!   Retrieve Result: targetName=_temp_576  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_576  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_566:
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
!   Retrieve Result: targetName=_temp_577  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_577  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_567:
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
_Label_568:
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
_Label_555:
! CALL STATEMENT...
!   _temp_578 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_578  sizeInBytes=4
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
!   _temp_579 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_579  sizeInBytes=4
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
_Label_556:
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
	.word	_Label_580
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_581
	.word	8
	.word	4
	.word	_Label_582
	.word	12
	.word	4
	.word	_Label_583
	.word	16
	.word	4
	.word	_Label_584
	.word	20
	.word	4
	.word	_Label_585
	.word	24
	.word	4
	.word	_Label_586
	.word	-12
	.word	4
	.word	_Label_587
	.word	-16
	.word	4
	.word	_Label_588
	.word	-20
	.word	4
	.word	_Label_589
	.word	-24
	.word	4
	.word	_Label_590
	.word	-28
	.word	4
	.word	_Label_591
	.word	-32
	.word	4
	.word	_Label_592
	.word	-36
	.word	4
	.word	_Label_593
	.word	-40
	.word	4
	.word	_Label_594
	.word	-44
	.word	4
	.word	_Label_595
	.word	-48
	.word	4
	.word	0
_Label_580:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_581:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_582:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_583:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_584:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_570\0"
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
_Label_4063:
	push	r0
	sub	r1,1,r1
	bne	_Label_4063
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
	.word	_Label_596
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_597
	.word	8
	.word	4
	.word	0
_Label_596:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_597:
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
_Label_4064:
	push	r0
	sub	r1,1,r1
	bne	_Label_4064
	mov	1961,r13		! source line 1961
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_598 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
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
	.word	_Label_599
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_600
	.word	-12
	.word	4
	.word	0
_Label_599:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_598\0"
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
_Label_4065:
	push	r0
	sub	r1,1,r1
	bne	_Label_4065
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
	.word	_Label_601
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_601:
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
_Label_4066:
	push	r0
	sub	r1,1,r1
	bne	_Label_4066
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
!   _temp_602 = &_P_Kernel_processManager
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
!   _temp_603 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: oldPCB = *_temp_603  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   _temp_604 = &_P_Kernel_threadManager
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
!   _temp_605 = newPCB + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-248]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = oldPCB + 12
	load	[r14+-268],r1
	add	r1,12,r1
	store	r1,[r14+-240]
!   Data Move: _temp_606 = *_temp_607  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   Data Move: *_temp_605 = _temp_606  (sizeInBytes=4)
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
!   _temp_608 = newThread + 72
	load	[r14+-272],r1
	add	r1,72,r1
	store	r1,[r14+-236]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-228]
!   Data Move: _temp_609 = *_temp_610  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   Data Move: *_temp_608 = _temp_609  (sizeInBytes=4)
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
!   _temp_611 = newThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-224]
!   Data Move: *_temp_611 = newPCB  (sizeInBytes=4)
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
!   _temp_612 = newPCB + 24
	load	[r14+-264],r1
	add	r1,24,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_612 = newThread  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-220],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = newThread + 4096
	load	[r14+-272],r1
	add	r1,4096,r1
	store	r1,[r14+-212]
!   Move address of _temp_614 [0 ] into _temp_615
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
!   _temp_613 = _temp_615		(4 bytes)
	load	[r14+-208],r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_613  sizeInBytes=4
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
	mov	2015,r13		! source line 2015
	mov	"\0\0SE",r10
!   _temp_616 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-204]
!   _temp_617 = _temp_616 + 4
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
	mov	2016,r13		! source line 2016
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_622 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
!   Calculate and save the FOR-LOOP ending value
!   _temp_623 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-192]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_622  (sizeInBytes=4)
	load	[r14+-196],r1
	store	r1,[r14+-280]
_Label_618:
!   Perform the FOR-LOOP termination test
!   if i > _temp_623 then goto _Label_621		
	load	[r14+-280],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_621
_Label_619:
	mov	2016,r13		! source line 2016
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2017,r13		! source line 2017
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_624 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-188]
!   Move address of _temp_624 [i ] into _temp_625
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
!   _temp_627 = oldPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-176]
!   Move address of _temp_627 [i ] into _temp_628
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
!   Data Move: _temp_626 = *_temp_628  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_625 = _temp_626  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0IF",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_632 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-164]
!   Move address of _temp_632 [i ] into _temp_633
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
!   Data Move: _temp_631 = *_temp_633  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_631) then goto _Label_630
	load	[r14+-168],r1
	cmp	r1,r0
	be	_Label_630
!	jmp	_Label_629
_Label_629:
! THEN...
	mov	2019,r13		! source line 2019
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_635 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_635 [i ] into _temp_636
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
!   Data Move: _temp_634 = *_temp_636  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_634) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = _temp_634 + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-144]
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_641 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-128]
!   Move address of _temp_641 [i ] into _temp_642
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
!   Data Move: _temp_640 = *_temp_642  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_640) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = _temp_640 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-120]
!   Data Move: _temp_639 = *_temp_643  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   _temp_638 = _temp_639 + 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   Data Move: *_temp_637 = _temp_638  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! END IF...
_Label_630:
!   Increment the FOR-LOOP index variable and jump back
_Label_620:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_618
! END FOR
_Label_621:
! SEND STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0SE",r10
!   _temp_644 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-116]
!   _temp_645 = _temp_644 + 4
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
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = newThread + 68
	load	[r14+-272],r1
	add	r1,68,r1
	store	r1,[r14+-108]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_648 = newThread + 88
	load	[r14+-272],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_648 [999 ] into _temp_649
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
!   _temp_647 = _temp_649		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Data Move: *_temp_646 = _temp_647  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = newPCB + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_650 = _temp_651		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_654 = _temp_653 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_652 = *_temp_654  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_655 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_650  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_652  sizeInBytes=4
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
	mov	2032,r13		! source line 2032
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_660 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_663 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_664 = _temp_663 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Data Move: _temp_662 = *_temp_664  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_661 = _temp_662 - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_660  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-280]
_Label_656:
!   Perform the FOR-LOOP termination test
!   if i > _temp_661 then goto _Label_659		
	load	[r14+-280],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_659
_Label_657:
	mov	2032,r13		! source line 2032
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0IF",r10
	mov	2033,r13		! source line 2033
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_667 = oldPCB + 32
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
!   if result==true then goto _Label_665 else goto _Label_666
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_666
	jmp	_Label_665
_Label_665:
! THEN...
	mov	2034,r13		! source line 2034
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_668 = newPCB + 32
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
	jmp	_Label_669
_Label_666:
! ELSE...
	mov	2036,r13		! source line 2036
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = newPCB + 32
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
_Label_669:
! CALL STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_671  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
	mov	2039,r13		! source line 2039
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_674 = oldPCB + 32
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
!   Retrieve Result: targetName=_temp_673  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_671  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_673  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	2038,r13		! source line 2038
	mov	"\0\0CE",r10
	call	MemoryCopy
!   Increment the FOR-LOOP index variable and jump back
_Label_658:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_656
! END FOR
_Label_659:
! ASSIGNMENT STATEMENT...
	mov	2045,r13		! source line 2045
	mov	"\0\0AS",r10
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! SEND STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0SE",r10
!   _temp_675 = _function_201_ResumeChildAfterFork
	set	_function_201_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_675  sizeInBytes=4
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
	mov	2049,r13		! source line 2049
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = newPCB + 12
	load	[r14+-264],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_676 = *_temp_677  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_676  (sizeInBytes=4)
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
	.word	_Label_678
	.word	0		! total size of parameters
	.word	288		! frame size = 288
	.word	_Label_679
	.word	-12
	.word	4
	.word	_Label_680
	.word	-16
	.word	4
	.word	_Label_681
	.word	-20
	.word	4
	.word	_Label_682
	.word	-24
	.word	4
	.word	_Label_683
	.word	-28
	.word	4
	.word	_Label_684
	.word	-32
	.word	4
	.word	_Label_685
	.word	-36
	.word	4
	.word	_Label_686
	.word	-40
	.word	4
	.word	_Label_687
	.word	-44
	.word	4
	.word	_Label_688
	.word	-48
	.word	4
	.word	_Label_689
	.word	-52
	.word	4
	.word	_Label_690
	.word	-56
	.word	4
	.word	_Label_691
	.word	-60
	.word	4
	.word	_Label_692
	.word	-64
	.word	4
	.word	_Label_693
	.word	-68
	.word	4
	.word	_Label_694
	.word	-72
	.word	4
	.word	_Label_695
	.word	-76
	.word	4
	.word	_Label_696
	.word	-80
	.word	4
	.word	_Label_697
	.word	-84
	.word	4
	.word	_Label_698
	.word	-88
	.word	4
	.word	_Label_699
	.word	-92
	.word	4
	.word	_Label_700
	.word	-96
	.word	4
	.word	_Label_701
	.word	-100
	.word	4
	.word	_Label_702
	.word	-104
	.word	4
	.word	_Label_703
	.word	-108
	.word	4
	.word	_Label_704
	.word	-112
	.word	4
	.word	_Label_705
	.word	-116
	.word	4
	.word	_Label_706
	.word	-120
	.word	4
	.word	_Label_707
	.word	-124
	.word	4
	.word	_Label_708
	.word	-128
	.word	4
	.word	_Label_709
	.word	-132
	.word	4
	.word	_Label_710
	.word	-136
	.word	4
	.word	_Label_711
	.word	-140
	.word	4
	.word	_Label_712
	.word	-144
	.word	4
	.word	_Label_713
	.word	-148
	.word	4
	.word	_Label_714
	.word	-152
	.word	4
	.word	_Label_715
	.word	-156
	.word	4
	.word	_Label_716
	.word	-160
	.word	4
	.word	_Label_717
	.word	-164
	.word	4
	.word	_Label_718
	.word	-168
	.word	4
	.word	_Label_719
	.word	-172
	.word	4
	.word	_Label_720
	.word	-176
	.word	4
	.word	_Label_721
	.word	-180
	.word	4
	.word	_Label_722
	.word	-184
	.word	4
	.word	_Label_723
	.word	-188
	.word	4
	.word	_Label_724
	.word	-192
	.word	4
	.word	_Label_725
	.word	-196
	.word	4
	.word	_Label_726
	.word	-200
	.word	4
	.word	_Label_727
	.word	-204
	.word	4
	.word	_Label_728
	.word	-208
	.word	4
	.word	_Label_729
	.word	-212
	.word	4
	.word	_Label_730
	.word	-216
	.word	4
	.word	_Label_731
	.word	-220
	.word	4
	.word	_Label_732
	.word	-224
	.word	4
	.word	_Label_733
	.word	-228
	.word	4
	.word	_Label_734
	.word	-232
	.word	4
	.word	_Label_735
	.word	-236
	.word	4
	.word	_Label_736
	.word	-240
	.word	4
	.word	_Label_737
	.word	-244
	.word	4
	.word	_Label_738
	.word	-248
	.word	4
	.word	_Label_739
	.word	-252
	.word	4
	.word	_Label_740
	.word	-256
	.word	4
	.word	_Label_741
	.word	-260
	.word	4
	.word	_Label_742
	.word	-264
	.word	4
	.word	_Label_743
	.word	-268
	.word	4
	.word	_Label_744
	.word	-272
	.word	4
	.word	_Label_745
	.word	-276
	.word	4
	.word	_Label_746
	.word	-280
	.word	4
	.word	_Label_747
	.word	-284
	.word	4
	.word	0
_Label_678:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_740:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_742:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_743:
	.byte	'P'
	.ascii	"oldPCB\0"
	.align
_Label_744:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_746:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_747:
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
_Label_4067:
	push	r0
	sub	r1,1,r1
	bne	_Label_4067
	mov	2053,r13		! source line 2053
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_748 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: parent = *_temp_748  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
! FOR STATEMENT...
	mov	2072,r13		! source line 2072
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_753 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_754 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_753  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-72]
_Label_749:
!   Perform the FOR-LOOP termination test
!   if i > _temp_754 then goto _Label_752		
	load	[r14+-72],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_752
_Label_750:
	mov	2072,r13		! source line 2072
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   _temp_755 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_756 = _temp_755 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_756 [i ] into _temp_757
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
!   child = _temp_757		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_763 = child + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Data Move: _temp_762 = *_temp_763  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_762 != processID then goto _Label_759		(int)
	load	[r14+-44],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_759
!	jmp	_Label_761
_Label_761:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_765 = child + 16
	load	[r14+-76],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_764 = *_temp_765  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_767 = parent + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: _temp_766 = *_temp_767  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_764 != _temp_766 then goto _Label_759		(int)
	load	[r14+-36],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bne	_Label_759
!	jmp	_Label_760
_Label_760:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_769 = child + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: _temp_768 = *_temp_769  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if _temp_768 == 3 then goto _Label_759		(int)
	load	[r14+-20],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_759
!	jmp	_Label_758
_Label_758:
! THEN...
	mov	2076,r13		! source line 2076
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
	mov	2076,r13		! source line 2076
	mov	"\0\0SE",r10
!   _temp_770 = &_P_Kernel_processManager
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
	mov	2077,r13		! source line 2077
	mov	"\0\0RE",r10
!   ReturnResult: childsExitStatus  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_759:
!   Increment the FOR-LOOP index variable and jump back
_Label_751:
!   i = i + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_749
! END FOR
_Label_752:
! RETURN STATEMENT...
	mov	2081,r13		! source line 2081
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
	.word	_Label_771
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_772
	.word	8
	.word	4
	.word	_Label_773
	.word	-12
	.word	4
	.word	_Label_774
	.word	-16
	.word	4
	.word	_Label_775
	.word	-20
	.word	4
	.word	_Label_776
	.word	-24
	.word	4
	.word	_Label_777
	.word	-28
	.word	4
	.word	_Label_778
	.word	-32
	.word	4
	.word	_Label_779
	.word	-36
	.word	4
	.word	_Label_780
	.word	-40
	.word	4
	.word	_Label_781
	.word	-44
	.word	4
	.word	_Label_782
	.word	-48
	.word	4
	.word	_Label_783
	.word	-52
	.word	4
	.word	_Label_784
	.word	-56
	.word	4
	.word	_Label_785
	.word	-60
	.word	4
	.word	_Label_786
	.word	-64
	.word	4
	.word	_Label_787
	.word	-68
	.word	4
	.word	_Label_788
	.word	-72
	.word	4
	.word	_Label_789
	.word	-76
	.word	4
	.word	_Label_790
	.word	-80
	.word	4
	.word	_Label_791
	.word	-84
	.word	4
	.word	0
_Label_771:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_772:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_788:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_789:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_790:
	.byte	'P'
	.ascii	"parent\0"
	.align
_Label_791:
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
	mov	58,r1
_Label_4068:
	push	r0
	sub	r1,1,r1
	bne	_Label_4068
	mov	2085,r13		! source line 2085
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-176,r4
	mov	23,r3
_Label_4069:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4069
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-176]
! SEND STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   _temp_793 = &newAddrSpace
	add	r14,-176,r1
	store	r1,[r14+-76]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_794 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: ptrToPCB = *_temp_794  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0AS",r10
	mov	2113,r13		! source line 2113
	mov	"\0\0SE",r10
!   _temp_795 = &stringStorage
	add	r14,-200,r1
	store	r1,[r14+-68]
!   _temp_796 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_797 = ptrToPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_795  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_796  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_799		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_799
!	jmp	_Label_798
_Label_798:
! THEN...
	mov	2115,r13		! source line 2115
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_799:
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
	mov	2119,r13		! source line 2119
	mov	"\0\0SE",r10
!   _temp_800 = &stringStorage
	add	r14,-200,r1
	store	r1,[r14+-56]
!   _temp_801 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_800  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ptrOpenFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_802
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_802
	jmp	_Label_803
_Label_802:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_803:
! ASSIGNMENT STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
	mov	2129,r13		! source line 2129
	mov	"\0\0SE",r10
!   _temp_804 = &newAddrSpace
	add	r14,-176,r1
	store	r1,[r14+-48]
!   if intIsZero (ptrOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_804  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! IF STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_806		(int)
	load	[r14+-208],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_806
!	jmp	_Label_805
_Label_805:
! THEN...
	mov	2131,r13		! source line 2131
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_806:
! ASSIGNMENT STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_807 = ptrToPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_807 = newAddrSpace  (sizeInBytes=92)
	add	r14,-176,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_4070:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4070
! SEND STATEMENT...
	mov	2137,r13		! source line 2137
	mov	"\0\0SE",r10
!   _temp_808 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=ptrOpenFile  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   _temp_810 = &newAddrSpace
	add	r14,-176,r1
	store	r1,[r14+-32]
!   _temp_811 = _temp_810 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_809 = *_temp_811  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_809 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_812 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_812 [999 ] into _temp_813
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
!   ptrInitSystemStackTop = _temp_813		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2141,r13		! source line 2141
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_814 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_814 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_815 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-220],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_815  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2143,r13		! source line 2143
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_816
	.word	4		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_817
	.word	8
	.word	4
	.word	_Label_818
	.word	-12
	.word	4
	.word	_Label_819
	.word	-16
	.word	4
	.word	_Label_820
	.word	-20
	.word	4
	.word	_Label_821
	.word	-24
	.word	4
	.word	_Label_822
	.word	-28
	.word	4
	.word	_Label_823
	.word	-32
	.word	4
	.word	_Label_824
	.word	-36
	.word	4
	.word	_Label_825
	.word	-40
	.word	4
	.word	_Label_826
	.word	-44
	.word	4
	.word	_Label_827
	.word	-48
	.word	4
	.word	_Label_828
	.word	-52
	.word	4
	.word	_Label_829
	.word	-56
	.word	4
	.word	_Label_830
	.word	-60
	.word	4
	.word	_Label_831
	.word	-64
	.word	4
	.word	_Label_832
	.word	-68
	.word	4
	.word	_Label_833
	.word	-72
	.word	4
	.word	_Label_834
	.word	-76
	.word	4
	.word	_Label_835
	.word	-80
	.word	4
	.word	_Label_836
	.word	-84
	.word	4
	.word	_Label_837
	.word	-176
	.word	92
	.word	_Label_838
	.word	-200
	.word	24
	.word	_Label_839
	.word	-204
	.word	4
	.word	_Label_840
	.word	-208
	.word	4
	.word	_Label_841
	.word	-212
	.word	4
	.word	_Label_842
	.word	-216
	.word	4
	.word	_Label_843
	.word	-220
	.word	4
	.word	_Label_844
	.word	-224
	.word	4
	.word	0
_Label_816:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_817:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_836:
	.byte	'P'
	.ascii	"ptrOpenFile\0"
	.align
_Label_837:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_838:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_839:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_841:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_842:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_843:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_844:
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
_Label_4071:
	push	r0
	sub	r1,1,r1
	bne	_Label_4071
	mov	2147,r13		! source line 2147
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2152,r13		! source line 2152
	mov	"\0\0AS",r10
	mov	2152,r13		! source line 2152
	mov	"\0\0SE",r10
!   _temp_845 = &stringStorage
	add	r14,-56,r1
	store	r1,[r14+-32]
!   _temp_846 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_848 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_847 = *_temp_848  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_847) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_849 = _temp_847 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_845  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_846  sizeInBytes=4
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
	mov	2155,r13		! source line 2155
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_851		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_851
!	jmp	_Label_850
_Label_850:
! THEN...
	mov	2156,r13		! source line 2156
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_852 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2156,r13		! source line 2156
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_851:
! RETURN STATEMENT...
	mov	2163,r13		! source line 2163
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
	.word	_Label_853
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_854
	.word	8
	.word	4
	.word	_Label_855
	.word	-12
	.word	4
	.word	_Label_856
	.word	-16
	.word	4
	.word	_Label_857
	.word	-20
	.word	4
	.word	_Label_858
	.word	-24
	.word	4
	.word	_Label_859
	.word	-28
	.word	4
	.word	_Label_860
	.word	-32
	.word	4
	.word	_Label_861
	.word	-56
	.word	24
	.word	_Label_862
	.word	-60
	.word	4
	.word	0
_Label_853:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_854:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_861:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_862:
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
	mov	41,r1
_Label_4072:
	push	r0
	sub	r1,1,r1
	bne	_Label_4072
	mov	2166,r13		! source line 2166
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2187,r13		! source line 2187
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_863 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: pcb = *_temp_863  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
	mov	2190,r13		! source line 2190
	mov	"\0\0SE",r10
!   _temp_864 = &stringStorage
	add	r14,-140,r1
	store	r1,[r14+-108]
!   _temp_865 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_866 = pcb + 32
	load	[r14+-148],r1
	add	r1,32,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=12  value=_temp_864  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_865  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0IF",r10
!   _temp_870 = &stringStorage
	add	r14,-140,r1
	store	r1,[r14+-92]
!   Data Move: _temp_869 = *_temp_870  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_869 <= 20 then goto _Label_868		(int)
	load	[r14+-96],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_868
!	jmp	_Label_867
_Label_867:
! THEN...
	mov	2194,r13		! source line 2194
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_868:
! ASSIGNMENT STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0AS",r10
!   open = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-152]
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   holdI = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-156]
! FOR STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_875 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_876 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_875  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-144]
_Label_871:
!   Perform the FOR-LOOP termination test
!   if i > _temp_876 then goto _Label_874		
	load	[r14+-144],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_874
_Label_872:
	mov	2201,r13		! source line 2201
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_880 = pcb + 124
	load	[r14+-148],r1
	add	r1,124,r1
	store	r1,[r14+-76]
!   Move address of _temp_880 [i ] into _temp_881
!     make sure index expr is >= 0
	load	[r14+-144],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: _temp_879 = *_temp_881  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_879) then goto _Label_877
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_877
	jmp	_Label_878
_Label_877:
! THEN...
	mov	2205,r13		! source line 2205
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0IF",r10
!   _temp_884 = &stringStorage
	add	r14,-140,r1
	store	r1,[r14+-68]
!   _temp_885 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_884  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_885  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Call the function
	mov	2205,r13		! source line 2205
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_882 else goto _Label_883
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_883
	jmp	_Label_882
_Label_882:
! THEN...
	mov	2206,r13		! source line 2206
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_886 = pcb + 124
	load	[r14+-148],r1
	add	r1,124,r1
	store	r1,[r14+-60]
!   Move address of _temp_886 [i ] into _temp_887
!     make sure index expr is >= 0
	load	[r14+-144],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_889 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   _temp_890 = _temp_889 + 772
	load	[r14+-48],r1
	add	r1,772,r1
	store	r1,[r14+-44]
!   _temp_888 = _temp_890		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-52]
!   Data Move: *_temp_887 = _temp_888  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+-56],r2
	store	r1,[r2]
	jmp	_Label_891
_Label_883:
! ELSE...
	mov	2208,r13		! source line 2208
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_892 = pcb + 124
	load	[r14+-148],r1
	add	r1,124,r1
	store	r1,[r14+-40]
!   Move address of _temp_892 [i ] into _temp_893
!     make sure index expr is >= 0
	load	[r14+-144],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_895 = &stringStorage
	add	r14,-140,r1
	store	r1,[r14+-28]
!   _temp_896 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_895  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_894  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   Data Move: *_temp_893 = _temp_894  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+-36],r2
	store	r1,[r2]
! END IF...
_Label_891:
! IF STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-148],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_900 = pcb + 124
	load	[r14+-148],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_900 [i ] into _temp_901
!     make sure index expr is >= 0
	load	[r14+-144],r2
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
!   Data Move: _temp_899 = *_temp_901  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_899) then goto _Label_898
	load	[r14+-20],r1
	cmp	r1,r0
	be	_Label_898
!	jmp	_Label_897
_Label_897:
! THEN...
	mov	2213,r13		! source line 2213
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_902
_Label_898:
! ELSE...
	mov	2215,r13		! source line 2215
	mov	"\0\0EL",r10
! RETURN STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_902:
! END IF...
_Label_878:
!   Increment the FOR-LOOP index variable and jump back
_Label_873:
!   i = i + 1
	load	[r14+-144],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
	jmp	_Label_871
! END FOR
_Label_874:
! RETURN STATEMENT...
	mov	2221,r13		! source line 2221
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_903
	.word	4		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_904
	.word	8
	.word	4
	.word	_Label_905
	.word	-12
	.word	4
	.word	_Label_906
	.word	-16
	.word	4
	.word	_Label_907
	.word	-20
	.word	4
	.word	_Label_908
	.word	-24
	.word	4
	.word	_Label_909
	.word	-28
	.word	4
	.word	_Label_910
	.word	-32
	.word	4
	.word	_Label_911
	.word	-36
	.word	4
	.word	_Label_912
	.word	-40
	.word	4
	.word	_Label_913
	.word	-44
	.word	4
	.word	_Label_914
	.word	-48
	.word	4
	.word	_Label_915
	.word	-52
	.word	4
	.word	_Label_916
	.word	-56
	.word	4
	.word	_Label_917
	.word	-60
	.word	4
	.word	_Label_918
	.word	-64
	.word	4
	.word	_Label_919
	.word	-68
	.word	4
	.word	_Label_920
	.word	-72
	.word	4
	.word	_Label_921
	.word	-76
	.word	4
	.word	_Label_922
	.word	-80
	.word	4
	.word	_Label_923
	.word	-84
	.word	4
	.word	_Label_924
	.word	-88
	.word	4
	.word	_Label_925
	.word	-92
	.word	4
	.word	_Label_926
	.word	-96
	.word	4
	.word	_Label_927
	.word	-100
	.word	4
	.word	_Label_928
	.word	-104
	.word	4
	.word	_Label_929
	.word	-108
	.word	4
	.word	_Label_930
	.word	-112
	.word	4
	.word	_Label_931
	.word	-116
	.word	4
	.word	_Label_932
	.word	-140
	.word	24
	.word	_Label_933
	.word	-144
	.word	4
	.word	_Label_934
	.word	-148
	.word	4
	.word	_Label_935
	.word	-152
	.word	4
	.word	_Label_936
	.word	-156
	.word	4
	.word	0
_Label_903:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_904:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_931:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_932:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_933:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_934:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_935:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_936:
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
	mov	73,r1
_Label_4073:
	push	r0
	sub	r1,1,r1
	bne	_Label_4073
	mov	2225,r13		! source line 2225
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2249,r13		! source line 2249
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=in  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-280]
! IF STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_939		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_939
	jmp	_Label_937
_Label_939:
!   if fileDesc >= 0 then goto _Label_938		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_938
!	jmp	_Label_937
_Label_937:
! THEN...
	mov	2253,r13		! source line 2253
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_938:
! IF STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_941		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_941
!	jmp	_Label_940
_Label_940:
! THEN...
	mov	2258,r13		! source line 2258
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_941:
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_943 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-232]
!   Data Move: _temp_942 = *_temp_943  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_942) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_944 = _temp_942 + 124
	load	[r14+-236],r1
	add	r1,124,r1
	store	r1,[r14+-228]
!   Move address of _temp_944 [fileDesc ] into _temp_945
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-228],r1
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
	store	r2,[r14+-224]
!   Data Move: open = *_temp_945  (sizeInBytes=4)
	load	[r14+-224],r1
	load	[r1],r1
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	2263,r13		! source line 2263
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_946
	load	[r14+-240],r1
	cmp	r1,r0
	be	_Label_946
	jmp	_Label_947
_Label_946:
! THEN...
	mov	2264,r13		! source line 2264
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_947:
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_948 = open + 16
	load	[r14+-240],r1
	add	r1,16,r1
	store	r1,[r14+-220]
!   Data Move: nextPosInFile = *_temp_948  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_952 = open + 12
	load	[r14+-240],r1
	add	r1,12,r1
	store	r1,[r14+-212]
!   Data Move: _temp_951 = *_temp_952  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-216]
!   if _temp_951 != 2 then goto _Label_950		(int)
	load	[r14+-216],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_950
!	jmp	_Label_949
_Label_949:
! THEN...
	mov	2276,r13		! source line 2276
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0WH",r10
_Label_953:
!	jmp	_Label_954
_Label_954:
	mov	2276,r13		! source line 2276
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0AS",r10
!   thisChunksize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-252],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0IF",r10
!   _temp_958 = copiedSoFar + thisChunksize		(int)
	load	[r14+-256],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   if _temp_958 <= sizeInBytes then goto _Label_957		(int)
	load	[r14+-208],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_957
!	jmp	_Label_956
_Label_956:
! THEN...
	mov	2280,r13		! source line 2280
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
!   thisChunksize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-256],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! END IF...
_Label_957:
! IF STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0IF",r10
!   if thisChunksize > 0 then goto _Label_960		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_960
!	jmp	_Label_959
_Label_959:
! THEN...
	mov	2285,r13		! source line 2285
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0BR",r10
	jmp	_Label_955
! END IF...
_Label_960:
! IF STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_965		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_965
	jmp	_Label_961
_Label_965:
!   if virtPage <= 512 then goto _Label_964		(int)
	load	[r14+-248],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_964
	jmp	_Label_961
_Label_964:
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_968 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-200]
!   Data Move: _temp_967 = *_temp_968  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_967) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_969 = _temp_967 + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-196]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_966  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
!   if _temp_966 then goto _Label_963 else goto _Label_961
	loadb	[r14+-14],r1
	cmp	r1,0
	be	_Label_961
	jmp	_Label_963
_Label_963:
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_972 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_971 = *_temp_972  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_971) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_973 = _temp_971 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_970  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_970 then goto _Label_962 else goto _Label_961
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_961
	jmp	_Label_962
_Label_961:
! THEN...
	mov	2290,r13		! source line 2290
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_962:
! SEND STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_975 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_974 = *_temp_975  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_974) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = _temp_974 + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_978 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_977 = *_temp_978  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_977) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_979 = _temp_977 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_981 = *_temp_982  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_981) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_983 = _temp_981 + 32
	load	[r14+-152],r1
	add	r1,32,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_980  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
!   destAddr = _temp_980 + offset		(int)
	load	[r14+-156],r1
	load	[r14+-252],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_984
	load	[r14+-272],r1
	cmp	r1,r0
	be	_Label_984
	jmp	_Label_985
_Label_984:
! THEN...
	mov	2302,r13		! source line 2302
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-256],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_985:
! FOR STATEMENT...
	mov	2305,r13		! source line 2305
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_990 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
!   Calculate and save the FOR-LOOP ending value
!   _temp_991 = thisChunksize - 1		(int)
	load	[r14+-264],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_990  (sizeInBytes=4)
	load	[r14+-140],r1
	store	r1,[r14+-276]
_Label_986:
!   Perform the FOR-LOOP termination test
!   if i > _temp_991 then goto _Label_989		
	load	[r14+-276],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_989
_Label_987:
	mov	2305,r13		! source line 2305
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2306,r13		! source line 2306
	mov	"\0\0AS",r10
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_992 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-132]
!   Send message GetChar
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=holdChar  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-16]
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-256],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0IF",r10
!   _temp_996 = holdChar XOR 10		(bool)
	loadb	[r14+-16],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-12]
!   if _temp_996 then goto _Label_995 else goto _Label_993
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_993
	jmp	_Label_995
_Label_995:
!   _temp_997 = holdChar XOR 13		(bool)
	loadb	[r14+-16],r1
	mov	13,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_997 then goto _Label_994 else goto _Label_993
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_993
	jmp	_Label_994
_Label_993:
! THEN...
	mov	2311,r13		! source line 2311
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   _temp_998 = destAddr + i		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   if intIsZero (_temp_998) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_998 = 10  (sizeInBytes=1)
	mov	10,r1
	load	[r14+-128],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-256],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_994:
! IF STATEMENT...
	mov	2316,r13		! source line 2316
	mov	"\0\0IF",r10
!   _temp_1001 = charToInt (holdChar)
	loadb	[r14+-16],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-124]
!   if _temp_1001 != 4 then goto _Label_1000		(int)
	load	[r14+-124],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1000
!	jmp	_Label_999
_Label_999:
! THEN...
	mov	2317,r13		! source line 2317
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0RE",r10
!   _temp_1002 = copiedSoFar - 1		(int)
	load	[r14+-256],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   ReturnResult: _temp_1002  (sizeInBytes=4)
	load	[r14+-120],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1000:
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0AS",r10
!   _temp_1003 = destAddr + i		(int)
	load	[r14+-272],r1
	load	[r14+-276],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
!   if intIsZero (_temp_1003) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1003 = holdChar  (sizeInBytes=1)
	loadb	[r14+-16],r1
	load	[r14+-116],r2
	storeb	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_988:
!   i = i + 1
	load	[r14+-276],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-276]
	jmp	_Label_986
! END FOR
_Label_989:
! ASSIGNMENT STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunksize		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-248],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-252]
! END WHILE...
	jmp	_Label_953
_Label_955:
! RETURN STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-256],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_950:
! ASSIGNMENT STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1004 = open + 16
	load	[r14+-240],r1
	add	r1,16,r1
	store	r1,[r14+-112]
!   Data Move: nextPosInFile = *_temp_1004  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1006 = open + 20
	load	[r14+-240],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_1005 = *_temp_1006  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_1005) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1007 = _temp_1005 + 24
	load	[r14+-108],r1
	add	r1,24,r1
	store	r1,[r14+-100]
!   Data Move: sizeOfFile = *_temp_1007  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-268]
! WHILE STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0WH",r10
_Label_1008:
!	jmp	_Label_1009
_Label_1009:
	mov	2343,r13		! source line 2343
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   thisChunksize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-252],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0IF",r10
!   _temp_1013 = nextPosInFile + thisChunksize		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   if _temp_1013 <= sizeOfFile then goto _Label_1012		(int)
	load	[r14+-96],r1
	load	[r14+-268],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1012
!	jmp	_Label_1011
_Label_1011:
! THEN...
	mov	2348,r13		! source line 2348
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0AS",r10
!   thisChunksize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-268],r1
	load	[r14+-260],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! END IF...
_Label_1012:
! IF STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0IF",r10
!   _temp_1016 = copiedSoFar + thisChunksize		(int)
	load	[r14+-256],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   if _temp_1016 <= sizeInBytes then goto _Label_1015		(int)
	load	[r14+-92],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1015
!	jmp	_Label_1014
_Label_1014:
! THEN...
	mov	2352,r13		! source line 2352
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0AS",r10
!   thisChunksize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-256],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! END IF...
_Label_1015:
! IF STATEMENT...
	mov	2357,r13		! source line 2357
	mov	"\0\0IF",r10
!   if thisChunksize > 0 then goto _Label_1018		(int)
	load	[r14+-264],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1018
!	jmp	_Label_1017
_Label_1017:
! THEN...
	mov	2358,r13		! source line 2358
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0BR",r10
	jmp	_Label_1010
! END IF...
_Label_1018:
! IF STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1023		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1023
	jmp	_Label_1019
_Label_1023:
!   if virtPage <= 19 then goto _Label_1022		(int)
	load	[r14+-248],r1
	mov	19,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1022
	jmp	_Label_1019
_Label_1022:
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1026 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-84]
!   Data Move: _temp_1025 = *_temp_1026  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1025) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1027 = _temp_1025 + 32
	load	[r14+-88],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1024  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1024 then goto _Label_1021 else goto _Label_1019
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1019
	jmp	_Label_1021
_Label_1021:
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1030 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1029 = *_temp_1030  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1029) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1031 = _temp_1029 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1028  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1028 then goto _Label_1020 else goto _Label_1019
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1019
	jmp	_Label_1020
_Label_1019:
! THEN...
	mov	2363,r13		! source line 2363
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1020:
! SEND STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1032 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1032) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1034 = _temp_1032 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1036 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1035 = *_temp_1036  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1035) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _temp_1035 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
	mov	2372,r13		! source line 2372
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1039 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1039) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1041 = _temp_1039 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1038  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1038 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-252],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-272]
! IF STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1042
	load	[r14+-272],r1
	cmp	r1,r0
	be	_Label_1042
	jmp	_Label_1043
_Label_1042:
! THEN...
	mov	2374,r13		! source line 2374
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-256],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1043:
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_1044 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-272],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunksize  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=hold  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-15]
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunksize		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-240],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1045 = open + 16
	load	[r14+-240],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1045 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunksize		(int)
	load	[r14+-256],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-248],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1047		(int)
	load	[r14+-256],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1047
!	jmp	_Label_1046
_Label_1046:
! THEN...
	mov	2389,r13		! source line 2389
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0BR",r10
	jmp	_Label_1010
! END IF...
_Label_1047:
! END WHILE...
	jmp	_Label_1008
_Label_1010:
! RETURN STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-256],r1
	store	r1,[r14+8]
	add	r15,296,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_1048
	.word	12		! total size of parameters
	.word	292		! frame size = 292
	.word	_Label_1049
	.word	8
	.word	4
	.word	_Label_1050
	.word	12
	.word	4
	.word	_Label_1051
	.word	16
	.word	4
	.word	_Label_1052
	.word	-20
	.word	4
	.word	_Label_1053
	.word	-24
	.word	4
	.word	_Label_1054
	.word	-28
	.word	4
	.word	_Label_1055
	.word	-32
	.word	4
	.word	_Label_1056
	.word	-36
	.word	4
	.word	_Label_1057
	.word	-40
	.word	4
	.word	_Label_1058
	.word	-44
	.word	4
	.word	_Label_1059
	.word	-48
	.word	4
	.word	_Label_1060
	.word	-52
	.word	4
	.word	_Label_1061
	.word	-56
	.word	4
	.word	_Label_1062
	.word	-60
	.word	4
	.word	_Label_1063
	.word	-64
	.word	4
	.word	_Label_1064
	.word	-68
	.word	4
	.word	_Label_1065
	.word	-72
	.word	4
	.word	_Label_1066
	.word	-76
	.word	4
	.word	_Label_1067
	.word	-9
	.word	1
	.word	_Label_1068
	.word	-80
	.word	4
	.word	_Label_1069
	.word	-84
	.word	4
	.word	_Label_1070
	.word	-88
	.word	4
	.word	_Label_1071
	.word	-10
	.word	1
	.word	_Label_1072
	.word	-92
	.word	4
	.word	_Label_1073
	.word	-96
	.word	4
	.word	_Label_1074
	.word	-100
	.word	4
	.word	_Label_1075
	.word	-104
	.word	4
	.word	_Label_1076
	.word	-108
	.word	4
	.word	_Label_1077
	.word	-112
	.word	4
	.word	_Label_1078
	.word	-116
	.word	4
	.word	_Label_1079
	.word	-120
	.word	4
	.word	_Label_1080
	.word	-124
	.word	4
	.word	_Label_1081
	.word	-128
	.word	4
	.word	_Label_1082
	.word	-11
	.word	1
	.word	_Label_1083
	.word	-12
	.word	1
	.word	_Label_1084
	.word	-132
	.word	4
	.word	_Label_1085
	.word	-136
	.word	4
	.word	_Label_1086
	.word	-140
	.word	4
	.word	_Label_1087
	.word	-144
	.word	4
	.word	_Label_1088
	.word	-148
	.word	4
	.word	_Label_1089
	.word	-152
	.word	4
	.word	_Label_1090
	.word	-156
	.word	4
	.word	_Label_1091
	.word	-160
	.word	4
	.word	_Label_1092
	.word	-164
	.word	4
	.word	_Label_1093
	.word	-168
	.word	4
	.word	_Label_1094
	.word	-172
	.word	4
	.word	_Label_1095
	.word	-176
	.word	4
	.word	_Label_1096
	.word	-180
	.word	4
	.word	_Label_1097
	.word	-184
	.word	4
	.word	_Label_1098
	.word	-188
	.word	4
	.word	_Label_1099
	.word	-192
	.word	4
	.word	_Label_1100
	.word	-13
	.word	1
	.word	_Label_1101
	.word	-196
	.word	4
	.word	_Label_1102
	.word	-200
	.word	4
	.word	_Label_1103
	.word	-204
	.word	4
	.word	_Label_1104
	.word	-14
	.word	1
	.word	_Label_1105
	.word	-208
	.word	4
	.word	_Label_1106
	.word	-212
	.word	4
	.word	_Label_1107
	.word	-216
	.word	4
	.word	_Label_1108
	.word	-220
	.word	4
	.word	_Label_1109
	.word	-224
	.word	4
	.word	_Label_1110
	.word	-228
	.word	4
	.word	_Label_1111
	.word	-232
	.word	4
	.word	_Label_1112
	.word	-236
	.word	4
	.word	_Label_1113
	.word	-240
	.word	4
	.word	_Label_1114
	.word	-244
	.word	4
	.word	_Label_1115
	.word	-248
	.word	4
	.word	_Label_1116
	.word	-252
	.word	4
	.word	_Label_1117
	.word	-256
	.word	4
	.word	_Label_1118
	.word	-260
	.word	4
	.word	_Label_1119
	.word	-264
	.word	4
	.word	_Label_1120
	.word	-268
	.word	4
	.word	_Label_1121
	.word	-15
	.word	1
	.word	_Label_1122
	.word	-272
	.word	4
	.word	_Label_1123
	.word	-16
	.word	1
	.word	_Label_1124
	.word	-276
	.word	4
	.word	_Label_1125
	.word	-280
	.word	4
	.word	0
_Label_1048:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_1049:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1050:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1051:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1067:
	.byte	'C'
	.ascii	"_temp_1028\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1071:
	.byte	'C'
	.ascii	"_temp_1024\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1082:
	.byte	'C'
	.ascii	"_temp_997\0"
	.align
_Label_1083:
	.byte	'C'
	.ascii	"_temp_996\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_1100:
	.byte	'C'
	.ascii	"_temp_970\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_1104:
	.byte	'C'
	.ascii	"_temp_966\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_1113:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1114:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1115:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1116:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1117:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1118:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1119:
	.byte	'I'
	.ascii	"thisChunksize\0"
	.align
_Label_1120:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1121:
	.byte	'B'
	.ascii	"hold\0"
	.align
_Label_1122:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1123:
	.byte	'C'
	.ascii	"holdChar\0"
	.align
_Label_1124:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1125:
	.byte	'I'
	.ascii	"in\0"
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
	mov	70,r1
_Label_4074:
	push	r0
	sub	r1,1,r1
	bne	_Label_4074
	mov	2397,r13		! source line 2397
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! i
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2422,r13		! source line 2422
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=in  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-268]
! IF STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1128		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1128
	jmp	_Label_1126
_Label_1128:
!   if fileDesc >= 0 then goto _Label_1127		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1127
!	jmp	_Label_1126
_Label_1126:
! THEN...
	mov	2426,r13		! source line 2426
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1127:
! IF STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1130		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1130
!	jmp	_Label_1129
_Label_1129:
! THEN...
	mov	2431,r13		! source line 2431
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1130:
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1132 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-220]
!   Data Move: _temp_1131 = *_temp_1132  (sizeInBytes=4)
	load	[r14+-220],r1
	load	[r1],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_1131) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1133 = _temp_1131 + 124
	load	[r14+-224],r1
	add	r1,124,r1
	store	r1,[r14+-216]
!   Move address of _temp_1133 [fileDesc ] into _temp_1134
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-216],r1
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
	store	r2,[r14+-212]
!   Data Move: open = *_temp_1134  (sizeInBytes=4)
	load	[r14+-212],r1
	load	[r1],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1135
	load	[r14+-228],r1
	cmp	r1,r0
	be	_Label_1135
	jmp	_Label_1136
_Label_1135:
! THEN...
	mov	2437,r13		! source line 2437
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1136:
! ASSIGNMENT STATEMENT...
	mov	2440,r13		! source line 2440
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1137 = open + 16
	load	[r14+-228],r1
	add	r1,16,r1
	store	r1,[r14+-208]
!   Data Move: nextPosInFile = *_temp_1137  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1141 = open + 12
	load	[r14+-228],r1
	add	r1,12,r1
	store	r1,[r14+-200]
!   Data Move: _temp_1140 = *_temp_1141  (sizeInBytes=4)
	load	[r14+-200],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   if _temp_1140 != 2 then goto _Label_1139		(int)
	load	[r14+-204],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1139
!	jmp	_Label_1138
_Label_1138:
! THEN...
	mov	2449,r13		! source line 2449
	mov	"\0\0TN",r10
! WHILE STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0WH",r10
_Label_1142:
!	jmp	_Label_1143
_Label_1143:
	mov	2449,r13		! source line 2449
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0AS",r10
!   thisChunksize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-240],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2453,r13		! source line 2453
	mov	"\0\0IF",r10
!   _temp_1147 = copiedSoFar + thisChunksize		(int)
	load	[r14+-244],r1
	load	[r14+-252],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
!   if _temp_1147 <= sizeInBytes then goto _Label_1146		(int)
	load	[r14+-196],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1146
!	jmp	_Label_1145
_Label_1145:
! THEN...
	mov	2454,r13		! source line 2454
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0AS",r10
!   thisChunksize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-244],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! END IF...
_Label_1146:
! IF STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0IF",r10
!   if thisChunksize > 0 then goto _Label_1149		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1149
!	jmp	_Label_1148
_Label_1148:
! THEN...
	mov	2459,r13		! source line 2459
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0BR",r10
	jmp	_Label_1144
! END IF...
_Label_1149:
! IF STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1154		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1154
	jmp	_Label_1150
_Label_1154:
!   if virtPage <= 512 then goto _Label_1153		(int)
	load	[r14+-236],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1153
	jmp	_Label_1150
_Label_1153:
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1157 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-188]
!   Data Move: _temp_1156 = *_temp_1157  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_1156) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1158 = _temp_1156 + 32
	load	[r14+-192],r1
	add	r1,32,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1155  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_1155 then goto _Label_1152 else goto _Label_1150
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_1150
	jmp	_Label_1152
_Label_1152:
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1161 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-176]
!   Data Move: _temp_1160 = *_temp_1161  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_1160) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1162 = _temp_1160 + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1159  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_1159 then goto _Label_1151 else goto _Label_1150
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_1150
	jmp	_Label_1151
_Label_1150:
! THEN...
	mov	2464,r13		! source line 2464
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1151:
! SEND STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1164 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-164]
!   Data Move: _temp_1163 = *_temp_1164  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_1163) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1165 = _temp_1163 + 32
	load	[r14+-168],r1
	add	r1,32,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0AS",r10
	mov	2471,r13		! source line 2471
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-148]
!   Data Move: _temp_1167 = *_temp_1168  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_1167) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1169 = _temp_1167 + 32
	load	[r14+-152],r1
	add	r1,32,r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-144],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1166  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
!   destAddr = _temp_1166 + offset		(int)
	load	[r14+-156],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1170
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_1170
	jmp	_Label_1171
_Label_1170:
! THEN...
	mov	2474,r13		! source line 2474
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1171:
! FOR STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1176 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1177 = thisChunksize - 1		(int)
	load	[r14+-252],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1176  (sizeInBytes=4)
	load	[r14+-140],r1
	store	r1,[r14+-264]
_Label_1172:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1177 then goto _Label_1175		
	load	[r14+-264],r1
	load	[r14+-136],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1175
_Label_1173:
	mov	2477,r13		! source line 2477
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0AS",r10
!   _temp_1178 = destAddr + i		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
!   if intIsZero (_temp_1178) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: holdChar = *_temp_1178  (sizeInBytes=1)
	load	[r14+-132],r1
	loadb	[r1],r1
	storeb	r1,[r14+-15]
! IF STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0IF",r10
!   _temp_1181 = charToInt (holdChar)
	loadb	[r14+-15],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-128]
!   if _temp_1181 != 4 then goto _Label_1180		(int)
	load	[r14+-128],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1180
!	jmp	_Label_1179
_Label_1179:
! THEN...
	mov	2483,r13		! source line 2483
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1180:
! IF STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0IF",r10
!   _temp_1184 = holdChar XOR 10		(bool)
	loadb	[r14+-15],r1
	mov	10,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-11]
!   if _temp_1184 then goto _Label_1183 else goto _Label_1182
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1182
	jmp	_Label_1183
_Label_1182:
! THEN...
	mov	2487,r13		! source line 2487
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_1185 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=12  value=13  sizeInBytes=1
	mov	13,r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1183:
! SEND STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0SE",r10
!   _temp_1186 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=12  value=holdChar  sizeInBytes=1
	loadb	[r14+-15],r1
	storeb	r1,[r15+4]
!   Send message PutChar
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-244],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Increment the FOR-LOOP index variable and jump back
_Label_1174:
!   i = i + 1
	load	[r14+-264],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
	jmp	_Label_1172
! END FOR
_Label_1175:
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunksize		(int)
	load	[r14+-248],r1
	load	[r14+-252],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-236],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-240]
! END WHILE...
	jmp	_Label_1142
_Label_1144:
! RETURN STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1139:
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-112]
!   Data Move: _temp_1187 = *_temp_1188  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_1187) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = _temp_1187 + 124
	load	[r14+-116],r1
	add	r1,124,r1
	store	r1,[r14+-108]
!   Move address of _temp_1189 [fileDesc ] into _temp_1190
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
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
	store	r2,[r14+-104]
!   Data Move: open = *_temp_1190  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1191
	load	[r14+-228],r1
	cmp	r1,r0
	be	_Label_1191
	jmp	_Label_1192
_Label_1191:
! THEN...
	mov	2510,r13		! source line 2510
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1192:
! ASSIGNMENT STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = open + 16
	load	[r14+-228],r1
	add	r1,16,r1
	store	r1,[r14+-100]
!   Data Move: nextPosInFile = *_temp_1193  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1195 = open + 20
	load	[r14+-228],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_1194 = *_temp_1195  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_1194) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1196 = _temp_1194 + 24
	load	[r14+-96],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Data Move: sizeOfFile = *_temp_1196  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-256]
! WHILE STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0WH",r10
_Label_1197:
!	jmp	_Label_1198
_Label_1198:
	mov	2521,r13		! source line 2521
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2523,r13		! source line 2523
	mov	"\0\0AS",r10
!   thisChunksize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-240],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0IF",r10
!   _temp_1202 = nextPosInFile + thisChunksize		(int)
	load	[r14+-248],r1
	load	[r14+-252],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
!   if _temp_1202 <= sizeOfFile then goto _Label_1201		(int)
	load	[r14+-84],r1
	load	[r14+-256],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1201
!	jmp	_Label_1200
_Label_1200:
! THEN...
	mov	2526,r13		! source line 2526
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   thisChunksize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-256],r1
	load	[r14+-248],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! END IF...
_Label_1201:
! IF STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0IF",r10
!   _temp_1205 = copiedSoFar + thisChunksize		(int)
	load	[r14+-244],r1
	load	[r14+-252],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   if _temp_1205 <= sizeInBytes then goto _Label_1204		(int)
	load	[r14+-80],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1204
!	jmp	_Label_1203
_Label_1203:
! THEN...
	mov	2530,r13		! source line 2530
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   thisChunksize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-244],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-252]
! END IF...
_Label_1204:
! IF STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0IF",r10
!   if thisChunksize > 0 then goto _Label_1207		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1207
!	jmp	_Label_1206
_Label_1206:
! THEN...
	mov	2536,r13		! source line 2536
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0BR",r10
	jmp	_Label_1199
! END IF...
_Label_1207:
! IF STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1212		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1212
	jmp	_Label_1208
_Label_1212:
!   if virtPage <= 512 then goto _Label_1211		(int)
	load	[r14+-236],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1211
	jmp	_Label_1208
_Label_1211:
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1215 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: _temp_1214 = *_temp_1215  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_1214) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1216 = _temp_1214 + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1213  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1213 then goto _Label_1210 else goto _Label_1208
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1208
	jmp	_Label_1210
_Label_1210:
	mov	2540,r13		! source line 2540
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1219 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1218 = *_temp_1219  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_1218) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1220 = _temp_1218 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1217  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1217 then goto _Label_1209 else goto _Label_1208
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1208
	jmp	_Label_1209
_Label_1208:
! THEN...
	mov	2541,r13		! source line 2541
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1209:
! SEND STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1222 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1221 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1221) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1223 = _temp_1221 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
	mov	2548,r13		! source line 2548
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1226 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1225 = *_temp_1226  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1225) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1227 = _temp_1225 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1224  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   destAddr = _temp_1224 + offset		(int)
	load	[r14+-40],r1
	load	[r14+-240],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1228
	load	[r14+-260],r1
	cmp	r1,r0
	be	_Label_1228
	jmp	_Label_1229
_Label_1228:
! THEN...
	mov	2550,r13		! source line 2550
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1229:
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
	mov	2555,r13		! source line 2555
	mov	"\0\0SE",r10
!   _temp_1230 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-260],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-248],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunksize  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=hold  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-14]
! ASSIGNMENT STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunksize		(int)
	load	[r14+-248],r1
	load	[r14+-252],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1231 = open + 16
	load	[r14+-228],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1231 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-248],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunksize		(int)
	load	[r14+-244],r1
	load	[r14+-252],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-236],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-240]
! IF STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1233		(int)
	load	[r14+-244],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1233
!	jmp	_Label_1232
_Label_1232:
! THEN...
	mov	2566,r13		! source line 2566
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0BR",r10
	jmp	_Label_1199
! END IF...
_Label_1233:
! END WHILE...
	jmp	_Label_1197
_Label_1199:
! RETURN STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1234
	.word	12		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_1235
	.word	8
	.word	4
	.word	_Label_1236
	.word	12
	.word	4
	.word	_Label_1237
	.word	16
	.word	4
	.word	_Label_1238
	.word	-20
	.word	4
	.word	_Label_1239
	.word	-24
	.word	4
	.word	_Label_1240
	.word	-28
	.word	4
	.word	_Label_1241
	.word	-32
	.word	4
	.word	_Label_1242
	.word	-36
	.word	4
	.word	_Label_1243
	.word	-40
	.word	4
	.word	_Label_1244
	.word	-44
	.word	4
	.word	_Label_1245
	.word	-48
	.word	4
	.word	_Label_1246
	.word	-52
	.word	4
	.word	_Label_1247
	.word	-56
	.word	4
	.word	_Label_1248
	.word	-60
	.word	4
	.word	_Label_1249
	.word	-64
	.word	4
	.word	_Label_1250
	.word	-9
	.word	1
	.word	_Label_1251
	.word	-68
	.word	4
	.word	_Label_1252
	.word	-72
	.word	4
	.word	_Label_1253
	.word	-76
	.word	4
	.word	_Label_1254
	.word	-10
	.word	1
	.word	_Label_1255
	.word	-80
	.word	4
	.word	_Label_1256
	.word	-84
	.word	4
	.word	_Label_1257
	.word	-88
	.word	4
	.word	_Label_1258
	.word	-92
	.word	4
	.word	_Label_1259
	.word	-96
	.word	4
	.word	_Label_1260
	.word	-100
	.word	4
	.word	_Label_1261
	.word	-104
	.word	4
	.word	_Label_1262
	.word	-108
	.word	4
	.word	_Label_1263
	.word	-112
	.word	4
	.word	_Label_1264
	.word	-116
	.word	4
	.word	_Label_1265
	.word	-120
	.word	4
	.word	_Label_1266
	.word	-124
	.word	4
	.word	_Label_1267
	.word	-11
	.word	1
	.word	_Label_1268
	.word	-128
	.word	4
	.word	_Label_1269
	.word	-132
	.word	4
	.word	_Label_1270
	.word	-136
	.word	4
	.word	_Label_1271
	.word	-140
	.word	4
	.word	_Label_1272
	.word	-144
	.word	4
	.word	_Label_1273
	.word	-148
	.word	4
	.word	_Label_1274
	.word	-152
	.word	4
	.word	_Label_1275
	.word	-156
	.word	4
	.word	_Label_1276
	.word	-160
	.word	4
	.word	_Label_1277
	.word	-164
	.word	4
	.word	_Label_1278
	.word	-168
	.word	4
	.word	_Label_1279
	.word	-172
	.word	4
	.word	_Label_1280
	.word	-176
	.word	4
	.word	_Label_1281
	.word	-180
	.word	4
	.word	_Label_1282
	.word	-12
	.word	1
	.word	_Label_1283
	.word	-184
	.word	4
	.word	_Label_1284
	.word	-188
	.word	4
	.word	_Label_1285
	.word	-192
	.word	4
	.word	_Label_1286
	.word	-13
	.word	1
	.word	_Label_1287
	.word	-196
	.word	4
	.word	_Label_1288
	.word	-200
	.word	4
	.word	_Label_1289
	.word	-204
	.word	4
	.word	_Label_1290
	.word	-208
	.word	4
	.word	_Label_1291
	.word	-212
	.word	4
	.word	_Label_1292
	.word	-216
	.word	4
	.word	_Label_1293
	.word	-220
	.word	4
	.word	_Label_1294
	.word	-224
	.word	4
	.word	_Label_1295
	.word	-228
	.word	4
	.word	_Label_1296
	.word	-232
	.word	4
	.word	_Label_1297
	.word	-236
	.word	4
	.word	_Label_1298
	.word	-240
	.word	4
	.word	_Label_1299
	.word	-244
	.word	4
	.word	_Label_1300
	.word	-248
	.word	4
	.word	_Label_1301
	.word	-252
	.word	4
	.word	_Label_1302
	.word	-256
	.word	4
	.word	_Label_1303
	.word	-14
	.word	1
	.word	_Label_1304
	.word	-260
	.word	4
	.word	_Label_1305
	.word	-264
	.word	4
	.word	_Label_1306
	.word	-15
	.word	1
	.word	_Label_1307
	.word	-268
	.word	4
	.word	0
_Label_1234:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1235:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1236:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1237:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1250:
	.byte	'C'
	.ascii	"_temp_1217\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1254:
	.byte	'C'
	.ascii	"_temp_1213\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1267:
	.byte	'C'
	.ascii	"_temp_1184\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1282:
	.byte	'C'
	.ascii	"_temp_1159\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1286:
	.byte	'C'
	.ascii	"_temp_1155\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1295:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1296:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1297:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1298:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1299:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1300:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1301:
	.byte	'I'
	.ascii	"thisChunksize\0"
	.align
_Label_1302:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1303:
	.byte	'B'
	.ascii	"hold\0"
	.align
_Label_1304:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
_Label_1305:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1306:
	.byte	'C'
	.ascii	"holdChar\0"
	.align
_Label_1307:
	.byte	'I'
	.ascii	"in\0"
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
	mov	33,r1
_Label_4075:
	push	r0
	sub	r1,1,r1
	bne	_Label_4075
	mov	2573,r13		! source line 2573
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1308 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: pcb = *_temp_1308  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1313 = pcb + 124
	load	[r14+-132],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_1313 [fileDesc ] into _temp_1314
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-116],r1
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
	store	r2,[r14+-112]
!   Data Move: _temp_1312 = *_temp_1314  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_1312) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1315 = _temp_1312 + 12
	load	[r14+-120],r1
	add	r1,12,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1311 = *_temp_1315  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if _temp_1311 != 2 then goto _Label_1310		(int)
	load	[r14+-124],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1310
!	jmp	_Label_1309
_Label_1309:
! THEN...
	mov	2601,r13		! source line 2601
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1310:
! SEND STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0SE",r10
!   _temp_1316 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-104]
!   _temp_1317 = _temp_1316 + 4
	load	[r14+-104],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Send message Lock
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0IF",r10
!   if fileDesc <= 10 then goto _Label_1320		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1320
	jmp	_Label_1318
_Label_1320:
!   if fileDesc >= 0 then goto _Label_1319		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1319
!	jmp	_Label_1318
_Label_1318:
! THEN...
	mov	2616,r13		! source line 2616
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0SE",r10
!   _temp_1321 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   _temp_1322 = _temp_1321 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-92]
!   Send message Unlock
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1319:
! ASSIGNMENT STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1323 = pcb + 124
	load	[r14+-132],r1
	add	r1,124,r1
	store	r1,[r14+-88]
!   Move address of _temp_1323 [fileDesc ] into _temp_1324
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Data Move: open = *_temp_1324  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! IF STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1325
	load	[r14+-136],r1
	cmp	r1,r0
	be	_Label_1325
	jmp	_Label_1326
_Label_1325:
! THEN...
	mov	2621,r13		! source line 2621
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   _temp_1327 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   _temp_1328 = _temp_1327 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Send message Unlock
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1326:
! IF STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1332 = open + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1331 = *_temp_1332  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1331) then goto _Label_1329
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_1329
	jmp	_Label_1330
_Label_1329:
! THEN...
	mov	2627,r13		! source line 2627
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0SE",r10
!   _temp_1333 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   _temp_1334 = _temp_1333 + 4
	load	[r14+-64],r1
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
	mov	2628,r13		! source line 2628
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1330:
! IF STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1336		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1336
!	jmp	_Label_1335
_Label_1335:
! THEN...
	mov	2633,r13		! source line 2633
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2633,r13		! source line 2633
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1338 = open + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1337 = *_temp_1338  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1337) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1339 = _temp_1337 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: newCurrentPos = *_temp_1339  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+12]
! END IF...
_Label_1336:
! IF STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1342		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1342
	jmp	_Label_1340
_Label_1342:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1345 = open + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1344 = *_temp_1345  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1344) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1346 = _temp_1344 + 24
	load	[r14+-40],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1343 = *_temp_1346  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if newCurrentPos <= _temp_1343 then goto _Label_1341		(int)
	load	[r14+12],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1341
!	jmp	_Label_1340
_Label_1340:
! THEN...
	mov	2639,r13		! source line 2639
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_1347 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1348 = _temp_1347 + 4
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
	mov	2640,r13		! source line 2640
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1341:
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1349 = open + 16
	load	[r14+-136],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1349 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0SE",r10
!   _temp_1350 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1351 = _temp_1350 + 4
	load	[r14+-16],r1
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
	mov	2648,r13		! source line 2648
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1352
	.word	8		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_1353
	.word	8
	.word	4
	.word	_Label_1354
	.word	12
	.word	4
	.word	_Label_1355
	.word	-12
	.word	4
	.word	_Label_1356
	.word	-16
	.word	4
	.word	_Label_1357
	.word	-20
	.word	4
	.word	_Label_1358
	.word	-24
	.word	4
	.word	_Label_1359
	.word	-28
	.word	4
	.word	_Label_1360
	.word	-32
	.word	4
	.word	_Label_1361
	.word	-36
	.word	4
	.word	_Label_1362
	.word	-40
	.word	4
	.word	_Label_1363
	.word	-44
	.word	4
	.word	_Label_1364
	.word	-48
	.word	4
	.word	_Label_1365
	.word	-52
	.word	4
	.word	_Label_1366
	.word	-56
	.word	4
	.word	_Label_1367
	.word	-60
	.word	4
	.word	_Label_1368
	.word	-64
	.word	4
	.word	_Label_1369
	.word	-68
	.word	4
	.word	_Label_1370
	.word	-72
	.word	4
	.word	_Label_1371
	.word	-76
	.word	4
	.word	_Label_1372
	.word	-80
	.word	4
	.word	_Label_1373
	.word	-84
	.word	4
	.word	_Label_1374
	.word	-88
	.word	4
	.word	_Label_1375
	.word	-92
	.word	4
	.word	_Label_1376
	.word	-96
	.word	4
	.word	_Label_1377
	.word	-100
	.word	4
	.word	_Label_1378
	.word	-104
	.word	4
	.word	_Label_1379
	.word	-108
	.word	4
	.word	_Label_1380
	.word	-112
	.word	4
	.word	_Label_1381
	.word	-116
	.word	4
	.word	_Label_1382
	.word	-120
	.word	4
	.word	_Label_1383
	.word	-124
	.word	4
	.word	_Label_1384
	.word	-128
	.word	4
	.word	_Label_1385
	.word	-132
	.word	4
	.word	_Label_1386
	.word	-136
	.word	4
	.word	0
_Label_1352:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1353:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1354:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1385:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1386:
	.byte	'P'
	.ascii	"open\0"
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
	mov	23,r1
_Label_4076:
	push	r0
	sub	r1,1,r1
	bne	_Label_4076
	mov	2651,r13		! source line 2651
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1392 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_1391 = *_temp_1392  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1391) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1393 = _temp_1391 + 124
	load	[r14+-80],r1
	add	r1,124,r1
	store	r1,[r14+-72]
!   Move address of _temp_1393 [fileDesc ] into _temp_1394
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: _temp_1390 = *_temp_1394  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_1390) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1395 = _temp_1390 + 12
	load	[r14+-84],r1
	add	r1,12,r1
	store	r1,[r14+-64]
!   Data Move: _temp_1389 = *_temp_1395  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if _temp_1389 != 2 then goto _Label_1388		(int)
	load	[r14+-88],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1388
!	jmp	_Label_1387
_Label_1387:
! THEN...
	mov	2663,r13		! source line 2663
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1397 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1396 = *_temp_1397  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1396) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1398 = _temp_1396 + 124
	load	[r14+-60],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_1398 [fileDesc ] into _temp_1399
!     make sure index expr is >= 0
	load	[r14+8],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: *_temp_1399 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-48],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2664,r13		! source line 2664
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1388:
! IF STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1402		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1402
	jmp	_Label_1400
_Label_1402:
!   if fileDesc >= 0 then goto _Label_1401		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1401
!	jmp	_Label_1400
_Label_1400:
! THEN...
	mov	2670,r13		! source line 2670
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1401:
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1404 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1403 = *_temp_1404  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1403) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1405 = _temp_1403 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1405 [fileDesc ] into _temp_1406
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: open = *_temp_1406  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1408 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1407 = *_temp_1408  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1407) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1409 = _temp_1407 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_1409 [fileDesc ] into _temp_1410
!     make sure index expr is >= 0
	load	[r14+8],r2
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
!   Data Move: *_temp_1410 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1411
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1411
	jmp	_Label_1412
_Label_1411:
! THEN...
	mov	2678,r13		! source line 2678
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1412:
! SEND STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0SE",r10
!   _temp_1413 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1414
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_1415
	.word	8
	.word	4
	.word	_Label_1416
	.word	-12
	.word	4
	.word	_Label_1417
	.word	-16
	.word	4
	.word	_Label_1418
	.word	-20
	.word	4
	.word	_Label_1419
	.word	-24
	.word	4
	.word	_Label_1420
	.word	-28
	.word	4
	.word	_Label_1421
	.word	-32
	.word	4
	.word	_Label_1422
	.word	-36
	.word	4
	.word	_Label_1423
	.word	-40
	.word	4
	.word	_Label_1424
	.word	-44
	.word	4
	.word	_Label_1425
	.word	-48
	.word	4
	.word	_Label_1426
	.word	-52
	.word	4
	.word	_Label_1427
	.word	-56
	.word	4
	.word	_Label_1428
	.word	-60
	.word	4
	.word	_Label_1429
	.word	-64
	.word	4
	.word	_Label_1430
	.word	-68
	.word	4
	.word	_Label_1431
	.word	-72
	.word	4
	.word	_Label_1432
	.word	-76
	.word	4
	.word	_Label_1433
	.word	-80
	.word	4
	.word	_Label_1434
	.word	-84
	.word	4
	.word	_Label_1435
	.word	-88
	.word	4
	.word	_Label_1436
	.word	-92
	.word	4
	.word	0
_Label_1414:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1415:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1436:
	.byte	'P'
	.ascii	"open\0"
	.align
! 
! ===============  FUNCTION printString  ===============
! 
_function_203_printString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_printString,r1
	push	r1
	mov	1,r1
_Label_4077:
	push	r0
	sub	r1,1,r1
	bne	_Label_4077
	mov	2685,r13		! source line 2685
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_203_printString:
	.word	_sourceFileName
	.word	_Label_1437
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1438
	.word	8
	.word	4
	.word	0
_Label_1437:
	.ascii	"printString\0"
	.align
_Label_1438:
	.byte	'P'
	.ascii	"arg\0"
	.align
! 
! ===============  FUNCTION serialHandlerFunction  ===============
! 
_function_202_serialHandlerFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_serialHandlerFunction,r1
	push	r1
	mov	2,r1
_Label_4078:
	push	r0
	sub	r1,1,r1
	bne	_Label_4078
	mov	2691,r13		! source line 2691
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_1439 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-12]
!   Send message SerialHandler
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_202_serialHandlerFunction:
	.word	_sourceFileName
	.word	_Label_1440
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_1441
	.word	-12
	.word	4
	.word	0
_Label_1440:
	.ascii	"serialHandlerFunction\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_201_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_4079:
	push	r0
	sub	r1,1,r1
	bne	_Label_4079
	mov	2696,r13		! source line 2696
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2708,r13		! source line 2708
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1443 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1442 = *_temp_1443  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1442) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1444 = _temp_1442 + 32
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
!   _temp_1446 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1446 [0 ] into _temp_1447
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
!   _temp_1445 = _temp_1447		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1445  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2713,r13		! source line 2713
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1448 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1449 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_1449 [999 ] into _temp_1450
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
!   initSystemStackTop = _temp_1450		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1451 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_1451 [14 ] into _temp_1452
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
!   Data Move: initUserStackTop = *_temp_1452  (sizeInBytes=4)
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
	mov	2722,r13		! source line 2722
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_201_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_1453
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1454
	.word	8
	.word	4
	.word	_Label_1455
	.word	-12
	.word	4
	.word	_Label_1456
	.word	-16
	.word	4
	.word	_Label_1457
	.word	-20
	.word	4
	.word	_Label_1458
	.word	-24
	.word	4
	.word	_Label_1459
	.word	-28
	.word	4
	.word	_Label_1460
	.word	-32
	.word	4
	.word	_Label_1461
	.word	-36
	.word	4
	.word	_Label_1462
	.word	-40
	.word	4
	.word	_Label_1463
	.word	-44
	.word	4
	.word	_Label_1464
	.word	-48
	.word	4
	.word	_Label_1465
	.word	-52
	.word	4
	.word	_Label_1466
	.word	-56
	.word	4
	.word	_Label_1467
	.word	-60
	.word	4
	.word	_Label_1468
	.word	-64
	.word	4
	.word	0
_Label_1453:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_1454:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1466:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_1467:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1468:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_200_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_4080:
	push	r0
	sub	r1,1,r1
	bne	_Label_4080
	mov	3319,r13		! source line 3319
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3321,r13		! source line 3321
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3322,r13		! source line 3322
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3323,r13		! source line 3323
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1469 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1469  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3324,r13		! source line 3324
	mov	"\0\0AS",r10
!   _temp_1470 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1470) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1472 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1472) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1471 = *_temp_1472  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1470 = _temp_1471  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3325,r13		! source line 3325
	mov	"\0\0AS",r10
!   _temp_1473 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1473) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1475 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1475) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1474 = *_temp_1475  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1473 = _temp_1474  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3326,r13		! source line 3326
	mov	"\0\0AS",r10
!   _temp_1476 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1476) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1478 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1478) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1477 = *_temp_1478  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1476 = _temp_1477  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3326,r13		! source line 3326
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1479
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1480
	.word	8
	.word	4
	.word	_Label_1481
	.word	12
	.word	4
	.word	_Label_1482
	.word	-16
	.word	4
	.word	_Label_1483
	.word	-9
	.word	1
	.word	_Label_1484
	.word	-20
	.word	4
	.word	_Label_1485
	.word	-24
	.word	4
	.word	_Label_1486
	.word	-10
	.word	1
	.word	_Label_1487
	.word	-28
	.word	4
	.word	_Label_1488
	.word	-32
	.word	4
	.word	_Label_1489
	.word	-11
	.word	1
	.word	_Label_1490
	.word	-36
	.word	4
	.word	_Label_1491
	.word	-12
	.word	1
	.word	_Label_1492
	.word	-40
	.word	4
	.word	_Label_1493
	.word	-44
	.word	4
	.word	0
_Label_1479:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1480:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1481:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1483:
	.byte	'C'
	.ascii	"_temp_1477\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1486:
	.byte	'C'
	.ascii	"_temp_1474\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1489:
	.byte	'C'
	.ascii	"_temp_1471\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1491:
	.byte	'C'
	.ascii	"_temp_1469\0"
	.align
_Label_1492:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1493:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_199_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_printFCB,r1
	push	r1
	mov	3,r1
_Label_4081:
	push	r0
	sub	r1,1,r1
	bne	_Label_4081
	mov	3329,r13		! source line 3329
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1495 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1494 = *_temp_1495  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3330,r13		! source line 3330
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3331,r13		! source line 3331
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3331,r13		! source line 3331
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_printFCB:
	.word	_sourceFileName
	.word	_Label_1496
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1497
	.word	8
	.word	4
	.word	_Label_1498
	.word	-12
	.word	4
	.word	_Label_1499
	.word	-16
	.word	4
	.word	0
_Label_1496:
	.ascii	"printFCB\0"
	.align
_Label_1497:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_198_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_printOpen,r1
	push	r1
	mov	4,r1
_Label_4082:
	push	r0
	sub	r1,1,r1
	bne	_Label_4082
	mov	3334,r13		! source line 3334
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1500 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3335,r13		! source line 3335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1501 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3336,r13		! source line 3336
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1502 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3337,r13		! source line 3337
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3338,r13		! source line 3338
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
	mov	3338,r13		! source line 3338
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_printOpen:
	.word	_sourceFileName
	.word	_Label_1503
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1504
	.word	8
	.word	4
	.word	_Label_1505
	.word	-12
	.word	4
	.word	_Label_1506
	.word	-16
	.word	4
	.word	_Label_1507
	.word	-20
	.word	4
	.word	0
_Label_1503:
	.ascii	"printOpen\0"
	.align
_Label_1504:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1508
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1508:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1509
	.word	_sourceFileName
	.word	131		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1509:
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
_Label_4083:
	push	r0
	sub	r1,1,r1
	bne	_Label_4083
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1511		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1511
!	jmp	_Label_1510
_Label_1510:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1512 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
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
_Label_1511:
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
	.word	_Label_1514
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1516
	.word	12
	.word	4
	.word	_Label_1517
	.word	-12
	.word	4
	.word	_Label_1518
	.word	-16
	.word	4
	.word	0
_Label_1514:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1515:
	.ascii	"Pself\0"
	.align
_Label_1516:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1512\0"
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
_Label_4084:
	push	r0
	sub	r1,1,r1
	bne	_Label_4084
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
!   if count != 2147483647 then goto _Label_1520		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1520
!	jmp	_Label_1519
_Label_1519:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1521 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1521  sizeInBytes=4
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
_Label_1520:
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
!   if count > 0 then goto _Label_1523		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1523
!	jmp	_Label_1522
_Label_1522:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1524 = &waitingThreads
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
!   _temp_1525 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1525 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_1526 = &_P_Kernel_readyList
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
_Label_1523:
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
	.word	_Label_1527
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1528
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1529
	.word	-12
	.word	4
	.word	_Label_1530
	.word	-16
	.word	4
	.word	_Label_1531
	.word	-20
	.word	4
	.word	_Label_1532
	.word	-24
	.word	4
	.word	_Label_1533
	.word	-28
	.word	4
	.word	_Label_1534
	.word	-32
	.word	4
	.word	0
_Label_1527:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1528:
	.ascii	"Pself\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1533:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1534:
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
_Label_4085:
	push	r0
	sub	r1,1,r1
	bne	_Label_4085
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
!   if count != -2147483648 then goto _Label_1536		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1536
!	jmp	_Label_1535
_Label_1535:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1537 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1537  sizeInBytes=4
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
_Label_1536:
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
!   if count >= 0 then goto _Label_1539		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1539
!	jmp	_Label_1538
_Label_1538:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_1540 = &waitingThreads
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
_Label_1539:
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
	.word	_Label_1541
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1543
	.word	-12
	.word	4
	.word	_Label_1544
	.word	-16
	.word	4
	.word	_Label_1545
	.word	-20
	.word	4
	.word	0
_Label_1541:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1542:
	.ascii	"Pself\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1545:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1546
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1546:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1547
	.word	_sourceFileName
	.word	144		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1547:
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
_Label_4086:
	push	r0
	sub	r1,1,r1
	bne	_Label_4086
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
	.word	_Label_1549
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	-12
	.word	4
	.word	0
_Label_1549:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1548\0"
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
_Label_4087:
	push	r0
	sub	r1,1,r1
	bne	_Label_4087
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1553		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1553
!	jmp	_Label_1552
_Label_1552:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1554 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1554  sizeInBytes=4
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
_Label_1553:
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
!   if heldBy == 0 then goto _Label_1558		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1558
!   _temp_1557 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1559
_Label_1558:
!   _temp_1557 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1559:
!   if _temp_1557 then goto _Label_1556 else goto _Label_1555
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1555
	jmp	_Label_1556
_Label_1555:
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
	jmp	_Label_1560
_Label_1556:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_1561 = &waitingThreads
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
_Label_1560:
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
	.word	_Label_1562
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1563
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1564
	.word	-16
	.word	4
	.word	_Label_1565
	.word	-9
	.word	1
	.word	_Label_1566
	.word	-20
	.word	4
	.word	_Label_1567
	.word	-24
	.word	4
	.word	0
_Label_1562:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1563:
	.ascii	"Pself\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1565:
	.byte	'C'
	.ascii	"_temp_1557\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1567:
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
_Label_4088:
	push	r0
	sub	r1,1,r1
	bne	_Label_4088
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1569		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1569
!	jmp	_Label_1568
_Label_1568:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1570 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1570  sizeInBytes=4
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
_Label_1569:
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
!   _temp_1571 = &waitingThreads
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
!   if t == 0 then goto _Label_1573		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1573
!	jmp	_Label_1572
_Label_1572:
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
!   _temp_1574 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1574 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_1575 = &_P_Kernel_readyList
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
	jmp	_Label_1576
_Label_1573:
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
_Label_1576:
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
	.word	_Label_1577
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1578
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1579
	.word	-12
	.word	4
	.word	_Label_1580
	.word	-16
	.word	4
	.word	_Label_1581
	.word	-20
	.word	4
	.word	_Label_1582
	.word	-24
	.word	4
	.word	_Label_1583
	.word	-28
	.word	4
	.word	_Label_1584
	.word	-32
	.word	4
	.word	0
_Label_1577:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1578:
	.ascii	"Pself\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1583:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1584:
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
_Label_4089:
	push	r0
	sub	r1,1,r1
	bne	_Label_4089
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1587		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1587
!	jmp	_Label_1586
_Label_1586:
!   _temp_1585 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1588
_Label_1587:
!   _temp_1585 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1588:
!   ReturnResult: _temp_1585  (sizeInBytes=1)
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
	.word	_Label_1589
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1590
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1591
	.word	-9
	.word	1
	.word	0
_Label_1589:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1590:
	.ascii	"Pself\0"
	.align
_Label_1591:
	.byte	'C'
	.ascii	"_temp_1585\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1592
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1592:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1593
	.word	_sourceFileName
	.word	158		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1593:
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
_Label_4090:
	push	r0
	sub	r1,1,r1
	bne	_Label_4090
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
	.word	_Label_1595
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1596
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1597
	.word	-12
	.word	4
	.word	0
_Label_1595:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1596:
	.ascii	"Pself\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1594\0"
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
_Label_4091:
	push	r0
	sub	r1,1,r1
	bne	_Label_4091
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
!   Retrieve Result: targetName=_temp_1600  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1600 then goto _Label_1599 else goto _Label_1598
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1598
	jmp	_Label_1599
_Label_1598:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1601 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
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
_Label_1599:
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
!   _temp_1602 = &waitingThreads
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
	.word	_Label_1603
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1605
	.word	12
	.word	4
	.word	_Label_1606
	.word	-16
	.word	4
	.word	_Label_1607
	.word	-20
	.word	4
	.word	_Label_1608
	.word	-9
	.word	1
	.word	_Label_1609
	.word	-24
	.word	4
	.word	0
_Label_1603:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1604:
	.ascii	"Pself\0"
	.align
_Label_1605:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1608:
	.byte	'C'
	.ascii	"_temp_1600\0"
	.align
_Label_1609:
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
_Label_4092:
	push	r0
	sub	r1,1,r1
	bne	_Label_4092
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
!   Retrieve Result: targetName=_temp_1612  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1612 then goto _Label_1611 else goto _Label_1610
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1610
	jmp	_Label_1611
_Label_1610:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1613 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1613  sizeInBytes=4
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
_Label_1611:
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
!   _temp_1614 = &waitingThreads
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
!   if t == 0 then goto _Label_1616		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1616
!	jmp	_Label_1615
_Label_1615:
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
!   _temp_1617 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1617 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_1618 = &_P_Kernel_readyList
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
_Label_1616:
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
	.word	_Label_1619
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1620
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1621
	.word	12
	.word	4
	.word	_Label_1622
	.word	-16
	.word	4
	.word	_Label_1623
	.word	-20
	.word	4
	.word	_Label_1624
	.word	-24
	.word	4
	.word	_Label_1625
	.word	-28
	.word	4
	.word	_Label_1626
	.word	-9
	.word	1
	.word	_Label_1627
	.word	-32
	.word	4
	.word	_Label_1628
	.word	-36
	.word	4
	.word	0
_Label_1619:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1620:
	.ascii	"Pself\0"
	.align
_Label_1621:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1626:
	.byte	'C'
	.ascii	"_temp_1612\0"
	.align
_Label_1627:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1628:
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
_Label_4093:
	push	r0
	sub	r1,1,r1
	bne	_Label_4093
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
!   Retrieve Result: targetName=_temp_1631  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1631 then goto _Label_1630 else goto _Label_1629
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1629
	jmp	_Label_1630
_Label_1629:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1632 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1632  sizeInBytes=4
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
_Label_1630:
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
_Label_1633:
!	jmp	_Label_1634
_Label_1634:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_1636 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1637
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1637
	jmp	_Label_1638
_Label_1637:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_1635
! END IF...
_Label_1638:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1639 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1639 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_1640 = &_P_Kernel_readyList
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
	jmp	_Label_1633
_Label_1635:
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
	.word	_Label_1641
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1642
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1643
	.word	12
	.word	4
	.word	_Label_1644
	.word	-16
	.word	4
	.word	_Label_1645
	.word	-20
	.word	4
	.word	_Label_1646
	.word	-24
	.word	4
	.word	_Label_1647
	.word	-28
	.word	4
	.word	_Label_1648
	.word	-9
	.word	1
	.word	_Label_1649
	.word	-32
	.word	4
	.word	_Label_1650
	.word	-36
	.word	4
	.word	0
_Label_1641:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1642:
	.ascii	"Pself\0"
	.align
_Label_1643:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1648:
	.byte	'C'
	.ascii	"_temp_1631\0"
	.align
_Label_1649:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1650:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1651
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
_Label_1651:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1652
	.word	_sourceFileName
	.word	171		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1652:
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
_Label_4094:
	push	r0
	sub	r1,1,r1
	bne	_Label_4094
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
!   _temp_1653 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1653) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1653 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1654 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1654 [0 ] into _temp_1655
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
!   Data Move: *_temp_1655 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1656 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1656 [999 ] into _temp_1657
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
!   Data Move: *_temp_1657 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1658 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1658 [999 ] into _temp_1659
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
!   stackTop = _temp_1659		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1660 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1662 = &_temp_1661
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1662 = _temp_1662 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1664:
!   Data Move: *_temp_1662 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1662 = _temp_1662 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1663 = _temp_1663 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1663) then goto _Label_1664
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1664
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1665 = &_temp_1661
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_4095
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4095:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1660 = *_temp_1665  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_4096:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4096
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
!   _temp_1666 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1668 = &_temp_1667
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1668 = _temp_1668 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1670:
!   Data Move: *_temp_1668 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1668 = _temp_1668 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1669 = _temp_1669 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1669) then goto _Label_1670
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1670
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1671 = &_temp_1667
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_4097
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4097:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1666 = *_temp_1671  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_4098:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4098
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
	.word	_Label_1672
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1673
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1674
	.word	12
	.word	4
	.word	_Label_1675
	.word	-12
	.word	4
	.word	_Label_1676
	.word	-16
	.word	4
	.word	_Label_1677
	.word	-20
	.word	4
	.word	_Label_1678
	.word	-84
	.word	64
	.word	_Label_1679
	.word	-88
	.word	4
	.word	_Label_1680
	.word	-92
	.word	4
	.word	_Label_1681
	.word	-96
	.word	4
	.word	_Label_1682
	.word	-100
	.word	4
	.word	_Label_1683
	.word	-156
	.word	56
	.word	_Label_1684
	.word	-160
	.word	4
	.word	_Label_1685
	.word	-164
	.word	4
	.word	_Label_1686
	.word	-168
	.word	4
	.word	_Label_1687
	.word	-172
	.word	4
	.word	_Label_1688
	.word	-176
	.word	4
	.word	_Label_1689
	.word	-180
	.word	4
	.word	_Label_1690
	.word	-184
	.word	4
	.word	_Label_1691
	.word	-188
	.word	4
	.word	0
_Label_1672:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1673:
	.ascii	"Pself\0"
	.align
_Label_1674:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1653\0"
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
_Label_4099:
	push	r0
	sub	r1,1,r1
	bne	_Label_4099
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
!   _temp_1692 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1692  (sizeInBytes=4)
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
!   _temp_1694 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1693  sizeInBytes=4
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
	.word	_Label_1695
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1696
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1697
	.word	12
	.word	4
	.word	_Label_1698
	.word	16
	.word	4
	.word	_Label_1699
	.word	-12
	.word	4
	.word	_Label_1700
	.word	-16
	.word	4
	.word	_Label_1701
	.word	-20
	.word	4
	.word	_Label_1702
	.word	-24
	.word	4
	.word	_Label_1703
	.word	-28
	.word	4
	.word	0
_Label_1695:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1696:
	.ascii	"Pself\0"
	.align
_Label_1697:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1698:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1702:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1703:
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
_Label_4100:
	push	r0
	sub	r1,1,r1
	bne	_Label_4100
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1706 == _P_Kernel_currentThread then goto _Label_1705		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1705
!	jmp	_Label_1704
_Label_1704:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1707 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1707  sizeInBytes=4
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
_Label_1705:
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
!   _temp_1708 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1710		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1710
!	jmp	_Label_1709
_Label_1709:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1712		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1712
!	jmp	_Label_1711
_Label_1711:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1713 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1713  sizeInBytes=4
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
_Label_1712:
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
!   _temp_1715 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1714  sizeInBytes=4
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
_Label_1710:
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
	.word	_Label_1716
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1717
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1718
	.word	-12
	.word	4
	.word	_Label_1719
	.word	-16
	.word	4
	.word	_Label_1720
	.word	-20
	.word	4
	.word	_Label_1721
	.word	-24
	.word	4
	.word	_Label_1722
	.word	-28
	.word	4
	.word	_Label_1723
	.word	-32
	.word	4
	.word	_Label_1724
	.word	-36
	.word	4
	.word	_Label_1725
	.word	-40
	.word	4
	.word	_Label_1726
	.word	-44
	.word	4
	.word	0
_Label_1716:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1717:
	.ascii	"Pself\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1724:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1725:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1726:
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
_Label_4101:
	push	r0
	sub	r1,1,r1
	bne	_Label_4101
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1728		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1728
!	jmp	_Label_1727
_Label_1727:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1729 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1729  sizeInBytes=4
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
_Label_1728:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1732 == _P_Kernel_currentThread then goto _Label_1731		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1731
!	jmp	_Label_1730
_Label_1730:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1733 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1733  sizeInBytes=4
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
_Label_1731:
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
!   _temp_1734 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1735
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1735
	jmp	_Label_1736
_Label_1735:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1737 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1737  sizeInBytes=4
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
_Label_1736:
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
	.word	_Label_1738
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1740
	.word	-12
	.word	4
	.word	_Label_1741
	.word	-16
	.word	4
	.word	_Label_1742
	.word	-20
	.word	4
	.word	_Label_1743
	.word	-24
	.word	4
	.word	_Label_1744
	.word	-28
	.word	4
	.word	_Label_1745
	.word	-32
	.word	4
	.word	0
_Label_1738:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1739:
	.ascii	"Pself\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1745:
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
_Label_4102:
	push	r0
	sub	r1,1,r1
	bne	_Label_4102
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1749 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1749 [0 ] into _temp_1750
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
!   Data Move: _temp_1748 = *_temp_1750  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1748 == 606348324 then goto _Label_1747		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1747
!	jmp	_Label_1746
_Label_1746:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1751 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1751  sizeInBytes=4
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
	jmp	_Label_1752
_Label_1747:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1756 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1756 [999 ] into _temp_1757
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
!   Data Move: _temp_1755 = *_temp_1757  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1755 == 606348324 then goto _Label_1754		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1754
!	jmp	_Label_1753
_Label_1753:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1758 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1758  sizeInBytes=4
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
_Label_1754:
! END IF...
_Label_1752:
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
	.word	_Label_1759
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1760
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1761
	.word	-12
	.word	4
	.word	_Label_1762
	.word	-16
	.word	4
	.word	_Label_1763
	.word	-20
	.word	4
	.word	_Label_1764
	.word	-24
	.word	4
	.word	_Label_1765
	.word	-28
	.word	4
	.word	_Label_1766
	.word	-32
	.word	4
	.word	_Label_1767
	.word	-36
	.word	4
	.word	_Label_1768
	.word	-40
	.word	4
	.word	0
_Label_1759:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1760:
	.ascii	"Pself\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1748\0"
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
_Label_4103:
	push	r0
	sub	r1,1,r1
	bne	_Label_4103
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
!   _temp_1769 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1769  sizeInBytes=4
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
!   _temp_1770 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1770  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1772 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1772  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1773 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1773  sizeInBytes=4
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
!   _temp_1778 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1779 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1778  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1774:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1779 then goto _Label_1777		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1777
_Label_1775:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1780 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1780  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1781 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1781  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1782 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1782  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1784 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1784 [i ] into _temp_1785
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
!   Data Move: _temp_1783 = *_temp_1785  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1783  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1786 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1786  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1788 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1788 [i ] into _temp_1789
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
!   Data Move: _temp_1787 = *_temp_1789  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1787  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1790 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1790  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1776:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1774
! END FOR
_Label_1777:
! CALL STATEMENT...
!   _temp_1791 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-116]
!   _temp_1792 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1791  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1792  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1793 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-108]
!   _temp_1795 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1795 [0 ] into _temp_1796
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
!   _temp_1794 = _temp_1796		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1793  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1794  sizeInBytes=4
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
	be	_Label_1799
	cmp	r1,2
	be	_Label_1800
	cmp	r1,3
	be	_Label_1801
	cmp	r1,4
	be	_Label_1802
	cmp	r1,5
	be	_Label_1803
	jmp	_Label_1797
! CASE 1...
_Label_1799:
! CALL STATEMENT...
!   _temp_1804 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1804  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1798
! CASE 2...
_Label_1800:
! CALL STATEMENT...
!   _temp_1805 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1805  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1798
! CASE 3...
_Label_1801:
! CALL STATEMENT...
!   _temp_1806 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1806  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1798
! CASE 4...
_Label_1802:
! CALL STATEMENT...
!   _temp_1807 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1807  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1798
! CASE 5...
_Label_1803:
! CALL STATEMENT...
!   _temp_1808 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1808  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1798
! DEFAULT CASE...
_Label_1797:
! CALL STATEMENT...
!   _temp_1809 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1809  sizeInBytes=4
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
_Label_1798:
! CALL STATEMENT...
!   _temp_1810 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1810  sizeInBytes=4
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
!   _temp_1811 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1811  sizeInBytes=4
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
!   _temp_1816 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1817 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1816  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1812:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1817 then goto _Label_1815		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1815
_Label_1813:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1818 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1818  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1819 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1819  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1820 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1820  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1822 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1822 [i ] into _temp_1823
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
!   Data Move: _temp_1821 = *_temp_1823  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1821  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1824 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1824  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1826 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1826 [i ] into _temp_1827
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
!   Data Move: _temp_1825 = *_temp_1827  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1825  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1828 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1828  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1814:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1812
! END FOR
_Label_1815:
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
	.word	_Label_1829
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1831
	.word	-12
	.word	4
	.word	_Label_1832
	.word	-16
	.word	4
	.word	_Label_1833
	.word	-20
	.word	4
	.word	_Label_1834
	.word	-24
	.word	4
	.word	_Label_1835
	.word	-28
	.word	4
	.word	_Label_1836
	.word	-32
	.word	4
	.word	_Label_1837
	.word	-36
	.word	4
	.word	_Label_1838
	.word	-40
	.word	4
	.word	_Label_1839
	.word	-44
	.word	4
	.word	_Label_1840
	.word	-48
	.word	4
	.word	_Label_1841
	.word	-52
	.word	4
	.word	_Label_1842
	.word	-56
	.word	4
	.word	_Label_1843
	.word	-60
	.word	4
	.word	_Label_1844
	.word	-64
	.word	4
	.word	_Label_1845
	.word	-68
	.word	4
	.word	_Label_1846
	.word	-72
	.word	4
	.word	_Label_1847
	.word	-76
	.word	4
	.word	_Label_1848
	.word	-80
	.word	4
	.word	_Label_1849
	.word	-84
	.word	4
	.word	_Label_1850
	.word	-88
	.word	4
	.word	_Label_1851
	.word	-92
	.word	4
	.word	_Label_1852
	.word	-96
	.word	4
	.word	_Label_1853
	.word	-100
	.word	4
	.word	_Label_1854
	.word	-104
	.word	4
	.word	_Label_1855
	.word	-108
	.word	4
	.word	_Label_1856
	.word	-112
	.word	4
	.word	_Label_1857
	.word	-116
	.word	4
	.word	_Label_1858
	.word	-120
	.word	4
	.word	_Label_1859
	.word	-124
	.word	4
	.word	_Label_1860
	.word	-128
	.word	4
	.word	_Label_1861
	.word	-132
	.word	4
	.word	_Label_1862
	.word	-136
	.word	4
	.word	_Label_1863
	.word	-140
	.word	4
	.word	_Label_1864
	.word	-144
	.word	4
	.word	_Label_1865
	.word	-148
	.word	4
	.word	_Label_1866
	.word	-152
	.word	4
	.word	_Label_1867
	.word	-156
	.word	4
	.word	_Label_1868
	.word	-160
	.word	4
	.word	_Label_1869
	.word	-164
	.word	4
	.word	_Label_1870
	.word	-168
	.word	4
	.word	_Label_1871
	.word	-172
	.word	4
	.word	_Label_1872
	.word	-176
	.word	4
	.word	_Label_1873
	.word	-180
	.word	4
	.word	_Label_1874
	.word	-184
	.word	4
	.word	_Label_1875
	.word	-188
	.word	4
	.word	_Label_1876
	.word	-192
	.word	4
	.word	_Label_1877
	.word	-196
	.word	4
	.word	0
_Label_1829:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1830:
	.ascii	"Pself\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1790\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1789\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1788\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1876:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1877:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1878
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1878:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1879
	.word	_sourceFileName
	.word	198		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1879:
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
_Label_4104:
	push	r0
	sub	r1,1,r1
	bne	_Label_4104
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1880 = _StringConst_81
	set	_StringConst_81,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1880  sizeInBytes=4
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
!   _temp_1882 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1884 = &_temp_1883
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1884 = _temp_1884 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1886 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_4105:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4105
!   _temp_1886 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1888:
!   Data Move: *_temp_1884 = _temp_1886  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_4106:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4106
!   _temp_1884 = _temp_1884 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1885 = _temp_1885 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1885) then goto _Label_1888
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1888
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1889 = &_temp_1883
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4107
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4107:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1882 = *_temp_1889  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_4108:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4108
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1890 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-188]
!   _temp_1891 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1891 [0 ] into _temp_1892
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
!   Prepare Argument: offset=12  value=_temp_1890  sizeInBytes=4
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
!   _temp_1893 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-176]
!   _temp_1894 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1894 [1 ] into _temp_1895
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
!   Prepare Argument: offset=12  value=_temp_1893  sizeInBytes=4
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
!   _temp_1896 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-164]
!   _temp_1897 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1897 [2 ] into _temp_1898
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
!   Prepare Argument: offset=12  value=_temp_1896  sizeInBytes=4
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
!   _temp_1899 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-152]
!   _temp_1900 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1900 [3 ] into _temp_1901
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
!   Prepare Argument: offset=12  value=_temp_1899  sizeInBytes=4
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
!   _temp_1902 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-140]
!   _temp_1903 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1903 [4 ] into _temp_1904
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
!   Prepare Argument: offset=12  value=_temp_1902  sizeInBytes=4
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
!   _temp_1905 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-128]
!   _temp_1906 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1906 [5 ] into _temp_1907
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
!   Prepare Argument: offset=12  value=_temp_1905  sizeInBytes=4
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
!   _temp_1908 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-116]
!   _temp_1909 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1909 [6 ] into _temp_1910
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
!   Prepare Argument: offset=12  value=_temp_1908  sizeInBytes=4
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
!   _temp_1911 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-104]
!   _temp_1912 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1912 [7 ] into _temp_1913
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
!   Prepare Argument: offset=12  value=_temp_1911  sizeInBytes=4
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
!   _temp_1914 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-92]
!   _temp_1915 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1915 [8 ] into _temp_1916
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
!   Prepare Argument: offset=12  value=_temp_1914  sizeInBytes=4
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
!   _temp_1917 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-80]
!   _temp_1918 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1918 [9 ] into _temp_1919
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
!   Prepare Argument: offset=12  value=_temp_1917  sizeInBytes=4
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
!   _temp_1924 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1925 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1924  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1920:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1925 then goto _Label_1923		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1923
_Label_1921:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1926 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1926 [index ] into _temp_1927
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
!   _temp_1928 = _temp_1927 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1928 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1930 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1930 [index ] into _temp_1931
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
!   _temp_1929 = _temp_1931		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1932 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1929  sizeInBytes=4
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
_Label_1922:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1920
! END FOR
_Label_1923:
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
!   _temp_1934 = &threadManagerLock
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
!   _temp_1936 = &aThreadBecameFree
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
!   _temp_1938 = &leadThread
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
	.word	_Label_1939
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1940
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1941
	.word	-12
	.word	4
	.word	_Label_1942
	.word	-16
	.word	4
	.word	_Label_1943
	.word	-20
	.word	4
	.word	_Label_1944
	.word	-24
	.word	4
	.word	_Label_1945
	.word	-28
	.word	4
	.word	_Label_1946
	.word	-32
	.word	4
	.word	_Label_1947
	.word	-36
	.word	4
	.word	_Label_1948
	.word	-40
	.word	4
	.word	_Label_1949
	.word	-44
	.word	4
	.word	_Label_1950
	.word	-48
	.word	4
	.word	_Label_1951
	.word	-52
	.word	4
	.word	_Label_1952
	.word	-56
	.word	4
	.word	_Label_1953
	.word	-60
	.word	4
	.word	_Label_1954
	.word	-64
	.word	4
	.word	_Label_1955
	.word	-68
	.word	4
	.word	_Label_1956
	.word	-72
	.word	4
	.word	_Label_1957
	.word	-76
	.word	4
	.word	_Label_1958
	.word	-80
	.word	4
	.word	_Label_1959
	.word	-84
	.word	4
	.word	_Label_1960
	.word	-88
	.word	4
	.word	_Label_1961
	.word	-92
	.word	4
	.word	_Label_1962
	.word	-96
	.word	4
	.word	_Label_1963
	.word	-100
	.word	4
	.word	_Label_1964
	.word	-104
	.word	4
	.word	_Label_1965
	.word	-108
	.word	4
	.word	_Label_1966
	.word	-112
	.word	4
	.word	_Label_1967
	.word	-116
	.word	4
	.word	_Label_1968
	.word	-120
	.word	4
	.word	_Label_1969
	.word	-124
	.word	4
	.word	_Label_1970
	.word	-128
	.word	4
	.word	_Label_1971
	.word	-132
	.word	4
	.word	_Label_1972
	.word	-136
	.word	4
	.word	_Label_1973
	.word	-140
	.word	4
	.word	_Label_1974
	.word	-144
	.word	4
	.word	_Label_1975
	.word	-148
	.word	4
	.word	_Label_1976
	.word	-152
	.word	4
	.word	_Label_1977
	.word	-156
	.word	4
	.word	_Label_1978
	.word	-160
	.word	4
	.word	_Label_1979
	.word	-164
	.word	4
	.word	_Label_1980
	.word	-168
	.word	4
	.word	_Label_1981
	.word	-172
	.word	4
	.word	_Label_1982
	.word	-176
	.word	4
	.word	_Label_1983
	.word	-180
	.word	4
	.word	_Label_1984
	.word	-184
	.word	4
	.word	_Label_1985
	.word	-188
	.word	4
	.word	_Label_1986
	.word	-192
	.word	4
	.word	_Label_1987
	.word	-196
	.word	4
	.word	_Label_1988
	.word	-4360
	.word	4164
	.word	_Label_1989
	.word	-4364
	.word	4
	.word	_Label_1990
	.word	-4368
	.word	4
	.word	_Label_1991
	.word	-46012
	.word	41644
	.word	_Label_1992
	.word	-46016
	.word	4
	.word	_Label_1993
	.word	-46020
	.word	4
	.word	_Label_1994
	.word	-46024
	.word	4
	.word	_Label_1995
	.word	-46028
	.word	4
	.word	0
_Label_1939:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1940:
	.ascii	"Pself\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1881\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1995:
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
_Label_4109:
	push	r0
	sub	r1,1,r1
	bne	_Label_4109
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
!   _temp_1996 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
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
!   _temp_2001 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2002 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2001  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1997:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2002 then goto _Label_2000		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2000
_Label_1998:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2003 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
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
!   _temp_2004 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2004  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2006 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_2006 [i ] into _temp_2007
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
!   _temp_2005 = _temp_2007		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_207_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1999:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1997
! END FOR
_Label_2000:
! CALL STATEMENT...
!   _temp_2008 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2008  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_2009 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2010 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2009  sizeInBytes=4
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
	.word	_Label_2011
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_2012
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2013
	.word	-12
	.word	4
	.word	_Label_2014
	.word	-16
	.word	4
	.word	_Label_2015
	.word	-20
	.word	4
	.word	_Label_2016
	.word	-24
	.word	4
	.word	_Label_2017
	.word	-28
	.word	4
	.word	_Label_2018
	.word	-32
	.word	4
	.word	_Label_2019
	.word	-36
	.word	4
	.word	_Label_2020
	.word	-40
	.word	4
	.word	_Label_2021
	.word	-44
	.word	4
	.word	_Label_2022
	.word	-48
	.word	4
	.word	_Label_2023
	.word	-52
	.word	4
	.word	_Label_2024
	.word	-56
	.word	4
	.word	_Label_2025
	.word	-60
	.word	4
	.word	0
_Label_2011:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2012:
	.ascii	"Pself\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2024:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2025:
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
_Label_4110:
	push	r0
	sub	r1,1,r1
	bne	_Label_4110
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_2026 = &threadManagerLock
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
_Label_2027:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_2030 = &freeList
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
!   if result==true then goto _Label_2028 else goto _Label_2029
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2029
	jmp	_Label_2028
_Label_2028:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_2031 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   _temp_2032 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2031  sizeInBytes=4
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
	jmp	_Label_2027
_Label_2029:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_2033 = &freeList
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
!   _temp_2034 = threadToReturn + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2034 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_2035 = &threadManagerLock
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
	.word	_Label_2036
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2038
	.word	-12
	.word	4
	.word	_Label_2039
	.word	-16
	.word	4
	.word	_Label_2040
	.word	-20
	.word	4
	.word	_Label_2041
	.word	-24
	.word	4
	.word	_Label_2042
	.word	-28
	.word	4
	.word	_Label_2043
	.word	-32
	.word	4
	.word	_Label_2044
	.word	-36
	.word	4
	.word	_Label_2045
	.word	-40
	.word	4
	.word	0
_Label_2036:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_2037:
	.ascii	"Pself\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2045:
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
_Label_4111:
	push	r0
	sub	r1,1,r1
	bne	_Label_4111
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_2046 = &threadManagerLock
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
!   if th == 0 then goto _Label_2048		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2048
!	jmp	_Label_2047
_Label_2047:
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
!   _temp_2049 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2049 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_2050 = &freeList
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
!   _temp_2051 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_2052 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_2051  sizeInBytes=4
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
	jmp	_Label_2053
_Label_2048:
! ELSE...
	mov	794,r13		! source line 794
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2054 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2054  sizeInBytes=4
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
_Label_2053:
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_2055 = &threadManagerLock
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
	.word	_Label_2056
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2057
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2058
	.word	12
	.word	4
	.word	_Label_2059
	.word	-12
	.word	4
	.word	_Label_2060
	.word	-16
	.word	4
	.word	_Label_2061
	.word	-20
	.word	4
	.word	_Label_2062
	.word	-24
	.word	4
	.word	_Label_2063
	.word	-28
	.word	4
	.word	_Label_2064
	.word	-32
	.word	4
	.word	_Label_2065
	.word	-36
	.word	4
	.word	0
_Label_2056:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_2057:
	.ascii	"Pself\0"
	.align
_Label_2058:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2054\0"
	.align
_Label_2061:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2063:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2064:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_2066
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_2066:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2067
	.word	_sourceFileName
	.word	220		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2067:
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
_Label_4112:
	push	r0
	sub	r1,1,r1
	bne	_Label_4112
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
_Label_4113:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4113
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_2069 = &addrSpace
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
!   _temp_2070 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_2072 = &_temp_2071
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_2072 = _temp_2072 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_2074:
!   Data Move: *_temp_2072 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2072 = _temp_2072 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2073 = _temp_2073 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2073) then goto _Label_2074
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2074
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_2075 = &_temp_2071
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4114
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4114:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2070 = *_temp_2075  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_4115:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4115
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
	.word	_Label_2076
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2078
	.word	-12
	.word	4
	.word	_Label_2079
	.word	-16
	.word	4
	.word	_Label_2080
	.word	-20
	.word	4
	.word	_Label_2081
	.word	-64
	.word	44
	.word	_Label_2082
	.word	-68
	.word	4
	.word	_Label_2083
	.word	-72
	.word	4
	.word	_Label_2084
	.word	-76
	.word	4
	.word	0
_Label_2076:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2077:
	.ascii	"Pself\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2069\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2068\0"
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
_Label_4116:
	push	r0
	sub	r1,1,r1
	bne	_Label_4116
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2085) then goto _runtimeErrorNullPointer
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
!   _temp_2086 = &addrSpace
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
!   _temp_2087 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2087  sizeInBytes=4
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
	call	_function_207_ThreadPrintShort
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
	.word	_Label_2088
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2090
	.word	-12
	.word	4
	.word	_Label_2091
	.word	-16
	.word	4
	.word	_Label_2092
	.word	-20
	.word	4
	.word	0
_Label_2088:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2089:
	.ascii	"Pself\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2085\0"
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
_Label_4117:
	push	r0
	sub	r1,1,r1
	bne	_Label_4117
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2093 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2093  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2094  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2095 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2095  sizeInBytes=4
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
!   _temp_2096 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2096  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_2098		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2098
!	jmp	_Label_2097
_Label_2097:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2099 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2099  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2100
_Label_2098:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_2102		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2102
!	jmp	_Label_2101
_Label_2101:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2103 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2103  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2104
_Label_2102:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_2106		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_2106
!	jmp	_Label_2105
_Label_2105:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2107 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2107  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2108
_Label_2106:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2109 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2109  sizeInBytes=4
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
_Label_2108:
! END IF...
_Label_2104:
! END IF...
_Label_2100:
! CALL STATEMENT...
!   _temp_2110 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2110  sizeInBytes=4
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
!   _temp_2111 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2111  sizeInBytes=4
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
	.word	_Label_2112
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2114
	.word	-12
	.word	4
	.word	_Label_2115
	.word	-16
	.word	4
	.word	_Label_2116
	.word	-20
	.word	4
	.word	_Label_2117
	.word	-24
	.word	4
	.word	_Label_2118
	.word	-28
	.word	4
	.word	_Label_2119
	.word	-32
	.word	4
	.word	_Label_2120
	.word	-36
	.word	4
	.word	_Label_2121
	.word	-40
	.word	4
	.word	_Label_2122
	.word	-44
	.word	4
	.word	_Label_2123
	.word	-48
	.word	4
	.word	0
_Label_2112:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2113:
	.ascii	"Pself\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2099\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_2124
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
_Label_2124:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2125
	.word	_sourceFileName
	.word	240		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_2125:
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
_Label_4118:
	push	r0
	sub	r1,1,r1
	bne	_Label_4118
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
!   _temp_2127 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1936]
!   NEW ARRAY Constructor...
!   _temp_2129 = &_temp_2128
	add	r14,-1932,r1
	store	r1,[r14+-248]
!   _temp_2129 = _temp_2129 + 4
	load	[r14+-248],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2131 = zeros  (sizeInBytes=168)
	add	r14,-240,r4
	mov	42,r3
_Label_4119:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4119
!   _temp_2131 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-240]
	mov	10,r1
	store	r1,[r14+-244]
_Label_2133:
!   Data Move: *_temp_2129 = _temp_2131  (sizeInBytes=168)
	add	r14,-240,r5
	load	[r14+-248],r4
	mov	42,r3
_Label_4120:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4120
!   _temp_2129 = _temp_2129 + 168
	load	[r14+-248],r1
	add	r1,168,r1
	store	r1,[r14+-248]
!   _temp_2130 = _temp_2130 + -1
	load	[r14+-244],r1
	add	r1,-1,r1
	store	r1,[r14+-244]
!   if intNotZero (_temp_2130) then goto _Label_2133
	load	[r14+-244],r1
	cmp	r1,r0
	bne	_Label_2133
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1932]
!   _temp_2134 = &_temp_2128
	add	r14,-1932,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1936],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4121
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4121:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2127 = *_temp_2134  (sizeInBytes=1684)
	load	[r14+-68],r5
	load	[r14+-1936],r4
	mov	421,r3
_Label_4122:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4122
! FOR STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2139 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2140 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_2139  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1944]
_Label_2135:
!   Perform the FOR-LOOP termination test
!   if index > _temp_2140 then goto _Label_2138		
	load	[r14+-1944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2138
_Label_2136:
	mov	898,r13		! source line 898
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_2141 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2141 [index ] into _temp_2142
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
!   _temp_2144 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_2144 [index ] into _temp_2145
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
!   _temp_2143 = _temp_2145		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_2146 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2143  sizeInBytes=4
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
_Label_2137:
!   index = index + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_2135
! END FOR
_Label_2138:
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
!   _temp_2148 = &processManagerLock
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
!   _temp_2150 = &aProcessBecameFree
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
!   _temp_2152 = &aProcessDied
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
	.word	_Label_2153
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_2154
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2155
	.word	-12
	.word	4
	.word	_Label_2156
	.word	-16
	.word	4
	.word	_Label_2157
	.word	-20
	.word	4
	.word	_Label_2158
	.word	-24
	.word	4
	.word	_Label_2159
	.word	-28
	.word	4
	.word	_Label_2160
	.word	-32
	.word	4
	.word	_Label_2161
	.word	-36
	.word	4
	.word	_Label_2162
	.word	-40
	.word	4
	.word	_Label_2163
	.word	-44
	.word	4
	.word	_Label_2164
	.word	-48
	.word	4
	.word	_Label_2165
	.word	-52
	.word	4
	.word	_Label_2166
	.word	-56
	.word	4
	.word	_Label_2167
	.word	-60
	.word	4
	.word	_Label_2168
	.word	-64
	.word	4
	.word	_Label_2169
	.word	-68
	.word	4
	.word	_Label_2170
	.word	-72
	.word	4
	.word	_Label_2171
	.word	-240
	.word	168
	.word	_Label_2172
	.word	-244
	.word	4
	.word	_Label_2173
	.word	-248
	.word	4
	.word	_Label_2174
	.word	-1932
	.word	1684
	.word	_Label_2175
	.word	-1936
	.word	4
	.word	_Label_2176
	.word	-1940
	.word	4
	.word	_Label_2177
	.word	-1944
	.word	4
	.word	0
_Label_2153:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2154:
	.ascii	"Pself\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2177:
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
_Label_4123:
	push	r0
	sub	r1,1,r1
	bne	_Label_4123
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
!   _temp_2178 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2178  sizeInBytes=4
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
!   _temp_2183 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2184 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2183  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_2179:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2184 then goto _Label_2182		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2182
_Label_2180:
	mov	924,r13		! source line 924
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2185 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2185  sizeInBytes=4
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
!   _temp_2186 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2186  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_2187 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2187 [i ] into _temp_2188
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
_Label_2181:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_2179
! END FOR
_Label_2182:
! CALL STATEMENT...
!   _temp_2189 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2189  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_2190 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2191 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2190  sizeInBytes=4
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
	.word	_Label_2192
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2194
	.word	-12
	.word	4
	.word	_Label_2195
	.word	-16
	.word	4
	.word	_Label_2196
	.word	-20
	.word	4
	.word	_Label_2197
	.word	-24
	.word	4
	.word	_Label_2198
	.word	-28
	.word	4
	.word	_Label_2199
	.word	-32
	.word	4
	.word	_Label_2200
	.word	-36
	.word	4
	.word	_Label_2201
	.word	-40
	.word	4
	.word	_Label_2202
	.word	-44
	.word	4
	.word	_Label_2203
	.word	-48
	.word	4
	.word	_Label_2204
	.word	-52
	.word	4
	.word	_Label_2205
	.word	-56
	.word	4
	.word	0
_Label_2192:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2193:
	.ascii	"Pself\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2187\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2204:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2205:
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
_Label_4124:
	push	r0
	sub	r1,1,r1
	bne	_Label_4124
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
!   _temp_2206 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2206  sizeInBytes=4
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
!   _temp_2211 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2212 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2211  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_2207:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2212 then goto _Label_2210		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2210
_Label_2208:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2213 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2213  sizeInBytes=4
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
!   _temp_2214 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_2214 [i ] into _temp_2215
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
_Label_2209:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_2207
! END FOR
_Label_2210:
! CALL STATEMENT...
!   _temp_2216 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2216  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_2217 = _function_206_PrintObjectAddr
	set	_function_206_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_2218 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2217  sizeInBytes=4
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
	.word	_Label_2219
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2220
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2221
	.word	-12
	.word	4
	.word	_Label_2222
	.word	-16
	.word	4
	.word	_Label_2223
	.word	-20
	.word	4
	.word	_Label_2224
	.word	-24
	.word	4
	.word	_Label_2225
	.word	-28
	.word	4
	.word	_Label_2226
	.word	-32
	.word	4
	.word	_Label_2227
	.word	-36
	.word	4
	.word	_Label_2228
	.word	-40
	.word	4
	.word	_Label_2229
	.word	-44
	.word	4
	.word	_Label_2230
	.word	-48
	.word	4
	.word	_Label_2231
	.word	-52
	.word	4
	.word	0
_Label_2219:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_2220:
	.ascii	"Pself\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2230:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2231:
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
_Label_4125:
	push	r0
	sub	r1,1,r1
	bne	_Label_4125
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_2232 = &processManagerLock
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
_Label_2233:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2236 = &freeList
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
!   if result==true then goto _Label_2234 else goto _Label_2235
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2235
	jmp	_Label_2234
_Label_2234:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_2237 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2238 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2237  sizeInBytes=4
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
	jmp	_Label_2233
_Label_2235:
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
!   _temp_2239 = &freeList
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
!   _temp_2240 = processToReturn + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2240 = 1  (sizeInBytes=4)
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
!   _temp_2241 = processToReturn + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2241 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_2242 = &processManagerLock
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
	.word	_Label_2243
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2244
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2251
	.word	-36
	.word	4
	.word	_Label_2252
	.word	-40
	.word	4
	.word	_Label_2253
	.word	-44
	.word	4
	.word	0
_Label_2243:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2244:
	.ascii	"Pself\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2253:
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
_Label_4126:
	push	r0
	sub	r1,1,r1
	bne	_Label_4126
	mov	991,r13		! source line 991
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2254 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2254  sizeInBytes=4
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
!   _temp_2255 = &processManagerLock
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
!   _temp_2256 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2256 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2257 = &freeList
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
!   _temp_2258 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2259 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2258  sizeInBytes=4
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
!   _temp_2260 = &processManagerLock
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
	.word	_Label_2261
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2263
	.word	12
	.word	4
	.word	_Label_2264
	.word	-12
	.word	4
	.word	_Label_2265
	.word	-16
	.word	4
	.word	_Label_2266
	.word	-20
	.word	4
	.word	_Label_2267
	.word	-24
	.word	4
	.word	_Label_2268
	.word	-28
	.word	4
	.word	_Label_2269
	.word	-32
	.word	4
	.word	_Label_2270
	.word	-36
	.word	4
	.word	0
_Label_2261:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2262:
	.ascii	"Pself\0"
	.align
_Label_2263:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2254\0"
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
_Label_4127:
	push	r0
	sub	r1,1,r1
	bne	_Label_4127
	mov	1010,r13		! source line 1010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_2271 = &processManagerLock
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
!   _temp_2276 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2277 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2276  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-152]
_Label_2272:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2277 then goto _Label_2275		
	load	[r14+-152],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2275
_Label_2273:
	mov	1035,r13		! source line 1035
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   _temp_2278 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2278 [i ] into _temp_2279
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
!   child = _temp_2279		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2284 = child + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: _temp_2283 = *_temp_2284  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2286 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_2285 = *_temp_2286  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_2283 != _temp_2285 then goto _Label_2281		(int)
	load	[r14+-128],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2281
!	jmp	_Label_2282
_Label_2282:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2288 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2287 = *_temp_2288  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2287 != 2 then goto _Label_2281		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2281
!	jmp	_Label_2280
_Label_2280:
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
!   _temp_2289 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_2289 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2290 = &freeList
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
!   _temp_2291 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-96]
!   _temp_2292 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_2291  sizeInBytes=4
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
_Label_2281:
!   Increment the FOR-LOOP index variable and jump back
_Label_2274:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_2272
! END FOR
_Label_2275:
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
!   _temp_2297 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2298 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2297  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-152]
_Label_2293:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2298 then goto _Label_2296		
	load	[r14+-152],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2296
_Label_2294:
	mov	1046,r13		! source line 1046
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
!   _temp_2302 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_2302 [i ] into _temp_2303
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
!   _temp_2304 = _temp_2303 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2301 = *_temp_2304  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2306 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_2305 = *_temp_2306  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_2301 != _temp_2305 then goto _Label_2300		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_2300
!	jmp	_Label_2299
_Label_2299:
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   _temp_2307 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2307 [i ] into _temp_2308
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
!   parent = _temp_2308		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-160]
! END IF...
_Label_2300:
!   Increment the FOR-LOOP index variable and jump back
_Label_2295:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_2293
! END FOR
_Label_2296:
! IF STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0IF",r10
!   if parent == 0 then goto _Label_2310		(int)
	load	[r14+-160],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2310
!	jmp	_Label_2311
_Label_2311:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2313 = parent + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2312 = *_temp_2313  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2312 != 1 then goto _Label_2310		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2310
!	jmp	_Label_2309
_Label_2309:
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
!   _temp_2314 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_2314 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_2315 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_2316 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2315  sizeInBytes=4
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
	jmp	_Label_2317
_Label_2310:
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
!   _temp_2318 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2318 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_2319 = &freeList
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
!   _temp_2320 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2321 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2320  sizeInBytes=4
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
_Label_2317:
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_2322 = &processManagerLock
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
	.word	_Label_2323
	.word	8		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_2324
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2325
	.word	12
	.word	4
	.word	_Label_2326
	.word	-12
	.word	4
	.word	_Label_2327
	.word	-16
	.word	4
	.word	_Label_2328
	.word	-20
	.word	4
	.word	_Label_2329
	.word	-24
	.word	4
	.word	_Label_2330
	.word	-28
	.word	4
	.word	_Label_2331
	.word	-32
	.word	4
	.word	_Label_2332
	.word	-36
	.word	4
	.word	_Label_2333
	.word	-40
	.word	4
	.word	_Label_2334
	.word	-44
	.word	4
	.word	_Label_2335
	.word	-48
	.word	4
	.word	_Label_2336
	.word	-52
	.word	4
	.word	_Label_2337
	.word	-56
	.word	4
	.word	_Label_2338
	.word	-60
	.word	4
	.word	_Label_2339
	.word	-64
	.word	4
	.word	_Label_2340
	.word	-68
	.word	4
	.word	_Label_2341
	.word	-72
	.word	4
	.word	_Label_2342
	.word	-76
	.word	4
	.word	_Label_2343
	.word	-80
	.word	4
	.word	_Label_2344
	.word	-84
	.word	4
	.word	_Label_2345
	.word	-88
	.word	4
	.word	_Label_2346
	.word	-92
	.word	4
	.word	_Label_2347
	.word	-96
	.word	4
	.word	_Label_2348
	.word	-100
	.word	4
	.word	_Label_2349
	.word	-104
	.word	4
	.word	_Label_2350
	.word	-108
	.word	4
	.word	_Label_2351
	.word	-112
	.word	4
	.word	_Label_2352
	.word	-116
	.word	4
	.word	_Label_2353
	.word	-120
	.word	4
	.word	_Label_2354
	.word	-124
	.word	4
	.word	_Label_2355
	.word	-128
	.word	4
	.word	_Label_2356
	.word	-132
	.word	4
	.word	_Label_2357
	.word	-136
	.word	4
	.word	_Label_2358
	.word	-140
	.word	4
	.word	_Label_2359
	.word	-144
	.word	4
	.word	_Label_2360
	.word	-148
	.word	4
	.word	_Label_2361
	.word	-152
	.word	4
	.word	_Label_2362
	.word	-156
	.word	4
	.word	_Label_2363
	.word	-160
	.word	4
	.word	0
_Label_2323:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2324:
	.ascii	"Pself\0"
	.align
_Label_2325:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2361:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2362:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_2363:
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
_Label_4128:
	push	r0
	sub	r1,1,r1
	bne	_Label_4128
	mov	1068,r13		! source line 1068
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_2364 = &processManagerLock
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
_Label_2365:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2369 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2368 = *_temp_2369  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2368 == 2 then goto _Label_2367		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2367
!	jmp	_Label_2366
_Label_2366:
	mov	1078,r13		! source line 1078
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_2370 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2371 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2370  sizeInBytes=4
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
	jmp	_Label_2365
_Label_2367:
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2372 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatusToReturn = *_temp_2372  (sizeInBytes=4)
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
!   _temp_2373 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2373 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_2374 = &freeList
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
!   _temp_2375 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2376 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2375  sizeInBytes=4
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
!   _temp_2377 = &processManagerLock
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
	.word	_Label_2378
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2379
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2380
	.word	12
	.word	4
	.word	_Label_2381
	.word	-12
	.word	4
	.word	_Label_2382
	.word	-16
	.word	4
	.word	_Label_2383
	.word	-20
	.word	4
	.word	_Label_2384
	.word	-24
	.word	4
	.word	_Label_2385
	.word	-28
	.word	4
	.word	_Label_2386
	.word	-32
	.word	4
	.word	_Label_2387
	.word	-36
	.word	4
	.word	_Label_2388
	.word	-40
	.word	4
	.word	_Label_2389
	.word	-44
	.word	4
	.word	_Label_2390
	.word	-48
	.word	4
	.word	_Label_2391
	.word	-52
	.word	4
	.word	_Label_2392
	.word	-56
	.word	4
	.word	0
_Label_2378:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2379:
	.ascii	"Pself\0"
	.align
_Label_2380:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2392:
	.byte	'I'
	.ascii	"exitStatusToReturn\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2393
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2393:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2394
	.word	_sourceFileName
	.word	263		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2394:
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
_Label_4129:
	push	r0
	sub	r1,1,r1
	bne	_Label_4129
	mov	1222,r13		! source line 1222
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2395 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2395  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1229,r13		! source line 1229
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
	mov	1230,r13		! source line 1230
	mov	"\0\0SE",r10
!   _temp_2397 = &framesInUse
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
	mov	1231,r13		! source line 1231
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
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
	mov	1233,r13		! source line 1233
	mov	"\0\0SE",r10
!   _temp_2399 = &frameManagerLock
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
	mov	1234,r13		! source line 1234
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
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_2401 = &newFramesAvailable
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
	mov	1241,r13		! source line 1241
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2406 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2407 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2406  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2402:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2407 then goto _Label_2405		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2405
_Label_2403:
	mov	1241,r13		! source line 1241
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2410 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2410) then goto _Label_2409
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2409
!	jmp	_Label_2408
_Label_2408:
! THEN...
	mov	1245,r13		! source line 1245
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2411 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2411  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1245,r13		! source line 1245
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2409:
!   Increment the FOR-LOOP index variable and jump back
_Label_2404:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2402
! END FOR
_Label_2405:
! RETURN STATEMENT...
	mov	1241,r13		! source line 1241
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
	.word	_Label_2412
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2413
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2414
	.word	-12
	.word	4
	.word	_Label_2415
	.word	-16
	.word	4
	.word	_Label_2416
	.word	-20
	.word	4
	.word	_Label_2417
	.word	-24
	.word	4
	.word	_Label_2418
	.word	-28
	.word	4
	.word	_Label_2419
	.word	-32
	.word	4
	.word	_Label_2420
	.word	-36
	.word	4
	.word	_Label_2421
	.word	-40
	.word	4
	.word	_Label_2422
	.word	-44
	.word	4
	.word	_Label_2423
	.word	-48
	.word	4
	.word	_Label_2424
	.word	-52
	.word	4
	.word	_Label_2425
	.word	-56
	.word	4
	.word	0
_Label_2412:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2413:
	.ascii	"Pself\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2411\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2425:
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
_Label_4130:
	push	r0
	sub	r1,1,r1
	bne	_Label_4130
	mov	1252,r13		! source line 1252
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0SE",r10
!   _temp_2426 = &frameManagerLock
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
!   _temp_2427 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2427  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2428 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2428  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2429 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2429  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1260,r13		! source line 1260
	mov	"\0\0SE",r10
!   _temp_2430 = &framesInUse
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
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
!   _temp_2431 = &frameManagerLock
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
	mov	1261,r13		! source line 1261
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
	.word	_Label_2432
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2433
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2434
	.word	-12
	.word	4
	.word	_Label_2435
	.word	-16
	.word	4
	.word	_Label_2436
	.word	-20
	.word	4
	.word	_Label_2437
	.word	-24
	.word	4
	.word	_Label_2438
	.word	-28
	.word	4
	.word	_Label_2439
	.word	-32
	.word	4
	.word	0
_Label_2432:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2433:
	.ascii	"Pself\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2426\0"
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
_Label_4131:
	push	r0
	sub	r1,1,r1
	bne	_Label_4131
	mov	1266,r13		! source line 1266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
!   _temp_2440 = &frameManagerLock
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
	mov	1277,r13		! source line 1277
	mov	"\0\0WH",r10
_Label_2441:
!   if numberFreeFrames >= 1 then goto _Label_2443		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2443
!	jmp	_Label_2442
_Label_2442:
	mov	1277,r13		! source line 1277
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1278,r13		! source line 1278
	mov	"\0\0SE",r10
!   _temp_2444 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2445 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2444  sizeInBytes=4
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
	jmp	_Label_2441
_Label_2443:
! ASSIGNMENT STATEMENT...
	mov	1282,r13		! source line 1282
	mov	"\0\0AS",r10
	mov	1282,r13		! source line 1282
	mov	"\0\0SE",r10
!   _temp_2446 = &framesInUse
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
	mov	1283,r13		! source line 1283
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
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
!   _temp_2447 = &frameManagerLock
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
	mov	1289,r13		! source line 1289
	mov	"\0\0AS",r10
!   _temp_2448 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2448		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1291,r13		! source line 1291
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
	.word	_Label_2449
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2451
	.word	-12
	.word	4
	.word	_Label_2452
	.word	-16
	.word	4
	.word	_Label_2453
	.word	-20
	.word	4
	.word	_Label_2454
	.word	-24
	.word	4
	.word	_Label_2455
	.word	-28
	.word	4
	.word	_Label_2456
	.word	-32
	.word	4
	.word	_Label_2457
	.word	-36
	.word	4
	.word	_Label_2458
	.word	-40
	.word	4
	.word	0
_Label_2449:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2450:
	.ascii	"Pself\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2457:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2458:
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
_Label_4132:
	push	r0
	sub	r1,1,r1
	bne	_Label_4132
	mov	1296,r13		! source line 1296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1305,r13		! source line 1305
	mov	"\0\0SE",r10
!   _temp_2459 = &frameManagerLock
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
	mov	1308,r13		! source line 1308
	mov	"\0\0WH",r10
_Label_2460:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2462		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2462
!	jmp	_Label_2461
_Label_2461:
	mov	1308,r13		! source line 1308
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0SE",r10
!   _temp_2463 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_2464 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2463  sizeInBytes=4
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
	jmp	_Label_2460
_Label_2462:
! FOR STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2469 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2470 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_2469  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_2465:
!   Perform the FOR-LOOP termination test
!   if index > _temp_2470 then goto _Label_2468		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2468
_Label_2466:
	mov	1315,r13		! source line 1315
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
	mov	1316,r13		! source line 1316
	mov	"\0\0SE",r10
!   _temp_2471 = &framesInUse
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
	mov	1317,r13		! source line 1317
	mov	"\0\0AS",r10
!   _temp_2472 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_2472		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1318,r13		! source line 1318
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
_Label_2467:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2465
! END FOR
_Label_2468:
! ASSIGNMENT STATEMENT...
	mov	1322,r13		! source line 1322
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
	mov	1325,r13		! source line 1325
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2473 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2476 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2475 = *_temp_2476  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2474 = _temp_2475 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_2473 = _temp_2474  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
!   _temp_2477 = &frameManagerLock
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
	mov	1327,r13		! source line 1327
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
	.word	_Label_2478
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2480
	.word	12
	.word	4
	.word	_Label_2481
	.word	16
	.word	4
	.word	_Label_2482
	.word	-12
	.word	4
	.word	_Label_2483
	.word	-16
	.word	4
	.word	_Label_2484
	.word	-20
	.word	4
	.word	_Label_2485
	.word	-24
	.word	4
	.word	_Label_2486
	.word	-28
	.word	4
	.word	_Label_2487
	.word	-32
	.word	4
	.word	_Label_2488
	.word	-36
	.word	4
	.word	_Label_2489
	.word	-40
	.word	4
	.word	_Label_2490
	.word	-44
	.word	4
	.word	_Label_2491
	.word	-48
	.word	4
	.word	_Label_2492
	.word	-52
	.word	4
	.word	_Label_2493
	.word	-56
	.word	4
	.word	_Label_2494
	.word	-60
	.word	4
	.word	_Label_2495
	.word	-64
	.word	4
	.word	_Label_2496
	.word	-68
	.word	4
	.word	0
_Label_2478:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2479:
	.ascii	"Pself\0"
	.align
_Label_2480:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2481:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
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
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2494:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_2495:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2496:
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
_Label_4133:
	push	r0
	sub	r1,1,r1
	bne	_Label_4133
	mov	1333,r13		! source line 1333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0SE",r10
!   _temp_2497 = &frameManagerLock
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
	mov	1345,r13		! source line 1345
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
	mov	1347,r13		! source line 1347
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_2498  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2503 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2504 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_2503  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_2499:
!   Perform the FOR-LOOP termination test
!   if index > _temp_2504 then goto _Label_2502		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2502
_Label_2500:
	mov	1352,r13		! source line 1352
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0AS",r10
	mov	1353,r13		! source line 1353
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
	mov	1354,r13		! source line 1354
	mov	"\0\0AS",r10
!   _temp_2505 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_2505 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1355,r13		! source line 1355
	mov	"\0\0SE",r10
!   _temp_2506 = &framesInUse
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
	mov	1356,r13		! source line 1356
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
_Label_2501:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2499
! END FOR
_Label_2502:
! SEND STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0SE",r10
!   _temp_2507 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_2508 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2507  sizeInBytes=4
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
	mov	1363,r13		! source line 1363
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2509 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2512 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2511 = *_temp_2512  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2510 = _temp_2511 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_2509 = _temp_2510  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0SE",r10
!   _temp_2513 = &frameManagerLock
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
	mov	1365,r13		! source line 1365
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
	.word	_Label_2514
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_2515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2516
	.word	12
	.word	4
	.word	_Label_2517
	.word	-12
	.word	4
	.word	_Label_2518
	.word	-16
	.word	4
	.word	_Label_2519
	.word	-20
	.word	4
	.word	_Label_2520
	.word	-24
	.word	4
	.word	_Label_2521
	.word	-28
	.word	4
	.word	_Label_2522
	.word	-32
	.word	4
	.word	_Label_2523
	.word	-36
	.word	4
	.word	_Label_2524
	.word	-40
	.word	4
	.word	_Label_2525
	.word	-44
	.word	4
	.word	_Label_2526
	.word	-48
	.word	4
	.word	_Label_2527
	.word	-52
	.word	4
	.word	_Label_2528
	.word	-56
	.word	4
	.word	_Label_2529
	.word	-60
	.word	4
	.word	_Label_2530
	.word	-64
	.word	4
	.word	_Label_2531
	.word	-68
	.word	4
	.word	_Label_2532
	.word	-72
	.word	4
	.word	_Label_2533
	.word	-76
	.word	4
	.word	0
_Label_2514:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2515:
	.ascii	"Pself\0"
	.align
_Label_2516:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2530:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_2531:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_2532:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2533:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2534
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
_Label_2534:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2535
	.word	_sourceFileName
	.word	282		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2535:
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
_Label_4134:
	push	r0
	sub	r1,1,r1
	bne	_Label_4134
	mov	1376,r13		! source line 1376
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   _temp_2536 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2538 = &_temp_2537
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2538 = _temp_2538 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2540:
!   Data Move: *_temp_2538 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2538 = _temp_2538 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2539 = _temp_2539 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2539) then goto _Label_2540
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2540
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2541 = &_temp_2537
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_4135
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4135:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2536 = *_temp_2541  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_4136:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4136
! RETURN STATEMENT...
	mov	1381,r13		! source line 1381
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
	.word	_Label_2542
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2544
	.word	-12
	.word	4
	.word	_Label_2545
	.word	-16
	.word	4
	.word	_Label_2546
	.word	-20
	.word	4
	.word	_Label_2547
	.word	-104
	.word	84
	.word	_Label_2548
	.word	-108
	.word	4
	.word	0
_Label_2542:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2543:
	.ascii	"Pself\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2536\0"
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
_Label_4137:
	push	r0
	sub	r1,1,r1
	bne	_Label_4137
	mov	1386,r13		! source line 1386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2549 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2549  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1391,r13		! source line 1391
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2550 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2550  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2555 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2556 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2555  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2551:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2556 then goto _Label_2554		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2554
_Label_2552:
	mov	1393,r13		! source line 1393
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2557 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2557  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2559 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2559 [i ] into _temp_2560
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
!   _temp_2558 = _temp_2560		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2558  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1395,r13		! source line 1395
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2561 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2561  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2563 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2563 [i ] into _temp_2564
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
!   Data Move: _temp_2562 = *_temp_2564  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2562  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2565 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2565  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2566 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2566  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2567 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2567  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2569) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2568  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1401,r13		! source line 1401
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2570 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2570  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1403,r13		! source line 1403
	mov	"\0\0IF",r10
	mov	1403,r13		! source line 1403
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_2574) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2573  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2573) then goto _Label_2572
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2572
!	jmp	_Label_2571
_Label_2571:
! THEN...
	mov	1404,r13		! source line 1404
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2576) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2575  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2575  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1404,r13		! source line 1404
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2577
_Label_2572:
! ELSE...
	mov	1406,r13		! source line 1406
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2578 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2578  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2577:
! CALL STATEMENT...
!   _temp_2579 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2579  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0IF",r10
	mov	1409,r13		! source line 1409
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_2582) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2580 else goto _Label_2581
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2581
	jmp	_Label_2580
_Label_2580:
! THEN...
	mov	1410,r13		! source line 1410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2583 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2583  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2584
_Label_2581:
! ELSE...
	mov	1412,r13		! source line 1412
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2585 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2585  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2584:
! CALL STATEMENT...
!   _temp_2586 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2586  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0IF",r10
	mov	1415,r13		! source line 1415
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_2589) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2587 else goto _Label_2588
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2588
	jmp	_Label_2587
_Label_2587:
! THEN...
	mov	1416,r13		! source line 1416
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2590 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2590  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2591
_Label_2588:
! ELSE...
	mov	1418,r13		! source line 1418
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2592 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2592  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2591:
! CALL STATEMENT...
!   _temp_2593 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2593  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1421,r13		! source line 1421
	mov	"\0\0IF",r10
	mov	1421,r13		! source line 1421
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_2596) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2594 else goto _Label_2595
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2595
	jmp	_Label_2594
_Label_2594:
! THEN...
	mov	1422,r13		! source line 1422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2597 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2597  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1422,r13		! source line 1422
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2598
_Label_2595:
! ELSE...
	mov	1424,r13		! source line 1424
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2599 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2599  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2598:
! CALL STATEMENT...
!   _temp_2600 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2600  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1427,r13		! source line 1427
	mov	"\0\0IF",r10
	mov	1427,r13		! source line 1427
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2603) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2601 else goto _Label_2602
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2602
	jmp	_Label_2601
_Label_2601:
! THEN...
	mov	1428,r13		! source line 1428
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2604 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2604  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1428,r13		! source line 1428
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2605
_Label_2602:
! ELSE...
	mov	1430,r13		! source line 1430
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2606 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2605:
! CALL STATEMENT...
!   Call the function
	mov	1432,r13		! source line 1432
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2553:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2551
! END FOR
_Label_2554:
! RETURN STATEMENT...
	mov	1393,r13		! source line 1393
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
	.word	_Label_2607
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2608
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2609
	.word	-12
	.word	4
	.word	_Label_2610
	.word	-16
	.word	4
	.word	_Label_2611
	.word	-20
	.word	4
	.word	_Label_2612
	.word	-24
	.word	4
	.word	_Label_2613
	.word	-28
	.word	4
	.word	_Label_2614
	.word	-32
	.word	4
	.word	_Label_2615
	.word	-36
	.word	4
	.word	_Label_2616
	.word	-40
	.word	4
	.word	_Label_2617
	.word	-44
	.word	4
	.word	_Label_2618
	.word	-48
	.word	4
	.word	_Label_2619
	.word	-52
	.word	4
	.word	_Label_2620
	.word	-56
	.word	4
	.word	_Label_2621
	.word	-60
	.word	4
	.word	_Label_2622
	.word	-64
	.word	4
	.word	_Label_2623
	.word	-68
	.word	4
	.word	_Label_2624
	.word	-72
	.word	4
	.word	_Label_2625
	.word	-76
	.word	4
	.word	_Label_2626
	.word	-80
	.word	4
	.word	_Label_2627
	.word	-84
	.word	4
	.word	_Label_2628
	.word	-88
	.word	4
	.word	_Label_2629
	.word	-92
	.word	4
	.word	_Label_2630
	.word	-96
	.word	4
	.word	_Label_2631
	.word	-100
	.word	4
	.word	_Label_2632
	.word	-104
	.word	4
	.word	_Label_2633
	.word	-108
	.word	4
	.word	_Label_2634
	.word	-112
	.word	4
	.word	_Label_2635
	.word	-116
	.word	4
	.word	_Label_2636
	.word	-120
	.word	4
	.word	_Label_2637
	.word	-124
	.word	4
	.word	_Label_2638
	.word	-128
	.word	4
	.word	_Label_2639
	.word	-132
	.word	4
	.word	_Label_2640
	.word	-136
	.word	4
	.word	_Label_2641
	.word	-140
	.word	4
	.word	_Label_2642
	.word	-144
	.word	4
	.word	_Label_2643
	.word	-148
	.word	4
	.word	_Label_2644
	.word	-152
	.word	4
	.word	_Label_2645
	.word	-156
	.word	4
	.word	_Label_2646
	.word	-160
	.word	4
	.word	_Label_2647
	.word	-164
	.word	4
	.word	_Label_2648
	.word	-168
	.word	4
	.word	0
_Label_2607:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2608:
	.ascii	"Pself\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2648:
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
_Label_4138:
	push	r0
	sub	r1,1,r1
	bne	_Label_4138
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0RE",r10
!   _temp_2651 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2651 [entry ] into _temp_2652
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
!   Data Move: _temp_2650 = *_temp_2652  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2649 = _temp_2650 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2649  (sizeInBytes=4)
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
	.word	_Label_2653
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2654
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2655
	.word	12
	.word	4
	.word	_Label_2656
	.word	-12
	.word	4
	.word	_Label_2657
	.word	-16
	.word	4
	.word	_Label_2658
	.word	-20
	.word	4
	.word	_Label_2659
	.word	-24
	.word	4
	.word	0
_Label_2653:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2654:
	.ascii	"Pself\0"
	.align
_Label_2655:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2649\0"
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
_Label_4139:
	push	r0
	sub	r1,1,r1
	bne	_Label_4139
	mov	1448,r13		! source line 1448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0RE",r10
!   _temp_2662 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2662 [entry ] into _temp_2663
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
!   Data Move: _temp_2661 = *_temp_2663  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2660 = _temp_2661 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2660  (sizeInBytes=4)
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
	.word	_Label_2664
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2666
	.word	12
	.word	4
	.word	_Label_2667
	.word	-12
	.word	4
	.word	_Label_2668
	.word	-16
	.word	4
	.word	_Label_2669
	.word	-20
	.word	4
	.word	_Label_2670
	.word	-24
	.word	4
	.word	0
_Label_2664:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2665:
	.ascii	"Pself\0"
	.align
_Label_2666:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2660\0"
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
_Label_4140:
	push	r0
	sub	r1,1,r1
	bne	_Label_4140
	mov	1457,r13		! source line 1457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0AS",r10
!   _temp_2671 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2671 [entry ] into _temp_2672
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
!   _temp_2676 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2676 [entry ] into _temp_2677
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
!   Data Move: _temp_2675 = *_temp_2677  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2674 = _temp_2675 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2673 = _temp_2674 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2672 = _temp_2673  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1462,r13		! source line 1462
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
	.word	_Label_2678
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2679
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2680
	.word	12
	.word	4
	.word	_Label_2681
	.word	16
	.word	4
	.word	_Label_2682
	.word	-12
	.word	4
	.word	_Label_2683
	.word	-16
	.word	4
	.word	_Label_2684
	.word	-20
	.word	4
	.word	_Label_2685
	.word	-24
	.word	4
	.word	_Label_2686
	.word	-28
	.word	4
	.word	_Label_2687
	.word	-32
	.word	4
	.word	_Label_2688
	.word	-36
	.word	4
	.word	0
_Label_2678:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2679:
	.ascii	"Pself\0"
	.align
_Label_2680:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2681:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2671\0"
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
_Label_4141:
	push	r0
	sub	r1,1,r1
	bne	_Label_4141
	mov	1467,r13		! source line 1467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
!   _temp_2692 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2692 [entry ] into _temp_2693
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
!   Data Move: _temp_2691 = *_temp_2693  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2690 = _temp_2691 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2690) then goto _Label_2694
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2694
!   _temp_2689 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2695
_Label_2694:
!   _temp_2689 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2695:
!   ReturnResult: _temp_2689  (sizeInBytes=1)
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
	.word	_Label_2696
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2697
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2698
	.word	12
	.word	4
	.word	_Label_2699
	.word	-16
	.word	4
	.word	_Label_2700
	.word	-20
	.word	4
	.word	_Label_2701
	.word	-24
	.word	4
	.word	_Label_2702
	.word	-28
	.word	4
	.word	_Label_2703
	.word	-9
	.word	1
	.word	0
_Label_2696:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2697:
	.ascii	"Pself\0"
	.align
_Label_2698:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2703:
	.byte	'C'
	.ascii	"_temp_2689\0"
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
_Label_4142:
	push	r0
	sub	r1,1,r1
	bne	_Label_4142
	mov	1476,r13		! source line 1476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0RE",r10
!   _temp_2707 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2707 [entry ] into _temp_2708
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
!   Data Move: _temp_2706 = *_temp_2708  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2705 = _temp_2706 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2705) then goto _Label_2709
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2709
!   _temp_2704 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2710
_Label_2709:
!   _temp_2704 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2710:
!   ReturnResult: _temp_2704  (sizeInBytes=1)
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
	.word	_Label_2711
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2712
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2713
	.word	12
	.word	4
	.word	_Label_2714
	.word	-16
	.word	4
	.word	_Label_2715
	.word	-20
	.word	4
	.word	_Label_2716
	.word	-24
	.word	4
	.word	_Label_2717
	.word	-28
	.word	4
	.word	_Label_2718
	.word	-9
	.word	1
	.word	0
_Label_2711:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2712:
	.ascii	"Pself\0"
	.align
_Label_2713:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2718:
	.byte	'C'
	.ascii	"_temp_2704\0"
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
_Label_4143:
	push	r0
	sub	r1,1,r1
	bne	_Label_4143
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   _temp_2722 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2722 [entry ] into _temp_2723
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
!   Data Move: _temp_2721 = *_temp_2723  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2720 = _temp_2721 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2720) then goto _Label_2724
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2724
!   _temp_2719 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2725
_Label_2724:
!   _temp_2719 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2725:
!   ReturnResult: _temp_2719  (sizeInBytes=1)
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
	.word	_Label_2726
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2727
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2728
	.word	12
	.word	4
	.word	_Label_2729
	.word	-16
	.word	4
	.word	_Label_2730
	.word	-20
	.word	4
	.word	_Label_2731
	.word	-24
	.word	4
	.word	_Label_2732
	.word	-28
	.word	4
	.word	_Label_2733
	.word	-9
	.word	1
	.word	0
_Label_2726:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2727:
	.ascii	"Pself\0"
	.align
_Label_2728:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2733:
	.byte	'C'
	.ascii	"_temp_2719\0"
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
_Label_4144:
	push	r0
	sub	r1,1,r1
	bne	_Label_4144
	mov	1494,r13		! source line 1494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0RE",r10
!   _temp_2737 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2737 [entry ] into _temp_2738
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
!   Data Move: _temp_2736 = *_temp_2738  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2735 = _temp_2736 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2735) then goto _Label_2739
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2739
!   _temp_2734 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2740
_Label_2739:
!   _temp_2734 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2740:
!   ReturnResult: _temp_2734  (sizeInBytes=1)
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
	.word	_Label_2741
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2742
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2743
	.word	12
	.word	4
	.word	_Label_2744
	.word	-16
	.word	4
	.word	_Label_2745
	.word	-20
	.word	4
	.word	_Label_2746
	.word	-24
	.word	4
	.word	_Label_2747
	.word	-28
	.word	4
	.word	_Label_2748
	.word	-9
	.word	1
	.word	0
_Label_2741:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2742:
	.ascii	"Pself\0"
	.align
_Label_2743:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2748:
	.byte	'C'
	.ascii	"_temp_2734\0"
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
_Label_4145:
	push	r0
	sub	r1,1,r1
	bne	_Label_4145
	mov	1503,r13		! source line 1503
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   _temp_2749 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2749 [entry ] into _temp_2750
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
!   _temp_2753 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2753 [entry ] into _temp_2754
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
!   Data Move: _temp_2752 = *_temp_2754  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2751 = _temp_2752 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2750 = _temp_2751  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1507,r13		! source line 1507
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
	.word	_Label_2755
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2756
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2757
	.word	12
	.word	4
	.word	_Label_2758
	.word	-12
	.word	4
	.word	_Label_2759
	.word	-16
	.word	4
	.word	_Label_2760
	.word	-20
	.word	4
	.word	_Label_2761
	.word	-24
	.word	4
	.word	_Label_2762
	.word	-28
	.word	4
	.word	_Label_2763
	.word	-32
	.word	4
	.word	0
_Label_2755:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2756:
	.ascii	"Pself\0"
	.align
_Label_2757:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2752\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2749\0"
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
_Label_4146:
	push	r0
	sub	r1,1,r1
	bne	_Label_4146
	mov	1512,r13		! source line 1512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   _temp_2764 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2764 [entry ] into _temp_2765
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
!   _temp_2768 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2768 [entry ] into _temp_2769
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
!   Data Move: _temp_2767 = *_temp_2769  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2766 = _temp_2767 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2765 = _temp_2766  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1516,r13		! source line 1516
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
	.word	_Label_2770
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2772
	.word	12
	.word	4
	.word	_Label_2773
	.word	-12
	.word	4
	.word	_Label_2774
	.word	-16
	.word	4
	.word	_Label_2775
	.word	-20
	.word	4
	.word	_Label_2776
	.word	-24
	.word	4
	.word	_Label_2777
	.word	-28
	.word	4
	.word	_Label_2778
	.word	-32
	.word	4
	.word	0
_Label_2770:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2771:
	.ascii	"Pself\0"
	.align
_Label_2772:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2764\0"
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
_Label_4147:
	push	r0
	sub	r1,1,r1
	bne	_Label_4147
	mov	1521,r13		! source line 1521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0AS",r10
!   _temp_2779 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2779 [entry ] into _temp_2780
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
!   _temp_2783 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2783 [entry ] into _temp_2784
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
!   Data Move: _temp_2782 = *_temp_2784  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2781 = _temp_2782 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2780 = _temp_2781  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1525,r13		! source line 1525
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
	.word	_Label_2785
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2787
	.word	12
	.word	4
	.word	_Label_2788
	.word	-12
	.word	4
	.word	_Label_2789
	.word	-16
	.word	4
	.word	_Label_2790
	.word	-20
	.word	4
	.word	_Label_2791
	.word	-24
	.word	4
	.word	_Label_2792
	.word	-28
	.word	4
	.word	_Label_2793
	.word	-32
	.word	4
	.word	0
_Label_2785:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2786:
	.ascii	"Pself\0"
	.align
_Label_2787:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2779\0"
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
_Label_4148:
	push	r0
	sub	r1,1,r1
	bne	_Label_4148
	mov	1530,r13		! source line 1530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0AS",r10
!   _temp_2794 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2794 [entry ] into _temp_2795
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
!   _temp_2798 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2798 [entry ] into _temp_2799
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
!   Data Move: _temp_2797 = *_temp_2799  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2796 = _temp_2797 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2795 = _temp_2796  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
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
	.word	_Label_2800
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2801
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2802
	.word	12
	.word	4
	.word	_Label_2803
	.word	-12
	.word	4
	.word	_Label_2804
	.word	-16
	.word	4
	.word	_Label_2805
	.word	-20
	.word	4
	.word	_Label_2806
	.word	-24
	.word	4
	.word	_Label_2807
	.word	-28
	.word	4
	.word	_Label_2808
	.word	-32
	.word	4
	.word	0
_Label_2800:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2801:
	.ascii	"Pself\0"
	.align
_Label_2802:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2794\0"
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
_Label_4149:
	push	r0
	sub	r1,1,r1
	bne	_Label_4149
	mov	1539,r13		! source line 1539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0AS",r10
!   _temp_2809 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2809 [entry ] into _temp_2810
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
!   _temp_2813 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2813 [entry ] into _temp_2814
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
!   Data Move: _temp_2812 = *_temp_2814  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2811 = _temp_2812 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2810 = _temp_2811  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
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
	.word	_Label_2815
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2817
	.word	12
	.word	4
	.word	_Label_2818
	.word	-12
	.word	4
	.word	_Label_2819
	.word	-16
	.word	4
	.word	_Label_2820
	.word	-20
	.word	4
	.word	_Label_2821
	.word	-24
	.word	4
	.word	_Label_2822
	.word	-28
	.word	4
	.word	_Label_2823
	.word	-32
	.word	4
	.word	0
_Label_2815:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2816:
	.ascii	"Pself\0"
	.align
_Label_2817:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2814\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2813\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2809\0"
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
_Label_4150:
	push	r0
	sub	r1,1,r1
	bne	_Label_4150
	mov	1548,r13		! source line 1548
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1552,r13		! source line 1552
	mov	"\0\0AS",r10
!   _temp_2824 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2824 [entry ] into _temp_2825
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
!   _temp_2828 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2828 [entry ] into _temp_2829
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
!   Data Move: _temp_2827 = *_temp_2829  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2826 = _temp_2827 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2825 = _temp_2826  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1552,r13		! source line 1552
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
	.word	_Label_2830
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2832
	.word	12
	.word	4
	.word	_Label_2833
	.word	-12
	.word	4
	.word	_Label_2834
	.word	-16
	.word	4
	.word	_Label_2835
	.word	-20
	.word	4
	.word	_Label_2836
	.word	-24
	.word	4
	.word	_Label_2837
	.word	-28
	.word	4
	.word	_Label_2838
	.word	-32
	.word	4
	.word	0
_Label_2830:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2831:
	.ascii	"Pself\0"
	.align
_Label_2832:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2824\0"
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
_Label_4151:
	push	r0
	sub	r1,1,r1
	bne	_Label_4151
	mov	1557,r13		! source line 1557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0AS",r10
!   _temp_2839 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2839 [entry ] into _temp_2840
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
!   _temp_2843 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2843 [entry ] into _temp_2844
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
!   Data Move: _temp_2842 = *_temp_2844  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2841 = _temp_2842 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2840 = _temp_2841  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1561,r13		! source line 1561
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
	.word	_Label_2845
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2847
	.word	12
	.word	4
	.word	_Label_2848
	.word	-12
	.word	4
	.word	_Label_2849
	.word	-16
	.word	4
	.word	_Label_2850
	.word	-20
	.word	4
	.word	_Label_2851
	.word	-24
	.word	4
	.word	_Label_2852
	.word	-28
	.word	4
	.word	_Label_2853
	.word	-32
	.word	4
	.word	0
_Label_2845:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2846:
	.ascii	"Pself\0"
	.align
_Label_2847:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2839\0"
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
_Label_4152:
	push	r0
	sub	r1,1,r1
	bne	_Label_4152
	mov	1566,r13		! source line 1566
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0AS",r10
!   _temp_2854 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2854 [entry ] into _temp_2855
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
!   _temp_2858 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2858 [entry ] into _temp_2859
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
!   Data Move: _temp_2857 = *_temp_2859  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2856 = _temp_2857 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2855 = _temp_2856  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1570,r13		! source line 1570
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
	.word	_Label_2860
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2862
	.word	12
	.word	4
	.word	_Label_2863
	.word	-12
	.word	4
	.word	_Label_2864
	.word	-16
	.word	4
	.word	_Label_2865
	.word	-20
	.word	4
	.word	_Label_2866
	.word	-24
	.word	4
	.word	_Label_2867
	.word	-28
	.word	4
	.word	_Label_2868
	.word	-32
	.word	4
	.word	0
_Label_2860:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2861:
	.ascii	"Pself\0"
	.align
_Label_2862:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2854\0"
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
_Label_4153:
	push	r0
	sub	r1,1,r1
	bne	_Label_4153
	mov	1575,r13		! source line 1575
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2870 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2870 [0 ] into _temp_2871
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
!   _temp_2869 = _temp_2871		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2872 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2869  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2872  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1581,r13		! source line 1581
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
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
	.word	_Label_2873
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2875
	.word	-12
	.word	4
	.word	_Label_2876
	.word	-16
	.word	4
	.word	_Label_2877
	.word	-20
	.word	4
	.word	_Label_2878
	.word	-24
	.word	4
	.word	0
_Label_2873:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2874:
	.ascii	"Pself\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2869\0"
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
_Label_4154:
	push	r0
	sub	r1,1,r1
	bne	_Label_4154
	mov	1586,r13		! source line 1586
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1601,r13		! source line 1601
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2879
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2879
	jmp	_Label_2880
_Label_2879:
! THEN...
	mov	1602,r13		! source line 1602
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2881
_Label_2880:
! ELSE...
	mov	1603,r13		! source line 1603
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2883		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2883
!	jmp	_Label_2882
_Label_2882:
! THEN...
	mov	1604,r13		! source line 1604
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1604,r13		! source line 1604
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2883:
! END IF...
_Label_2881:
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
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
	mov	1607,r13		! source line 1607
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
	mov	1610,r13		! source line 1610
	mov	"\0\0WH",r10
_Label_2884:
!	jmp	_Label_2885
_Label_2885:
	mov	1610,r13		! source line 1610
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2888		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2888
!	jmp	_Label_2887
_Label_2887:
! THEN...
	mov	1612,r13		! source line 1612
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2889 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2889  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1612,r13		! source line 1612
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2888:
! IF STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0IF",r10
	mov	1615,r13		! source line 1615
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2893) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2892  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2892 then goto _Label_2891 else goto _Label_2890
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2890
	jmp	_Label_2891
_Label_2890:
! THEN...
	mov	1616,r13		! source line 1616
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2894 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2894  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1616,r13		! source line 1616
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2891:
! ASSIGNMENT STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0AS",r10
	mov	1619,r13		! source line 1619
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2896) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2895  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2895 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0WH",r10
_Label_2897:
!   if offset >= 8192 then goto _Label_2899		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2899
!	jmp	_Label_2898
_Label_2898:
	mov	1621,r13		! source line 1621
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2900 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2900  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1627,r13		! source line 1627
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2902		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2902
!	jmp	_Label_2901
_Label_2901:
! THEN...
	mov	1630,r13		! source line 1630
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2902:
! END WHILE...
	jmp	_Label_2897
_Label_2899:
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2884
_Label_2886:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2903
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2904
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2905
	.word	12
	.word	4
	.word	_Label_2906
	.word	16
	.word	4
	.word	_Label_2907
	.word	20
	.word	4
	.word	_Label_2908
	.word	-9
	.word	1
	.word	_Label_2909
	.word	-16
	.word	4
	.word	_Label_2910
	.word	-20
	.word	4
	.word	_Label_2911
	.word	-24
	.word	4
	.word	_Label_2912
	.word	-28
	.word	4
	.word	_Label_2913
	.word	-10
	.word	1
	.word	_Label_2914
	.word	-32
	.word	4
	.word	_Label_2915
	.word	-36
	.word	4
	.word	_Label_2916
	.word	-40
	.word	4
	.word	_Label_2917
	.word	-44
	.word	4
	.word	_Label_2918
	.word	-48
	.word	4
	.word	0
_Label_2903:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2904:
	.ascii	"Pself\0"
	.align
_Label_2905:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2906:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2907:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2908:
	.byte	'C'
	.ascii	"_temp_2900\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2913:
	.byte	'C'
	.ascii	"_temp_2892\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2915:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2916:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2917:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2918:
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
_Label_4155:
	push	r0
	sub	r1,1,r1
	bne	_Label_4155
	mov	1640,r13		! source line 1640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2919
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2919
	jmp	_Label_2920
_Label_2919:
! THEN...
	mov	1652,r13		! source line 1652
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2921
_Label_2920:
! ELSE...
	mov	1653,r13		! source line 1653
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2923		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2923
!	jmp	_Label_2922
_Label_2922:
! THEN...
	mov	1654,r13		! source line 1654
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2923:
! END IF...
_Label_2921:
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
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
	mov	1657,r13		! source line 1657
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
	mov	1658,r13		! source line 1658
	mov	"\0\0WH",r10
_Label_2924:
!	jmp	_Label_2925
_Label_2925:
	mov	1658,r13		! source line 1658
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2930		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2930
	jmp	_Label_2927
_Label_2930:
	mov	1660,r13		! source line 1660
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2932) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2931  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2931 then goto _Label_2929 else goto _Label_2927
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2927
	jmp	_Label_2929
_Label_2929:
	mov	1661,r13		! source line 1661
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2934) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2933  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2933 then goto _Label_2928 else goto _Label_2927
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2927
	jmp	_Label_2928
_Label_2927:
! THEN...
	mov	1662,r13		! source line 1662
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2928:
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
	mov	1664,r13		! source line 1664
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2936) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2935  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2935 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0WH",r10
_Label_2937:
!   if offset >= 8192 then goto _Label_2939		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2939
!	jmp	_Label_2938
_Label_2938:
	mov	1665,r13		! source line 1665
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2940 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2940  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1669,r13		! source line 1669
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2942		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2942
!	jmp	_Label_2941
_Label_2941:
! THEN...
	mov	1672,r13		! source line 1672
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2942:
! END WHILE...
	jmp	_Label_2937
_Label_2939:
! ASSIGNMENT STATEMENT...
	mov	1675,r13		! source line 1675
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2924
_Label_2926:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2943
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2944
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2945
	.word	12
	.word	4
	.word	_Label_2946
	.word	16
	.word	4
	.word	_Label_2947
	.word	20
	.word	4
	.word	_Label_2948
	.word	-9
	.word	1
	.word	_Label_2949
	.word	-16
	.word	4
	.word	_Label_2950
	.word	-20
	.word	4
	.word	_Label_2951
	.word	-24
	.word	4
	.word	_Label_2952
	.word	-10
	.word	1
	.word	_Label_2953
	.word	-28
	.word	4
	.word	_Label_2954
	.word	-11
	.word	1
	.word	_Label_2955
	.word	-32
	.word	4
	.word	_Label_2956
	.word	-36
	.word	4
	.word	_Label_2957
	.word	-40
	.word	4
	.word	_Label_2958
	.word	-44
	.word	4
	.word	0
_Label_2943:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2944:
	.ascii	"Pself\0"
	.align
_Label_2945:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2946:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2947:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2948:
	.byte	'C'
	.ascii	"_temp_2940\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2952:
	.byte	'C'
	.ascii	"_temp_2933\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2954:
	.byte	'C'
	.ascii	"_temp_2931\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2956:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2958:
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
_Label_4156:
	push	r0
	sub	r1,1,r1
	bne	_Label_4156
	mov	1682,r13		! source line 1682
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0IF",r10
	mov	1706,r13		! source line 1706
	mov	"\0\0SE",r10
!   _temp_2962 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2963) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2962  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2961  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2961 >= 4 then goto _Label_2960		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2960
!	jmp	_Label_2959
_Label_2959:
! THEN...
	mov	1709,r13		! source line 1709
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2960:
! IF STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2965		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2965
!	jmp	_Label_2964
_Label_2964:
! THEN...
	mov	1714,r13		! source line 1714
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2965:
! ASSIGNMENT STATEMENT...
	mov	1717,r13		! source line 1717
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
	mov	1719,r13		! source line 1719
	mov	"\0\0RE",r10
	mov	1719,r13		! source line 1719
	mov	"\0\0SE",r10
!   _temp_2968 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2967 = _temp_2968 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2969 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2970) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2967  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2969  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2966  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2966  (sizeInBytes=4)
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
	.word	_Label_2971
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2972
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2973
	.word	12
	.word	4
	.word	_Label_2974
	.word	16
	.word	4
	.word	_Label_2975
	.word	20
	.word	4
	.word	_Label_2976
	.word	-12
	.word	4
	.word	_Label_2977
	.word	-16
	.word	4
	.word	_Label_2978
	.word	-20
	.word	4
	.word	_Label_2979
	.word	-24
	.word	4
	.word	_Label_2980
	.word	-28
	.word	4
	.word	_Label_2981
	.word	-32
	.word	4
	.word	_Label_2982
	.word	-36
	.word	4
	.word	_Label_2983
	.word	-40
	.word	4
	.word	_Label_2984
	.word	-44
	.word	4
	.word	0
_Label_2971:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2972:
	.ascii	"Pself\0"
	.align
_Label_2973:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2974:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2975:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2985
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2985:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2986
	.word	_sourceFileName
	.word	314		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2986:
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
_Label_4157:
	push	r0
	sub	r1,1,r1
	bne	_Label_4157
	mov	2749,r13		! source line 2749
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2987 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2987  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2750,r13		! source line 2750
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2757,r13		! source line 2757
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
	mov	2758,r13		! source line 2758
	mov	"\0\0SE",r10
!   _temp_2989 = &semUsedInSynchMethods
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
	mov	2759,r13		! source line 2759
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
	mov	2760,r13		! source line 2760
	mov	"\0\0SE",r10
!   _temp_2991 = &diskBusy
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
	mov	2760,r13		! source line 2760
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
	.word	_Label_2992
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2994
	.word	-12
	.word	4
	.word	_Label_2995
	.word	-16
	.word	4
	.word	_Label_2996
	.word	-20
	.word	4
	.word	_Label_2997
	.word	-24
	.word	4
	.word	_Label_2998
	.word	-28
	.word	4
	.word	0
_Label_2992:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2993:
	.ascii	"Pself\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2987\0"
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
_Label_4158:
	push	r0
	sub	r1,1,r1
	bne	_Label_4158
	mov	2765,r13		! source line 2765
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
!   _temp_2999 = &diskBusy
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
	mov	2779,r13		! source line 2779
	mov	"\0\0WH",r10
_Label_3000:
!	jmp	_Label_3001
_Label_3001:
	mov	2779,r13		! source line 2779
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2781,r13		! source line 2781
	mov	"\0\0SE",r10
!   _temp_3003 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3004) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3003  sizeInBytes=4
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
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
!   _temp_3005 = &semUsedInSynchMethods
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
	mov	2786,r13		! source line 2786
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3014 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3008
	cmp	r1,2
	be	_Label_3009
	cmp	r1,3
	be	_Label_3010
	cmp	r1,4
	be	_Label_3011
	cmp	r1,5
	be	_Label_3012
	cmp	r1,6
	be	_Label_3013
	jmp	_Label_3006
! CASE 1...
_Label_3008:
! SEND STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0SE",r10
!   _temp_3015 = &diskBusy
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
	mov	2789,r13		! source line 2789
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3009:
! CALL STATEMENT...
!   _temp_3016 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3016  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2791,r13		! source line 2791
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3010:
! CALL STATEMENT...
!   _temp_3017 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3017  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2793,r13		! source line 2793
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3011:
! CALL STATEMENT...
!   _temp_3018 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3018  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2795,r13		! source line 2795
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3012:
! BREAK STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0BR",r10
	jmp	_Label_3007
! CASE 6...
_Label_3013:
! CALL STATEMENT...
!   _temp_3019 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3019  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2801,r13		! source line 2801
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3006:
! CALL STATEMENT...
!   _temp_3020 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3020  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2803,r13		! source line 2803
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3007:
! END WHILE...
	jmp	_Label_3000
_Label_3002:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_3021
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3023
	.word	12
	.word	4
	.word	_Label_3024
	.word	16
	.word	4
	.word	_Label_3025
	.word	20
	.word	4
	.word	_Label_3026
	.word	-12
	.word	4
	.word	_Label_3027
	.word	-16
	.word	4
	.word	_Label_3028
	.word	-20
	.word	4
	.word	_Label_3029
	.word	-24
	.word	4
	.word	_Label_3030
	.word	-28
	.word	4
	.word	_Label_3031
	.word	-32
	.word	4
	.word	_Label_3032
	.word	-36
	.word	4
	.word	_Label_3033
	.word	-40
	.word	4
	.word	_Label_3034
	.word	-44
	.word	4
	.word	_Label_3035
	.word	-48
	.word	4
	.word	_Label_3036
	.word	-52
	.word	4
	.word	0
_Label_3021:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_3022:
	.ascii	"Pself\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3024:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3025:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_2999\0"
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
	mov	2812,r13		! source line 2812
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
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
	mov	2831,r13		! source line 2831
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
	mov	2832,r13		! source line 2832
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
	mov	2833,r13		! source line 2833
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
	mov	2833,r13		! source line 2833
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
	.word	_Label_3037
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3038
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3039
	.word	12
	.word	4
	.word	_Label_3040
	.word	16
	.word	4
	.word	_Label_3041
	.word	20
	.word	4
	.word	_Label_3042
	.word	24
	.word	4
	.word	0
_Label_3037:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_3038:
	.ascii	"Pself\0"
	.align
_Label_3039:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3040:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3041:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3042:
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
_Label_4159:
	push	r0
	sub	r1,1,r1
	bne	_Label_4159
	mov	2838,r13		! source line 2838
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0SE",r10
!   _temp_3043 = &diskBusy
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
	mov	2851,r13		! source line 2851
	mov	"\0\0WH",r10
_Label_3044:
!	jmp	_Label_3045
_Label_3045:
	mov	2851,r13		! source line 2851
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
!   _temp_3047 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_3048) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_3047  sizeInBytes=4
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
	mov	2854,r13		! source line 2854
	mov	"\0\0SE",r10
!   _temp_3049 = &semUsedInSynchMethods
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
	mov	2857,r13		! source line 2857
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3058 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_3052
	cmp	r1,2
	be	_Label_3053
	cmp	r1,3
	be	_Label_3054
	cmp	r1,4
	be	_Label_3055
	cmp	r1,5
	be	_Label_3056
	cmp	r1,6
	be	_Label_3057
	jmp	_Label_3050
! CASE 1...
_Label_3052:
! SEND STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0SE",r10
!   _temp_3059 = &diskBusy
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
	mov	2860,r13		! source line 2860
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_3053:
! CALL STATEMENT...
!   _temp_3060 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3060  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2862,r13		! source line 2862
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_3054:
! CALL STATEMENT...
!   _temp_3061 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3061  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2864,r13		! source line 2864
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_3055:
! CALL STATEMENT...
!   _temp_3062 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3062  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2866,r13		! source line 2866
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_3056:
! BREAK STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0BR",r10
	jmp	_Label_3051
! CASE 6...
_Label_3057:
! CALL STATEMENT...
!   _temp_3063 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3063  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2872,r13		! source line 2872
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_3050:
! CALL STATEMENT...
!   _temp_3064 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3064  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2874,r13		! source line 2874
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_3051:
! END WHILE...
	jmp	_Label_3044
_Label_3046:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_3065
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_3066
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3067
	.word	12
	.word	4
	.word	_Label_3068
	.word	16
	.word	4
	.word	_Label_3069
	.word	20
	.word	4
	.word	_Label_3070
	.word	-12
	.word	4
	.word	_Label_3071
	.word	-16
	.word	4
	.word	_Label_3072
	.word	-20
	.word	4
	.word	_Label_3073
	.word	-24
	.word	4
	.word	_Label_3074
	.word	-28
	.word	4
	.word	_Label_3075
	.word	-32
	.word	4
	.word	_Label_3076
	.word	-36
	.word	4
	.word	_Label_3077
	.word	-40
	.word	4
	.word	_Label_3078
	.word	-44
	.word	4
	.word	_Label_3079
	.word	-48
	.word	4
	.word	_Label_3080
	.word	-52
	.word	4
	.word	0
_Label_3065:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_3066:
	.ascii	"Pself\0"
	.align
_Label_3067:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3068:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3069:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3070:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3071:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3072:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3073:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3080:
	.byte	'?'
	.ascii	"_temp_3043\0"
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
	mov	2883,r13		! source line 2883
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2900,r13		! source line 2900
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
	mov	2901,r13		! source line 2901
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
	mov	2902,r13		! source line 2902
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
	mov	2903,r13		! source line 2903
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
	mov	2903,r13		! source line 2903
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
	.word	_Label_3081
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3083
	.word	12
	.word	4
	.word	_Label_3084
	.word	16
	.word	4
	.word	_Label_3085
	.word	20
	.word	4
	.word	_Label_3086
	.word	24
	.word	4
	.word	0
_Label_3081:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_3082:
	.ascii	"Pself\0"
	.align
_Label_3083:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_3084:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_3085:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_3086:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_3087
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
_Label_3087:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3088
	.word	_sourceFileName
	.word	337		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_3088:
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
_Label_4160:
	push	r0
	sub	r1,1,r1
	bne	_Label_4160
	mov	2914,r13		! source line 2914
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3089 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_3089  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2923,r13		! source line 2923
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2924,r13		! source line 2924
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
	mov	2925,r13		! source line 2925
	mov	"\0\0SE",r10
!   _temp_3091 = &fileManagerLock
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
	mov	2928,r13		! source line 2928
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
	mov	2929,r13		! source line 2929
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
	mov	2930,r13		! source line 2930
	mov	"\0\0SE",r10
!   _temp_3094 = &anFCBBecameFree
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
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
!   _temp_3095 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_3097 = &_temp_3096
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_3097 = _temp_3097 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3099 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_4161:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4161
!   _temp_3099 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_3101:
!   Data Move: *_temp_3097 = _temp_3099  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_4162:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4162
!   _temp_3097 = _temp_3097 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_3098 = _temp_3098 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_3098) then goto _Label_3101
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_3101
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_3102 = &_temp_3096
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4163
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4163:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3095 = *_temp_3102  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_4164:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4164
! FOR STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3107 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3108 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3107  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_3103:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3108 then goto _Label_3106		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3106
_Label_3104:
	mov	2933,r13		! source line 2933
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0AS",r10
!   _temp_3109 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_3109 [i ] into _temp_3110
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
!   _temp_3111 = _temp_3110 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_3111 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2935,r13		! source line 2935
	mov	"\0\0SE",r10
!   _temp_3112 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_3112 [i ] into _temp_3113
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
	mov	2936,r13		! source line 2936
	mov	"\0\0SE",r10
!   _temp_3115 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_3115 [i ] into _temp_3116
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
!   _temp_3114 = _temp_3116		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_3117 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_3114  sizeInBytes=4
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
_Label_3105:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3103
! END FOR
_Label_3106:
! ASSIGNMENT STATEMENT...
	mov	2940,r13		! source line 2940
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
	mov	2941,r13		! source line 2941
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
	mov	2942,r13		! source line 2942
	mov	"\0\0SE",r10
!   _temp_3120 = &anOpenFileBecameFree
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
	mov	2943,r13		! source line 2943
	mov	"\0\0AS",r10
!   _temp_3121 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_3123 = &_temp_3122
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_3123 = _temp_3123 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_3125 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_4165:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4165
!   _temp_3125 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_3127:
!   Data Move: *_temp_3123 = _temp_3125  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_4166:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4166
!   _temp_3123 = _temp_3123 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_3124 = _temp_3124 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_3124) then goto _Label_3127
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_3127
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_3128 = &_temp_3122
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4167
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4167:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3121 = *_temp_3128  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_4168:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4168
! FOR STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3133 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3134 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3133  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_3129:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3134 then goto _Label_3132		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3132
_Label_3130:
	mov	2945,r13		! source line 2945
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0AS",r10
!   _temp_3135 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_3135 [i ] into _temp_3136
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
!   _temp_3137 = _temp_3136 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_3137 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2947,r13		! source line 2947
	mov	"\0\0SE",r10
!   _temp_3139 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_3139 [i ] into _temp_3140
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
!   _temp_3138 = _temp_3140		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_3141 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3138  sizeInBytes=4
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
_Label_3131:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_3129
! END FOR
_Label_3132:
! ASSIGNMENT STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_4169:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4169
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0AS",r10
!   _temp_3143 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_3144 = _temp_3143 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3144 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2957,r13		! source line 2957
	mov	"\0\0AS",r10
	mov	2957,r13		! source line 2957
	mov	"\0\0SE",r10
!   _temp_3145 = &_P_Kernel_frameManager
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
	mov	2958,r13		! source line 2958
	mov	"\0\0SE",r10
!   _temp_3146 = &_P_Kernel_diskDriver
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
	mov	2958,r13		! source line 2958
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
	.word	_Label_3147
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_3148
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3149
	.word	-12
	.word	4
	.word	_Label_3150
	.word	-16
	.word	4
	.word	_Label_3151
	.word	-20
	.word	4
	.word	_Label_3152
	.word	-24
	.word	4
	.word	_Label_3153
	.word	-28
	.word	4
	.word	_Label_3154
	.word	-32
	.word	4
	.word	_Label_3155
	.word	-36
	.word	4
	.word	_Label_3156
	.word	-40
	.word	4
	.word	_Label_3157
	.word	-44
	.word	4
	.word	_Label_3158
	.word	-48
	.word	4
	.word	_Label_3159
	.word	-52
	.word	4
	.word	_Label_3160
	.word	-56
	.word	4
	.word	_Label_3161
	.word	-60
	.word	4
	.word	_Label_3162
	.word	-64
	.word	4
	.word	_Label_3163
	.word	-68
	.word	4
	.word	_Label_3164
	.word	-72
	.word	4
	.word	_Label_3165
	.word	-100
	.word	28
	.word	_Label_3166
	.word	-104
	.word	4
	.word	_Label_3167
	.word	-108
	.word	4
	.word	_Label_3168
	.word	-392
	.word	284
	.word	_Label_3169
	.word	-396
	.word	4
	.word	_Label_3170
	.word	-400
	.word	4
	.word	_Label_3171
	.word	-404
	.word	4
	.word	_Label_3172
	.word	-408
	.word	4
	.word	_Label_3173
	.word	-412
	.word	4
	.word	_Label_3174
	.word	-416
	.word	4
	.word	_Label_3175
	.word	-420
	.word	4
	.word	_Label_3176
	.word	-424
	.word	4
	.word	_Label_3177
	.word	-428
	.word	4
	.word	_Label_3178
	.word	-432
	.word	4
	.word	_Label_3179
	.word	-436
	.word	4
	.word	_Label_3180
	.word	-440
	.word	4
	.word	_Label_3181
	.word	-444
	.word	4
	.word	_Label_3182
	.word	-448
	.word	4
	.word	_Label_3183
	.word	-452
	.word	4
	.word	_Label_3184
	.word	-456
	.word	4
	.word	_Label_3185
	.word	-460
	.word	4
	.word	_Label_3186
	.word	-500
	.word	40
	.word	_Label_3187
	.word	-504
	.word	4
	.word	_Label_3188
	.word	-508
	.word	4
	.word	_Label_3189
	.word	-912
	.word	404
	.word	_Label_3190
	.word	-916
	.word	4
	.word	_Label_3191
	.word	-920
	.word	4
	.word	_Label_3192
	.word	-924
	.word	4
	.word	_Label_3193
	.word	-928
	.word	4
	.word	_Label_3194
	.word	-932
	.word	4
	.word	_Label_3195
	.word	-936
	.word	4
	.word	_Label_3196
	.word	-940
	.word	4
	.word	_Label_3197
	.word	-944
	.word	4
	.word	0
_Label_3147:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3148:
	.ascii	"Pself\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3151:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3152:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3153:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3154:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3155:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3156:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3157:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3158:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3159:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3160:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3118\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3112\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3111\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3110\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3185:
	.byte	'?'
	.ascii	"_temp_3100\0"
	.align
_Label_3186:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3187:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3188:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3189:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3091\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3090\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3197:
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
_Label_4170:
	push	r0
	sub	r1,1,r1
	bne	_Label_4170
	mov	2969,r13		! source line 2969
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2971,r13		! source line 2971
	mov	"\0\0SE",r10
!   _temp_3198 = &fileManagerLock
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
!   _temp_3199 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3199  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2972,r13		! source line 2972
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3204 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3205 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3204  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_3200:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3205 then goto _Label_3203		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3203
_Label_3201:
	mov	2973,r13		! source line 2973
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3206 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_3206  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2974,r13		! source line 2974
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2975,r13		! source line 2975
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3207 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3207  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2976,r13		! source line 2976
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0SE",r10
!   _temp_3208 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_3208 [i ] into _temp_3209
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
_Label_3202:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3200
! END FOR
_Label_3203:
! CALL STATEMENT...
!   _temp_3210 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3210  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2979,r13		! source line 2979
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0SE",r10
!   _temp_3211 = _function_199_printFCB
	set	_function_199_printFCB,r1
	store	r1,[r14+-76]
!   _temp_3212 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_3211  sizeInBytes=4
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
	mov	2981,r13		! source line 2981
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_3213 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_3213  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3218 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3219 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3218  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_3214:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3219 then goto _Label_3217		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3217
_Label_3215:
	mov	2983,r13		! source line 2983
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_3220 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3220  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2984,r13		! source line 2984
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2985,r13		! source line 2985
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3221 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_3221  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3223 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_3223 [i ] into _temp_3224
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
!   _temp_3222 = _temp_3224		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_3222  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2987,r13		! source line 2987
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3225 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3225  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2988,r13		! source line 2988
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0SE",r10
!   _temp_3226 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_3226 [i ] into _temp_3227
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
_Label_3216:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_3214
! END FOR
_Label_3217:
! CALL STATEMENT...
!   _temp_3228 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3228  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2991,r13		! source line 2991
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2992,r13		! source line 2992
	mov	"\0\0SE",r10
!   _temp_3229 = _function_198_printOpen
	set	_function_198_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3230 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3229  sizeInBytes=4
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
	mov	2993,r13		! source line 2993
	mov	"\0\0SE",r10
!   _temp_3231 = &fileManagerLock
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
	mov	2993,r13		! source line 2993
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
	.word	_Label_3232
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3233
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3234
	.word	-12
	.word	4
	.word	_Label_3235
	.word	-16
	.word	4
	.word	_Label_3236
	.word	-20
	.word	4
	.word	_Label_3237
	.word	-24
	.word	4
	.word	_Label_3238
	.word	-28
	.word	4
	.word	_Label_3239
	.word	-32
	.word	4
	.word	_Label_3240
	.word	-36
	.word	4
	.word	_Label_3241
	.word	-40
	.word	4
	.word	_Label_3242
	.word	-44
	.word	4
	.word	_Label_3243
	.word	-48
	.word	4
	.word	_Label_3244
	.word	-52
	.word	4
	.word	_Label_3245
	.word	-56
	.word	4
	.word	_Label_3246
	.word	-60
	.word	4
	.word	_Label_3247
	.word	-64
	.word	4
	.word	_Label_3248
	.word	-68
	.word	4
	.word	_Label_3249
	.word	-72
	.word	4
	.word	_Label_3250
	.word	-76
	.word	4
	.word	_Label_3251
	.word	-80
	.word	4
	.word	_Label_3252
	.word	-84
	.word	4
	.word	_Label_3253
	.word	-88
	.word	4
	.word	_Label_3254
	.word	-92
	.word	4
	.word	_Label_3255
	.word	-96
	.word	4
	.word	_Label_3256
	.word	-100
	.word	4
	.word	_Label_3257
	.word	-104
	.word	4
	.word	_Label_3258
	.word	-108
	.word	4
	.word	_Label_3259
	.word	-112
	.word	4
	.word	_Label_3260
	.word	-116
	.word	4
	.word	0
_Label_3232:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3233:
	.ascii	"Pself\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3260:
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
_Label_4171:
	push	r0
	sub	r1,1,r1
	bne	_Label_4171
	mov	2998,r13		! source line 2998
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3014,r13		! source line 3014
	mov	"\0\0AS",r10
	mov	3014,r13		! source line 3014
	mov	"\0\0SE",r10
!   _temp_3261 = &_P_Kernel_fileManager
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
	mov	3015,r13		! source line 3015
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3262
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3262
	jmp	_Label_3263
_Label_3262:
! THEN...
	mov	3016,r13		! source line 3016
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3263:
! SEND STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0SE",r10
!   _temp_3264 = &fileManagerLock
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
	mov	3021,r13		! source line 3021
	mov	"\0\0WH",r10
_Label_3265:
	mov	3021,r13		! source line 3021
	mov	"\0\0SE",r10
!   _temp_3268 = &openFileFreeList
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
!   if result==true then goto _Label_3266 else goto _Label_3267
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3267
	jmp	_Label_3266
_Label_3266:
	mov	3021,r13		! source line 3021
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3022,r13		! source line 3022
	mov	"\0\0SE",r10
!   _temp_3269 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3270 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3269  sizeInBytes=4
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
	jmp	_Label_3265
_Label_3267:
! ASSIGNMENT STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0AS",r10
	mov	3024,r13		! source line 3024
	mov	"\0\0SE",r10
!   _temp_3271 = &openFileFreeList
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
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3272 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3272 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3273 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3273 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3031,r13		! source line 3031
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3274 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3274 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3033,r13		! source line 3033
	mov	"\0\0SE",r10
!   _temp_3275 = &fileManagerLock
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
	mov	3034,r13		! source line 3034
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
	.word	_Label_3276
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3278
	.word	12
	.word	4
	.word	_Label_3279
	.word	-12
	.word	4
	.word	_Label_3280
	.word	-16
	.word	4
	.word	_Label_3281
	.word	-20
	.word	4
	.word	_Label_3282
	.word	-24
	.word	4
	.word	_Label_3283
	.word	-28
	.word	4
	.word	_Label_3284
	.word	-32
	.word	4
	.word	_Label_3285
	.word	-36
	.word	4
	.word	_Label_3286
	.word	-40
	.word	4
	.word	_Label_3287
	.word	-44
	.word	4
	.word	_Label_3288
	.word	-48
	.word	4
	.word	_Label_3289
	.word	-52
	.word	4
	.word	_Label_3290
	.word	-56
	.word	4
	.word	0
_Label_3276:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3277:
	.ascii	"Pself\0"
	.align
_Label_3278:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3282:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3289:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3290:
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
_Label_4172:
	push	r0
	sub	r1,1,r1
	bne	_Label_4172
	mov	3039,r13		! source line 3039
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3067,r13		! source line 3067
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
	mov	3068,r13		! source line 3068
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	3069,r13		! source line 3069
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3292		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3292
!	jmp	_Label_3291
_Label_3291:
! THEN...
	mov	3070,r13		! source line 3070
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3293 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3293  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3070,r13		! source line 3070
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3292:
! ASSIGNMENT STATEMENT...
	mov	3074,r13		! source line 3074
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
	mov	3075,r13		! source line 3075
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3076,r13		! source line 3076
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
	mov	3077,r13		! source line 3077
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	3080,r13		! source line 3080
	mov	"\0\0WH",r10
_Label_3294:
!   if numFiles <= 0 then goto _Label_3296		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3296
!	jmp	_Label_3295
_Label_3295:
	mov	3080,r13		! source line 3080
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3297 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3297  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3081,r13		! source line 3081
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3082,r13		! source line 3082
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3298 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3298  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3083,r13		! source line 3083
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3299 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3299  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	3085,r13		! source line 3085
	mov	"\0\0CA",r10
	call	_function_200_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	3087,r13		! source line 3087
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3303 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3303 then goto _Label_3301		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3301
!	jmp	_Label_3302
_Label_3302:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3305
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
!   _temp_3304 = _temp_3305		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3304  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	3088,r13		! source line 3088
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3300 else goto _Label_3301
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3301
	jmp	_Label_3300
_Label_3300:
! THEN...
	mov	3089,r13		! source line 3089
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0BR",r10
	jmp	_Label_3296
! END IF...
_Label_3301:
! ASSIGNMENT STATEMENT...
	mov	3091,r13		! source line 3091
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3294
_Label_3296:
! IF STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3307		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3307
!	jmp	_Label_3306
_Label_3306:
! THEN...
	mov	3097,r13		! source line 3097
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3307:
! SEND STATEMENT...
	mov	3100,r13		! source line 3100
	mov	"\0\0SE",r10
!   _temp_3308 = &fileManagerLock
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
	mov	3102,r13		! source line 3102
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3313 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3314 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3313  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3309:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3314 then goto _Label_3312		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3312
_Label_3310:
	mov	3102,r13		! source line 3102
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3103,r13		! source line 3103
	mov	"\0\0AS",r10
!   _temp_3315 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3315 [i ] into _temp_3316
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
!   fcb = _temp_3316		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3320 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3319 = *_temp_3320  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3319 != start then goto _Label_3318		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3318
!	jmp	_Label_3317
_Label_3317:
! THEN...
	mov	3105,r13		! source line 3105
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3105,r13		! source line 3105
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3321 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3324 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3323 = *_temp_3324  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3322 = _temp_3323 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3321 = _temp_3322  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0SE",r10
!   _temp_3325 = &fileManagerLock
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
	mov	3107,r13		! source line 3107
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3318:
!   Increment the FOR-LOOP index variable and jump back
_Label_3311:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3309
! END FOR
_Label_3312:
! WHILE STATEMENT...
	mov	3112,r13		! source line 3112
	mov	"\0\0WH",r10
_Label_3326:
	mov	3112,r13		! source line 3112
	mov	"\0\0SE",r10
!   _temp_3329 = &fcbFreeList
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
!   if result==true then goto _Label_3327 else goto _Label_3328
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3328
	jmp	_Label_3327
_Label_3327:
	mov	3112,r13		! source line 3112
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0SE",r10
!   _temp_3330 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3331 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3330  sizeInBytes=4
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
	jmp	_Label_3326
_Label_3328:
! ASSIGNMENT STATEMENT...
	mov	3115,r13		! source line 3115
	mov	"\0\0AS",r10
	mov	3115,r13		! source line 3115
	mov	"\0\0SE",r10
!   _temp_3332 = &fcbFreeList
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
	mov	3118,r13		! source line 3118
	mov	"\0\0SE",r10
!   _temp_3333 = &fileManagerLock
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
	mov	3121,r13		! source line 3121
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3334 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3334 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3335 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3335 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3336 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3336 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3341 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3340 = *_temp_3341  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3340 < 0 then goto _Label_3339		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3339
	jmp	_Label_3337
_Label_3339:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3342 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3342 ) then goto _Label_3338		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3338
!	jmp	_Label_3337
_Label_3337:
! THEN...
	mov	3125,r13		! source line 3125
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3343 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3343  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3125,r13		! source line 3125
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3338:
! RETURN STATEMENT...
	mov	3127,r13		! source line 3127
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
	.word	_Label_3344
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3345
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3346
	.word	12
	.word	4
	.word	_Label_3347
	.word	-12
	.word	4
	.word	_Label_3348
	.word	-16
	.word	4
	.word	_Label_3349
	.word	-20
	.word	4
	.word	_Label_3350
	.word	-24
	.word	4
	.word	_Label_3351
	.word	-28
	.word	4
	.word	_Label_3352
	.word	-32
	.word	4
	.word	_Label_3353
	.word	-36
	.word	4
	.word	_Label_3354
	.word	-40
	.word	4
	.word	_Label_3355
	.word	-44
	.word	4
	.word	_Label_3356
	.word	-48
	.word	4
	.word	_Label_3357
	.word	-52
	.word	4
	.word	_Label_3358
	.word	-56
	.word	4
	.word	_Label_3359
	.word	-60
	.word	4
	.word	_Label_3360
	.word	-64
	.word	4
	.word	_Label_3361
	.word	-68
	.word	4
	.word	_Label_3362
	.word	-72
	.word	4
	.word	_Label_3363
	.word	-76
	.word	4
	.word	_Label_3364
	.word	-80
	.word	4
	.word	_Label_3365
	.word	-84
	.word	4
	.word	_Label_3366
	.word	-88
	.word	4
	.word	_Label_3367
	.word	-92
	.word	4
	.word	_Label_3368
	.word	-96
	.word	4
	.word	_Label_3369
	.word	-100
	.word	4
	.word	_Label_3370
	.word	-104
	.word	4
	.word	_Label_3371
	.word	-108
	.word	4
	.word	_Label_3372
	.word	-112
	.word	4
	.word	_Label_3373
	.word	-116
	.word	4
	.word	_Label_3374
	.word	-120
	.word	4
	.word	_Label_3375
	.word	-124
	.word	4
	.word	_Label_3376
	.word	-128
	.word	4
	.word	_Label_3377
	.word	-132
	.word	4
	.word	_Label_3378
	.word	-136
	.word	4
	.word	_Label_3379
	.word	-140
	.word	4
	.word	_Label_3380
	.word	-144
	.word	4
	.word	_Label_3381
	.word	-148
	.word	4
	.word	_Label_3382
	.word	-152
	.word	4
	.word	_Label_3383
	.word	-156
	.word	4
	.word	_Label_3384
	.word	-160
	.word	4
	.word	0
_Label_3344:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3345:
	.ascii	"Pself\0"
	.align
_Label_3346:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3347:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3348:
	.byte	'?'
	.ascii	"_temp_3342\0"
	.align
_Label_3349:
	.byte	'?'
	.ascii	"_temp_3341\0"
	.align
_Label_3350:
	.byte	'?'
	.ascii	"_temp_3340\0"
	.align
_Label_3351:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3352:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3353:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3354:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3355:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3356:
	.byte	'?'
	.ascii	"_temp_3331\0"
	.align
_Label_3357:
	.byte	'?'
	.ascii	"_temp_3330\0"
	.align
_Label_3358:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3359:
	.byte	'?'
	.ascii	"_temp_3325\0"
	.align
_Label_3360:
	.byte	'?'
	.ascii	"_temp_3324\0"
	.align
_Label_3361:
	.byte	'?'
	.ascii	"_temp_3323\0"
	.align
_Label_3362:
	.byte	'?'
	.ascii	"_temp_3322\0"
	.align
_Label_3363:
	.byte	'?'
	.ascii	"_temp_3321\0"
	.align
_Label_3364:
	.byte	'?'
	.ascii	"_temp_3320\0"
	.align
_Label_3365:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3366:
	.byte	'?'
	.ascii	"_temp_3316\0"
	.align
_Label_3367:
	.byte	'?'
	.ascii	"_temp_3315\0"
	.align
_Label_3368:
	.byte	'?'
	.ascii	"_temp_3314\0"
	.align
_Label_3369:
	.byte	'?'
	.ascii	"_temp_3313\0"
	.align
_Label_3370:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3371:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3372:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3373:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3374:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3375:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3376:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3293\0"
	.align
_Label_3378:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3379:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3380:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3381:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3382:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3383:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3384:
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
_Label_4173:
	push	r0
	sub	r1,1,r1
	bne	_Label_4173
	mov	3140,r13		! source line 3140
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3142,r13		! source line 3142
	mov	"\0\0IF",r10
!   _temp_3387 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3387 then goto _Label_3386		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3386
!	jmp	_Label_3385
_Label_3385:
! THEN...
	mov	3143,r13		! source line 3143
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	3143,r13		! source line 3143
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3386:
! SEND STATEMENT...
	mov	3145,r13		! source line 3145
	mov	"\0\0SE",r10
!   _temp_3388 = &fileManagerLock
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
	mov	3146,r13		! source line 3146
	mov	"\0\0SE",r10
!   _temp_3389 = &_P_Kernel_fileManager
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
	mov	3147,r13		! source line 3147
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3390 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3390  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	3148,r13		! source line 3148
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3391 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3394 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3393 = *_temp_3394  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3392 = _temp_3393 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3391 = _temp_3392  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3149,r13		! source line 3149
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3398 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3397 = *_temp_3398  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3397 > 0 then goto _Label_3396		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3396
!	jmp	_Label_3395
_Label_3395:
! THEN...
	mov	3150,r13		! source line 3150
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3150,r13		! source line 3150
	mov	"\0\0SE",r10
!   _temp_3399 = &openFileFreeList
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
	mov	3151,r13		! source line 3151
	mov	"\0\0SE",r10
!   _temp_3400 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3401 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3400  sizeInBytes=4
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
	mov	3152,r13		! source line 3152
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3402 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3405 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3404 = *_temp_3405  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3403 = _temp_3404 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3402 = _temp_3403  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	3153,r13		! source line 3153
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3409 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3408 = *_temp_3409  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3408 > 0 then goto _Label_3407		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3407
!	jmp	_Label_3406
_Label_3406:
! THEN...
	mov	3154,r13		! source line 3154
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3154,r13		! source line 3154
	mov	"\0\0SE",r10
!   _temp_3410 = &fcbFreeList
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
	mov	3155,r13		! source line 3155
	mov	"\0\0SE",r10
!   _temp_3411 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3412 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3411  sizeInBytes=4
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
_Label_3407:
! END IF...
_Label_3396:
! SEND STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0SE",r10
!   _temp_3413 = &fileManagerLock
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
	mov	3158,r13		! source line 3158
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
	.word	_Label_3414
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3415
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3416
	.word	12
	.word	4
	.word	_Label_3417
	.word	-12
	.word	4
	.word	_Label_3418
	.word	-16
	.word	4
	.word	_Label_3419
	.word	-20
	.word	4
	.word	_Label_3420
	.word	-24
	.word	4
	.word	_Label_3421
	.word	-28
	.word	4
	.word	_Label_3422
	.word	-32
	.word	4
	.word	_Label_3423
	.word	-36
	.word	4
	.word	_Label_3424
	.word	-40
	.word	4
	.word	_Label_3425
	.word	-44
	.word	4
	.word	_Label_3426
	.word	-48
	.word	4
	.word	_Label_3427
	.word	-52
	.word	4
	.word	_Label_3428
	.word	-56
	.word	4
	.word	_Label_3429
	.word	-60
	.word	4
	.word	_Label_3430
	.word	-64
	.word	4
	.word	_Label_3431
	.word	-68
	.word	4
	.word	_Label_3432
	.word	-72
	.word	4
	.word	_Label_3433
	.word	-76
	.word	4
	.word	_Label_3434
	.word	-80
	.word	4
	.word	_Label_3435
	.word	-84
	.word	4
	.word	_Label_3436
	.word	-88
	.word	4
	.word	_Label_3437
	.word	-92
	.word	4
	.word	_Label_3438
	.word	-96
	.word	4
	.word	_Label_3439
	.word	-100
	.word	4
	.word	_Label_3440
	.word	-104
	.word	4
	.word	0
_Label_3414:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3415:
	.ascii	"Pself\0"
	.align
_Label_3416:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3412\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3411\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3410\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3409\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3408\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3405\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3404\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3403\0"
	.align
_Label_3426:
	.byte	'?'
	.ascii	"_temp_3402\0"
	.align
_Label_3427:
	.byte	'?'
	.ascii	"_temp_3401\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3400\0"
	.align
_Label_3429:
	.byte	'?'
	.ascii	"_temp_3399\0"
	.align
_Label_3430:
	.byte	'?'
	.ascii	"_temp_3398\0"
	.align
_Label_3431:
	.byte	'?'
	.ascii	"_temp_3397\0"
	.align
_Label_3432:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3433:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3434:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3435:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3440:
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
_Label_4174:
	push	r0
	sub	r1,1,r1
	bne	_Label_4174
	mov	3163,r13		! source line 3163
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3168,r13		! source line 3168
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3444 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3443 = *_temp_3444  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3443) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3445 = _temp_3443 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3445 ) then goto _Label_3442		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3442
!	jmp	_Label_3441
_Label_3441:
! THEN...
	mov	3169,r13		! source line 3169
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3169,r13		! source line 3169
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3450 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3449 = *_temp_3450  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3449) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3451 = _temp_3449 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3448 = *_temp_3451  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3448 >= 0 then goto _Label_3447		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3447
!	jmp	_Label_3446
_Label_3446:
! THEN...
	mov	3170,r13		! source line 3170
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3452 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3452  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3170,r13		! source line 3170
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3447:
! ASSIGNMENT STATEMENT...
	mov	3172,r13		! source line 3172
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3454 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3453 = *_temp_3454  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3453) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3455 = _temp_3453 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3455 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	3173,r13		! source line 3173
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3459 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3458 = *_temp_3459  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3458) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3460 = _temp_3458 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3457 = *_temp_3460  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3463 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3462 = *_temp_3463  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3462) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3464 = _temp_3462 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3461 = *_temp_3464  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3456 = _temp_3457 + _temp_3461		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3467 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3466 = *_temp_3467  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3466) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3468 = _temp_3466 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3465 = *_temp_3468  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3469 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3456  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3465  sizeInBytes=4
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
_Label_3442:
! RETURN STATEMENT...
	mov	3168,r13		! source line 3168
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
	.word	_Label_3470
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3471
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3472
	.word	12
	.word	4
	.word	_Label_3473
	.word	-12
	.word	4
	.word	_Label_3474
	.word	-16
	.word	4
	.word	_Label_3475
	.word	-20
	.word	4
	.word	_Label_3476
	.word	-24
	.word	4
	.word	_Label_3477
	.word	-28
	.word	4
	.word	_Label_3478
	.word	-32
	.word	4
	.word	_Label_3479
	.word	-36
	.word	4
	.word	_Label_3480
	.word	-40
	.word	4
	.word	_Label_3481
	.word	-44
	.word	4
	.word	_Label_3482
	.word	-48
	.word	4
	.word	_Label_3483
	.word	-52
	.word	4
	.word	_Label_3484
	.word	-56
	.word	4
	.word	_Label_3485
	.word	-60
	.word	4
	.word	_Label_3486
	.word	-64
	.word	4
	.word	_Label_3487
	.word	-68
	.word	4
	.word	_Label_3488
	.word	-72
	.word	4
	.word	_Label_3489
	.word	-76
	.word	4
	.word	_Label_3490
	.word	-80
	.word	4
	.word	_Label_3491
	.word	-84
	.word	4
	.word	_Label_3492
	.word	-88
	.word	4
	.word	_Label_3493
	.word	-92
	.word	4
	.word	_Label_3494
	.word	-96
	.word	4
	.word	_Label_3495
	.word	-100
	.word	4
	.word	_Label_3496
	.word	-104
	.word	4
	.word	_Label_3497
	.word	-108
	.word	4
	.word	0
_Label_3470:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3471:
	.ascii	"Pself\0"
	.align
_Label_3472:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3473:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3474:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3475:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3476:
	.byte	'?'
	.ascii	"_temp_3466\0"
	.align
_Label_3477:
	.byte	'?'
	.ascii	"_temp_3465\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3464\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3463\0"
	.align
_Label_3480:
	.byte	'?'
	.ascii	"_temp_3462\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3460\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3459\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3458\0"
	.align
_Label_3485:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3486:
	.byte	'?'
	.ascii	"_temp_3456\0"
	.align
_Label_3487:
	.byte	'?'
	.ascii	"_temp_3455\0"
	.align
_Label_3488:
	.byte	'?'
	.ascii	"_temp_3454\0"
	.align
_Label_3489:
	.byte	'?'
	.ascii	"_temp_3453\0"
	.align
_Label_3490:
	.byte	'?'
	.ascii	"_temp_3452\0"
	.align
_Label_3491:
	.byte	'?'
	.ascii	"_temp_3451\0"
	.align
_Label_3492:
	.byte	'?'
	.ascii	"_temp_3450\0"
	.align
_Label_3493:
	.byte	'?'
	.ascii	"_temp_3449\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3448\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3497:
	.byte	'?'
	.ascii	"_temp_3443\0"
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
_Label_4175:
	push	r0
	sub	r1,1,r1
	bne	_Label_4175
	mov	3182,r13		! source line 3182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3197,r13		! source line 3197
	mov	"\0\0SE",r10
!   _temp_3498 = &fileManagerLock
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
	mov	3198,r13		! source line 3198
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3504		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3504
!   _temp_3503 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3505
_Label_3504:
!   _temp_3503 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3505:
!   if _temp_3503 then goto _Label_3502 else goto _Label_3499
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3499
	jmp	_Label_3502
_Label_3502:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3508 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3507 = *_temp_3508  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3507 == 0 then goto _Label_3509		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3509
!   _temp_3506 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3510
_Label_3509:
!   _temp_3506 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3510:
!   if _temp_3506 then goto _Label_3501 else goto _Label_3499
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3499
	jmp	_Label_3501
_Label_3501:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3513 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3512 = *_temp_3513  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3512) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3514 = _temp_3512 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3511 = *_temp_3514  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3511 >= 0 then goto _Label_3500		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3500
!	jmp	_Label_3499
_Label_3499:
! THEN...
	mov	3199,r13		! source line 3199
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3515 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3515  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3199,r13		! source line 3199
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3500:
! ASSIGNMENT STATEMENT...
	mov	3201,r13		! source line 3201
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3516 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3516  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	3202,r13		! source line 3202
	mov	"\0\0WH",r10
_Label_3517:
!   if numBytes <= 0 then goto _Label_3519		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3519
!	jmp	_Label_3518
_Label_3518:
	mov	3202,r13		! source line 3202
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3211,r13		! source line 3211
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
	mov	3212,r13		! source line 3212
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
	mov	3216,r13		! source line 3216
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3523 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3522 = *_temp_3523  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3522 == sector then goto _Label_3521		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3521
!	jmp	_Label_3520
_Label_3520:
! THEN...
	mov	3217,r13		! source line 3217
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3217,r13		! source line 3217
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3524) then goto _runtimeErrorNullPointer
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
	mov	3219,r13		! source line 3219
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3527 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3526 = *_temp_3527  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3525 = sector + _temp_3526		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3529 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3528 = *_temp_3529  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3530 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3525  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3528  sizeInBytes=4
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
	mov	3222,r13		! source line 3222
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3531 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3531 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3223,r13		! source line 3223
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3532 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3532 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3521:
! ASSIGNMENT STATEMENT...
	mov	3225,r13		! source line 3225
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3534 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3533 = *_temp_3534  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3533 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3226,r13		! source line 3226
	mov	"\0\0AS",r10
!   _temp_3535 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3535  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3226,r13		! source line 3226
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
	mov	3230,r13		! source line 3230
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3231,r13		! source line 3231
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3232,r13		! source line 3232
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3233,r13		! source line 3233
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3517
_Label_3519:
! SEND STATEMENT...
	mov	3240,r13		! source line 3240
	mov	"\0\0SE",r10
!   _temp_3536 = &fileManagerLock
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
	mov	3241,r13		! source line 3241
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
	.word	_Label_3537
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3539
	.word	12
	.word	4
	.word	_Label_3540
	.word	16
	.word	4
	.word	_Label_3541
	.word	20
	.word	4
	.word	_Label_3542
	.word	24
	.word	4
	.word	_Label_3543
	.word	-16
	.word	4
	.word	_Label_3544
	.word	-20
	.word	4
	.word	_Label_3545
	.word	-24
	.word	4
	.word	_Label_3546
	.word	-28
	.word	4
	.word	_Label_3547
	.word	-32
	.word	4
	.word	_Label_3548
	.word	-36
	.word	4
	.word	_Label_3549
	.word	-40
	.word	4
	.word	_Label_3550
	.word	-44
	.word	4
	.word	_Label_3551
	.word	-48
	.word	4
	.word	_Label_3552
	.word	-52
	.word	4
	.word	_Label_3553
	.word	-56
	.word	4
	.word	_Label_3554
	.word	-60
	.word	4
	.word	_Label_3555
	.word	-64
	.word	4
	.word	_Label_3556
	.word	-68
	.word	4
	.word	_Label_3557
	.word	-72
	.word	4
	.word	_Label_3558
	.word	-76
	.word	4
	.word	_Label_3559
	.word	-80
	.word	4
	.word	_Label_3560
	.word	-84
	.word	4
	.word	_Label_3561
	.word	-88
	.word	4
	.word	_Label_3562
	.word	-92
	.word	4
	.word	_Label_3563
	.word	-96
	.word	4
	.word	_Label_3564
	.word	-100
	.word	4
	.word	_Label_3565
	.word	-104
	.word	4
	.word	_Label_3566
	.word	-9
	.word	1
	.word	_Label_3567
	.word	-10
	.word	1
	.word	_Label_3568
	.word	-108
	.word	4
	.word	_Label_3569
	.word	-112
	.word	4
	.word	_Label_3570
	.word	-116
	.word	4
	.word	_Label_3571
	.word	-120
	.word	4
	.word	_Label_3572
	.word	-124
	.word	4
	.word	_Label_3573
	.word	-128
	.word	4
	.word	0
_Label_3537:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3538:
	.ascii	"Pself\0"
	.align
_Label_3539:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3540:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3541:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3542:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3543:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3544:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3545:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3546:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3547:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3548:
	.byte	'?'
	.ascii	"_temp_3531\0"
	.align
_Label_3549:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3550:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3551:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3552:
	.byte	'?'
	.ascii	"_temp_3527\0"
	.align
_Label_3553:
	.byte	'?'
	.ascii	"_temp_3526\0"
	.align
_Label_3554:
	.byte	'?'
	.ascii	"_temp_3525\0"
	.align
_Label_3555:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3556:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3557:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3558:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3559:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3560:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3561:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3562:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3563:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3566:
	.byte	'C'
	.ascii	"_temp_3506\0"
	.align
_Label_3567:
	.byte	'C'
	.ascii	"_temp_3503\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3498\0"
	.align
_Label_3569:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3570:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3571:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3572:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3573:
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
_Label_4176:
	push	r0
	sub	r1,1,r1
	bne	_Label_4176
	mov	3246,r13		! source line 3246
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3262,r13		! source line 3262
	mov	"\0\0SE",r10
!   _temp_3574 = &fileManagerLock
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
	mov	3263,r13		! source line 3263
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3580		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3580
!   _temp_3579 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3581
_Label_3580:
!   _temp_3579 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3581:
!   if _temp_3579 then goto _Label_3578 else goto _Label_3575
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3575
	jmp	_Label_3578
_Label_3578:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3584 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3583 = *_temp_3584  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3583 == 0 then goto _Label_3585		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3585
!   _temp_3582 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3586
_Label_3585:
!   _temp_3582 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3586:
!   if _temp_3582 then goto _Label_3577 else goto _Label_3575
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3575
	jmp	_Label_3577
_Label_3577:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3589 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3588 = *_temp_3589  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3588) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3590 = _temp_3588 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3587 = *_temp_3590  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3587 >= 0 then goto _Label_3576		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3576
!	jmp	_Label_3575
_Label_3575:
! THEN...
	mov	3264,r13		! source line 3264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3591 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3591  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3264,r13		! source line 3264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3576:
! ASSIGNMENT STATEMENT...
	mov	3266,r13		! source line 3266
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3592 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3592  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	3267,r13		! source line 3267
	mov	"\0\0WH",r10
_Label_3593:
!   if numBytes <= 0 then goto _Label_3595		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3595
!	jmp	_Label_3594
_Label_3594:
	mov	3267,r13		! source line 3267
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3276,r13		! source line 3276
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
	mov	3277,r13		! source line 3277
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
	mov	3281,r13		! source line 3281
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3599 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3598 = *_temp_3599  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3598 == sector then goto _Label_3597		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3597
!	jmp	_Label_3596
_Label_3596:
! THEN...
	mov	3283,r13		! source line 3283
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3283,r13		! source line 3283
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3600) then goto _runtimeErrorNullPointer
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
_Label_3597:
! ASSIGNMENT STATEMENT...
	mov	3285,r13		! source line 3285
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3602 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3601 = *_temp_3602  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3601 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	3286,r13		! source line 3286
	mov	"\0\0AS",r10
!   _temp_3603 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3603  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	3286,r13		! source line 3286
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	3287,r13		! source line 3287
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3607 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3606 = *_temp_3607  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3606 != sector then goto _Label_3605		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3605
!	jmp	_Label_3604
_Label_3604:
	jmp	_Label_3608
_Label_3605:
! ELSE...
	mov	3289,r13		! source line 3289
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3289,r13		! source line 3289
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3611
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3611
	jmp	_Label_3610
_Label_3611:
!   if bytesToMove != 8192 then goto _Label_3610		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3610
!	jmp	_Label_3609
_Label_3609:
	jmp	_Label_3612
_Label_3610:
! ELSE...
	mov	3293,r13		! source line 3293
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3615 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3614 = *_temp_3615  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3613 = sector + _temp_3614		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3617 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3616 = *_temp_3617  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3618 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3613  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3616  sizeInBytes=4
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
_Label_3612:
! END IF...
_Label_3608:
! ASSIGNMENT STATEMENT...
	mov	3297,r13		! source line 3297
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3619 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3619 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3298,r13		! source line 3298
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3620 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3620 = 1  (sizeInBytes=1)
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
	mov	3302,r13		! source line 3302
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3303,r13		! source line 3303
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3304,r13		! source line 3304
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3305,r13		! source line 3305
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3593
_Label_3595:
! SEND STATEMENT...
	mov	3312,r13		! source line 3312
	mov	"\0\0SE",r10
!   _temp_3621 = &fileManagerLock
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
	mov	3314,r13		! source line 3314
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
	.word	_Label_3622
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3623
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3624
	.word	12
	.word	4
	.word	_Label_3625
	.word	16
	.word	4
	.word	_Label_3626
	.word	20
	.word	4
	.word	_Label_3627
	.word	24
	.word	4
	.word	_Label_3628
	.word	-16
	.word	4
	.word	_Label_3629
	.word	-20
	.word	4
	.word	_Label_3630
	.word	-24
	.word	4
	.word	_Label_3631
	.word	-28
	.word	4
	.word	_Label_3632
	.word	-32
	.word	4
	.word	_Label_3633
	.word	-36
	.word	4
	.word	_Label_3634
	.word	-40
	.word	4
	.word	_Label_3635
	.word	-44
	.word	4
	.word	_Label_3636
	.word	-48
	.word	4
	.word	_Label_3637
	.word	-52
	.word	4
	.word	_Label_3638
	.word	-56
	.word	4
	.word	_Label_3639
	.word	-60
	.word	4
	.word	_Label_3640
	.word	-64
	.word	4
	.word	_Label_3641
	.word	-68
	.word	4
	.word	_Label_3642
	.word	-72
	.word	4
	.word	_Label_3643
	.word	-76
	.word	4
	.word	_Label_3644
	.word	-80
	.word	4
	.word	_Label_3645
	.word	-84
	.word	4
	.word	_Label_3646
	.word	-88
	.word	4
	.word	_Label_3647
	.word	-92
	.word	4
	.word	_Label_3648
	.word	-96
	.word	4
	.word	_Label_3649
	.word	-100
	.word	4
	.word	_Label_3650
	.word	-104
	.word	4
	.word	_Label_3651
	.word	-108
	.word	4
	.word	_Label_3652
	.word	-112
	.word	4
	.word	_Label_3653
	.word	-9
	.word	1
	.word	_Label_3654
	.word	-10
	.word	1
	.word	_Label_3655
	.word	-116
	.word	4
	.word	_Label_3656
	.word	-120
	.word	4
	.word	_Label_3657
	.word	-124
	.word	4
	.word	_Label_3658
	.word	-128
	.word	4
	.word	_Label_3659
	.word	-132
	.word	4
	.word	_Label_3660
	.word	-136
	.word	4
	.word	0
_Label_3622:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3623:
	.ascii	"Pself\0"
	.align
_Label_3624:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3625:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3626:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3627:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3621\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3620\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3619\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3618\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3617\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3616\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3615\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3614\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3613\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3607\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3606\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3603\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3602\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3601\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3600\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3599\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3598\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3592\0"
	.align
_Label_3646:
	.byte	'?'
	.ascii	"_temp_3591\0"
	.align
_Label_3647:
	.byte	'?'
	.ascii	"_temp_3590\0"
	.align
_Label_3648:
	.byte	'?'
	.ascii	"_temp_3589\0"
	.align
_Label_3649:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3650:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3651:
	.byte	'?'
	.ascii	"_temp_3584\0"
	.align
_Label_3652:
	.byte	'?'
	.ascii	"_temp_3583\0"
	.align
_Label_3653:
	.byte	'C'
	.ascii	"_temp_3582\0"
	.align
_Label_3654:
	.byte	'C'
	.ascii	"_temp_3579\0"
	.align
_Label_3655:
	.byte	'?'
	.ascii	"_temp_3574\0"
	.align
_Label_3656:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3657:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3658:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3659:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3660:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3661
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3661:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3662
	.word	_sourceFileName
	.word	362		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3662:
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
_Label_4177:
	push	r0
	sub	r1,1,r1
	bne	_Label_4177
	mov	3350,r13		! source line 3350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3351,r13		! source line 3351
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3352,r13		! source line 3352
	mov	"\0\0AS",r10
	mov	3352,r13		! source line 3352
	mov	"\0\0SE",r10
!   _temp_3663 = &_P_Kernel_frameManager
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
	mov	3353,r13		! source line 3353
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3354,r13		! source line 3354
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3355,r13		! source line 3355
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3355,r13		! source line 3355
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
	.word	_Label_3664
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3666
	.word	-12
	.word	4
	.word	0
_Label_3664:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3665:
	.ascii	"Pself\0"
	.align
_Label_3666:
	.byte	'?'
	.ascii	"_temp_3663\0"
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
_Label_4178:
	push	r0
	sub	r1,1,r1
	bne	_Label_4178
	mov	3360,r13		! source line 3360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3667 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3667  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3361,r13		! source line 3361
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3362,r13		! source line 3362
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3668 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3668  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3363,r13		! source line 3363
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3364,r13		! source line 3364
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3669 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3669  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3365,r13		! source line 3365
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3366,r13		! source line 3366
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3670 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3670  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3367,r13		! source line 3367
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3368,r13		! source line 3368
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3671 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3671  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3369,r13		! source line 3369
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3370,r13		! source line 3370
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3672 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3672  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3371,r13		! source line 3371
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3372,r13		! source line 3372
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3373,r13		! source line 3373
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3373,r13		! source line 3373
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
	.word	_Label_3673
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3674
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3675
	.word	-12
	.word	4
	.word	_Label_3676
	.word	-16
	.word	4
	.word	_Label_3677
	.word	-20
	.word	4
	.word	_Label_3678
	.word	-24
	.word	4
	.word	_Label_3679
	.word	-28
	.word	4
	.word	_Label_3680
	.word	-32
	.word	4
	.word	0
_Label_3673:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3674:
	.ascii	"Pself\0"
	.align
_Label_3675:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3676:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3677:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3678:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3679:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3680:
	.byte	'?'
	.ascii	"_temp_3667\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3681
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3681:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3682
	.word	_sourceFileName
	.word	379		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3682:
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
_Label_4179:
	push	r0
	sub	r1,1,r1
	bne	_Label_4179
	mov	3384,r13		! source line 3384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3683 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3683  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3385,r13		! source line 3385
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3386,r13		! source line 3386
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3684 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3684  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3387,r13		! source line 3387
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3388,r13		! source line 3388
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3686		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3686
!	jmp	_Label_3685
_Label_3685:
! THEN...
	mov	3389,r13		! source line 3389
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3389,r13		! source line 3389
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
	jmp	_Label_3687
_Label_3686:
! ELSE...
	mov	3391,r13		! source line 3391
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3688 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3688  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3391,r13		! source line 3391
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3687:
! RETURN STATEMENT...
	mov	3388,r13		! source line 3388
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
	.word	_Label_3689
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3690
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3691
	.word	-12
	.word	4
	.word	_Label_3692
	.word	-16
	.word	4
	.word	_Label_3693
	.word	-20
	.word	4
	.word	0
_Label_3689:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3690:
	.ascii	"Pself\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3688\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3684\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3683\0"
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
_Label_4180:
	push	r0
	sub	r1,1,r1
	bne	_Label_4180
	mov	3397,r13		! source line 3397
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3407,r13		! source line 3407
	mov	"\0\0SE",r10
!   _temp_3694 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3695 = _temp_3694 + 4
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
	mov	3408,r13		! source line 3408
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3409,r13		! source line 3409
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
	mov	3410,r13		! source line 3410
	mov	"\0\0SE",r10
!   _temp_3696 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3697 = _temp_3696 + 4
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
	mov	3411,r13		! source line 3411
	mov	"\0\0RE",r10
	mov	3411,r13		! source line 3411
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3700 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3699  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3698  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3698  (sizeInBytes=1)
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
	.word	_Label_3701
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3702
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3703
	.word	12
	.word	4
	.word	_Label_3704
	.word	16
	.word	4
	.word	_Label_3705
	.word	-16
	.word	4
	.word	_Label_3706
	.word	-20
	.word	4
	.word	_Label_3707
	.word	-9
	.word	1
	.word	_Label_3708
	.word	-24
	.word	4
	.word	_Label_3709
	.word	-28
	.word	4
	.word	_Label_3710
	.word	-32
	.word	4
	.word	_Label_3711
	.word	-36
	.word	4
	.word	_Label_3712
	.word	-40
	.word	4
	.word	0
_Label_3701:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3702:
	.ascii	"Pself\0"
	.align
_Label_3703:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3704:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3705:
	.byte	'?'
	.ascii	"_temp_3700\0"
	.align
_Label_3706:
	.byte	'?'
	.ascii	"_temp_3699\0"
	.align
_Label_3707:
	.byte	'C'
	.ascii	"_temp_3698\0"
	.align
_Label_3708:
	.byte	'?'
	.ascii	"_temp_3697\0"
	.align
_Label_3709:
	.byte	'?'
	.ascii	"_temp_3696\0"
	.align
_Label_3710:
	.byte	'?'
	.ascii	"_temp_3695\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3694\0"
	.align
_Label_3712:
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
_Label_4181:
	push	r0
	sub	r1,1,r1
	bne	_Label_4181
	mov	3416,r13		! source line 3416
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3421,r13		! source line 3421
	mov	"\0\0IF",r10
	mov	3421,r13		! source line 3421
	mov	"\0\0SE",r10
!   _temp_3716 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3717) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3716  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3715  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3715 then goto _Label_3714 else goto _Label_3713
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3713
	jmp	_Label_3714
_Label_3713:
! THEN...
	mov	3422,r13		! source line 3422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3718 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3718  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3422,r13		! source line 3422
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3714:
! RETURN STATEMENT...
	mov	3424,r13		! source line 3424
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
	.word	_Label_3719
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3720
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3721
	.word	-16
	.word	4
	.word	_Label_3722
	.word	-20
	.word	4
	.word	_Label_3723
	.word	-24
	.word	4
	.word	_Label_3724
	.word	-9
	.word	1
	.word	_Label_3725
	.word	-28
	.word	4
	.word	0
_Label_3719:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3720:
	.ascii	"Pself\0"
	.align
_Label_3721:
	.byte	'?'
	.ascii	"_temp_3718\0"
	.align
_Label_3722:
	.byte	'?'
	.ascii	"_temp_3717\0"
	.align
_Label_3723:
	.byte	'?'
	.ascii	"_temp_3716\0"
	.align
_Label_3724:
	.byte	'C'
	.ascii	"_temp_3715\0"
	.align
_Label_3725:
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
_Label_4182:
	push	r0
	sub	r1,1,r1
	bne	_Label_4182
	mov	3429,r13		! source line 3429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3455,r13		! source line 3455
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3729 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3728 = *_temp_3729  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3728) then goto _Label_3727
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3727
!	jmp	_Label_3726
_Label_3726:
! THEN...
	mov	3456,r13		! source line 3456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3730 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3730  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3456,r13		! source line 3456
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3727:
! IF STATEMENT...
	mov	3460,r13		! source line 3460
	mov	"\0\0IF",r10
	mov	3460,r13		! source line 3460
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3734) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3733  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3733 == 1112300152 then goto _Label_3732		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3732
!	jmp	_Label_3731
_Label_3731:
! THEN...
	mov	3461,r13		! source line 3461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3735 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3735  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3461,r13		! source line 3461
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3462,r13		! source line 3462
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3732:
! ASSIGNMENT STATEMENT...
	mov	3466,r13		! source line 3466
	mov	"\0\0AS",r10
	mov	3466,r13		! source line 3466
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3736) then goto _runtimeErrorNullPointer
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
	mov	3467,r13		! source line 3467
	mov	"\0\0AS",r10
	mov	3467,r13		! source line 3467
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3737) then goto _runtimeErrorNullPointer
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
	mov	3468,r13		! source line 3468
	mov	"\0\0AS",r10
	mov	3468,r13		! source line 3468
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3738) then goto _runtimeErrorNullPointer
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
	mov	3469,r13		! source line 3469
	mov	"\0\0AS",r10
	mov	3469,r13		! source line 3469
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3739) then goto _runtimeErrorNullPointer
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
	mov	3470,r13		! source line 3470
	mov	"\0\0AS",r10
	mov	3470,r13		! source line 3470
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3740) then goto _runtimeErrorNullPointer
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
	mov	3471,r13		! source line 3471
	mov	"\0\0AS",r10
	mov	3471,r13		! source line 3471
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3741) then goto _runtimeErrorNullPointer
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
	mov	3474,r13		! source line 3474
	mov	"\0\0IF",r10
!   _temp_3744 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3744) then goto _Label_3743
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3743
!	jmp	_Label_3742
_Label_3742:
! THEN...
	mov	3475,r13		! source line 3475
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3745 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3745  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3475,r13		! source line 3475
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3476,r13		! source line 3476
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3743:
! ASSIGNMENT STATEMENT...
	mov	3478,r13		! source line 3478
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
	mov	3482,r13		! source line 3482
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3747
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3747
!	jmp	_Label_3746
_Label_3746:
! THEN...
	mov	3483,r13		! source line 3483
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3748 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3748  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3483,r13		! source line 3483
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3484,r13		! source line 3484
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3747:
! IF STATEMENT...
	mov	3488,r13		! source line 3488
	mov	"\0\0IF",r10
!   _temp_3751 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3751) then goto _Label_3750
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3750
!	jmp	_Label_3749
_Label_3749:
! THEN...
	mov	3489,r13		! source line 3489
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3752 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3752  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3489,r13		! source line 3489
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3490,r13		! source line 3490
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3750:
! IF STATEMENT...
	mov	3492,r13		! source line 3492
	mov	"\0\0IF",r10
!   _temp_3755 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3755 then goto _Label_3754		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3754
!	jmp	_Label_3753
_Label_3753:
! THEN...
	mov	3493,r13		! source line 3493
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3756 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3756  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3493,r13		! source line 3493
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3494,r13		! source line 3494
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3754:
! ASSIGNMENT STATEMENT...
	mov	3496,r13		! source line 3496
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
	mov	3499,r13		! source line 3499
	mov	"\0\0IF",r10
!   _temp_3759 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3759) then goto _Label_3758
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3758
!	jmp	_Label_3757
_Label_3757:
! THEN...
	mov	3500,r13		! source line 3500
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3760 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3760  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3500,r13		! source line 3500
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3501,r13		! source line 3501
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3758:
! IF STATEMENT...
	mov	3503,r13		! source line 3503
	mov	"\0\0IF",r10
!   _temp_3763 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3763 then goto _Label_3762		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3762
!	jmp	_Label_3761
_Label_3761:
! THEN...
	mov	3504,r13		! source line 3504
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3764 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3764  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3504,r13		! source line 3504
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3505,r13		! source line 3505
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3762:
! ASSIGNMENT STATEMENT...
	mov	3507,r13		! source line 3507
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
	mov	3510,r13		! source line 3510
	mov	"\0\0AS",r10
!   _temp_3767 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3766 = _temp_3767 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3765 = _temp_3766 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3765 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3525,r13		! source line 3525
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3769		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3769
!	jmp	_Label_3768
_Label_3768:
! THEN...
	mov	3526,r13		! source line 3526
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3770 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3770  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3526,r13		! source line 3526
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3771 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3771  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3527,r13		! source line 3527
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3772 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3772  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3528,r13		! source line 3528
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3529,r13		! source line 3529
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3769:
! SEND STATEMENT...
	mov	3531,r13		! source line 3531
	mov	"\0\0SE",r10
!   _temp_3773 = &_P_Kernel_frameManager
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
	mov	3537,r13		! source line 3537
	mov	"\0\0IF",r10
	mov	3537,r13		! source line 3537
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3777) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3776  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3776 == 707406378 then goto _Label_3775		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3775
!	jmp	_Label_3774
_Label_3774:
! THEN...
	mov	3538,r13		! source line 3538
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3778 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3778  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3538,r13		! source line 3538
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3539,r13		! source line 3539
	mov	"\0\0SE",r10
!   _temp_3779 = &_P_Kernel_frameManager
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
	mov	3540,r13		! source line 3540
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3775:
! ASSIGNMENT STATEMENT...
	mov	3544,r13		! source line 3544
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
	mov	3545,r13		! source line 3545
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3784 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3785 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3784  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3780:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3785 then goto _Label_3783		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3783
_Label_3781:
	mov	3545,r13		! source line 3545
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3546,r13		! source line 3546
	mov	"\0\0AS",r10
	mov	3546,r13		! source line 3546
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
	mov	3549,r13		! source line 3549
	mov	"\0\0IF",r10
	mov	3549,r13		! source line 3549
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3789) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3788  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3788 then goto _Label_3787 else goto _Label_3786
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3786
	jmp	_Label_3787
_Label_3786:
! THEN...
	mov	3550,r13		! source line 3550
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3790 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3790  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3550,r13		! source line 3550
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3551,r13		! source line 3551
	mov	"\0\0SE",r10
!   _temp_3791 = &_P_Kernel_frameManager
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
	mov	3552,r13		! source line 3552
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3787:
! SEND STATEMENT...
	mov	3554,r13		! source line 3554
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
	mov	3555,r13		! source line 3555
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3782:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3780
! END FOR
_Label_3783:
! IF STATEMENT...
	mov	3559,r13		! source line 3559
	mov	"\0\0IF",r10
	mov	3559,r13		! source line 3559
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3795) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3794  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3794 == 707406378 then goto _Label_3793		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3793
!	jmp	_Label_3792
_Label_3792:
! THEN...
	mov	3560,r13		! source line 3560
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3796 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3796  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3560,r13		! source line 3560
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3561,r13		! source line 3561
	mov	"\0\0SE",r10
!   _temp_3797 = &_P_Kernel_frameManager
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
	mov	3562,r13		! source line 3562
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3793:
! FOR STATEMENT...
	mov	3566,r13		! source line 3566
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3802 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3803 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3802  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3798:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3803 then goto _Label_3801		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3801
_Label_3799:
	mov	3566,r13		! source line 3566
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3567,r13		! source line 3567
	mov	"\0\0AS",r10
	mov	3567,r13		! source line 3567
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
	mov	3570,r13		! source line 3570
	mov	"\0\0IF",r10
	mov	3570,r13		! source line 3570
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3807) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3806  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3806 then goto _Label_3805 else goto _Label_3804
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3804
	jmp	_Label_3805
_Label_3804:
! THEN...
	mov	3571,r13		! source line 3571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3808 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3808  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3571,r13		! source line 3571
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3572,r13		! source line 3572
	mov	"\0\0SE",r10
!   _temp_3809 = &_P_Kernel_frameManager
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
	mov	3573,r13		! source line 3573
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3805:
! ASSIGNMENT STATEMENT...
	mov	3575,r13		! source line 3575
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3800:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3798
! END FOR
_Label_3801:
! IF STATEMENT...
	mov	3579,r13		! source line 3579
	mov	"\0\0IF",r10
	mov	3579,r13		! source line 3579
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3813) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3812  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3812 == 707406378 then goto _Label_3811		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3811
!	jmp	_Label_3810
_Label_3810:
! THEN...
	mov	3580,r13		! source line 3580
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3814 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3814  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3580,r13		! source line 3580
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3581,r13		! source line 3581
	mov	"\0\0SE",r10
!   _temp_3815 = &_P_Kernel_frameManager
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
	mov	3582,r13		! source line 3582
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3811:
! ASSIGNMENT STATEMENT...
	mov	3586,r13		! source line 3586
	mov	"\0\0AS",r10
	mov	3586,r13		! source line 3586
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
	mov	3590,r13		! source line 3590
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3593,r13		! source line 3593
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
	.word	_Label_3816
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3818
	.word	12
	.word	4
	.word	_Label_3819
	.word	-16
	.word	4
	.word	_Label_3820
	.word	-20
	.word	4
	.word	_Label_3821
	.word	-24
	.word	4
	.word	_Label_3822
	.word	-28
	.word	4
	.word	_Label_3823
	.word	-32
	.word	4
	.word	_Label_3824
	.word	-36
	.word	4
	.word	_Label_3825
	.word	-40
	.word	4
	.word	_Label_3826
	.word	-9
	.word	1
	.word	_Label_3827
	.word	-44
	.word	4
	.word	_Label_3828
	.word	-48
	.word	4
	.word	_Label_3829
	.word	-52
	.word	4
	.word	_Label_3830
	.word	-56
	.word	4
	.word	_Label_3831
	.word	-60
	.word	4
	.word	_Label_3832
	.word	-64
	.word	4
	.word	_Label_3833
	.word	-68
	.word	4
	.word	_Label_3834
	.word	-72
	.word	4
	.word	_Label_3835
	.word	-76
	.word	4
	.word	_Label_3836
	.word	-10
	.word	1
	.word	_Label_3837
	.word	-80
	.word	4
	.word	_Label_3838
	.word	-84
	.word	4
	.word	_Label_3839
	.word	-88
	.word	4
	.word	_Label_3840
	.word	-92
	.word	4
	.word	_Label_3841
	.word	-96
	.word	4
	.word	_Label_3842
	.word	-100
	.word	4
	.word	_Label_3843
	.word	-104
	.word	4
	.word	_Label_3844
	.word	-108
	.word	4
	.word	_Label_3845
	.word	-112
	.word	4
	.word	_Label_3846
	.word	-116
	.word	4
	.word	_Label_3847
	.word	-120
	.word	4
	.word	_Label_3848
	.word	-124
	.word	4
	.word	_Label_3849
	.word	-128
	.word	4
	.word	_Label_3850
	.word	-132
	.word	4
	.word	_Label_3851
	.word	-136
	.word	4
	.word	_Label_3852
	.word	-140
	.word	4
	.word	_Label_3853
	.word	-144
	.word	4
	.word	_Label_3854
	.word	-148
	.word	4
	.word	_Label_3855
	.word	-152
	.word	4
	.word	_Label_3856
	.word	-156
	.word	4
	.word	_Label_3857
	.word	-160
	.word	4
	.word	_Label_3858
	.word	-164
	.word	4
	.word	_Label_3859
	.word	-168
	.word	4
	.word	_Label_3860
	.word	-172
	.word	4
	.word	_Label_3861
	.word	-176
	.word	4
	.word	_Label_3862
	.word	-180
	.word	4
	.word	_Label_3863
	.word	-184
	.word	4
	.word	_Label_3864
	.word	-188
	.word	4
	.word	_Label_3865
	.word	-192
	.word	4
	.word	_Label_3866
	.word	-196
	.word	4
	.word	_Label_3867
	.word	-200
	.word	4
	.word	_Label_3868
	.word	-204
	.word	4
	.word	_Label_3869
	.word	-208
	.word	4
	.word	_Label_3870
	.word	-212
	.word	4
	.word	_Label_3871
	.word	-216
	.word	4
	.word	_Label_3872
	.word	-220
	.word	4
	.word	_Label_3873
	.word	-224
	.word	4
	.word	_Label_3874
	.word	-228
	.word	4
	.word	_Label_3875
	.word	-232
	.word	4
	.word	_Label_3876
	.word	-236
	.word	4
	.word	_Label_3877
	.word	-240
	.word	4
	.word	_Label_3878
	.word	-244
	.word	4
	.word	_Label_3879
	.word	-248
	.word	4
	.word	_Label_3880
	.word	-252
	.word	4
	.word	_Label_3881
	.word	-256
	.word	4
	.word	_Label_3882
	.word	-260
	.word	4
	.word	_Label_3883
	.word	-264
	.word	4
	.word	_Label_3884
	.word	-268
	.word	4
	.word	0
_Label_3816:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3817:
	.ascii	"Pself\0"
	.align
_Label_3818:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3819:
	.byte	'?'
	.ascii	"_temp_3815\0"
	.align
_Label_3820:
	.byte	'?'
	.ascii	"_temp_3814\0"
	.align
_Label_3821:
	.byte	'?'
	.ascii	"_temp_3813\0"
	.align
_Label_3822:
	.byte	'?'
	.ascii	"_temp_3812\0"
	.align
_Label_3823:
	.byte	'?'
	.ascii	"_temp_3809\0"
	.align
_Label_3824:
	.byte	'?'
	.ascii	"_temp_3808\0"
	.align
_Label_3825:
	.byte	'?'
	.ascii	"_temp_3807\0"
	.align
_Label_3826:
	.byte	'C'
	.ascii	"_temp_3806\0"
	.align
_Label_3827:
	.byte	'?'
	.ascii	"_temp_3803\0"
	.align
_Label_3828:
	.byte	'?'
	.ascii	"_temp_3802\0"
	.align
_Label_3829:
	.byte	'?'
	.ascii	"_temp_3797\0"
	.align
_Label_3830:
	.byte	'?'
	.ascii	"_temp_3796\0"
	.align
_Label_3831:
	.byte	'?'
	.ascii	"_temp_3795\0"
	.align
_Label_3832:
	.byte	'?'
	.ascii	"_temp_3794\0"
	.align
_Label_3833:
	.byte	'?'
	.ascii	"_temp_3791\0"
	.align
_Label_3834:
	.byte	'?'
	.ascii	"_temp_3790\0"
	.align
_Label_3835:
	.byte	'?'
	.ascii	"_temp_3789\0"
	.align
_Label_3836:
	.byte	'C'
	.ascii	"_temp_3788\0"
	.align
_Label_3837:
	.byte	'?'
	.ascii	"_temp_3785\0"
	.align
_Label_3838:
	.byte	'?'
	.ascii	"_temp_3784\0"
	.align
_Label_3839:
	.byte	'?'
	.ascii	"_temp_3779\0"
	.align
_Label_3840:
	.byte	'?'
	.ascii	"_temp_3778\0"
	.align
_Label_3841:
	.byte	'?'
	.ascii	"_temp_3777\0"
	.align
_Label_3842:
	.byte	'?'
	.ascii	"_temp_3776\0"
	.align
_Label_3843:
	.byte	'?'
	.ascii	"_temp_3773\0"
	.align
_Label_3844:
	.byte	'?'
	.ascii	"_temp_3772\0"
	.align
_Label_3845:
	.byte	'?'
	.ascii	"_temp_3771\0"
	.align
_Label_3846:
	.byte	'?'
	.ascii	"_temp_3770\0"
	.align
_Label_3847:
	.byte	'?'
	.ascii	"_temp_3767\0"
	.align
_Label_3848:
	.byte	'?'
	.ascii	"_temp_3766\0"
	.align
_Label_3849:
	.byte	'?'
	.ascii	"_temp_3765\0"
	.align
_Label_3850:
	.byte	'?'
	.ascii	"_temp_3764\0"
	.align
_Label_3851:
	.byte	'?'
	.ascii	"_temp_3763\0"
	.align
_Label_3852:
	.byte	'?'
	.ascii	"_temp_3760\0"
	.align
_Label_3853:
	.byte	'?'
	.ascii	"_temp_3759\0"
	.align
_Label_3854:
	.byte	'?'
	.ascii	"_temp_3756\0"
	.align
_Label_3855:
	.byte	'?'
	.ascii	"_temp_3755\0"
	.align
_Label_3856:
	.byte	'?'
	.ascii	"_temp_3752\0"
	.align
_Label_3857:
	.byte	'?'
	.ascii	"_temp_3751\0"
	.align
_Label_3858:
	.byte	'?'
	.ascii	"_temp_3748\0"
	.align
_Label_3859:
	.byte	'?'
	.ascii	"_temp_3745\0"
	.align
_Label_3860:
	.byte	'?'
	.ascii	"_temp_3744\0"
	.align
_Label_3861:
	.byte	'?'
	.ascii	"_temp_3741\0"
	.align
_Label_3862:
	.byte	'?'
	.ascii	"_temp_3740\0"
	.align
_Label_3863:
	.byte	'?'
	.ascii	"_temp_3739\0"
	.align
_Label_3864:
	.byte	'?'
	.ascii	"_temp_3738\0"
	.align
_Label_3865:
	.byte	'?'
	.ascii	"_temp_3737\0"
	.align
_Label_3866:
	.byte	'?'
	.ascii	"_temp_3736\0"
	.align
_Label_3867:
	.byte	'?'
	.ascii	"_temp_3735\0"
	.align
_Label_3868:
	.byte	'?'
	.ascii	"_temp_3734\0"
	.align
_Label_3869:
	.byte	'?'
	.ascii	"_temp_3733\0"
	.align
_Label_3870:
	.byte	'?'
	.ascii	"_temp_3730\0"
	.align
_Label_3871:
	.byte	'?'
	.ascii	"_temp_3729\0"
	.align
_Label_3872:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3873:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3874:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3875:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3876:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3877:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3878:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3879:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3880:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3881:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3882:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3883:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3884:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_3885
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_3885:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3886
	.word	_sourceFileName
	.word	399		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_3886:
	.ascii	"SerialDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_SerialDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_1,r1
	push	r1
	mov	33,r1
_Label_4183:
	push	r0
	sub	r1,1,r1
	bne	_Label_4183
	mov	3602,r13		! source line 3602
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3887 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3887  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	3605,r13		! source line 3605
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3607,r13		! source line 3607
	mov	"\0\0AS",r10
!   serial_status_word_address = 16776960		(4 bytes)
	set	16776960,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	3608,r13		! source line 3608
	mov	"\0\0AS",r10
!   serial_data_word_address = 16776964		(4 bytes)
	set	16776964,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	3610,r13		! source line 3610
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,12,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! SEND STATEMENT...
	mov	3611,r13		! source line 3611
	mov	"\0\0SE",r10
!   _temp_3889 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-120]
!   Send message Init
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3614,r13		! source line 3614
	mov	"\0\0AS",r10
!   _temp_3890 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-116]
!   NEW ARRAY Constructor...
!   _temp_3892 = &_temp_3891
	add	r14,-112,r1
	store	r1,[r14+-96]
!   _temp_3892 = _temp_3892 + 4
	load	[r14+-96],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Next value...
	mov	10,r1
	store	r1,[r14+-92]
_Label_3894:
!   Data Move: *_temp_3892 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-96],r2
	storeb	r1,[r2]
!   _temp_3892 = _temp_3892 + 1
	load	[r14+-96],r1
	add	r1,1,r1
	store	r1,[r14+-96]
!   _temp_3893 = _temp_3893 + -1
	load	[r14+-92],r1
	add	r1,-1,r1
	store	r1,[r14+-92]
!   if intNotZero (_temp_3893) then goto _Label_3894
	load	[r14+-92],r1
	cmp	r1,r0
	bne	_Label_3894
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-112]
!   _temp_3895 = &_temp_3891
	add	r14,-112,r1
	store	r1,[r14+-88]
!   make sure array has size 10
	load	[r14+-116],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4184
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4184:
!   make sure array has size 10
	load	[r14+-88],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3890 = *_temp_3895  (sizeInBytes=16)
	load	[r14+-88],r5
	load	[r14+-116],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3615,r13		! source line 3615
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3616,r13		! source line 3616
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3617,r13		! source line 3617
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3618,r13		! source line 3618
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: getCharacterAvail = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   getCharacterAvail = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	3619,r13		! source line 3619
	mov	"\0\0SE",r10
!   _temp_3897 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-80]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3622,r13		! source line 3622
	mov	"\0\0AS",r10
!   _temp_3898 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-76]
!   NEW ARRAY Constructor...
!   _temp_3900 = &_temp_3899
	add	r14,-72,r1
	store	r1,[r14+-56]
!   _temp_3900 = _temp_3900 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Next value...
	mov	10,r1
	store	r1,[r14+-52]
_Label_3902:
!   Data Move: *_temp_3900 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-56],r2
	storeb	r1,[r2]
!   _temp_3900 = _temp_3900 + 1
	load	[r14+-56],r1
	add	r1,1,r1
	store	r1,[r14+-56]
!   _temp_3901 = _temp_3901 + -1
	load	[r14+-52],r1
	add	r1,-1,r1
	store	r1,[r14+-52]
!   if intNotZero (_temp_3901) then goto _Label_3902
	load	[r14+-52],r1
	cmp	r1,r0
	bne	_Label_3902
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-72]
!   _temp_3903 = &_temp_3899
	add	r14,-72,r1
	store	r1,[r14+-48]
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_4185
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_4185:
!   make sure array has size 10
	load	[r14+-48],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3898 = *_temp_3903  (sizeInBytes=16)
	load	[r14+-48],r5
	load	[r14+-76],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3623,r13		! source line 3623
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3624,r13		! source line 3624
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3625,r13		! source line 3625
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3626,r13		! source line 3626
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: putBufferSem = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,104,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   putBufferSem = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	3627,r13		! source line 3627
	mov	"\0\0SE",r10
!   _temp_3905 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
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
	mov	3629,r13		! source line 3629
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialNeedsAttention = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,124,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   serialNeedsAttention = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+124]
! SEND STATEMENT...
	mov	3630,r13		! source line 3630
	mov	"\0\0SE",r10
!   _temp_3907 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3632,r13		! source line 3632
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialHandlerThread = zeros  (sizeInBytes=4164)
	load	[r14+8],r4
	add	r4,144,r4
	mov	1041,r3
_Label_4186:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_4186
!   serialHandlerThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+8],r2
	store	r1,[r2+144]
! SEND STATEMENT...
	mov	3633,r13		! source line 3633
	mov	"\0\0SE",r10
!   _temp_3909 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-24]
!   _temp_3910 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_3909  sizeInBytes=4
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
	mov	3634,r13		! source line 3634
	mov	"\0\0SE",r10
!   _temp_3911 = _function_202_serialHandlerFunction
	set	_function_202_serialHandlerFunction,r1
	store	r1,[r14+-16]
!   _temp_3912 = &serialHandlerThread
	load	[r14+8],r1
	add	r1,144,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3911  sizeInBytes=4
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
	mov	3636,r13		! source line 3636
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3636,r13		! source line 3636
	mov	"\0\0RE",r10
	add	r15,136,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_3913
	.word	4		! total size of parameters
	.word	132		! frame size = 132
	.word	_Label_3914
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3915
	.word	-12
	.word	4
	.word	_Label_3916
	.word	-16
	.word	4
	.word	_Label_3917
	.word	-20
	.word	4
	.word	_Label_3918
	.word	-24
	.word	4
	.word	_Label_3919
	.word	-28
	.word	4
	.word	_Label_3920
	.word	-32
	.word	4
	.word	_Label_3921
	.word	-36
	.word	4
	.word	_Label_3922
	.word	-40
	.word	4
	.word	_Label_3923
	.word	-44
	.word	4
	.word	_Label_3924
	.word	-48
	.word	4
	.word	_Label_3925
	.word	-52
	.word	4
	.word	_Label_3926
	.word	-56
	.word	4
	.word	_Label_3927
	.word	-72
	.word	16
	.word	_Label_3928
	.word	-76
	.word	4
	.word	_Label_3929
	.word	-80
	.word	4
	.word	_Label_3930
	.word	-84
	.word	4
	.word	_Label_3931
	.word	-88
	.word	4
	.word	_Label_3932
	.word	-92
	.word	4
	.word	_Label_3933
	.word	-96
	.word	4
	.word	_Label_3934
	.word	-112
	.word	16
	.word	_Label_3935
	.word	-116
	.word	4
	.word	_Label_3936
	.word	-120
	.word	4
	.word	_Label_3937
	.word	-124
	.word	4
	.word	_Label_3938
	.word	-128
	.word	4
	.word	0
_Label_3913:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3914:
	.ascii	"Pself\0"
	.align
_Label_3915:
	.byte	'?'
	.ascii	"_temp_3912\0"
	.align
_Label_3916:
	.byte	'?'
	.ascii	"_temp_3911\0"
	.align
_Label_3917:
	.byte	'?'
	.ascii	"_temp_3910\0"
	.align
_Label_3918:
	.byte	'?'
	.ascii	"_temp_3909\0"
	.align
_Label_3919:
	.byte	'?'
	.ascii	"_temp_3908\0"
	.align
_Label_3920:
	.byte	'?'
	.ascii	"_temp_3907\0"
	.align
_Label_3921:
	.byte	'?'
	.ascii	"_temp_3906\0"
	.align
_Label_3922:
	.byte	'?'
	.ascii	"_temp_3905\0"
	.align
_Label_3923:
	.byte	'?'
	.ascii	"_temp_3904\0"
	.align
_Label_3924:
	.byte	'?'
	.ascii	"_temp_3903\0"
	.align
_Label_3925:
	.byte	'?'
	.ascii	"_temp_3901\0"
	.align
_Label_3926:
	.byte	'?'
	.ascii	"_temp_3900\0"
	.align
_Label_3927:
	.byte	'?'
	.ascii	"_temp_3899\0"
	.align
_Label_3928:
	.byte	'?'
	.ascii	"_temp_3898\0"
	.align
_Label_3929:
	.byte	'?'
	.ascii	"_temp_3897\0"
	.align
_Label_3930:
	.byte	'?'
	.ascii	"_temp_3896\0"
	.align
_Label_3931:
	.byte	'?'
	.ascii	"_temp_3895\0"
	.align
_Label_3932:
	.byte	'?'
	.ascii	"_temp_3893\0"
	.align
_Label_3933:
	.byte	'?'
	.ascii	"_temp_3892\0"
	.align
_Label_3934:
	.byte	'?'
	.ascii	"_temp_3891\0"
	.align
_Label_3935:
	.byte	'?'
	.ascii	"_temp_3890\0"
	.align
_Label_3936:
	.byte	'?'
	.ascii	"_temp_3889\0"
	.align
_Label_3937:
	.byte	'?'
	.ascii	"_temp_3888\0"
	.align
_Label_3938:
	.byte	'?'
	.ascii	"_temp_3887\0"
	.align
! 
! ===============  METHOD PutChar  ===============
! 
_Method_P_Kernel_SerialDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_2,r1
	push	r1
	mov	8,r1
_Label_4187:
	push	r0
	sub	r1,1,r1
	bne	_Label_4187
	mov	3640,r13		! source line 3640
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3647,r13		! source line 3647
	mov	"\0\0SE",r10
!   _temp_3939 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3650,r13		! source line 3650
	mov	"\0\0SE",r10
!   _temp_3940 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3653,r13		! source line 3653
	mov	"\0\0AS",r10
!   _temp_3941 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Move address of _temp_3941 [putBufferNextIn ] into _temp_3942
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: *_temp_3942 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-24],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3656,r13		! source line 3656
	mov	"\0\0AS",r10
!   _temp_3943 = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   putBufferNextIn = _temp_3943 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3657,r13		! source line 3657
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3660,r13		! source line 3660
	mov	"\0\0SE",r10
!   _temp_3944 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	3663,r13		! source line 3663
	mov	"\0\0SE",r10
!   _temp_3945 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3663,r13		! source line 3663
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_3946
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3947
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3948
	.word	12
	.word	1
	.word	_Label_3949
	.word	-12
	.word	4
	.word	_Label_3950
	.word	-16
	.word	4
	.word	_Label_3951
	.word	-20
	.word	4
	.word	_Label_3952
	.word	-24
	.word	4
	.word	_Label_3953
	.word	-28
	.word	4
	.word	_Label_3954
	.word	-32
	.word	4
	.word	_Label_3955
	.word	-36
	.word	4
	.word	0
_Label_3946:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_3947:
	.ascii	"Pself\0"
	.align
_Label_3948:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_3949:
	.byte	'?'
	.ascii	"_temp_3945\0"
	.align
_Label_3950:
	.byte	'?'
	.ascii	"_temp_3944\0"
	.align
_Label_3951:
	.byte	'?'
	.ascii	"_temp_3943\0"
	.align
_Label_3952:
	.byte	'?'
	.ascii	"_temp_3942\0"
	.align
_Label_3953:
	.byte	'?'
	.ascii	"_temp_3941\0"
	.align
_Label_3954:
	.byte	'?'
	.ascii	"_temp_3940\0"
	.align
_Label_3955:
	.byte	'?'
	.ascii	"_temp_3939\0"
	.align
! 
! ===============  METHOD GetChar  ===============
! 
_Method_P_Kernel_SerialDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_3,r1
	push	r1
	mov	10,r1
_Label_4188:
	push	r0
	sub	r1,1,r1
	bne	_Label_4188
	mov	3668,r13		! source line 3668
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3677,r13		! source line 3677
	mov	"\0\0SE",r10
!   _temp_3956 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3680,r13		! source line 3680
	mov	"\0\0IF",r10
!   if intIsZero (getBufferSize) then goto _Label_3957
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_3957
	jmp	_Label_3958
_Label_3957:
! THEN...
	mov	3681,r13		! source line 3681
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3681,r13		! source line 3681
	mov	"\0\0SE",r10
!   _temp_3959 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-36]
!   _temp_3960 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3959  sizeInBytes=4
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
! END IF...
_Label_3958:
! ASSIGNMENT STATEMENT...
	mov	3686,r13		! source line 3686
	mov	"\0\0AS",r10
!   _temp_3961 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Move address of _temp_3961 [getBufferNextOut ] into _temp_3962
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: holdChar = *_temp_3962  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3689,r13		! source line 3689
	mov	"\0\0AS",r10
!   _temp_3963 = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   getBufferNextOut = _temp_3963 rem 10		(int)
	load	[r14+-20],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3690,r13		! source line 3690
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3693,r13		! source line 3693
	mov	"\0\0SE",r10
!   _temp_3964 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
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
	mov	3696,r13		! source line 3696
	mov	"\0\0RE",r10
!   ReturnResult: holdChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_3965
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_3966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3967
	.word	-16
	.word	4
	.word	_Label_3968
	.word	-20
	.word	4
	.word	_Label_3969
	.word	-24
	.word	4
	.word	_Label_3970
	.word	-28
	.word	4
	.word	_Label_3971
	.word	-32
	.word	4
	.word	_Label_3972
	.word	-36
	.word	4
	.word	_Label_3973
	.word	-40
	.word	4
	.word	_Label_3974
	.word	-9
	.word	1
	.word	0
_Label_3965:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_3966:
	.ascii	"Pself\0"
	.align
_Label_3967:
	.byte	'?'
	.ascii	"_temp_3964\0"
	.align
_Label_3968:
	.byte	'?'
	.ascii	"_temp_3963\0"
	.align
_Label_3969:
	.byte	'?'
	.ascii	"_temp_3962\0"
	.align
_Label_3970:
	.byte	'?'
	.ascii	"_temp_3961\0"
	.align
_Label_3971:
	.byte	'?'
	.ascii	"_temp_3960\0"
	.align
_Label_3972:
	.byte	'?'
	.ascii	"_temp_3959\0"
	.align
_Label_3973:
	.byte	'?'
	.ascii	"_temp_3956\0"
	.align
_Label_3974:
	.byte	'C'
	.ascii	"holdChar\0"
	.align
! 
! ===============  METHOD SerialHandler  ===============
! 
_Method_P_Kernel_SerialDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_SerialDriver_4,r1
	push	r1
	mov	25,r1
_Label_4189:
	push	r0
	sub	r1,1,r1
	bne	_Label_4189
	mov	3700,r13		! source line 3700
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3714,r13		! source line 3714
	mov	"\0\0WH",r10
_Label_3975:
!	jmp	_Label_3976
_Label_3976:
	mov	3714,r13		! source line 3714
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3717,r13		! source line 3717
	mov	"\0\0SE",r10
!   _temp_3978 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-100]
!   Send message Down
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3721,r13		! source line 3721
	mov	"\0\0IF",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3982 = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   _temp_3981 = _temp_3982 AND 1		(int)
	load	[r14+-92],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-96]
!   if _temp_3981 != 1 then goto _Label_3980		(int)
	load	[r14+-96],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_3980
!	jmp	_Label_3979
_Label_3979:
! THEN...
	mov	3724,r13		! source line 3724
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3724,r13		! source line 3724
	mov	"\0\0SE",r10
!   _temp_3983 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Send message Lock
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3727,r13		! source line 3727
	mov	"\0\0IF",r10
!   if getBufferSize < 9 then goto _Label_3985		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	9,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3985
!	jmp	_Label_3984
_Label_3984:
! THEN...
	mov	3728,r13		! source line 3728
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3986 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_3986  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	3728,r13		! source line 3728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=inChar  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3729,r13		! source line 3729
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_3987 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3987  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	3730,r13		! source line 3730
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_3988
_Label_3985:
! ELSE...
	mov	3733,r13		! source line 3733
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	3733,r13		! source line 3733
	mov	"\0\0AS",r10
!   _temp_3989 = serial_data_word_address + 3		(int)
	load	[r14+8],r1
	load	[r1+8],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   if intIsZero (_temp_3989) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: inChar = *_temp_3989  (sizeInBytes=1)
	load	[r14+-76],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3736,r13		! source line 3736
	mov	"\0\0AS",r10
!   _temp_3990 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Move address of _temp_3990 [getBufferNextIn ] into _temp_3991
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
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
	store	r2,[r14+-68]
!   Data Move: *_temp_3991 = inChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3739,r13		! source line 3739
	mov	"\0\0AS",r10
!   _temp_3992 = getBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   getBufferNextIn = _temp_3992 rem 10		(int)
	load	[r14+-64],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3740,r13		! source line 3740
	mov	"\0\0AS",r10
!   getBufferSize = getBufferSize + 1		(int)
	load	[r14+8],r1
	load	[r1+48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	3743,r13		! source line 3743
	mov	"\0\0SE",r10
!   _temp_3993 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   _temp_3994 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_3993  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3988:
! SEND STATEMENT...
	mov	3746,r13		! source line 3746
	mov	"\0\0SE",r10
!   _temp_3995 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-52]
!   Send message Unlock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3980:
! IF STATEMENT...
	mov	3751,r13		! source line 3751
	mov	"\0\0IF",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3999 = *serial_status_word_address  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3998 = _temp_3999 AND 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-48]
!   if _temp_3998 != 2 then goto _Label_3997		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_3997
!	jmp	_Label_3996
_Label_3996:
! THEN...
	mov	3754,r13		! source line 3754
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3754,r13		! source line 3754
	mov	"\0\0SE",r10
!   _temp_4000 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	3757,r13		! source line 3757
	mov	"\0\0IF",r10
!   if intIsZero (putBufferSize) then goto _Label_4002
	load	[r14+8],r1
	load	[r1+92],r1
	cmp	r1,r0
	be	_Label_4002
!	jmp	_Label_4001
_Label_4001:
! THEN...
	mov	3759,r13		! source line 3759
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	3759,r13		! source line 3759
	mov	"\0\0AS",r10
!   _temp_4003 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Move address of _temp_4003 [putBufferNextOut ] into _temp_4004
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+100],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: outChar = *_temp_4004  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	3762,r13		! source line 3762
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_4005 = charToInt (outChar)
	loadb	[r14+-10],r1
	sll	r1,24,r1
	sra	r1,24,r1
	store	r1,[r14+-28]
!   Data Move: *serial_data_word_address = _temp_4005  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3765,r13		! source line 3765
	mov	"\0\0AS",r10
!   _temp_4006 = putBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   putBufferNextOut = _temp_4006 rem 10		(int)
	load	[r14+-24],r1
	mov	10,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3766,r13		! source line 3766
	mov	"\0\0AS",r10
!   putBufferSize = putBufferSize - 1		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	3769,r13		! source line 3769
	mov	"\0\0SE",r10
!   _temp_4007 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_4002:
! SEND STATEMENT...
	mov	3773,r13		! source line 3773
	mov	"\0\0SE",r10
!   _temp_4008 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_3997:
! END WHILE...
	jmp	_Label_3975
_Label_3977:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_4009
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_4010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_4011
	.word	-16
	.word	4
	.word	_Label_4012
	.word	-20
	.word	4
	.word	_Label_4013
	.word	-24
	.word	4
	.word	_Label_4014
	.word	-28
	.word	4
	.word	_Label_4015
	.word	-32
	.word	4
	.word	_Label_4016
	.word	-36
	.word	4
	.word	_Label_4017
	.word	-40
	.word	4
	.word	_Label_4018
	.word	-44
	.word	4
	.word	_Label_4019
	.word	-48
	.word	4
	.word	_Label_4020
	.word	-52
	.word	4
	.word	_Label_4021
	.word	-56
	.word	4
	.word	_Label_4022
	.word	-60
	.word	4
	.word	_Label_4023
	.word	-64
	.word	4
	.word	_Label_4024
	.word	-68
	.word	4
	.word	_Label_4025
	.word	-72
	.word	4
	.word	_Label_4026
	.word	-76
	.word	4
	.word	_Label_4027
	.word	-80
	.word	4
	.word	_Label_4028
	.word	-84
	.word	4
	.word	_Label_4029
	.word	-88
	.word	4
	.word	_Label_4030
	.word	-92
	.word	4
	.word	_Label_4031
	.word	-96
	.word	4
	.word	_Label_4032
	.word	-100
	.word	4
	.word	_Label_4033
	.word	-9
	.word	1
	.word	_Label_4034
	.word	-10
	.word	1
	.word	0
_Label_4009:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_4010:
	.ascii	"Pself\0"
	.align
_Label_4011:
	.byte	'?'
	.ascii	"_temp_4008\0"
	.align
_Label_4012:
	.byte	'?'
	.ascii	"_temp_4007\0"
	.align
_Label_4013:
	.byte	'?'
	.ascii	"_temp_4006\0"
	.align
_Label_4014:
	.byte	'?'
	.ascii	"_temp_4005\0"
	.align
_Label_4015:
	.byte	'?'
	.ascii	"_temp_4004\0"
	.align
_Label_4016:
	.byte	'?'
	.ascii	"_temp_4003\0"
	.align
_Label_4017:
	.byte	'?'
	.ascii	"_temp_4000\0"
	.align
_Label_4018:
	.byte	'?'
	.ascii	"_temp_3999\0"
	.align
_Label_4019:
	.byte	'?'
	.ascii	"_temp_3998\0"
	.align
_Label_4020:
	.byte	'?'
	.ascii	"_temp_3995\0"
	.align
_Label_4021:
	.byte	'?'
	.ascii	"_temp_3994\0"
	.align
_Label_4022:
	.byte	'?'
	.ascii	"_temp_3993\0"
	.align
_Label_4023:
	.byte	'?'
	.ascii	"_temp_3992\0"
	.align
_Label_4024:
	.byte	'?'
	.ascii	"_temp_3991\0"
	.align
_Label_4025:
	.byte	'?'
	.ascii	"_temp_3990\0"
	.align
_Label_4026:
	.byte	'?'
	.ascii	"_temp_3989\0"
	.align
_Label_4027:
	.byte	'?'
	.ascii	"_temp_3987\0"
	.align
_Label_4028:
	.byte	'?'
	.ascii	"_temp_3986\0"
	.align
_Label_4029:
	.byte	'?'
	.ascii	"_temp_3983\0"
	.align
_Label_4030:
	.byte	'?'
	.ascii	"_temp_3982\0"
	.align
_Label_4031:
	.byte	'?'
	.ascii	"_temp_3981\0"
	.align
_Label_4032:
	.byte	'?'
	.ascii	"_temp_3978\0"
	.align
_Label_4033:
	.byte	'C'
	.ascii	"inChar\0"
	.align
_Label_4034:
	.byte	'C'
	.ascii	"outChar\0"
	.align
