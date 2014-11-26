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
	be	_Label_205
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
_Label_205:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_206
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_206
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_206
_Label_206:
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
_Label_3746:
	push	r0
	sub	r1,1,r1
	bne	_Label_3746
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_207 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_207  sizeInBytes=4
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
_Label_3747:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3747
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_211 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_212 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_211  sizeInBytes=4
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
!   _temp_213 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_214 = _temp_213 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_214 = 3  (sizeInBytes=4)
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
_Label_3748:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3748
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_216 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_217 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_216  sizeInBytes=4
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
!   _temp_218 = _function_204_IdleFunction
	set	_function_204_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_219 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_218  sizeInBytes=4
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
	.word	_Label_220
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_221
	.word	-12
	.word	4
	.word	_Label_222
	.word	-16
	.word	4
	.word	_Label_223
	.word	-20
	.word	4
	.word	_Label_224
	.word	-24
	.word	4
	.word	_Label_225
	.word	-28
	.word	4
	.word	_Label_226
	.word	-32
	.word	4
	.word	_Label_227
	.word	-36
	.word	4
	.word	_Label_228
	.word	-40
	.word	4
	.word	_Label_229
	.word	-44
	.word	4
	.word	_Label_230
	.word	-48
	.word	4
	.word	_Label_231
	.word	-52
	.word	4
	.word	_Label_232
	.word	-56
	.word	4
	.word	_Label_233
	.word	-60
	.word	4
	.word	0
_Label_220:
	.ascii	"InitializeScheduler\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_204_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_204_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3749:
	push	r0
	sub	r1,1,r1
	bne	_Label_3749
	mov	34,r13		! source line 34
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0WH",r10
_Label_234:
!	jmp	_Label_235
_Label_235:
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
!   _temp_239 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_237 else goto _Label_238
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_238
	jmp	_Label_237
_Label_237:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_240
_Label_238:
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
_Label_240:
! END WHILE...
	jmp	_Label_234
_Label_236:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_204_IdleFunction:
	.word	_sourceFileName
	.word	_Label_241
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_242
	.word	8
	.word	4
	.word	_Label_243
	.word	-12
	.word	4
	.word	_Label_244
	.word	-16
	.word	4
	.word	0
_Label_241:
	.ascii	"IdleFunction\0"
	.align
_Label_242:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_244:
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
_Label_3750:
	push	r0
	sub	r1,1,r1
	bne	_Label_3750
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
!   _temp_247 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_247 ) then goto _Label_246		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_246
!	jmp	_Label_245
_Label_245:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_249 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_249 [0 ] into _temp_250
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
!   _temp_248 = _temp_250		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_248  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_246:
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
!   _temp_251 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_251 = 3  (sizeInBytes=4)
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
_Label_252:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_255  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_255 then goto _Label_254 else goto _Label_253
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_253
	jmp	_Label_254
_Label_253:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_257 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_258 = &_P_Kernel_threadManager
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
	jmp	_Label_252
_Label_254:
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_261 ) then goto _Label_260		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_260
!	jmp	_Label_259
_Label_259:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_263 [0 ] into _temp_264
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
!   _temp_262 = _temp_264		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
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
!   _temp_266 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_265 = *_temp_266  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_265) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = _temp_265 + 32
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
_Label_260:
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
	.word	_Label_268
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_269
	.word	8
	.word	4
	.word	_Label_270
	.word	-16
	.word	4
	.word	_Label_271
	.word	-20
	.word	4
	.word	_Label_272
	.word	-24
	.word	4
	.word	_Label_273
	.word	-28
	.word	4
	.word	_Label_274
	.word	-32
	.word	4
	.word	_Label_275
	.word	-36
	.word	4
	.word	_Label_276
	.word	-40
	.word	4
	.word	_Label_277
	.word	-44
	.word	4
	.word	_Label_278
	.word	-48
	.word	4
	.word	_Label_279
	.word	-52
	.word	4
	.word	_Label_280
	.word	-9
	.word	1
	.word	_Label_281
	.word	-56
	.word	4
	.word	_Label_282
	.word	-60
	.word	4
	.word	_Label_283
	.word	-64
	.word	4
	.word	_Label_284
	.word	-68
	.word	4
	.word	_Label_285
	.word	-72
	.word	4
	.word	_Label_286
	.word	-76
	.word	4
	.word	_Label_287
	.word	-80
	.word	4
	.word	0
_Label_268:
	.ascii	"Run\0"
	.align
_Label_269:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_280:
	.byte	'C'
	.ascii	"_temp_255\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_286:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_287:
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
_Label_3751:
	push	r0
	sub	r1,1,r1
	bne	_Label_3751
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
!   _temp_288 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_289 = _function_203_ThreadPrintShort
	set	_function_203_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_290 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_289  sizeInBytes=4
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
	.word	_Label_291
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_292
	.word	-12
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	_Label_294
	.word	-20
	.word	4
	.word	_Label_295
	.word	-24
	.word	4
	.word	0
_Label_291:
	.ascii	"PrintReadyList\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_295:
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
_Label_3752:
	push	r0
	sub	r1,1,r1
	bne	_Label_3752
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
!   _temp_296 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_296  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_298 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_297 = *_temp_298  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
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
!   _temp_299 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
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
	.word	_Label_300
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_301
	.word	-12
	.word	4
	.word	_Label_302
	.word	-16
	.word	4
	.word	_Label_303
	.word	-20
	.word	4
	.word	_Label_304
	.word	-24
	.word	4
	.word	_Label_305
	.word	-28
	.word	4
	.word	_Label_306
	.word	-32
	.word	4
	.word	0
_Label_300:
	.ascii	"ThreadStartMain\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_305:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_306:
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
_Label_3753:
	push	r0
	sub	r1,1,r1
	bne	_Label_3753
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
!   _temp_307 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_308 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
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
	.word	_Label_309
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_310
	.word	-12
	.word	4
	.word	_Label_311
	.word	-16
	.word	4
	.word	_Label_312
	.word	-20
	.word	4
	.word	0
_Label_309:
	.ascii	"ThreadFinish\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_312:
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
_Label_3754:
	push	r0
	sub	r1,1,r1
	bne	_Label_3754
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
!   _temp_313 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_315		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_315
!	jmp	_Label_314
_Label_314:
! THEN...
	mov	169,r13		! source line 169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_316 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
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
!   _temp_318 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_317 = *_temp_318  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_315:
! CALL STATEMENT...
!   _temp_319 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
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
!   _temp_320 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_321 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
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
	.word	_Label_322
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_323
	.word	8
	.word	4
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	_Label_326
	.word	-20
	.word	4
	.word	_Label_327
	.word	-24
	.word	4
	.word	_Label_328
	.word	-28
	.word	4
	.word	_Label_329
	.word	-32
	.word	4
	.word	_Label_330
	.word	-36
	.word	4
	.word	_Label_331
	.word	-40
	.word	4
	.word	0
_Label_322:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_331:
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
_Label_3755:
	push	r0
	sub	r1,1,r1
	bne	_Label_3755
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
!   if newStatus != 1 then goto _Label_333		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_333
!	jmp	_Label_332
_Label_332:
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
	jmp	_Label_334
_Label_333:
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
_Label_334:
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
	.word	_Label_335
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_336
	.word	8
	.word	4
	.word	_Label_337
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_336:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_337:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_203_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_203_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3756:
	push	r0
	sub	r1,1,r1
	bne	_Label_3756
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
!   if t == 0 then goto _Label_341		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_341
!   _temp_340 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_342
_Label_341:
!   _temp_340 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_342:
!   if _temp_340 then goto _Label_339 else goto _Label_338
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_338
	jmp	_Label_339
_Label_338:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_343 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
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
_Label_339:
! CALL STATEMENT...
!   _temp_344 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
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
!   _temp_346 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_345 = *_temp_346  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_347 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
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
!   _temp_356 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_355 = *_temp_356  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_350
	cmp	r1,2
	be	_Label_351
	cmp	r1,3
	be	_Label_352
	cmp	r1,4
	be	_Label_353
	cmp	r1,5
	be	_Label_354
	jmp	_Label_348
! CASE 1...
_Label_350:
! CALL STATEMENT...
!   _temp_357 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 2...
_Label_351:
! CALL STATEMENT...
!   _temp_358 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 3...
_Label_352:
! CALL STATEMENT...
!   _temp_359 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 4...
_Label_353:
! CALL STATEMENT...
!   _temp_360 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0BR",r10
	jmp	_Label_349
! CASE 5...
_Label_354:
! CALL STATEMENT...
!   _temp_361 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0BR",r10
	jmp	_Label_349
! DEFAULT CASE...
_Label_348:
! CALL STATEMENT...
!   _temp_362 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
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
_Label_349:
! CALL STATEMENT...
!   _temp_363 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_364 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_365 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
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
_RoutineDescriptor__function_203_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_366
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_367
	.word	8
	.word	4
	.word	_Label_368
	.word	-16
	.word	4
	.word	_Label_369
	.word	-20
	.word	4
	.word	_Label_370
	.word	-24
	.word	4
	.word	_Label_371
	.word	-28
	.word	4
	.word	_Label_372
	.word	-32
	.word	4
	.word	_Label_373
	.word	-36
	.word	4
	.word	_Label_374
	.word	-40
	.word	4
	.word	_Label_375
	.word	-44
	.word	4
	.word	_Label_376
	.word	-48
	.word	4
	.word	_Label_377
	.word	-52
	.word	4
	.word	_Label_378
	.word	-56
	.word	4
	.word	_Label_379
	.word	-60
	.word	4
	.word	_Label_380
	.word	-64
	.word	4
	.word	_Label_381
	.word	-68
	.word	4
	.word	_Label_382
	.word	-72
	.word	4
	.word	_Label_383
	.word	-76
	.word	4
	.word	_Label_384
	.word	-9
	.word	1
	.word	_Label_385
	.word	-80
	.word	4
	.word	0
_Label_366:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_367:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_384:
	.byte	'C'
	.ascii	"_temp_340\0"
	.align
_Label_385:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_202_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_202_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3757:
	push	r0
	sub	r1,1,r1
	bne	_Label_3757
	mov	1104,r13		! source line 1104
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_386 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
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
_RoutineDescriptor__function_202_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_387
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_388
	.word	8
	.word	4
	.word	_Label_389
	.word	-12
	.word	4
	.word	0
_Label_387:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_388:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_386\0"
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
_Label_3758:
	push	r0
	sub	r1,1,r1
	bne	_Label_3758
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
!   _temp_391 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_390 = *_temp_391  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_390) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_392 = _temp_390 + 28
	load	[r14+-72],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_392 = exitStatus  (sizeInBytes=4)
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
!   _temp_393 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: proc = *_temp_393  (sizeInBytes=4)
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
!   _temp_394 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_394 = 0  (sizeInBytes=4)
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
!   _temp_395 = proc + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_395 = 0  (sizeInBytes=4)
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
!   _temp_396 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_396 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-48],r2
	storeb	r1,[r2]
! FOR STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_401 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_402 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_401  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-84]
_Label_397:
!   Perform the FOR-LOOP termination test
!   if i > _temp_402 then goto _Label_400		
	load	[r14+-84],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_400
_Label_398:
	mov	1140,r13		! source line 1140
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_403 = proc + 124
	load	[r14+-76],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_403 [i ] into _temp_404
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
!   Data Move: open = *_temp_404  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_406
	load	[r14+-88],r1
	cmp	r1,r0
	be	_Label_406
!	jmp	_Label_405
_Label_405:
! THEN...
	mov	1143,r13		! source line 1143
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_407 = &_P_Kernel_fileManager
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
_Label_406:
!   Increment the FOR-LOOP index variable and jump back
_Label_399:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_397
! END FOR
_Label_400:
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
!   _temp_409 = proc + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_408 = _temp_409		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_410 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_408  sizeInBytes=4
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
!   _temp_411 = &_P_Kernel_processManager
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
	.word	_Label_412
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_413
	.word	8
	.word	4
	.word	_Label_414
	.word	-12
	.word	4
	.word	_Label_415
	.word	-16
	.word	4
	.word	_Label_416
	.word	-20
	.word	4
	.word	_Label_417
	.word	-24
	.word	4
	.word	_Label_418
	.word	-28
	.word	4
	.word	_Label_419
	.word	-32
	.word	4
	.word	_Label_420
	.word	-36
	.word	4
	.word	_Label_421
	.word	-40
	.word	4
	.word	_Label_422
	.word	-44
	.word	4
	.word	_Label_423
	.word	-48
	.word	4
	.word	_Label_424
	.word	-52
	.word	4
	.word	_Label_425
	.word	-56
	.word	4
	.word	_Label_426
	.word	-60
	.word	4
	.word	_Label_427
	.word	-64
	.word	4
	.word	_Label_428
	.word	-68
	.word	4
	.word	_Label_429
	.word	-72
	.word	4
	.word	_Label_430
	.word	-76
	.word	4
	.word	_Label_431
	.word	-80
	.word	4
	.word	_Label_432
	.word	-84
	.word	4
	.word	_Label_433
	.word	-88
	.word	4
	.word	0
_Label_412:
	.ascii	"ProcessFinish\0"
	.align
_Label_413:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_430:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_432:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_433:
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
_Label_3759:
	push	r0
	sub	r1,1,r1
	bne	_Label_3759
	mov	1161,r13		! source line 1161
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0AS",r10
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_434 = &_P_Kernel_threadManager
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
!   _temp_435 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_435  sizeInBytes=4
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
!   _temp_436 = _function_201_StartUserProcess
	set	_function_201_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_437 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_436  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_437  sizeInBytes=4
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
	.word	_Label_438
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_439
	.word	-12
	.word	4
	.word	_Label_440
	.word	-16
	.word	4
	.word	_Label_441
	.word	-20
	.word	4
	.word	_Label_442
	.word	-24
	.word	4
	.word	_Label_443
	.word	-28
	.word	4
	.word	0
_Label_438:
	.ascii	"InitFirstProcess\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_443:
	.byte	'P'
	.ascii	"ptrThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_201_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_201_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_3760:
	push	r0
	sub	r1,1,r1
	bne	_Label_3760
	mov	1173,r13		! source line 1173
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_444 = &_P_Kernel_processManager
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
!   _temp_445 = ptrToPCB + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_445 = _P_Kernel_currentThread  (sizeInBytes=4)
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
!   _temp_446 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_446 = ptrToPCB  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
	mov	1196,r13		! source line 1196
	mov	"\0\0SE",r10
!   _temp_447 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_448 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_447  sizeInBytes=4
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
!   if intIsZero (ptrOpenFile) then goto _Label_449
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_449
	jmp	_Label_450
_Label_449:
! THEN...
	mov	1199,r13		! source line 1199
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_451 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
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
_Label_450:
! ASSIGNMENT STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_452 = _temp_453		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (ptrOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_452  sizeInBytes=4
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
!   _temp_454 = &_P_Kernel_fileManager
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
!   _temp_456 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_457 = _temp_456 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_455 = *_temp_457  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_455 * 8192		(int)
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
!   _temp_458 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_458 [999 ] into _temp_459
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
!   ptrInitSystemStackTop = _temp_459		(4 bytes)
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
!   _temp_460 = ptrToPCB + 32
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
!   _temp_461 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_461 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_462 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_462  sizeInBytes=4
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
_RoutineDescriptor__function_201_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_463
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_464
	.word	8
	.word	4
	.word	_Label_465
	.word	-12
	.word	4
	.word	_Label_466
	.word	-16
	.word	4
	.word	_Label_467
	.word	-20
	.word	4
	.word	_Label_468
	.word	-24
	.word	4
	.word	_Label_469
	.word	-28
	.word	4
	.word	_Label_470
	.word	-32
	.word	4
	.word	_Label_471
	.word	-36
	.word	4
	.word	_Label_472
	.word	-40
	.word	4
	.word	_Label_473
	.word	-44
	.word	4
	.word	_Label_474
	.word	-48
	.word	4
	.word	_Label_475
	.word	-52
	.word	4
	.word	_Label_476
	.word	-56
	.word	4
	.word	_Label_477
	.word	-60
	.word	4
	.word	_Label_478
	.word	-64
	.word	4
	.word	_Label_479
	.word	-68
	.word	4
	.word	_Label_480
	.word	-72
	.word	4
	.word	_Label_481
	.word	-76
	.word	4
	.word	_Label_482
	.word	-80
	.word	4
	.word	_Label_483
	.word	-84
	.word	4
	.word	_Label_484
	.word	-88
	.word	4
	.word	_Label_485
	.word	-92
	.word	4
	.word	_Label_486
	.word	-96
	.word	4
	.word	_Label_487
	.word	-100
	.word	4
	.word	0
_Label_463:
	.ascii	"StartUserProcess\0"
	.align
_Label_464:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_482:
	.byte	'P'
	.ascii	"ptrOpenFile\0"
	.align
_Label_483:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_484:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_485:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_486:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_487:
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
_Label_3761:
	push	r0
	sub	r1,1,r1
	bne	_Label_3761
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
	.word	_Label_488
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_488:
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
_Label_3762:
	push	r0
	sub	r1,1,r1
	bne	_Label_3762
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
!   _temp_492 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_493 = _temp_492 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_491 = *_temp_493  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_491 == 0 then goto _Label_490		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_490
!	jmp	_Label_489
_Label_489:
! THEN...
	mov	1762,r13		! source line 1762
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0SE",r10
!   _temp_495 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_496 = _temp_495 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_494 = *_temp_496  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_494) then goto _runtimeErrorNullPointer
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
_Label_490:
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
	.word	_Label_497
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_498
	.word	-12
	.word	4
	.word	_Label_499
	.word	-16
	.word	4
	.word	_Label_500
	.word	-20
	.word	4
	.word	_Label_501
	.word	-24
	.word	4
	.word	_Label_502
	.word	-28
	.word	4
	.word	_Label_503
	.word	-32
	.word	4
	.word	0
_Label_497:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_491\0"
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
_Label_3763:
	push	r0
	sub	r1,1,r1
	bne	_Label_3763
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
! IF STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0IF",r10
!   if _P_Kernel_serialHasBeenInitialized then goto _Label_504 else goto _Label_505
	set	_P_Kernel_serialHasBeenInitialized,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_505
	jmp	_Label_504
_Label_504:
! THEN...
	mov	1780,r13		! source line 1780
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0SE",r10
!   _temp_506 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-16]
!   _temp_507 = _temp_506 + 124
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
_Label_505:
! RETURN STATEMENT...
	mov	1779,r13		! source line 1779
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
	.word	_Label_508
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_509
	.word	-12
	.word	4
	.word	_Label_510
	.word	-16
	.word	4
	.word	0
_Label_508:
	.ascii	"SerialInterruptHandler\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_506\0"
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
_Label_3764:
	push	r0
	sub	r1,1,r1
	bne	_Label_3764
	mov	1785,r13		! source line 1785
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_511 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
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
	.word	_Label_512
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_513
	.word	-12
	.word	4
	.word	0
_Label_512:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
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
_Label_3765:
	push	r0
	sub	r1,1,r1
	bne	_Label_3765
	mov	1797,r13		! source line 1797
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_514 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1804,r13		! source line 1804
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1804,r13		! source line 1804
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
	.word	_Label_515
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_516
	.word	-12
	.word	4
	.word	0
_Label_515:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_514\0"
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
_Label_3766:
	push	r0
	sub	r1,1,r1
	bne	_Label_3766
	mov	1809,r13		! source line 1809
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1815,r13		! source line 1815
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_517 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1816,r13		! source line 1816
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
	.word	_Label_518
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_519
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_517\0"
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
_Label_3767:
	push	r0
	sub	r1,1,r1
	bne	_Label_3767
	mov	1821,r13		! source line 1821
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1827,r13		! source line 1827
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_520 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
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
	.word	_Label_521
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_522
	.word	-12
	.word	4
	.word	0
_Label_521:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
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
_Label_3768:
	push	r0
	sub	r1,1,r1
	bne	_Label_3768
	mov	1833,r13		! source line 1833
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_523 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1840,r13		! source line 1840
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1840,r13		! source line 1840
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
	.word	_Label_524
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_525
	.word	-12
	.word	4
	.word	0
_Label_524:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_523\0"
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
_Label_3769:
	push	r0
	sub	r1,1,r1
	bne	_Label_3769
	mov	1845,r13		! source line 1845
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_526 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
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
	.word	_Label_527
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_528
	.word	-12
	.word	4
	.word	0
_Label_527:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_526\0"
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
_Label_3770:
	push	r0
	sub	r1,1,r1
	bne	_Label_3770
	mov	1857,r13		! source line 1857
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_529 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_529  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1864,r13		! source line 1864
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
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
	.word	_Label_530
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_531
	.word	-12
	.word	4
	.word	0
_Label_530:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_200_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_200_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3771:
	push	r0
	sub	r1,1,r1
	bne	_Label_3771
	mov	1869,r13		! source line 1869
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_532 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1874,r13		! source line 1874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1875,r13		! source line 1875
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_533 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1876,r13		! source line 1876
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_537 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_536 = *_temp_537  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_536 == 0 then goto _Label_535		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_535
!	jmp	_Label_534
_Label_534:
! THEN...
	mov	1880,r13		! source line 1880
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_539 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_538 = *_temp_539  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_538) then goto _runtimeErrorNullPointer
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
	jmp	_Label_540
_Label_535:
! ELSE...
	mov	1882,r13		! source line 1882
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_541 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1882,r13		! source line 1882
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_540:
! SEND STATEMENT...
	mov	1884,r13		! source line 1884
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
	mov	1890,r13		! source line 1890
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_200_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_542
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_543
	.word	8
	.word	4
	.word	_Label_544
	.word	-12
	.word	4
	.word	_Label_545
	.word	-16
	.word	4
	.word	_Label_546
	.word	-20
	.word	4
	.word	_Label_547
	.word	-24
	.word	4
	.word	_Label_548
	.word	-28
	.word	4
	.word	_Label_549
	.word	-32
	.word	4
	.word	_Label_550
	.word	-36
	.word	4
	.word	0
_Label_542:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_543:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_532\0"
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
_Label_3772:
	push	r0
	sub	r1,1,r1
	bne	_Label_3772
	mov	1895,r13		! source line 1895
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1916,r13		! source line 1916
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3773
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_551
_Label_3773:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_551
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_551
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_565,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_565:
	jmp	_Label_557	! 1:	
	jmp	_Label_564	! 2:	
	jmp	_Label_554	! 3:	
	jmp	_Label_553	! 4:	
	jmp	_Label_556	! 5:	
	jmp	_Label_555	! 6:	
	jmp	_Label_558	! 7:	
	jmp	_Label_559	! 8:	
	jmp	_Label_560	! 9:	
	jmp	_Label_561	! 10:	
	jmp	_Label_562	! 11:	
	jmp	_Label_563	! 12:	
! CASE 4...
_Label_553:
! RETURN STATEMENT...
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_566  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_566  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_554:
! CALL STATEMENT...
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_555:
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_567  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_567  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_556:
! RETURN STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_568  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_568  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_557:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_558:
! RETURN STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1930,r13		! source line 1930
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_569  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_569  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_559:
! RETURN STATEMENT...
	mov	1932,r13		! source line 1932
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_570  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_570  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_560:
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
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_571  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_571  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_561:
! RETURN STATEMENT...
	mov	1936,r13		! source line 1936
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
	mov	1936,r13		! source line 1936
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_572  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_572  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_562:
! RETURN STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_573  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_573  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_563:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_564:
! CALL STATEMENT...
!   Call the function
	mov	1943,r13		! source line 1943
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_551:
! CALL STATEMENT...
!   _temp_574 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_575 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1949,r13		! source line 1949
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_552:
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
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
	.word	_Label_576
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_577
	.word	8
	.word	4
	.word	_Label_578
	.word	12
	.word	4
	.word	_Label_579
	.word	16
	.word	4
	.word	_Label_580
	.word	20
	.word	4
	.word	_Label_581
	.word	24
	.word	4
	.word	_Label_582
	.word	-12
	.word	4
	.word	_Label_583
	.word	-16
	.word	4
	.word	_Label_584
	.word	-20
	.word	4
	.word	_Label_585
	.word	-24
	.word	4
	.word	_Label_586
	.word	-28
	.word	4
	.word	_Label_587
	.word	-32
	.word	4
	.word	_Label_588
	.word	-36
	.word	4
	.word	_Label_589
	.word	-40
	.word	4
	.word	_Label_590
	.word	-44
	.word	4
	.word	_Label_591
	.word	-48
	.word	4
	.word	0
_Label_576:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_577:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_578:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_579:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_580:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_581:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_566\0"
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
_Label_3774:
	push	r0
	sub	r1,1,r1
	bne	_Label_3774
	mov	1956,r13		! source line 1956
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
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
	.word	_Label_592
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_593
	.word	8
	.word	4
	.word	0
_Label_592:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_593:
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
_Label_3775:
	push	r0
	sub	r1,1,r1
	bne	_Label_3775
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_594 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1965,r13		! source line 1965
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1965,r13		! source line 1965
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
	.word	_Label_595
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_596
	.word	-12
	.word	4
	.word	0
_Label_595:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_594\0"
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
_Label_3776:
	push	r0
	sub	r1,1,r1
	bne	_Label_3776
	mov	1969,r13		! source line 1969
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1973,r13		! source line 1973
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
	mov	1973,r13		! source line 1973
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
	.word	_Label_597
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_597:
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
_Label_3777:
	push	r0
	sub	r1,1,r1
	bne	_Label_3777
	mov	1979,r13		! source line 1979
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   _temp_598 = &_P_Kernel_processManager
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
	mov	1999,r13		! source line 1999
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: oldPCB = *_temp_599  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0AS",r10
	mov	2000,r13		! source line 2000
	mov	"\0\0SE",r10
!   _temp_600 = &_P_Kernel_threadManager
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
	mov	2003,r13		! source line 2003
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = newPCB + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-248]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = oldPCB + 12
	load	[r14+-268],r1
	add	r1,12,r1
	store	r1,[r14+-240]
!   Data Move: _temp_602 = *_temp_603  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   Data Move: *_temp_601 = _temp_602  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2005,r13		! source line 2005
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = newThread + 72
	load	[r14+-272],r1
	add	r1,72,r1
	store	r1,[r14+-236]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-228]
!   Data Move: _temp_605 = *_temp_606  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   Data Move: *_temp_604 = _temp_605  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r14+-236],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_607 = newThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-224]
!   Data Move: *_temp_607 = newPCB  (sizeInBytes=4)
	load	[r14+-264],r1
	load	[r14+-224],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = newPCB + 24
	load	[r14+-264],r1
	add	r1,24,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_608 = newThread  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-220],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = newThread + 4096
	load	[r14+-272],r1
	add	r1,4096,r1
	store	r1,[r14+-212]
!   Move address of _temp_610 [0 ] into _temp_611
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
!   _temp_609 = _temp_611		(4 bytes)
	load	[r14+-208],r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	2014,r13		! source line 2014
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-276]
! SEND STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0SE",r10
!   _temp_612 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-204]
!   _temp_613 = _temp_612 + 4
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
	mov	2019,r13		! source line 2019
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_618 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
!   Calculate and save the FOR-LOOP ending value
!   _temp_619 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-192]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_618  (sizeInBytes=4)
	load	[r14+-196],r1
	store	r1,[r14+-280]
_Label_614:
!   Perform the FOR-LOOP termination test
!   if i > _temp_619 then goto _Label_617		
	load	[r14+-280],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_617
_Label_615:
	mov	2019,r13		! source line 2019
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-188]
!   Move address of _temp_620 [i ] into _temp_621
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
!   _temp_623 = oldPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-176]
!   Move address of _temp_623 [i ] into _temp_624
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
!   Data Move: _temp_622 = *_temp_624  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_621 = _temp_622  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-184],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0IF",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_628 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-164]
!   Move address of _temp_628 [i ] into _temp_629
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
!   Data Move: _temp_627 = *_temp_629  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_627) then goto _Label_626
	load	[r14+-168],r1
	cmp	r1,r0
	be	_Label_626
!	jmp	_Label_625
_Label_625:
! THEN...
	mov	2022,r13		! source line 2022
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_631 [i ] into _temp_632
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
!   Data Move: _temp_630 = *_temp_632  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_630) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = _temp_630 + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-144]
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_637 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-128]
!   Move address of _temp_637 [i ] into _temp_638
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
!   Data Move: _temp_636 = *_temp_638  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_636) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _temp_636 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-120]
!   Data Move: _temp_635 = *_temp_639  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   _temp_634 = _temp_635 + 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   Data Move: *_temp_633 = _temp_634  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! END IF...
_Label_626:
!   Increment the FOR-LOOP index variable and jump back
_Label_616:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_614
! END FOR
_Label_617:
! SEND STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0SE",r10
!   _temp_640 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-116]
!   _temp_641 = _temp_640 + 4
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
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_642 = newThread + 68
	load	[r14+-272],r1
	add	r1,68,r1
	store	r1,[r14+-108]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_644 = newThread + 88
	load	[r14+-272],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_644 [999 ] into _temp_645
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
!   _temp_643 = _temp_645		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Data Move: *_temp_642 = _temp_643  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = newPCB + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_646 = _temp_647		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_649 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_650 = _temp_649 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_648 = *_temp_650  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_651 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_646  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_648  sizeInBytes=4
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
	mov	2036,r13		! source line 2036
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_656 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_659 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_660 = _temp_659 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Data Move: _temp_658 = *_temp_660  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_657 = _temp_658 - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_656  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-280]
_Label_652:
!   Perform the FOR-LOOP termination test
!   if i > _temp_657 then goto _Label_655		
	load	[r14+-280],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_655
_Label_653:
	mov	2036,r13		! source line 2036
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0IF",r10
	mov	2037,r13		! source line 2037
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_663 = oldPCB + 32
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
!   if result==true then goto _Label_661 else goto _Label_662
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_662
	jmp	_Label_661
_Label_661:
! THEN...
	mov	2038,r13		! source line 2038
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = newPCB + 32
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
	jmp	_Label_665
_Label_662:
! ELSE...
	mov	2040,r13		! source line 2040
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_666 = newPCB + 32
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
_Label_665:
! CALL STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_668 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_667  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
	mov	2043,r13		! source line 2043
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = oldPCB + 32
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
!   Retrieve Result: targetName=_temp_669  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_667  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_669  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	2042,r13		! source line 2042
	mov	"\0\0CE",r10
	call	MemoryCopy
!   Increment the FOR-LOOP index variable and jump back
_Label_654:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_652
! END FOR
_Label_655:
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   Call the function
	mov	2049,r13		! source line 2049
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-284]
! SEND STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0SE",r10
!   _temp_671 = _function_198_ResumeChildAfterFork
	set	_function_198_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_671  sizeInBytes=4
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
	mov	2053,r13		! source line 2053
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_673 = newPCB + 12
	load	[r14+-264],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_672 = *_temp_673  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_672  (sizeInBytes=4)
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
	.word	_Label_674
	.word	0		! total size of parameters
	.word	288		! frame size = 288
	.word	_Label_675
	.word	-12
	.word	4
	.word	_Label_676
	.word	-16
	.word	4
	.word	_Label_677
	.word	-20
	.word	4
	.word	_Label_678
	.word	-24
	.word	4
	.word	_Label_679
	.word	-28
	.word	4
	.word	_Label_680
	.word	-32
	.word	4
	.word	_Label_681
	.word	-36
	.word	4
	.word	_Label_682
	.word	-40
	.word	4
	.word	_Label_683
	.word	-44
	.word	4
	.word	_Label_684
	.word	-48
	.word	4
	.word	_Label_685
	.word	-52
	.word	4
	.word	_Label_686
	.word	-56
	.word	4
	.word	_Label_687
	.word	-60
	.word	4
	.word	_Label_688
	.word	-64
	.word	4
	.word	_Label_689
	.word	-68
	.word	4
	.word	_Label_690
	.word	-72
	.word	4
	.word	_Label_691
	.word	-76
	.word	4
	.word	_Label_692
	.word	-80
	.word	4
	.word	_Label_693
	.word	-84
	.word	4
	.word	_Label_694
	.word	-88
	.word	4
	.word	_Label_695
	.word	-92
	.word	4
	.word	_Label_696
	.word	-96
	.word	4
	.word	_Label_697
	.word	-100
	.word	4
	.word	_Label_698
	.word	-104
	.word	4
	.word	_Label_699
	.word	-108
	.word	4
	.word	_Label_700
	.word	-112
	.word	4
	.word	_Label_701
	.word	-116
	.word	4
	.word	_Label_702
	.word	-120
	.word	4
	.word	_Label_703
	.word	-124
	.word	4
	.word	_Label_704
	.word	-128
	.word	4
	.word	_Label_705
	.word	-132
	.word	4
	.word	_Label_706
	.word	-136
	.word	4
	.word	_Label_707
	.word	-140
	.word	4
	.word	_Label_708
	.word	-144
	.word	4
	.word	_Label_709
	.word	-148
	.word	4
	.word	_Label_710
	.word	-152
	.word	4
	.word	_Label_711
	.word	-156
	.word	4
	.word	_Label_712
	.word	-160
	.word	4
	.word	_Label_713
	.word	-164
	.word	4
	.word	_Label_714
	.word	-168
	.word	4
	.word	_Label_715
	.word	-172
	.word	4
	.word	_Label_716
	.word	-176
	.word	4
	.word	_Label_717
	.word	-180
	.word	4
	.word	_Label_718
	.word	-184
	.word	4
	.word	_Label_719
	.word	-188
	.word	4
	.word	_Label_720
	.word	-192
	.word	4
	.word	_Label_721
	.word	-196
	.word	4
	.word	_Label_722
	.word	-200
	.word	4
	.word	_Label_723
	.word	-204
	.word	4
	.word	_Label_724
	.word	-208
	.word	4
	.word	_Label_725
	.word	-212
	.word	4
	.word	_Label_726
	.word	-216
	.word	4
	.word	_Label_727
	.word	-220
	.word	4
	.word	_Label_728
	.word	-224
	.word	4
	.word	_Label_729
	.word	-228
	.word	4
	.word	_Label_730
	.word	-232
	.word	4
	.word	_Label_731
	.word	-236
	.word	4
	.word	_Label_732
	.word	-240
	.word	4
	.word	_Label_733
	.word	-244
	.word	4
	.word	_Label_734
	.word	-248
	.word	4
	.word	_Label_735
	.word	-252
	.word	4
	.word	_Label_736
	.word	-256
	.word	4
	.word	_Label_737
	.word	-260
	.word	4
	.word	_Label_738
	.word	-264
	.word	4
	.word	_Label_739
	.word	-268
	.word	4
	.word	_Label_740
	.word	-272
	.word	4
	.word	_Label_741
	.word	-276
	.word	4
	.word	_Label_742
	.word	-280
	.word	4
	.word	_Label_743
	.word	-284
	.word	4
	.word	0
_Label_674:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_738:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_739:
	.byte	'P'
	.ascii	"oldPCB\0"
	.align
_Label_740:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_741:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_742:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_743:
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
_Label_3778:
	push	r0
	sub	r1,1,r1
	bne	_Label_3778
	mov	2058,r13		! source line 2058
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2073,r13		! source line 2073
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_744 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: parent = *_temp_744  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
! FOR STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_749 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_750 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_749  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-72]
_Label_745:
!   Perform the FOR-LOOP termination test
!   if i > _temp_750 then goto _Label_748		
	load	[r14+-72],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_748
_Label_746:
	mov	2077,r13		! source line 2077
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
!   _temp_751 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_752 = _temp_751 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_752 [i ] into _temp_753
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
!   child = _temp_753		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_759 = child + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Data Move: _temp_758 = *_temp_759  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_758 != processID then goto _Label_755		(int)
	load	[r14+-44],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_755
!	jmp	_Label_757
_Label_757:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_761 = child + 16
	load	[r14+-76],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_760 = *_temp_761  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_763 = parent + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: _temp_762 = *_temp_763  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_760 != _temp_762 then goto _Label_755		(int)
	load	[r14+-36],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bne	_Label_755
!	jmp	_Label_756
_Label_756:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_765 = child + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: _temp_764 = *_temp_765  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if _temp_764 == 3 then goto _Label_755		(int)
	load	[r14+-20],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_755
!	jmp	_Label_754
_Label_754:
! THEN...
	mov	2081,r13		! source line 2081
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
	mov	2081,r13		! source line 2081
	mov	"\0\0SE",r10
!   _temp_766 = &_P_Kernel_processManager
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
	mov	2082,r13		! source line 2082
	mov	"\0\0RE",r10
!   ReturnResult: childsExitStatus  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_755:
!   Increment the FOR-LOOP index variable and jump back
_Label_747:
!   i = i + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_745
! END FOR
_Label_748:
! RETURN STATEMENT...
	mov	2086,r13		! source line 2086
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
	.word	_Label_767
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_768
	.word	8
	.word	4
	.word	_Label_769
	.word	-12
	.word	4
	.word	_Label_770
	.word	-16
	.word	4
	.word	_Label_771
	.word	-20
	.word	4
	.word	_Label_772
	.word	-24
	.word	4
	.word	_Label_773
	.word	-28
	.word	4
	.word	_Label_774
	.word	-32
	.word	4
	.word	_Label_775
	.word	-36
	.word	4
	.word	_Label_776
	.word	-40
	.word	4
	.word	_Label_777
	.word	-44
	.word	4
	.word	_Label_778
	.word	-48
	.word	4
	.word	_Label_779
	.word	-52
	.word	4
	.word	_Label_780
	.word	-56
	.word	4
	.word	_Label_781
	.word	-60
	.word	4
	.word	_Label_782
	.word	-64
	.word	4
	.word	_Label_783
	.word	-68
	.word	4
	.word	_Label_784
	.word	-72
	.word	4
	.word	_Label_785
	.word	-76
	.word	4
	.word	_Label_786
	.word	-80
	.word	4
	.word	_Label_787
	.word	-84
	.word	4
	.word	0
_Label_767:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_768:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_784:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_785:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_786:
	.byte	'P'
	.ascii	"parent\0"
	.align
_Label_787:
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
_Label_3779:
	push	r0
	sub	r1,1,r1
	bne	_Label_3779
	mov	2090,r13		! source line 2090
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-176,r4
	mov	23,r3
_Label_3780:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3780
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-176]
! SEND STATEMENT...
	mov	2112,r13		! source line 2112
	mov	"\0\0SE",r10
!   _temp_789 = &newAddrSpace
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
	mov	2115,r13		! source line 2115
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_790 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: ptrToPCB = *_temp_790  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   _temp_791 = &stringStorage
	add	r14,-200,r1
	store	r1,[r14+-68]
!   _temp_792 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_793 = ptrToPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_791  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_792  sizeInBytes=4
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
	mov	2119,r13		! source line 2119
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_795		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_795
!	jmp	_Label_794
_Label_794:
! THEN...
	mov	2120,r13		! source line 2120
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_795:
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
	mov	2124,r13		! source line 2124
	mov	"\0\0SE",r10
!   _temp_796 = &stringStorage
	add	r14,-200,r1
	store	r1,[r14+-56]
!   _temp_797 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_796  sizeInBytes=4
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
	mov	2125,r13		! source line 2125
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_798
	load	[r14+-84],r1
	cmp	r1,r0
	be	_Label_798
	jmp	_Label_799
_Label_798:
! THEN...
	mov	2126,r13		! source line 2126
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
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
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
	mov	2134,r13		! source line 2134
	mov	"\0\0SE",r10
!   _temp_800 = &newAddrSpace
	add	r14,-176,r1
	store	r1,[r14+-48]
!   if intIsZero (ptrOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_800  sizeInBytes=4
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
	mov	2135,r13		! source line 2135
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_802		(int)
	load	[r14+-208],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_802
!	jmp	_Label_801
_Label_801:
! THEN...
	mov	2136,r13		! source line 2136
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2136,r13		! source line 2136
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_802:
! ASSIGNMENT STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_803 = ptrToPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_803 = newAddrSpace  (sizeInBytes=92)
	add	r14,-176,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3781:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3781
! SEND STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   _temp_804 = &_P_Kernel_fileManager
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
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   _temp_806 = &newAddrSpace
	add	r14,-176,r1
	store	r1,[r14+-32]
!   _temp_807 = _temp_806 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_805 = *_temp_807  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_805 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_808 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_808 [999 ] into _temp_809
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
!   ptrInitSystemStackTop = _temp_809		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2146,r13		! source line 2146
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2146,r13		! source line 2146
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2147,r13		! source line 2147
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_810 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_810 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_811 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-220],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_811  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2148,r13		! source line 2148
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2149,r13		! source line 2149
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
	.word	_Label_812
	.word	4		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_813
	.word	8
	.word	4
	.word	_Label_814
	.word	-12
	.word	4
	.word	_Label_815
	.word	-16
	.word	4
	.word	_Label_816
	.word	-20
	.word	4
	.word	_Label_817
	.word	-24
	.word	4
	.word	_Label_818
	.word	-28
	.word	4
	.word	_Label_819
	.word	-32
	.word	4
	.word	_Label_820
	.word	-36
	.word	4
	.word	_Label_821
	.word	-40
	.word	4
	.word	_Label_822
	.word	-44
	.word	4
	.word	_Label_823
	.word	-48
	.word	4
	.word	_Label_824
	.word	-52
	.word	4
	.word	_Label_825
	.word	-56
	.word	4
	.word	_Label_826
	.word	-60
	.word	4
	.word	_Label_827
	.word	-64
	.word	4
	.word	_Label_828
	.word	-68
	.word	4
	.word	_Label_829
	.word	-72
	.word	4
	.word	_Label_830
	.word	-76
	.word	4
	.word	_Label_831
	.word	-80
	.word	4
	.word	_Label_832
	.word	-84
	.word	4
	.word	_Label_833
	.word	-176
	.word	92
	.word	_Label_834
	.word	-200
	.word	24
	.word	_Label_835
	.word	-204
	.word	4
	.word	_Label_836
	.word	-208
	.word	4
	.word	_Label_837
	.word	-212
	.word	4
	.word	_Label_838
	.word	-216
	.word	4
	.word	_Label_839
	.word	-220
	.word	4
	.word	_Label_840
	.word	-224
	.word	4
	.word	0
_Label_812:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_813:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_832:
	.byte	'P'
	.ascii	"ptrOpenFile\0"
	.align
_Label_833:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_834:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_835:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_836:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_837:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_839:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_840:
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
_Label_3782:
	push	r0
	sub	r1,1,r1
	bne	_Label_3782
	mov	2152,r13		! source line 2152
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0AS",r10
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   _temp_841 = &stringStorage
	add	r14,-56,r1
	store	r1,[r14+-32]
!   _temp_842 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_844 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_843 = *_temp_844  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_843) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_845 = _temp_843 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_841  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_842  sizeInBytes=4
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
	mov	2160,r13		! source line 2160
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_847		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_847
!	jmp	_Label_846
_Label_846:
! THEN...
	mov	2161,r13		! source line 2161
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_848 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_848  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2161,r13		! source line 2161
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_847:
! RETURN STATEMENT...
	mov	2168,r13		! source line 2168
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
	.word	_Label_849
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_850
	.word	8
	.word	4
	.word	_Label_851
	.word	-12
	.word	4
	.word	_Label_852
	.word	-16
	.word	4
	.word	_Label_853
	.word	-20
	.word	4
	.word	_Label_854
	.word	-24
	.word	4
	.word	_Label_855
	.word	-28
	.word	4
	.word	_Label_856
	.word	-32
	.word	4
	.word	_Label_857
	.word	-56
	.word	24
	.word	_Label_858
	.word	-60
	.word	4
	.word	0
_Label_849:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_850:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_857:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_858:
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
	mov	39,r1
_Label_3783:
	push	r0
	sub	r1,1,r1
	bne	_Label_3783
	mov	2171,r13		! source line 2171
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_859 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-104]
!   Data Move: pcb = *_temp_859  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
	mov	2195,r13		! source line 2195
	mov	"\0\0SE",r10
!   _temp_860 = &stringStorage
	add	r14,-132,r1
	store	r1,[r14+-100]
!   _temp_861 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_862 = pcb + 32
	load	[r14+-140],r1
	add	r1,32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_860  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_861  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0IF",r10
!   _temp_866 = &stringStorage
	add	r14,-132,r1
	store	r1,[r14+-84]
!   Data Move: _temp_865 = *_temp_866  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   if _temp_865 <= 20 then goto _Label_864		(int)
	load	[r14+-88],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_864
!	jmp	_Label_863
_Label_863:
! THEN...
	mov	2199,r13		! source line 2199
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_864:
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   open = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   holdI = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-148]
! FOR STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_871 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-80]
!   Calculate and save the FOR-LOOP ending value
!   _temp_872 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-76]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_871  (sizeInBytes=4)
	load	[r14+-80],r1
	store	r1,[r14+-136]
_Label_867:
!   Perform the FOR-LOOP termination test
!   if i > _temp_872 then goto _Label_870		
	load	[r14+-136],r1
	load	[r14+-76],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_870
_Label_868:
	mov	2206,r13		! source line 2206
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_876 = pcb + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   Move address of _temp_876 [i ] into _temp_877
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
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
	store	r2,[r14+-64]
!   Data Move: _temp_875 = *_temp_877  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_875) then goto _Label_873
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_873
	jmp	_Label_874
_Label_873:
! THEN...
	mov	2210,r13		! source line 2210
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0IF",r10
!   _temp_880 = &stringStorage
	add	r14,-132,r1
	store	r1,[r14+-60]
!   _temp_881 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_881  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Call the function
	mov	2210,r13		! source line 2210
	mov	"\0\0CA",r10
	call	_P_System_StrEqual
!   if result==true then goto _Label_878 else goto _Label_879
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_879
	jmp	_Label_878
_Label_878:
! THEN...
	mov	2211,r13		! source line 2211
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_882 = pcb + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-52]
!   Move address of _temp_882 [i ] into _temp_883
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
!   _temp_885 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   _temp_886 = _temp_885 + 772
	load	[r14+-40],r1
	add	r1,772,r1
	store	r1,[r14+-36]
!   _temp_884 = _temp_886		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Data Move: *_temp_883 = _temp_884  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-136],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_879:
! ASSIGNMENT STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0AS",r10
!   holdI = i		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-148]
! BREAK STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0BR",r10
	jmp	_Label_870
! END IF...
_Label_874:
!   Increment the FOR-LOOP index variable and jump back
_Label_869:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_867
! END FOR
_Label_870:
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
	mov	2220,r13		! source line 2220
	mov	"\0\0SE",r10
!   _temp_887 = &stringStorage
	add	r14,-132,r1
	store	r1,[r14+-32]
!   _temp_888 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_887  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! IF STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_889
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_889
!	jmp	_Label_891
_Label_891:
!   if holdI != -1 then goto _Label_890		(int)
	load	[r14+-148],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_890
!	jmp	_Label_889
_Label_889:
! THEN...
	mov	2225,r13		! source line 2225
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_890:
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_893 = pcb + 124
	load	[r14+-140],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_893 [i ] into _temp_894
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
!   Data Move: _temp_892 = *_temp_894  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_892) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_895 = _temp_892 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_895 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0RE",r10
!   ReturnResult: holdI  (sizeInBytes=4)
	load	[r14+-148],r1
	store	r1,[r14+8]
	add	r15,160,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_896
	.word	4		! total size of parameters
	.word	156		! frame size = 156
	.word	_Label_897
	.word	8
	.word	4
	.word	_Label_898
	.word	-12
	.word	4
	.word	_Label_899
	.word	-16
	.word	4
	.word	_Label_900
	.word	-20
	.word	4
	.word	_Label_901
	.word	-24
	.word	4
	.word	_Label_902
	.word	-28
	.word	4
	.word	_Label_903
	.word	-32
	.word	4
	.word	_Label_904
	.word	-36
	.word	4
	.word	_Label_905
	.word	-40
	.word	4
	.word	_Label_906
	.word	-44
	.word	4
	.word	_Label_907
	.word	-48
	.word	4
	.word	_Label_908
	.word	-52
	.word	4
	.word	_Label_909
	.word	-56
	.word	4
	.word	_Label_910
	.word	-60
	.word	4
	.word	_Label_911
	.word	-64
	.word	4
	.word	_Label_912
	.word	-68
	.word	4
	.word	_Label_913
	.word	-72
	.word	4
	.word	_Label_914
	.word	-76
	.word	4
	.word	_Label_915
	.word	-80
	.word	4
	.word	_Label_916
	.word	-84
	.word	4
	.word	_Label_917
	.word	-88
	.word	4
	.word	_Label_918
	.word	-92
	.word	4
	.word	_Label_919
	.word	-96
	.word	4
	.word	_Label_920
	.word	-100
	.word	4
	.word	_Label_921
	.word	-104
	.word	4
	.word	_Label_922
	.word	-108
	.word	4
	.word	_Label_923
	.word	-132
	.word	24
	.word	_Label_924
	.word	-136
	.word	4
	.word	_Label_925
	.word	-140
	.word	4
	.word	_Label_926
	.word	-144
	.word	4
	.word	_Label_927
	.word	-148
	.word	4
	.word	0
_Label_896:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_897:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_910:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_922:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_923:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_924:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_925:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_926:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_927:
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
	mov	43,r1
_Label_3784:
	push	r0
	sub	r1,1,r1
	bne	_Label_3784
	mov	2237,r13		! source line 2237
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_930		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_930
	jmp	_Label_928
_Label_930:
!   if fileDesc >= 0 then goto _Label_929		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_929
!	jmp	_Label_928
_Label_928:
! THEN...
	mov	2260,r13		! source line 2260
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_929:
! IF STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_932		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_932
!	jmp	_Label_931
_Label_931:
! THEN...
	mov	2265,r13		! source line 2265
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_932:
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_933 = *_temp_934  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_933) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_935 = _temp_933 + 124
	load	[r14+-124],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_935 [fileDesc ] into _temp_936
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
!   Data Move: open = *_temp_936  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_937
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_937
	jmp	_Label_938
_Label_937:
! THEN...
	mov	2271,r13		! source line 2271
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_938:
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_939 = open + 16
	load	[r14+-128],r1
	add	r1,16,r1
	store	r1,[r14+-108]
!   Data Move: nextPosInFile = *_temp_939  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_941 = open + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_940 = *_temp_941  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_940) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_942 = _temp_940 + 24
	load	[r14+-104],r1
	add	r1,24,r1
	store	r1,[r14+-96]
!   Data Move: sizeOfFile = *_temp_942  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-156]
! WHILE STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0WH",r10
_Label_943:
!	jmp	_Label_944
_Label_944:
	mov	2282,r13		! source line 2282
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   thisChunksize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-140],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
! IF STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0IF",r10
!   _temp_948 = nextPosInFile + thisChunksize		(int)
	load	[r14+-148],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   if _temp_948 <= sizeOfFile then goto _Label_947		(int)
	load	[r14+-92],r1
	load	[r14+-156],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_947
!	jmp	_Label_946
_Label_946:
! THEN...
	mov	2287,r13		! source line 2287
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   thisChunksize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-156],r1
	load	[r14+-148],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
! END IF...
_Label_947:
! IF STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0IF",r10
!   _temp_951 = copiedSoFar + thisChunksize		(int)
	load	[r14+-144],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
!   if _temp_951 <= sizeInBytes then goto _Label_950		(int)
	load	[r14+-88],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_950
!	jmp	_Label_949
_Label_949:
! THEN...
	mov	2291,r13		! source line 2291
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   thisChunksize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-144],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
! END IF...
_Label_950:
! IF STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0IF",r10
!   if thisChunksize > 0 then goto _Label_953		(int)
	load	[r14+-152],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_953
!	jmp	_Label_952
_Label_952:
! THEN...
	mov	2297,r13		! source line 2297
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0BR",r10
	jmp	_Label_945
! END IF...
_Label_953:
! IF STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_958		(int)
	load	[r14+-136],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_958
	jmp	_Label_954
_Label_958:
!   if virtPage <= 512 then goto _Label_957		(int)
	load	[r14+-136],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_957
	jmp	_Label_954
_Label_957:
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_961 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_960 = *_temp_961  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_960) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_962 = _temp_960 + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_959  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_959 then goto _Label_956 else goto _Label_954
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_954
	jmp	_Label_956
_Label_956:
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_965 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_964 = *_temp_965  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_964) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_966 = _temp_964 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_963  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_963 then goto _Label_955 else goto _Label_954
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_954
	jmp	_Label_955
_Label_954:
! THEN...
	mov	2302,r13		! source line 2302
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_955:
! SEND STATEMENT...
	mov	2307,r13		! source line 2307
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
	store	r1,[r14+-56]
!   Data Move: _temp_967 = *_temp_968  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_967) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_969 = _temp_967 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message SetDirty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_971 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_970 = *_temp_971  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_970) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_972 = _temp_970 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
	mov	2311,r13		! source line 2311
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
	store	r1,[r14+-28]
!   Data Move: _temp_974 = *_temp_975  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_974) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_976 = _temp_974 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_973  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   destAddr = _temp_973 + offset		(int)
	load	[r14+-36],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_977
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_977
	jmp	_Label_978
_Label_977:
! THEN...
	mov	2313,r13		! source line 2313
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_978:
! ASSIGNMENT STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0AS",r10
	mov	2317,r13		! source line 2317
	mov	"\0\0SE",r10
!   _temp_979 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunksize  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=hold  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
! ASSIGNMENT STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunksize		(int)
	load	[r14+-148],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_980 = open + 16
	load	[r14+-128],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_980 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunksize		(int)
	load	[r14+-144],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2324,r13		! source line 2324
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_982		(int)
	load	[r14+-144],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_982
!	jmp	_Label_981
_Label_981:
! THEN...
	mov	2328,r13		! source line 2328
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2328,r13		! source line 2328
	mov	"\0\0BR",r10
	jmp	_Label_945
! END IF...
_Label_982:
! END WHILE...
	jmp	_Label_943
_Label_945:
! RETURN STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_983
	.word	12		! total size of parameters
	.word	172		! frame size = 172
	.word	_Label_984
	.word	8
	.word	4
	.word	_Label_985
	.word	12
	.word	4
	.word	_Label_986
	.word	16
	.word	4
	.word	_Label_987
	.word	-16
	.word	4
	.word	_Label_988
	.word	-20
	.word	4
	.word	_Label_989
	.word	-24
	.word	4
	.word	_Label_990
	.word	-28
	.word	4
	.word	_Label_991
	.word	-32
	.word	4
	.word	_Label_992
	.word	-36
	.word	4
	.word	_Label_993
	.word	-40
	.word	4
	.word	_Label_994
	.word	-44
	.word	4
	.word	_Label_995
	.word	-48
	.word	4
	.word	_Label_996
	.word	-52
	.word	4
	.word	_Label_997
	.word	-56
	.word	4
	.word	_Label_998
	.word	-60
	.word	4
	.word	_Label_999
	.word	-64
	.word	4
	.word	_Label_1000
	.word	-68
	.word	4
	.word	_Label_1001
	.word	-72
	.word	4
	.word	_Label_1002
	.word	-9
	.word	1
	.word	_Label_1003
	.word	-76
	.word	4
	.word	_Label_1004
	.word	-80
	.word	4
	.word	_Label_1005
	.word	-84
	.word	4
	.word	_Label_1006
	.word	-10
	.word	1
	.word	_Label_1007
	.word	-88
	.word	4
	.word	_Label_1008
	.word	-92
	.word	4
	.word	_Label_1009
	.word	-96
	.word	4
	.word	_Label_1010
	.word	-100
	.word	4
	.word	_Label_1011
	.word	-104
	.word	4
	.word	_Label_1012
	.word	-108
	.word	4
	.word	_Label_1013
	.word	-112
	.word	4
	.word	_Label_1014
	.word	-116
	.word	4
	.word	_Label_1015
	.word	-120
	.word	4
	.word	_Label_1016
	.word	-124
	.word	4
	.word	_Label_1017
	.word	-128
	.word	4
	.word	_Label_1018
	.word	-132
	.word	4
	.word	_Label_1019
	.word	-136
	.word	4
	.word	_Label_1020
	.word	-140
	.word	4
	.word	_Label_1021
	.word	-144
	.word	4
	.word	_Label_1022
	.word	-148
	.word	4
	.word	_Label_1023
	.word	-152
	.word	4
	.word	_Label_1024
	.word	-156
	.word	4
	.word	_Label_1025
	.word	-11
	.word	1
	.word	_Label_1026
	.word	-160
	.word	4
	.word	0
_Label_983:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_984:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_985:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_986:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_1002:
	.byte	'C'
	.ascii	"_temp_963\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_1006:
	.byte	'C'
	.ascii	"_temp_959\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_1017:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1018:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1019:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1020:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1021:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1022:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1023:
	.byte	'I'
	.ascii	"thisChunksize\0"
	.align
_Label_1024:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1025:
	.byte	'B'
	.ascii	"hold\0"
	.align
_Label_1026:
	.byte	'I'
	.ascii	"destAddr\0"
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
	mov	40,r1
_Label_3785:
	push	r0
	sub	r1,1,r1
	bne	_Label_3785
	mov	2336,r13		! source line 2336
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1029		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1029
	jmp	_Label_1027
_Label_1029:
!   if fileDesc >= 0 then goto _Label_1028		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1028
!	jmp	_Label_1027
_Label_1027:
! THEN...
	mov	2360,r13		! source line 2360
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1028:
! IF STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1031		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1031
!	jmp	_Label_1030
_Label_1030:
! THEN...
	mov	2365,r13		! source line 2365
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1031:
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1032 = *_temp_1033  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1032) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1034 = _temp_1032 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1034 [fileDesc ] into _temp_1035
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
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
	store	r2,[r14+-100]
!   Data Move: open = *_temp_1035  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1036
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_1036
	jmp	_Label_1037
_Label_1036:
! THEN...
	mov	2371,r13		! source line 2371
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1037:
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+-120],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+-120],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1038 = open + 16
	load	[r14+-116],r1
	add	r1,16,r1
	store	r1,[r14+-96]
!   Data Move: nextPosInFile = *_temp_1038  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = open + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1039 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1039) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1041 = _temp_1039 + 24
	load	[r14+-92],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   Data Move: sizeOfFile = *_temp_1041  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-144]
! WHILE STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0WH",r10
_Label_1042:
!	jmp	_Label_1043
_Label_1043:
	mov	2382,r13		! source line 2382
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   thisChunksize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-128],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0IF",r10
!   _temp_1047 = nextPosInFile + thisChunksize		(int)
	load	[r14+-136],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   if _temp_1047 <= sizeOfFile then goto _Label_1046		(int)
	load	[r14+-80],r1
	load	[r14+-144],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1046
!	jmp	_Label_1045
_Label_1045:
! THEN...
	mov	2387,r13		! source line 2387
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   thisChunksize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-144],r1
	load	[r14+-136],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! END IF...
_Label_1046:
! IF STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0IF",r10
!   _temp_1050 = copiedSoFar + thisChunksize		(int)
	load	[r14+-132],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   if _temp_1050 <= sizeInBytes then goto _Label_1049		(int)
	load	[r14+-76],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1049
!	jmp	_Label_1048
_Label_1048:
! THEN...
	mov	2391,r13		! source line 2391
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   thisChunksize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! END IF...
_Label_1049:
! IF STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0IF",r10
!   if thisChunksize > 0 then goto _Label_1052		(int)
	load	[r14+-140],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1052
!	jmp	_Label_1051
_Label_1051:
! THEN...
	mov	2397,r13		! source line 2397
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0BR",r10
	jmp	_Label_1044
! END IF...
_Label_1052:
! IF STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1057		(int)
	load	[r14+-124],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1057
	jmp	_Label_1053
_Label_1057:
!   if virtPage <= 512 then goto _Label_1056		(int)
	load	[r14+-124],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1056
	jmp	_Label_1053
_Label_1056:
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1060 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1059 = *_temp_1060  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1059) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1061 = _temp_1059 + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1058  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1058 then goto _Label_1055 else goto _Label_1053
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1053
	jmp	_Label_1055
_Label_1055:
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1064 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_1063 = *_temp_1064  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1063) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1065 = _temp_1063 + 32
	load	[r14+-60],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1062  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1062 then goto _Label_1054 else goto _Label_1053
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1053
	jmp	_Label_1054
_Label_1053:
! THEN...
	mov	2402,r13		! source line 2402
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1054:
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1067 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1066 = *_temp_1067  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1066) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1068 = _temp_1066 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message SetReferenced
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,44,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
	mov	2409,r13		! source line 2409
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1071 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1070 = *_temp_1071  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1070) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1072 = _temp_1070 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1069  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   destAddr = _temp_1069 + offset		(int)
	load	[r14+-36],r1
	load	[r14+-128],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1073
	load	[r14+-148],r1
	cmp	r1,r0
	be	_Label_1073
	jmp	_Label_1074
_Label_1073:
! THEN...
	mov	2411,r13		! source line 2411
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-132],r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1074:
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_1075 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=destAddr  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nextPosInFile  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=thisChunksize  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+16]
!   Send message SynchWrite
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=hold  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
! ASSIGNMENT STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunksize		(int)
	load	[r14+-136],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1076 = open + 16
	load	[r14+-116],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1076 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunksize		(int)
	load	[r14+-132],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1078		(int)
	load	[r14+-132],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1078
!	jmp	_Label_1077
_Label_1077:
! THEN...
	mov	2427,r13		! source line 2427
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0BR",r10
	jmp	_Label_1044
! END IF...
_Label_1078:
! END WHILE...
	jmp	_Label_1042
_Label_1044:
! RETURN STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-132],r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_1079
	.word	12		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_1080
	.word	8
	.word	4
	.word	_Label_1081
	.word	12
	.word	4
	.word	_Label_1082
	.word	16
	.word	4
	.word	_Label_1083
	.word	-16
	.word	4
	.word	_Label_1084
	.word	-20
	.word	4
	.word	_Label_1085
	.word	-24
	.word	4
	.word	_Label_1086
	.word	-28
	.word	4
	.word	_Label_1087
	.word	-32
	.word	4
	.word	_Label_1088
	.word	-36
	.word	4
	.word	_Label_1089
	.word	-40
	.word	4
	.word	_Label_1090
	.word	-44
	.word	4
	.word	_Label_1091
	.word	-48
	.word	4
	.word	_Label_1092
	.word	-52
	.word	4
	.word	_Label_1093
	.word	-56
	.word	4
	.word	_Label_1094
	.word	-60
	.word	4
	.word	_Label_1095
	.word	-9
	.word	1
	.word	_Label_1096
	.word	-64
	.word	4
	.word	_Label_1097
	.word	-68
	.word	4
	.word	_Label_1098
	.word	-72
	.word	4
	.word	_Label_1099
	.word	-10
	.word	1
	.word	_Label_1100
	.word	-76
	.word	4
	.word	_Label_1101
	.word	-80
	.word	4
	.word	_Label_1102
	.word	-84
	.word	4
	.word	_Label_1103
	.word	-88
	.word	4
	.word	_Label_1104
	.word	-92
	.word	4
	.word	_Label_1105
	.word	-96
	.word	4
	.word	_Label_1106
	.word	-100
	.word	4
	.word	_Label_1107
	.word	-104
	.word	4
	.word	_Label_1108
	.word	-108
	.word	4
	.word	_Label_1109
	.word	-112
	.word	4
	.word	_Label_1110
	.word	-116
	.word	4
	.word	_Label_1111
	.word	-120
	.word	4
	.word	_Label_1112
	.word	-124
	.word	4
	.word	_Label_1113
	.word	-128
	.word	4
	.word	_Label_1114
	.word	-132
	.word	4
	.word	_Label_1115
	.word	-136
	.word	4
	.word	_Label_1116
	.word	-140
	.word	4
	.word	_Label_1117
	.word	-144
	.word	4
	.word	_Label_1118
	.word	-11
	.word	1
	.word	_Label_1119
	.word	-148
	.word	4
	.word	0
_Label_1079:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1080:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1081:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1082:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1095:
	.byte	'C'
	.ascii	"_temp_1062\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1099:
	.byte	'C'
	.ascii	"_temp_1058\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1110:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1111:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1112:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1113:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1114:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1115:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1116:
	.byte	'I'
	.ascii	"thisChunksize\0"
	.align
_Label_1117:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1118:
	.byte	'B'
	.ascii	"hold\0"
	.align
_Label_1119:
	.byte	'I'
	.ascii	"destAddr\0"
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
	mov	28,r1
_Label_3786:
	push	r0
	sub	r1,1,r1
	bne	_Label_3786
	mov	2434,r13		! source line 2434
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1120 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: pcb = *_temp_1120  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_1121 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-104]
!   _temp_1122 = _temp_1121 + 4
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
	mov	2470,r13		! source line 2470
	mov	"\0\0IF",r10
!   if fileDesc <= 10 then goto _Label_1125		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1125
	jmp	_Label_1123
_Label_1125:
!   if fileDesc >= 0 then goto _Label_1124		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1124
!	jmp	_Label_1123
_Label_1123:
! THEN...
	mov	2471,r13		! source line 2471
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0SE",r10
!   _temp_1126 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   _temp_1127 = _temp_1126 + 4
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
	mov	2472,r13		! source line 2472
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1124:
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1128 = pcb + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-88]
!   Move address of _temp_1128 [fileDesc ] into _temp_1129
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
!   Data Move: open = *_temp_1129  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1130
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_1130
	jmp	_Label_1131
_Label_1130:
! THEN...
	mov	2476,r13		! source line 2476
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   _temp_1132 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   _temp_1133 = _temp_1132 + 4
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
	mov	2477,r13		! source line 2477
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1131:
! IF STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1137 = open + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1136 = *_temp_1137  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1136) then goto _Label_1134
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_1134
	jmp	_Label_1135
_Label_1134:
! THEN...
	mov	2482,r13		! source line 2482
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   _temp_1138 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   _temp_1139 = _temp_1138 + 4
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
	mov	2483,r13		! source line 2483
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1135:
! IF STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1141		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1141
!	jmp	_Label_1140
_Label_1140:
! THEN...
	mov	2488,r13		! source line 2488
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1143 = open + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1142 = *_temp_1143  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1142) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1144 = _temp_1142 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: newCurrentPos = *_temp_1144  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+12]
! END IF...
_Label_1141:
! IF STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1147		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1147
	jmp	_Label_1145
_Label_1147:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1150 = open + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1149 = *_temp_1150  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1149) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1151 = _temp_1149 + 24
	load	[r14+-40],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1148 = *_temp_1151  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if newCurrentPos <= _temp_1148 then goto _Label_1146		(int)
	load	[r14+12],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1146
!	jmp	_Label_1145
_Label_1145:
! THEN...
	mov	2494,r13		! source line 2494
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0SE",r10
!   _temp_1152 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1153 = _temp_1152 + 4
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
	mov	2495,r13		! source line 2495
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1146:
! ASSIGNMENT STATEMENT...
	mov	2499,r13		! source line 2499
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1154 = open + 16
	load	[r14+-116],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1154 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
!   _temp_1155 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1156 = _temp_1155 + 4
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
	mov	2503,r13		! source line 2503
	mov	"\0\0RE",r10
!   ReturnResult: newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_1157
	.word	8		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1158
	.word	8
	.word	4
	.word	_Label_1159
	.word	12
	.word	4
	.word	_Label_1160
	.word	-12
	.word	4
	.word	_Label_1161
	.word	-16
	.word	4
	.word	_Label_1162
	.word	-20
	.word	4
	.word	_Label_1163
	.word	-24
	.word	4
	.word	_Label_1164
	.word	-28
	.word	4
	.word	_Label_1165
	.word	-32
	.word	4
	.word	_Label_1166
	.word	-36
	.word	4
	.word	_Label_1167
	.word	-40
	.word	4
	.word	_Label_1168
	.word	-44
	.word	4
	.word	_Label_1169
	.word	-48
	.word	4
	.word	_Label_1170
	.word	-52
	.word	4
	.word	_Label_1171
	.word	-56
	.word	4
	.word	_Label_1172
	.word	-60
	.word	4
	.word	_Label_1173
	.word	-64
	.word	4
	.word	_Label_1174
	.word	-68
	.word	4
	.word	_Label_1175
	.word	-72
	.word	4
	.word	_Label_1176
	.word	-76
	.word	4
	.word	_Label_1177
	.word	-80
	.word	4
	.word	_Label_1178
	.word	-84
	.word	4
	.word	_Label_1179
	.word	-88
	.word	4
	.word	_Label_1180
	.word	-92
	.word	4
	.word	_Label_1181
	.word	-96
	.word	4
	.word	_Label_1182
	.word	-100
	.word	4
	.word	_Label_1183
	.word	-104
	.word	4
	.word	_Label_1184
	.word	-108
	.word	4
	.word	_Label_1185
	.word	-112
	.word	4
	.word	_Label_1186
	.word	-116
	.word	4
	.word	0
_Label_1157:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1158:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1159:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1185:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1186:
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
	mov	12,r1
_Label_3787:
	push	r0
	sub	r1,1,r1
	bne	_Label_3787
	mov	2506,r13		! source line 2506
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1189		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1189
	jmp	_Label_1187
_Label_1189:
!   if fileDesc >= 0 then goto _Label_1188		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1188
!	jmp	_Label_1187
_Label_1187:
! THEN...
	mov	2518,r13		! source line 2518
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1188:
! ASSIGNMENT STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1191 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1190 = *_temp_1191  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1190) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1192 = _temp_1190 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1192 [fileDesc ] into _temp_1193
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
!   Data Move: open = *_temp_1193  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1195 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1194 = *_temp_1195  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1194) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1196 = _temp_1194 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_1196 [fileDesc ] into _temp_1197
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
!   Data Move: *_temp_1197 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1198
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_1198
	jmp	_Label_1199
_Label_1198:
! THEN...
	mov	2526,r13		! source line 2526
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1199:
! SEND STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0SE",r10
!   _temp_1200 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+-48],r1
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
	mov	2529,r13		! source line 2529
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_1201
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1202
	.word	8
	.word	4
	.word	_Label_1203
	.word	-12
	.word	4
	.word	_Label_1204
	.word	-16
	.word	4
	.word	_Label_1205
	.word	-20
	.word	4
	.word	_Label_1206
	.word	-24
	.word	4
	.word	_Label_1207
	.word	-28
	.word	4
	.word	_Label_1208
	.word	-32
	.word	4
	.word	_Label_1209
	.word	-36
	.word	4
	.word	_Label_1210
	.word	-40
	.word	4
	.word	_Label_1211
	.word	-44
	.word	4
	.word	_Label_1212
	.word	-48
	.word	4
	.word	0
_Label_1201:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1202:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1212:
	.byte	'P'
	.ascii	"open\0"
	.align
! 
! ===============  FUNCTION printString  ===============
! 
_function_199_printString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_199_printString,r1
	push	r1
	mov	1,r1
_Label_3788:
	push	r0
	sub	r1,1,r1
	bne	_Label_3788
	mov	2533,r13		! source line 2533
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2535,r13		! source line 2535
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_199_printString:
	.word	_sourceFileName
	.word	_Label_1213
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1214
	.word	8
	.word	4
	.word	0
_Label_1213:
	.ascii	"printString\0"
	.align
_Label_1214:
	.byte	'P'
	.ascii	"arg\0"
	.align
! 
! ===============  FUNCTION ResumeChildAfterFork  ===============
! 
_function_198_ResumeChildAfterFork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_198_ResumeChildAfterFork,r1
	push	r1
	mov	17,r1
_Label_3789:
	push	r0
	sub	r1,1,r1
	bne	_Label_3789
	mov	2539,r13		! source line 2539
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2551,r13		! source line 2551
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1216 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1215 = *_temp_1216  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1215) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1217 = _temp_1215 + 32
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
!   _temp_1219 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1219 [0 ] into _temp_1220
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
!   _temp_1218 = _temp_1220		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1218  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2556,r13		! source line 2556
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1221 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1221 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1222 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_1222 [999 ] into _temp_1223
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
!   initSystemStackTop = _temp_1223		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2564,r13		! source line 2564
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1224 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_1224 [14 ] into _temp_1225
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
!   Data Move: initUserStackTop = *_temp_1225  (sizeInBytes=4)
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
	mov	2565,r13		! source line 2565
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_198_ResumeChildAfterFork:
	.word	_sourceFileName
	.word	_Label_1226
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1227
	.word	8
	.word	4
	.word	_Label_1228
	.word	-12
	.word	4
	.word	_Label_1229
	.word	-16
	.word	4
	.word	_Label_1230
	.word	-20
	.word	4
	.word	_Label_1231
	.word	-24
	.word	4
	.word	_Label_1232
	.word	-28
	.word	4
	.word	_Label_1233
	.word	-32
	.word	4
	.word	_Label_1234
	.word	-36
	.word	4
	.word	_Label_1235
	.word	-40
	.word	4
	.word	_Label_1236
	.word	-44
	.word	4
	.word	_Label_1237
	.word	-48
	.word	4
	.word	_Label_1238
	.word	-52
	.word	4
	.word	_Label_1239
	.word	-56
	.word	4
	.word	_Label_1240
	.word	-60
	.word	4
	.word	_Label_1241
	.word	-64
	.word	4
	.word	0
_Label_1226:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_1227:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1239:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_1240:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1241:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_197_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_197_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3790:
	push	r0
	sub	r1,1,r1
	bne	_Label_3790
	mov	3156,r13		! source line 3156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3158,r13		! source line 3158
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3159,r13		! source line 3159
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3160,r13		! source line 3160
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1242 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1242  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3161,r13		! source line 3161
	mov	"\0\0AS",r10
!   _temp_1243 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1243) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1245 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1245) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1244 = *_temp_1245  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1243 = _temp_1244  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3162,r13		! source line 3162
	mov	"\0\0AS",r10
!   _temp_1246 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1246) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1248 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1248) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1247 = *_temp_1248  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1246 = _temp_1247  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0AS",r10
!   _temp_1249 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1249) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1251 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1251) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1250 = *_temp_1251  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1249 = _temp_1250  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3163,r13		! source line 3163
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_197_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_1252
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1253
	.word	8
	.word	4
	.word	_Label_1254
	.word	12
	.word	4
	.word	_Label_1255
	.word	-16
	.word	4
	.word	_Label_1256
	.word	-9
	.word	1
	.word	_Label_1257
	.word	-20
	.word	4
	.word	_Label_1258
	.word	-24
	.word	4
	.word	_Label_1259
	.word	-10
	.word	1
	.word	_Label_1260
	.word	-28
	.word	4
	.word	_Label_1261
	.word	-32
	.word	4
	.word	_Label_1262
	.word	-11
	.word	1
	.word	_Label_1263
	.word	-36
	.word	4
	.word	_Label_1264
	.word	-12
	.word	1
	.word	_Label_1265
	.word	-40
	.word	4
	.word	_Label_1266
	.word	-44
	.word	4
	.word	0
_Label_1252:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1253:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1254:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1256:
	.byte	'C'
	.ascii	"_temp_1250\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1259:
	.byte	'C'
	.ascii	"_temp_1247\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1262:
	.byte	'C'
	.ascii	"_temp_1244\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1264:
	.byte	'C'
	.ascii	"_temp_1242\0"
	.align
_Label_1265:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1266:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_196_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_196_printFCB,r1
	push	r1
	mov	3,r1
_Label_3791:
	push	r0
	sub	r1,1,r1
	bne	_Label_3791
	mov	3166,r13		! source line 3166
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1268 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1267 = *_temp_1268  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3167,r13		! source line 3167
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3168,r13		! source line 3168
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3168,r13		! source line 3168
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_196_printFCB:
	.word	_sourceFileName
	.word	_Label_1269
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1270
	.word	8
	.word	4
	.word	_Label_1271
	.word	-12
	.word	4
	.word	_Label_1272
	.word	-16
	.word	4
	.word	0
_Label_1269:
	.ascii	"printFCB\0"
	.align
_Label_1270:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_195_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_195_printOpen,r1
	push	r1
	mov	4,r1
_Label_3792:
	push	r0
	sub	r1,1,r1
	bne	_Label_3792
	mov	3171,r13		! source line 3171
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1273 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1273  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3172,r13		! source line 3172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1274 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3173,r13		! source line 3173
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1275 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3174,r13		! source line 3174
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3175,r13		! source line 3175
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
	mov	3175,r13		! source line 3175
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_195_printOpen:
	.word	_sourceFileName
	.word	_Label_1276
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1277
	.word	8
	.word	4
	.word	_Label_1278
	.word	-12
	.word	4
	.word	_Label_1279
	.word	-16
	.word	4
	.word	_Label_1280
	.word	-20
	.word	4
	.word	0
_Label_1276:
	.ascii	"printOpen\0"
	.align
_Label_1277:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1281
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1281:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1282
	.word	_sourceFileName
	.word	131		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1282:
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
_Label_3793:
	push	r0
	sub	r1,1,r1
	bne	_Label_3793
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1284		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1284
!	jmp	_Label_1283
_Label_1283:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1285 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1285  sizeInBytes=4
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
_Label_1284:
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
	.word	_Label_1287
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1288
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1289
	.word	12
	.word	4
	.word	_Label_1290
	.word	-12
	.word	4
	.word	_Label_1291
	.word	-16
	.word	4
	.word	0
_Label_1287:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1288:
	.ascii	"Pself\0"
	.align
_Label_1289:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1285\0"
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
_Label_3794:
	push	r0
	sub	r1,1,r1
	bne	_Label_3794
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
!   if count != 2147483647 then goto _Label_1293		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1293
!	jmp	_Label_1292
_Label_1292:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1294 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
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
_Label_1293:
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
!   if count > 0 then goto _Label_1296		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1296
!	jmp	_Label_1295
_Label_1295:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1297 = &waitingThreads
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
!   _temp_1298 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1298 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_1299 = &_P_Kernel_readyList
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
_Label_1296:
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
	.word	_Label_1300
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1301
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1302
	.word	-12
	.word	4
	.word	_Label_1303
	.word	-16
	.word	4
	.word	_Label_1304
	.word	-20
	.word	4
	.word	_Label_1305
	.word	-24
	.word	4
	.word	_Label_1306
	.word	-28
	.word	4
	.word	_Label_1307
	.word	-32
	.word	4
	.word	0
_Label_1300:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1301:
	.ascii	"Pself\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1306:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1307:
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
_Label_3795:
	push	r0
	sub	r1,1,r1
	bne	_Label_3795
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
!   if count != -2147483648 then goto _Label_1309		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1309
!	jmp	_Label_1308
_Label_1308:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1310 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1310  sizeInBytes=4
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
_Label_1309:
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
!   if count >= 0 then goto _Label_1312		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1312
!	jmp	_Label_1311
_Label_1311:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_1313 = &waitingThreads
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
_Label_1312:
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
	.word	_Label_1314
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1315
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1316
	.word	-12
	.word	4
	.word	_Label_1317
	.word	-16
	.word	4
	.word	_Label_1318
	.word	-20
	.word	4
	.word	0
_Label_1314:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1315:
	.ascii	"Pself\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1318:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1319
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1319:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1320
	.word	_sourceFileName
	.word	144		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1320:
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
_Label_3796:
	push	r0
	sub	r1,1,r1
	bne	_Label_3796
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
	.word	_Label_1322
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1324
	.word	-12
	.word	4
	.word	0
_Label_1322:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1323:
	.ascii	"Pself\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1321\0"
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
_Label_3797:
	push	r0
	sub	r1,1,r1
	bne	_Label_3797
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1326		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1326
!	jmp	_Label_1325
_Label_1325:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1327 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
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
_Label_1326:
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
!   if heldBy == 0 then goto _Label_1331		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1331
!   _temp_1330 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1332
_Label_1331:
!   _temp_1330 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1332:
!   if _temp_1330 then goto _Label_1329 else goto _Label_1328
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1328
	jmp	_Label_1329
_Label_1328:
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
	jmp	_Label_1333
_Label_1329:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_1334 = &waitingThreads
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
_Label_1333:
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
	.word	_Label_1335
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1336
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1337
	.word	-16
	.word	4
	.word	_Label_1338
	.word	-9
	.word	1
	.word	_Label_1339
	.word	-20
	.word	4
	.word	_Label_1340
	.word	-24
	.word	4
	.word	0
_Label_1335:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1336:
	.ascii	"Pself\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1338:
	.byte	'C'
	.ascii	"_temp_1330\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1340:
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
_Label_3798:
	push	r0
	sub	r1,1,r1
	bne	_Label_3798
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1342		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1342
!	jmp	_Label_1341
_Label_1341:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1343 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1343  sizeInBytes=4
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
_Label_1342:
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
!   _temp_1344 = &waitingThreads
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
!   if t == 0 then goto _Label_1346		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1346
!	jmp	_Label_1345
_Label_1345:
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
!   _temp_1347 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1347 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_1348 = &_P_Kernel_readyList
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
	jmp	_Label_1349
_Label_1346:
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
_Label_1349:
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
	.word	_Label_1350
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1351
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1352
	.word	-12
	.word	4
	.word	_Label_1353
	.word	-16
	.word	4
	.word	_Label_1354
	.word	-20
	.word	4
	.word	_Label_1355
	.word	-24
	.word	4
	.word	_Label_1356
	.word	-28
	.word	4
	.word	_Label_1357
	.word	-32
	.word	4
	.word	0
_Label_1350:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1351:
	.ascii	"Pself\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1356:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1357:
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
_Label_3799:
	push	r0
	sub	r1,1,r1
	bne	_Label_3799
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1360		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1360
!	jmp	_Label_1359
_Label_1359:
!   _temp_1358 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1361
_Label_1360:
!   _temp_1358 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1361:
!   ReturnResult: _temp_1358  (sizeInBytes=1)
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
	.word	_Label_1362
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1363
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1364
	.word	-9
	.word	1
	.word	0
_Label_1362:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1363:
	.ascii	"Pself\0"
	.align
_Label_1364:
	.byte	'C'
	.ascii	"_temp_1358\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1365
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1365:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1366
	.word	_sourceFileName
	.word	158		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1366:
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
_Label_3800:
	push	r0
	sub	r1,1,r1
	bne	_Label_3800
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
	.word	_Label_1368
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1369
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1370
	.word	-12
	.word	4
	.word	0
_Label_1368:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1369:
	.ascii	"Pself\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1367\0"
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
_Label_3801:
	push	r0
	sub	r1,1,r1
	bne	_Label_3801
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
!   Retrieve Result: targetName=_temp_1373  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1373 then goto _Label_1372 else goto _Label_1371
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1371
	jmp	_Label_1372
_Label_1371:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1374 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1374  sizeInBytes=4
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
_Label_1372:
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
!   _temp_1375 = &waitingThreads
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
	.word	_Label_1376
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1377
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1378
	.word	12
	.word	4
	.word	_Label_1379
	.word	-16
	.word	4
	.word	_Label_1380
	.word	-20
	.word	4
	.word	_Label_1381
	.word	-9
	.word	1
	.word	_Label_1382
	.word	-24
	.word	4
	.word	0
_Label_1376:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1377:
	.ascii	"Pself\0"
	.align
_Label_1378:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1381:
	.byte	'C'
	.ascii	"_temp_1373\0"
	.align
_Label_1382:
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
_Label_3802:
	push	r0
	sub	r1,1,r1
	bne	_Label_3802
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
!   Retrieve Result: targetName=_temp_1385  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1385 then goto _Label_1384 else goto _Label_1383
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1383
	jmp	_Label_1384
_Label_1383:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1386 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1386  sizeInBytes=4
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
_Label_1384:
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
!   _temp_1387 = &waitingThreads
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
!   if t == 0 then goto _Label_1389		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1389
!	jmp	_Label_1388
_Label_1388:
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
!   _temp_1390 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1390 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_1391 = &_P_Kernel_readyList
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
_Label_1389:
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
	.word	_Label_1392
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1393
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1394
	.word	12
	.word	4
	.word	_Label_1395
	.word	-16
	.word	4
	.word	_Label_1396
	.word	-20
	.word	4
	.word	_Label_1397
	.word	-24
	.word	4
	.word	_Label_1398
	.word	-28
	.word	4
	.word	_Label_1399
	.word	-9
	.word	1
	.word	_Label_1400
	.word	-32
	.word	4
	.word	_Label_1401
	.word	-36
	.word	4
	.word	0
_Label_1392:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1393:
	.ascii	"Pself\0"
	.align
_Label_1394:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1399:
	.byte	'C'
	.ascii	"_temp_1385\0"
	.align
_Label_1400:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1401:
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
_Label_3803:
	push	r0
	sub	r1,1,r1
	bne	_Label_3803
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
!   Retrieve Result: targetName=_temp_1404  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1404 then goto _Label_1403 else goto _Label_1402
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1402
	jmp	_Label_1403
_Label_1402:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1405 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1405  sizeInBytes=4
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
_Label_1403:
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
_Label_1406:
!	jmp	_Label_1407
_Label_1407:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_1409 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1410
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1410
	jmp	_Label_1411
_Label_1410:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_1408
! END IF...
_Label_1411:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1412 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1412 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_1413 = &_P_Kernel_readyList
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
	jmp	_Label_1406
_Label_1408:
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
	.word	_Label_1414
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1415
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1416
	.word	12
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
	.word	-9
	.word	1
	.word	_Label_1422
	.word	-32
	.word	4
	.word	_Label_1423
	.word	-36
	.word	4
	.word	0
_Label_1414:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1415:
	.ascii	"Pself\0"
	.align
_Label_1416:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1421:
	.byte	'C'
	.ascii	"_temp_1404\0"
	.align
_Label_1422:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1423:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1424
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
_Label_1424:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1425
	.word	_sourceFileName
	.word	171		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1425:
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
_Label_3804:
	push	r0
	sub	r1,1,r1
	bne	_Label_3804
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
!   _temp_1426 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1426) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1426 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1427 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1427 [0 ] into _temp_1428
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
!   Data Move: *_temp_1428 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1429 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1429 [999 ] into _temp_1430
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
!   Data Move: *_temp_1430 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1431 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1431 [999 ] into _temp_1432
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
!   stackTop = _temp_1432		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1433 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1435 = &_temp_1434
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1435 = _temp_1435 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1437:
!   Data Move: *_temp_1435 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1435 = _temp_1435 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1436 = _temp_1436 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1436) then goto _Label_1437
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1437
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1438 = &_temp_1434
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3805
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3805:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1433 = *_temp_1438  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3806:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3806
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
!   _temp_1439 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1441 = &_temp_1440
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1441 = _temp_1441 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1443:
!   Data Move: *_temp_1441 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1441 = _temp_1441 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1442 = _temp_1442 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1442) then goto _Label_1443
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1443
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1444 = &_temp_1440
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3807
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3807:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1439 = *_temp_1444  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3808:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3808
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
	.word	_Label_1445
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1447
	.word	12
	.word	4
	.word	_Label_1448
	.word	-12
	.word	4
	.word	_Label_1449
	.word	-16
	.word	4
	.word	_Label_1450
	.word	-20
	.word	4
	.word	_Label_1451
	.word	-84
	.word	64
	.word	_Label_1452
	.word	-88
	.word	4
	.word	_Label_1453
	.word	-92
	.word	4
	.word	_Label_1454
	.word	-96
	.word	4
	.word	_Label_1455
	.word	-100
	.word	4
	.word	_Label_1456
	.word	-156
	.word	56
	.word	_Label_1457
	.word	-160
	.word	4
	.word	_Label_1458
	.word	-164
	.word	4
	.word	_Label_1459
	.word	-168
	.word	4
	.word	_Label_1460
	.word	-172
	.word	4
	.word	_Label_1461
	.word	-176
	.word	4
	.word	_Label_1462
	.word	-180
	.word	4
	.word	_Label_1463
	.word	-184
	.word	4
	.word	_Label_1464
	.word	-188
	.word	4
	.word	0
_Label_1445:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1446:
	.ascii	"Pself\0"
	.align
_Label_1447:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1444\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1442\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1426\0"
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
_Label_3809:
	push	r0
	sub	r1,1,r1
	bne	_Label_3809
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
!   _temp_1465 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1465  (sizeInBytes=4)
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
!   _temp_1467 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1466  sizeInBytes=4
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
	.word	_Label_1468
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1469
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1470
	.word	12
	.word	4
	.word	_Label_1471
	.word	16
	.word	4
	.word	_Label_1472
	.word	-12
	.word	4
	.word	_Label_1473
	.word	-16
	.word	4
	.word	_Label_1474
	.word	-20
	.word	4
	.word	_Label_1475
	.word	-24
	.word	4
	.word	_Label_1476
	.word	-28
	.word	4
	.word	0
_Label_1468:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1469:
	.ascii	"Pself\0"
	.align
_Label_1470:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1471:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1475:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1476:
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
_Label_3810:
	push	r0
	sub	r1,1,r1
	bne	_Label_3810
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1479 == _P_Kernel_currentThread then goto _Label_1478		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1478
!	jmp	_Label_1477
_Label_1477:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1480 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1480  sizeInBytes=4
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
_Label_1478:
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
!   _temp_1481 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1483		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1483
!	jmp	_Label_1482
_Label_1482:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1485		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1485
!	jmp	_Label_1484
_Label_1484:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1486 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
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
_Label_1485:
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
!   _temp_1488 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1487  sizeInBytes=4
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
_Label_1483:
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
	.word	_Label_1489
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1490
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1491
	.word	-12
	.word	4
	.word	_Label_1492
	.word	-16
	.word	4
	.word	_Label_1493
	.word	-20
	.word	4
	.word	_Label_1494
	.word	-24
	.word	4
	.word	_Label_1495
	.word	-28
	.word	4
	.word	_Label_1496
	.word	-32
	.word	4
	.word	_Label_1497
	.word	-36
	.word	4
	.word	_Label_1498
	.word	-40
	.word	4
	.word	_Label_1499
	.word	-44
	.word	4
	.word	0
_Label_1489:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1490:
	.ascii	"Pself\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1497:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1498:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1499:
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
_Label_3811:
	push	r0
	sub	r1,1,r1
	bne	_Label_3811
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1501		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1501
!	jmp	_Label_1500
_Label_1500:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1502 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
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
_Label_1501:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1505 == _P_Kernel_currentThread then goto _Label_1504		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1504
!	jmp	_Label_1503
_Label_1503:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1506 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
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
_Label_1504:
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
!   _temp_1507 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1508
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1508
	jmp	_Label_1509
_Label_1508:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
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
_Label_1509:
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
	.word	_Label_1511
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1513
	.word	-12
	.word	4
	.word	_Label_1514
	.word	-16
	.word	4
	.word	_Label_1515
	.word	-20
	.word	4
	.word	_Label_1516
	.word	-24
	.word	4
	.word	_Label_1517
	.word	-28
	.word	4
	.word	_Label_1518
	.word	-32
	.word	4
	.word	0
_Label_1511:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1512:
	.ascii	"Pself\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1518:
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
_Label_3812:
	push	r0
	sub	r1,1,r1
	bne	_Label_3812
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1522 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1522 [0 ] into _temp_1523
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
!   Data Move: _temp_1521 = *_temp_1523  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1521 == 606348324 then goto _Label_1520		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1520
!	jmp	_Label_1519
_Label_1519:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1524 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1524  sizeInBytes=4
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
	jmp	_Label_1525
_Label_1520:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1529 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1529 [999 ] into _temp_1530
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
!   Data Move: _temp_1528 = *_temp_1530  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1528 == 606348324 then goto _Label_1527		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1527
!	jmp	_Label_1526
_Label_1526:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1531 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1531  sizeInBytes=4
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
_Label_1527:
! END IF...
_Label_1525:
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
	.word	_Label_1532
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1533
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1534
	.word	-12
	.word	4
	.word	_Label_1535
	.word	-16
	.word	4
	.word	_Label_1536
	.word	-20
	.word	4
	.word	_Label_1537
	.word	-24
	.word	4
	.word	_Label_1538
	.word	-28
	.word	4
	.word	_Label_1539
	.word	-32
	.word	4
	.word	_Label_1540
	.word	-36
	.word	4
	.word	_Label_1541
	.word	-40
	.word	4
	.word	0
_Label_1532:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1533:
	.ascii	"Pself\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1521\0"
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
_Label_3813:
	push	r0
	sub	r1,1,r1
	bne	_Label_3813
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
!   _temp_1542 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1542  sizeInBytes=4
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
!   _temp_1543 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1543  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1544  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1545 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1545  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1546 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1546  sizeInBytes=4
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
!   _temp_1551 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1552 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1551  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1547:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1552 then goto _Label_1550		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1550
_Label_1548:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1553 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1553  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1554 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1554  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1555 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1557 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1557 [i ] into _temp_1558
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
!   Data Move: _temp_1556 = *_temp_1558  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1556  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1559 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1559  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1561 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1561 [i ] into _temp_1562
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
!   Data Move: _temp_1560 = *_temp_1562  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1560  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1563 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1563  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1549:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1547
! END FOR
_Label_1550:
! CALL STATEMENT...
!   _temp_1564 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-116]
!   _temp_1565 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1564  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1565  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1566 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-108]
!   _temp_1568 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1568 [0 ] into _temp_1569
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
!   _temp_1567 = _temp_1569		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1566  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1567  sizeInBytes=4
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
	be	_Label_1572
	cmp	r1,2
	be	_Label_1573
	cmp	r1,3
	be	_Label_1574
	cmp	r1,4
	be	_Label_1575
	cmp	r1,5
	be	_Label_1576
	jmp	_Label_1570
! CASE 1...
_Label_1572:
! CALL STATEMENT...
!   _temp_1577 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1577  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1571
! CASE 2...
_Label_1573:
! CALL STATEMENT...
!   _temp_1578 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1578  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1571
! CASE 3...
_Label_1574:
! CALL STATEMENT...
!   _temp_1579 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1579  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1571
! CASE 4...
_Label_1575:
! CALL STATEMENT...
!   _temp_1580 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1580  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1571
! CASE 5...
_Label_1576:
! CALL STATEMENT...
!   _temp_1581 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1581  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1571
! DEFAULT CASE...
_Label_1570:
! CALL STATEMENT...
!   _temp_1582 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1582  sizeInBytes=4
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
_Label_1571:
! CALL STATEMENT...
!   _temp_1583 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1583  sizeInBytes=4
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
!   _temp_1584 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
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
!   _temp_1589 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1590 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1589  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1585:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1590 then goto _Label_1588		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1588
_Label_1586:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1591 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1591  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1592 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1592  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1593 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1593  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1595 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1595 [i ] into _temp_1596
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
!   Data Move: _temp_1594 = *_temp_1596  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1594  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1597 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1597  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1599 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1599 [i ] into _temp_1600
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
!   Data Move: _temp_1598 = *_temp_1600  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1598  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1601 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1587:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1585
! END FOR
_Label_1588:
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
	.word	_Label_1602
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	-12
	.word	4
	.word	_Label_1605
	.word	-16
	.word	4
	.word	_Label_1606
	.word	-20
	.word	4
	.word	_Label_1607
	.word	-24
	.word	4
	.word	_Label_1608
	.word	-28
	.word	4
	.word	_Label_1609
	.word	-32
	.word	4
	.word	_Label_1610
	.word	-36
	.word	4
	.word	_Label_1611
	.word	-40
	.word	4
	.word	_Label_1612
	.word	-44
	.word	4
	.word	_Label_1613
	.word	-48
	.word	4
	.word	_Label_1614
	.word	-52
	.word	4
	.word	_Label_1615
	.word	-56
	.word	4
	.word	_Label_1616
	.word	-60
	.word	4
	.word	_Label_1617
	.word	-64
	.word	4
	.word	_Label_1618
	.word	-68
	.word	4
	.word	_Label_1619
	.word	-72
	.word	4
	.word	_Label_1620
	.word	-76
	.word	4
	.word	_Label_1621
	.word	-80
	.word	4
	.word	_Label_1622
	.word	-84
	.word	4
	.word	_Label_1623
	.word	-88
	.word	4
	.word	_Label_1624
	.word	-92
	.word	4
	.word	_Label_1625
	.word	-96
	.word	4
	.word	_Label_1626
	.word	-100
	.word	4
	.word	_Label_1627
	.word	-104
	.word	4
	.word	_Label_1628
	.word	-108
	.word	4
	.word	_Label_1629
	.word	-112
	.word	4
	.word	_Label_1630
	.word	-116
	.word	4
	.word	_Label_1631
	.word	-120
	.word	4
	.word	_Label_1632
	.word	-124
	.word	4
	.word	_Label_1633
	.word	-128
	.word	4
	.word	_Label_1634
	.word	-132
	.word	4
	.word	_Label_1635
	.word	-136
	.word	4
	.word	_Label_1636
	.word	-140
	.word	4
	.word	_Label_1637
	.word	-144
	.word	4
	.word	_Label_1638
	.word	-148
	.word	4
	.word	_Label_1639
	.word	-152
	.word	4
	.word	_Label_1640
	.word	-156
	.word	4
	.word	_Label_1641
	.word	-160
	.word	4
	.word	_Label_1642
	.word	-164
	.word	4
	.word	_Label_1643
	.word	-168
	.word	4
	.word	_Label_1644
	.word	-172
	.word	4
	.word	_Label_1645
	.word	-176
	.word	4
	.word	_Label_1646
	.word	-180
	.word	4
	.word	_Label_1647
	.word	-184
	.word	4
	.word	_Label_1648
	.word	-188
	.word	4
	.word	_Label_1649
	.word	-192
	.word	4
	.word	_Label_1650
	.word	-196
	.word	4
	.word	0
_Label_1602:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1579\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1649:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1651
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1651:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1652
	.word	_sourceFileName
	.word	198		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1652:
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
_Label_3814:
	push	r0
	sub	r1,1,r1
	bne	_Label_3814
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1653 = _StringConst_81
	set	_StringConst_81,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1653  sizeInBytes=4
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
!   _temp_1655 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1657 = &_temp_1656
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1657 = _temp_1657 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1659 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_3815:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3815
!   _temp_1659 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1661:
!   Data Move: *_temp_1657 = _temp_1659  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_3816:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3816
!   _temp_1657 = _temp_1657 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1658 = _temp_1658 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1658) then goto _Label_1661
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1661
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1662 = &_temp_1656
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3817
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3817:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1655 = *_temp_1662  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3818:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3818
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1663 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-188]
!   _temp_1664 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1664 [0 ] into _temp_1665
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
!   Prepare Argument: offset=12  value=_temp_1663  sizeInBytes=4
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
!   _temp_1666 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-176]
!   _temp_1667 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1667 [1 ] into _temp_1668
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
!   Prepare Argument: offset=12  value=_temp_1666  sizeInBytes=4
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
!   _temp_1669 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-164]
!   _temp_1670 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1670 [2 ] into _temp_1671
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
!   Prepare Argument: offset=12  value=_temp_1669  sizeInBytes=4
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
!   _temp_1672 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-152]
!   _temp_1673 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1673 [3 ] into _temp_1674
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
!   Prepare Argument: offset=12  value=_temp_1672  sizeInBytes=4
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
!   _temp_1675 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-140]
!   _temp_1676 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1676 [4 ] into _temp_1677
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
!   Prepare Argument: offset=12  value=_temp_1675  sizeInBytes=4
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
!   _temp_1678 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-128]
!   _temp_1679 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1679 [5 ] into _temp_1680
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
!   Prepare Argument: offset=12  value=_temp_1678  sizeInBytes=4
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
!   _temp_1681 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-116]
!   _temp_1682 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1682 [6 ] into _temp_1683
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
!   Prepare Argument: offset=12  value=_temp_1681  sizeInBytes=4
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
!   _temp_1684 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-104]
!   _temp_1685 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1685 [7 ] into _temp_1686
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
!   Prepare Argument: offset=12  value=_temp_1684  sizeInBytes=4
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
!   _temp_1687 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-92]
!   _temp_1688 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1688 [8 ] into _temp_1689
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
!   Prepare Argument: offset=12  value=_temp_1687  sizeInBytes=4
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
!   _temp_1690 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-80]
!   _temp_1691 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1691 [9 ] into _temp_1692
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
!   Prepare Argument: offset=12  value=_temp_1690  sizeInBytes=4
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
!   _temp_1697 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1698 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1697  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1693:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1698 then goto _Label_1696		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1696
_Label_1694:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1699 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1699 [index ] into _temp_1700
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
!   _temp_1701 = _temp_1700 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1701 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1703 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1703 [index ] into _temp_1704
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
!   _temp_1702 = _temp_1704		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1705 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1702  sizeInBytes=4
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
_Label_1695:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1693
! END FOR
_Label_1696:
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
!   _temp_1707 = &threadManagerLock
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
!   _temp_1709 = &aThreadBecameFree
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
!   _temp_1711 = &leadThread
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
	.word	_Label_1712
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1714
	.word	-12
	.word	4
	.word	_Label_1715
	.word	-16
	.word	4
	.word	_Label_1716
	.word	-20
	.word	4
	.word	_Label_1717
	.word	-24
	.word	4
	.word	_Label_1718
	.word	-28
	.word	4
	.word	_Label_1719
	.word	-32
	.word	4
	.word	_Label_1720
	.word	-36
	.word	4
	.word	_Label_1721
	.word	-40
	.word	4
	.word	_Label_1722
	.word	-44
	.word	4
	.word	_Label_1723
	.word	-48
	.word	4
	.word	_Label_1724
	.word	-52
	.word	4
	.word	_Label_1725
	.word	-56
	.word	4
	.word	_Label_1726
	.word	-60
	.word	4
	.word	_Label_1727
	.word	-64
	.word	4
	.word	_Label_1728
	.word	-68
	.word	4
	.word	_Label_1729
	.word	-72
	.word	4
	.word	_Label_1730
	.word	-76
	.word	4
	.word	_Label_1731
	.word	-80
	.word	4
	.word	_Label_1732
	.word	-84
	.word	4
	.word	_Label_1733
	.word	-88
	.word	4
	.word	_Label_1734
	.word	-92
	.word	4
	.word	_Label_1735
	.word	-96
	.word	4
	.word	_Label_1736
	.word	-100
	.word	4
	.word	_Label_1737
	.word	-104
	.word	4
	.word	_Label_1738
	.word	-108
	.word	4
	.word	_Label_1739
	.word	-112
	.word	4
	.word	_Label_1740
	.word	-116
	.word	4
	.word	_Label_1741
	.word	-120
	.word	4
	.word	_Label_1742
	.word	-124
	.word	4
	.word	_Label_1743
	.word	-128
	.word	4
	.word	_Label_1744
	.word	-132
	.word	4
	.word	_Label_1745
	.word	-136
	.word	4
	.word	_Label_1746
	.word	-140
	.word	4
	.word	_Label_1747
	.word	-144
	.word	4
	.word	_Label_1748
	.word	-148
	.word	4
	.word	_Label_1749
	.word	-152
	.word	4
	.word	_Label_1750
	.word	-156
	.word	4
	.word	_Label_1751
	.word	-160
	.word	4
	.word	_Label_1752
	.word	-164
	.word	4
	.word	_Label_1753
	.word	-168
	.word	4
	.word	_Label_1754
	.word	-172
	.word	4
	.word	_Label_1755
	.word	-176
	.word	4
	.word	_Label_1756
	.word	-180
	.word	4
	.word	_Label_1757
	.word	-184
	.word	4
	.word	_Label_1758
	.word	-188
	.word	4
	.word	_Label_1759
	.word	-192
	.word	4
	.word	_Label_1760
	.word	-196
	.word	4
	.word	_Label_1761
	.word	-4360
	.word	4164
	.word	_Label_1762
	.word	-4364
	.word	4
	.word	_Label_1763
	.word	-4368
	.word	4
	.word	_Label_1764
	.word	-46012
	.word	41644
	.word	_Label_1765
	.word	-46016
	.word	4
	.word	_Label_1766
	.word	-46020
	.word	4
	.word	_Label_1767
	.word	-46024
	.word	4
	.word	_Label_1768
	.word	-46028
	.word	4
	.word	0
_Label_1712:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1713:
	.ascii	"Pself\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1768:
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
_Label_3819:
	push	r0
	sub	r1,1,r1
	bne	_Label_3819
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
!   _temp_1769 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1769  sizeInBytes=4
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
!   _temp_1774 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1775 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1774  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1770:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1775 then goto _Label_1773		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1773
_Label_1771:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1776 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1776  sizeInBytes=4
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
!   _temp_1777 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1777  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1779 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1779 [i ] into _temp_1780
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
!   _temp_1778 = _temp_1780		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1772:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1770
! END FOR
_Label_1773:
! CALL STATEMENT...
!   _temp_1781 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1781  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1782 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1783 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1782  sizeInBytes=4
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
	.word	_Label_1784
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1786
	.word	-12
	.word	4
	.word	_Label_1787
	.word	-16
	.word	4
	.word	_Label_1788
	.word	-20
	.word	4
	.word	_Label_1789
	.word	-24
	.word	4
	.word	_Label_1790
	.word	-28
	.word	4
	.word	_Label_1791
	.word	-32
	.word	4
	.word	_Label_1792
	.word	-36
	.word	4
	.word	_Label_1793
	.word	-40
	.word	4
	.word	_Label_1794
	.word	-44
	.word	4
	.word	_Label_1795
	.word	-48
	.word	4
	.word	_Label_1796
	.word	-52
	.word	4
	.word	_Label_1797
	.word	-56
	.word	4
	.word	_Label_1798
	.word	-60
	.word	4
	.word	0
_Label_1784:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1785:
	.ascii	"Pself\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1797:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1798:
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
_Label_3820:
	push	r0
	sub	r1,1,r1
	bne	_Label_3820
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1799 = &threadManagerLock
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
_Label_1800:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1803 = &freeList
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
!   if result==true then goto _Label_1801 else goto _Label_1802
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1802
	jmp	_Label_1801
_Label_1801:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1804 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   _temp_1805 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1804  sizeInBytes=4
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
	jmp	_Label_1800
_Label_1802:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1806 = &freeList
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
!   _temp_1807 = threadToReturn + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1807 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1808 = &threadManagerLock
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
	.word	_Label_1809
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1811
	.word	-12
	.word	4
	.word	_Label_1812
	.word	-16
	.word	4
	.word	_Label_1813
	.word	-20
	.word	4
	.word	_Label_1814
	.word	-24
	.word	4
	.word	_Label_1815
	.word	-28
	.word	4
	.word	_Label_1816
	.word	-32
	.word	4
	.word	_Label_1817
	.word	-36
	.word	4
	.word	_Label_1818
	.word	-40
	.word	4
	.word	0
_Label_1809:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1810:
	.ascii	"Pself\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1807\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1818:
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
_Label_3821:
	push	r0
	sub	r1,1,r1
	bne	_Label_3821
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1819 = &threadManagerLock
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
!   if th == 0 then goto _Label_1821		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1821
!	jmp	_Label_1820
_Label_1820:
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
!   _temp_1822 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1822 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1823 = &freeList
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
!   _temp_1824 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1825 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1824  sizeInBytes=4
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
	jmp	_Label_1826
_Label_1821:
! ELSE...
	mov	794,r13		! source line 794
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1827 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1827  sizeInBytes=4
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
_Label_1826:
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1828 = &threadManagerLock
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
	.word	_Label_1829
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1830
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1831
	.word	12
	.word	4
	.word	_Label_1832
	.word	-12
	.word	4
	.word	_Label_1833
	.word	-16
	.word	4
	.word	_Label_1834
	.word	-20
	.word	4
	.word	_Label_1835
	.word	-24
	.word	4
	.word	_Label_1836
	.word	-28
	.word	4
	.word	_Label_1837
	.word	-32
	.word	4
	.word	_Label_1838
	.word	-36
	.word	4
	.word	0
_Label_1829:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1830:
	.ascii	"Pself\0"
	.align
_Label_1831:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1827\0"
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
	.ascii	"_temp_1819\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1839
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1839:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1840
	.word	_sourceFileName
	.word	220		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1840:
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
_Label_3822:
	push	r0
	sub	r1,1,r1
	bne	_Label_3822
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
_Label_3823:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3823
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_1842 = &addrSpace
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
!   _temp_1843 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1845 = &_temp_1844
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1845 = _temp_1845 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1847:
!   Data Move: *_temp_1845 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1845 = _temp_1845 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1846 = _temp_1846 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1846) then goto _Label_1847
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1847
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1848 = &_temp_1844
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3824
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3824:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1843 = *_temp_1848  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3825:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3825
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
	.word	_Label_1849
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1851
	.word	-12
	.word	4
	.word	_Label_1852
	.word	-16
	.word	4
	.word	_Label_1853
	.word	-20
	.word	4
	.word	_Label_1854
	.word	-64
	.word	44
	.word	_Label_1855
	.word	-68
	.word	4
	.word	_Label_1856
	.word	-72
	.word	4
	.word	_Label_1857
	.word	-76
	.word	4
	.word	0
_Label_1849:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1850:
	.ascii	"Pself\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1841\0"
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
_Label_3826:
	push	r0
	sub	r1,1,r1
	bne	_Label_3826
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1858) then goto _runtimeErrorNullPointer
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
!   _temp_1859 = &addrSpace
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
!   _temp_1860 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1860  sizeInBytes=4
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
	call	_function_203_ThreadPrintShort
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
	.word	_Label_1861
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1862
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1863
	.word	-12
	.word	4
	.word	_Label_1864
	.word	-16
	.word	4
	.word	_Label_1865
	.word	-20
	.word	4
	.word	0
_Label_1861:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1862:
	.ascii	"Pself\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1858\0"
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
_Label_3827:
	push	r0
	sub	r1,1,r1
	bne	_Label_3827
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1866 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1866  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1868 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1868  sizeInBytes=4
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
!   _temp_1869 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1869  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1871		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1871
!	jmp	_Label_1870
_Label_1870:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1872 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1872  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1873
_Label_1871:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1875		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1875
!	jmp	_Label_1874
_Label_1874:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1876 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1876  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1877
_Label_1875:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1879		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1879
!	jmp	_Label_1878
_Label_1878:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1880 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1880  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1881
_Label_1879:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1882 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1882  sizeInBytes=4
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
_Label_1881:
! END IF...
_Label_1877:
! END IF...
_Label_1873:
! CALL STATEMENT...
!   _temp_1883 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
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
!   _temp_1884 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
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
	.word	_Label_1885
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1887
	.word	-12
	.word	4
	.word	_Label_1888
	.word	-16
	.word	4
	.word	_Label_1889
	.word	-20
	.word	4
	.word	_Label_1890
	.word	-24
	.word	4
	.word	_Label_1891
	.word	-28
	.word	4
	.word	_Label_1892
	.word	-32
	.word	4
	.word	_Label_1893
	.word	-36
	.word	4
	.word	_Label_1894
	.word	-40
	.word	4
	.word	_Label_1895
	.word	-44
	.word	4
	.word	_Label_1896
	.word	-48
	.word	4
	.word	0
_Label_1885:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1886:
	.ascii	"Pself\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1882\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1897
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
_Label_1897:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1898
	.word	_sourceFileName
	.word	240		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1898:
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
_Label_3828:
	push	r0
	sub	r1,1,r1
	bne	_Label_3828
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
!   _temp_1900 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1936]
!   NEW ARRAY Constructor...
!   _temp_1902 = &_temp_1901
	add	r14,-1932,r1
	store	r1,[r14+-248]
!   _temp_1902 = _temp_1902 + 4
	load	[r14+-248],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1904 = zeros  (sizeInBytes=168)
	add	r14,-240,r4
	mov	42,r3
_Label_3829:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3829
!   _temp_1904 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-240]
	mov	10,r1
	store	r1,[r14+-244]
_Label_1906:
!   Data Move: *_temp_1902 = _temp_1904  (sizeInBytes=168)
	add	r14,-240,r5
	load	[r14+-248],r4
	mov	42,r3
_Label_3830:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3830
!   _temp_1902 = _temp_1902 + 168
	load	[r14+-248],r1
	add	r1,168,r1
	store	r1,[r14+-248]
!   _temp_1903 = _temp_1903 + -1
	load	[r14+-244],r1
	add	r1,-1,r1
	store	r1,[r14+-244]
!   if intNotZero (_temp_1903) then goto _Label_1906
	load	[r14+-244],r1
	cmp	r1,r0
	bne	_Label_1906
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1932]
!   _temp_1907 = &_temp_1901
	add	r14,-1932,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1936],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3831
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3831:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1900 = *_temp_1907  (sizeInBytes=1684)
	load	[r14+-68],r5
	load	[r14+-1936],r4
	mov	421,r3
_Label_3832:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3832
! FOR STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1912 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1913 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1912  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1944]
_Label_1908:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1913 then goto _Label_1911		
	load	[r14+-1944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1911
_Label_1909:
	mov	898,r13		! source line 898
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1914 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1914 [index ] into _temp_1915
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
!   _temp_1917 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1917 [index ] into _temp_1918
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
!   _temp_1916 = _temp_1918		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1919 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1916  sizeInBytes=4
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
_Label_1910:
!   index = index + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_1908
! END FOR
_Label_1911:
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
!   _temp_1921 = &processManagerLock
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
!   _temp_1923 = &aProcessBecameFree
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
!   _temp_1925 = &aProcessDied
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
	.word	_Label_1926
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_1927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1928
	.word	-12
	.word	4
	.word	_Label_1929
	.word	-16
	.word	4
	.word	_Label_1930
	.word	-20
	.word	4
	.word	_Label_1931
	.word	-24
	.word	4
	.word	_Label_1932
	.word	-28
	.word	4
	.word	_Label_1933
	.word	-32
	.word	4
	.word	_Label_1934
	.word	-36
	.word	4
	.word	_Label_1935
	.word	-40
	.word	4
	.word	_Label_1936
	.word	-44
	.word	4
	.word	_Label_1937
	.word	-48
	.word	4
	.word	_Label_1938
	.word	-52
	.word	4
	.word	_Label_1939
	.word	-56
	.word	4
	.word	_Label_1940
	.word	-60
	.word	4
	.word	_Label_1941
	.word	-64
	.word	4
	.word	_Label_1942
	.word	-68
	.word	4
	.word	_Label_1943
	.word	-72
	.word	4
	.word	_Label_1944
	.word	-240
	.word	168
	.word	_Label_1945
	.word	-244
	.word	4
	.word	_Label_1946
	.word	-248
	.word	4
	.word	_Label_1947
	.word	-1932
	.word	1684
	.word	_Label_1948
	.word	-1936
	.word	4
	.word	_Label_1949
	.word	-1940
	.word	4
	.word	_Label_1950
	.word	-1944
	.word	4
	.word	0
_Label_1926:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1927:
	.ascii	"Pself\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1922\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1921\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1950:
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
_Label_3833:
	push	r0
	sub	r1,1,r1
	bne	_Label_3833
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
!   _temp_1951 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1951  sizeInBytes=4
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
!   _temp_1956 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1957 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1956  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1952:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1957 then goto _Label_1955		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1955
_Label_1953:
	mov	924,r13		! source line 924
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1958 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1958  sizeInBytes=4
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
!   _temp_1959 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1959  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1960 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1960 [i ] into _temp_1961
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
_Label_1954:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1952
! END FOR
_Label_1955:
! CALL STATEMENT...
!   _temp_1962 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1962  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1963 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1964 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1963  sizeInBytes=4
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
	.word	_Label_1965
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1967
	.word	-12
	.word	4
	.word	_Label_1968
	.word	-16
	.word	4
	.word	_Label_1969
	.word	-20
	.word	4
	.word	_Label_1970
	.word	-24
	.word	4
	.word	_Label_1971
	.word	-28
	.word	4
	.word	_Label_1972
	.word	-32
	.word	4
	.word	_Label_1973
	.word	-36
	.word	4
	.word	_Label_1974
	.word	-40
	.word	4
	.word	_Label_1975
	.word	-44
	.word	4
	.word	_Label_1976
	.word	-48
	.word	4
	.word	_Label_1977
	.word	-52
	.word	4
	.word	_Label_1978
	.word	-56
	.word	4
	.word	0
_Label_1965:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1966:
	.ascii	"Pself\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1977:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1978:
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
_Label_3834:
	push	r0
	sub	r1,1,r1
	bne	_Label_3834
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
!   _temp_1979 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1979  sizeInBytes=4
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
!   _temp_1984 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1985 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1984  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1980:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1985 then goto _Label_1983		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1983
_Label_1981:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1986 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
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
!   _temp_1987 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1987 [i ] into _temp_1988
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
_Label_1982:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1980
! END FOR
_Label_1983:
! CALL STATEMENT...
!   _temp_1989 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1989  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1990 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1991 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1990  sizeInBytes=4
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
	.word	_Label_1992
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1993
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1994
	.word	-12
	.word	4
	.word	_Label_1995
	.word	-16
	.word	4
	.word	_Label_1996
	.word	-20
	.word	4
	.word	_Label_1997
	.word	-24
	.word	4
	.word	_Label_1998
	.word	-28
	.word	4
	.word	_Label_1999
	.word	-32
	.word	4
	.word	_Label_2000
	.word	-36
	.word	4
	.word	_Label_2001
	.word	-40
	.word	4
	.word	_Label_2002
	.word	-44
	.word	4
	.word	_Label_2003
	.word	-48
	.word	4
	.word	_Label_2004
	.word	-52
	.word	4
	.word	0
_Label_1992:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1993:
	.ascii	"Pself\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2003:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2004:
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
_Label_3835:
	push	r0
	sub	r1,1,r1
	bne	_Label_3835
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_2005 = &processManagerLock
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
_Label_2006:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_2009 = &freeList
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
!   if result==true then goto _Label_2007 else goto _Label_2008
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2008
	jmp	_Label_2007
_Label_2007:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_2010 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_2011 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2010  sizeInBytes=4
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
	jmp	_Label_2006
_Label_2008:
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
!   _temp_2012 = &freeList
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
!   _temp_2013 = processToReturn + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2013 = 1  (sizeInBytes=4)
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
!   _temp_2014 = processToReturn + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2014 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_2015 = &processManagerLock
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
	.word	_Label_2016
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2017
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2018
	.word	-12
	.word	4
	.word	_Label_2019
	.word	-16
	.word	4
	.word	_Label_2020
	.word	-20
	.word	4
	.word	_Label_2021
	.word	-24
	.word	4
	.word	_Label_2022
	.word	-28
	.word	4
	.word	_Label_2023
	.word	-32
	.word	4
	.word	_Label_2024
	.word	-36
	.word	4
	.word	_Label_2025
	.word	-40
	.word	4
	.word	_Label_2026
	.word	-44
	.word	4
	.word	0
_Label_2016:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_2017:
	.ascii	"Pself\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2009\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2026:
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
_Label_3836:
	push	r0
	sub	r1,1,r1
	bne	_Label_3836
	mov	991,r13		! source line 991
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2027 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2027  sizeInBytes=4
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
!   _temp_2028 = &processManagerLock
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
!   _temp_2029 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2029 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2030 = &freeList
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
!   _temp_2031 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2032 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2031  sizeInBytes=4
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
!   _temp_2033 = &processManagerLock
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
	.word	_Label_2034
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2035
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2036
	.word	12
	.word	4
	.word	_Label_2037
	.word	-12
	.word	4
	.word	_Label_2038
	.word	-16
	.word	4
	.word	_Label_2039
	.word	-20
	.word	4
	.word	_Label_2040
	.word	-24
	.word	4
	.word	_Label_2041
	.word	-28
	.word	4
	.word	_Label_2042
	.word	-32
	.word	4
	.word	_Label_2043
	.word	-36
	.word	4
	.word	0
_Label_2034:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2035:
	.ascii	"Pself\0"
	.align
_Label_2036:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2027\0"
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
_Label_3837:
	push	r0
	sub	r1,1,r1
	bne	_Label_3837
	mov	1010,r13		! source line 1010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_2044 = &processManagerLock
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
!   _temp_2049 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2050 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2049  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-152]
_Label_2045:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2050 then goto _Label_2048		
	load	[r14+-152],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2048
_Label_2046:
	mov	1035,r13		! source line 1035
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   _temp_2051 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2051 [i ] into _temp_2052
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
!   child = _temp_2052		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2057 = child + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: _temp_2056 = *_temp_2057  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2059 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_2058 = *_temp_2059  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_2056 != _temp_2058 then goto _Label_2054		(int)
	load	[r14+-128],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2054
!	jmp	_Label_2055
_Label_2055:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2061 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2060 = *_temp_2061  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2060 != 2 then goto _Label_2054		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2054
!	jmp	_Label_2053
_Label_2053:
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
!   _temp_2062 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_2062 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2063 = &freeList
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
!   _temp_2064 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-96]
!   _temp_2065 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_2064  sizeInBytes=4
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
_Label_2054:
!   Increment the FOR-LOOP index variable and jump back
_Label_2047:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_2045
! END FOR
_Label_2048:
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
!   _temp_2070 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2071 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2070  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-152]
_Label_2066:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2071 then goto _Label_2069		
	load	[r14+-152],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2069
_Label_2067:
	mov	1046,r13		! source line 1046
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
!   _temp_2075 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_2075 [i ] into _temp_2076
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
!   _temp_2077 = _temp_2076 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2074 = *_temp_2077  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2079 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_2078 = *_temp_2079  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_2074 != _temp_2078 then goto _Label_2073		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_2073
!	jmp	_Label_2072
_Label_2072:
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   _temp_2080 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2080 [i ] into _temp_2081
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
!   parent = _temp_2081		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-160]
! END IF...
_Label_2073:
!   Increment the FOR-LOOP index variable and jump back
_Label_2068:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_2066
! END FOR
_Label_2069:
! IF STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0IF",r10
!   if parent == 0 then goto _Label_2083		(int)
	load	[r14+-160],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2083
!	jmp	_Label_2084
_Label_2084:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2086 = parent + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2085 = *_temp_2086  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2085 != 1 then goto _Label_2083		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2083
!	jmp	_Label_2082
_Label_2082:
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
!   _temp_2087 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_2087 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_2088 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_2089 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2088  sizeInBytes=4
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
	jmp	_Label_2090
_Label_2083:
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
!   _temp_2091 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2091 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_2092 = &freeList
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
!   _temp_2093 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2094 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2093  sizeInBytes=4
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
_Label_2090:
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_2095 = &processManagerLock
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
	.word	_Label_2096
	.word	8		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_2097
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2098
	.word	12
	.word	4
	.word	_Label_2099
	.word	-12
	.word	4
	.word	_Label_2100
	.word	-16
	.word	4
	.word	_Label_2101
	.word	-20
	.word	4
	.word	_Label_2102
	.word	-24
	.word	4
	.word	_Label_2103
	.word	-28
	.word	4
	.word	_Label_2104
	.word	-32
	.word	4
	.word	_Label_2105
	.word	-36
	.word	4
	.word	_Label_2106
	.word	-40
	.word	4
	.word	_Label_2107
	.word	-44
	.word	4
	.word	_Label_2108
	.word	-48
	.word	4
	.word	_Label_2109
	.word	-52
	.word	4
	.word	_Label_2110
	.word	-56
	.word	4
	.word	_Label_2111
	.word	-60
	.word	4
	.word	_Label_2112
	.word	-64
	.word	4
	.word	_Label_2113
	.word	-68
	.word	4
	.word	_Label_2114
	.word	-72
	.word	4
	.word	_Label_2115
	.word	-76
	.word	4
	.word	_Label_2116
	.word	-80
	.word	4
	.word	_Label_2117
	.word	-84
	.word	4
	.word	_Label_2118
	.word	-88
	.word	4
	.word	_Label_2119
	.word	-92
	.word	4
	.word	_Label_2120
	.word	-96
	.word	4
	.word	_Label_2121
	.word	-100
	.word	4
	.word	_Label_2122
	.word	-104
	.word	4
	.word	_Label_2123
	.word	-108
	.word	4
	.word	_Label_2124
	.word	-112
	.word	4
	.word	_Label_2125
	.word	-116
	.word	4
	.word	_Label_2126
	.word	-120
	.word	4
	.word	_Label_2127
	.word	-124
	.word	4
	.word	_Label_2128
	.word	-128
	.word	4
	.word	_Label_2129
	.word	-132
	.word	4
	.word	_Label_2130
	.word	-136
	.word	4
	.word	_Label_2131
	.word	-140
	.word	4
	.word	_Label_2132
	.word	-144
	.word	4
	.word	_Label_2133
	.word	-148
	.word	4
	.word	_Label_2134
	.word	-152
	.word	4
	.word	_Label_2135
	.word	-156
	.word	4
	.word	_Label_2136
	.word	-160
	.word	4
	.word	0
_Label_2096:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2097:
	.ascii	"Pself\0"
	.align
_Label_2098:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2086\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2085\0"
	.align
_Label_2109:
	.byte	'?'
	.ascii	"_temp_2081\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2111:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2070\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2120:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2121:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2122:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2134:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2135:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_2136:
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
_Label_3838:
	push	r0
	sub	r1,1,r1
	bne	_Label_3838
	mov	1068,r13		! source line 1068
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_2137 = &processManagerLock
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
_Label_2138:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2142 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2141 = *_temp_2142  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2141 == 2 then goto _Label_2140		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2140
!	jmp	_Label_2139
_Label_2139:
	mov	1078,r13		! source line 1078
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_2143 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2144 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2143  sizeInBytes=4
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
	jmp	_Label_2138
_Label_2140:
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2145 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatusToReturn = *_temp_2145  (sizeInBytes=4)
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
!   _temp_2146 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2146 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_2147 = &freeList
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
!   _temp_2148 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2149 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2148  sizeInBytes=4
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
!   _temp_2150 = &processManagerLock
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
	.word	_Label_2151
	.word	8		! total size of parameters
	.word	56		! frame size = 56
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
	.word	_Label_2158
	.word	-28
	.word	4
	.word	_Label_2159
	.word	-32
	.word	4
	.word	_Label_2160
	.word	-36
	.word	4
	.word	_Label_2161
	.word	-40
	.word	4
	.word	_Label_2162
	.word	-44
	.word	4
	.word	_Label_2163
	.word	-48
	.word	4
	.word	_Label_2164
	.word	-52
	.word	4
	.word	_Label_2165
	.word	-56
	.word	4
	.word	0
_Label_2151:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2152:
	.ascii	"Pself\0"
	.align
_Label_2153:
	.byte	'P'
	.ascii	"proc\0"
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
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2165:
	.byte	'I'
	.ascii	"exitStatusToReturn\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2166
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2166:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2167
	.word	_sourceFileName
	.word	263		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2167:
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
_Label_3839:
	push	r0
	sub	r1,1,r1
	bne	_Label_3839
	mov	1224,r13		! source line 1224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2168 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2168  sizeInBytes=4
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
!   _temp_2170 = &framesInUse
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
!   _temp_2172 = &frameManagerLock
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
!   _temp_2174 = &newFramesAvailable
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
!   _temp_2179 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2180 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2179  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2175:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2180 then goto _Label_2178		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2178
_Label_2176:
	mov	1243,r13		! source line 1243
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2183 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2183) then goto _Label_2182
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2182
!	jmp	_Label_2181
_Label_2181:
! THEN...
	mov	1247,r13		! source line 1247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2184 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2184  sizeInBytes=4
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
_Label_2182:
!   Increment the FOR-LOOP index variable and jump back
_Label_2177:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2175
! END FOR
_Label_2178:
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
	.word	_Label_2185
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2187
	.word	-12
	.word	4
	.word	_Label_2188
	.word	-16
	.word	4
	.word	_Label_2189
	.word	-20
	.word	4
	.word	_Label_2190
	.word	-24
	.word	4
	.word	_Label_2191
	.word	-28
	.word	4
	.word	_Label_2192
	.word	-32
	.word	4
	.word	_Label_2193
	.word	-36
	.word	4
	.word	_Label_2194
	.word	-40
	.word	4
	.word	_Label_2195
	.word	-44
	.word	4
	.word	_Label_2196
	.word	-48
	.word	4
	.word	_Label_2197
	.word	-52
	.word	4
	.word	_Label_2198
	.word	-56
	.word	4
	.word	0
_Label_2185:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2186:
	.ascii	"Pself\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2198:
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
_Label_3840:
	push	r0
	sub	r1,1,r1
	bne	_Label_3840
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_2199 = &frameManagerLock
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
!   _temp_2200 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2200  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2201 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2201  sizeInBytes=4
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
!   _temp_2202 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2202  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   _temp_2203 = &framesInUse
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
!   _temp_2204 = &frameManagerLock
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
	.word	_Label_2205
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2206
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2207
	.word	-12
	.word	4
	.word	_Label_2208
	.word	-16
	.word	4
	.word	_Label_2209
	.word	-20
	.word	4
	.word	_Label_2210
	.word	-24
	.word	4
	.word	_Label_2211
	.word	-28
	.word	4
	.word	_Label_2212
	.word	-32
	.word	4
	.word	0
_Label_2205:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2206:
	.ascii	"Pself\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2199\0"
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
_Label_3841:
	push	r0
	sub	r1,1,r1
	bne	_Label_3841
	mov	1268,r13		! source line 1268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
!   _temp_2213 = &frameManagerLock
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
_Label_2214:
!   if numberFreeFrames >= 1 then goto _Label_2216		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2216
!	jmp	_Label_2215
_Label_2215:
	mov	1279,r13		! source line 1279
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_2217 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2218 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2217  sizeInBytes=4
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
	jmp	_Label_2214
_Label_2216:
! ASSIGNMENT STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0AS",r10
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
!   _temp_2219 = &framesInUse
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
!   _temp_2220 = &frameManagerLock
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
!   _temp_2221 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2221		(int)
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
	.word	_Label_2222
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2223
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2224
	.word	-12
	.word	4
	.word	_Label_2225
	.word	-16
	.word	4
	.word	_Label_2226
	.word	-20
	.word	4
	.word	_Label_2227
	.word	-24
	.word	4
	.word	_Label_2228
	.word	-28
	.word	4
	.word	_Label_2229
	.word	-32
	.word	4
	.word	_Label_2230
	.word	-36
	.word	4
	.word	_Label_2231
	.word	-40
	.word	4
	.word	0
_Label_2222:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2223:
	.ascii	"Pself\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2230:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2231:
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
_Label_3842:
	push	r0
	sub	r1,1,r1
	bne	_Label_3842
	mov	1298,r13		! source line 1298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0SE",r10
!   _temp_2232 = &frameManagerLock
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
_Label_2233:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2235		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2235
!	jmp	_Label_2234
_Label_2234:
	mov	1310,r13		! source line 1310
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_2236 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_2237 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2236  sizeInBytes=4
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
	jmp	_Label_2233
_Label_2235:
! FOR STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2242 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2243 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_2242  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_2238:
!   Perform the FOR-LOOP termination test
!   if index > _temp_2243 then goto _Label_2241		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2241
_Label_2239:
	mov	1317,r13		! source line 1317
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
	mov	1318,r13		! source line 1318
	mov	"\0\0SE",r10
!   _temp_2244 = &framesInUse
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
!   _temp_2245 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_2245		(int)
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
_Label_2240:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2238
! END FOR
_Label_2241:
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
!   _temp_2246 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2249 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2248 = *_temp_2249  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2247 = _temp_2248 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_2246 = _temp_2247  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_2250 = &frameManagerLock
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
	.word	_Label_2251
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2252
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2253
	.word	12
	.word	4
	.word	_Label_2254
	.word	16
	.word	4
	.word	_Label_2255
	.word	-12
	.word	4
	.word	_Label_2256
	.word	-16
	.word	4
	.word	_Label_2257
	.word	-20
	.word	4
	.word	_Label_2258
	.word	-24
	.word	4
	.word	_Label_2259
	.word	-28
	.word	4
	.word	_Label_2260
	.word	-32
	.word	4
	.word	_Label_2261
	.word	-36
	.word	4
	.word	_Label_2262
	.word	-40
	.word	4
	.word	_Label_2263
	.word	-44
	.word	4
	.word	_Label_2264
	.word	-48
	.word	4
	.word	_Label_2265
	.word	-52
	.word	4
	.word	_Label_2266
	.word	-56
	.word	4
	.word	_Label_2267
	.word	-60
	.word	4
	.word	_Label_2268
	.word	-64
	.word	4
	.word	_Label_2269
	.word	-68
	.word	4
	.word	0
_Label_2251:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2252:
	.ascii	"Pself\0"
	.align
_Label_2253:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2254:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2267:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_2268:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2269:
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
_Label_3843:
	push	r0
	sub	r1,1,r1
	bne	_Label_3843
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
!   _temp_2270 = &frameManagerLock
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
!   _temp_2271 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_2271  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2276 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2277 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_2276  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_2272:
!   Perform the FOR-LOOP termination test
!   if index > _temp_2277 then goto _Label_2275		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2275
_Label_2273:
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
!   _temp_2278 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_2278 div 8192		(int)
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
!   _temp_2279 = &framesInUse
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
_Label_2274:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2272
! END FOR
_Label_2275:
! SEND STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_2280 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_2281 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2280  sizeInBytes=4
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
!   _temp_2282 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2285 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2284 = *_temp_2285  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2283 = _temp_2284 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_2282 = _temp_2283  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
!   _temp_2286 = &frameManagerLock
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
	.word	_Label_2287
	.word	8		! total size of parameters
	.word	76		! frame size = 76
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
	.word	_Label_2296
	.word	-36
	.word	4
	.word	_Label_2297
	.word	-40
	.word	4
	.word	_Label_2298
	.word	-44
	.word	4
	.word	_Label_2299
	.word	-48
	.word	4
	.word	_Label_2300
	.word	-52
	.word	4
	.word	_Label_2301
	.word	-56
	.word	4
	.word	_Label_2302
	.word	-60
	.word	4
	.word	_Label_2303
	.word	-64
	.word	4
	.word	_Label_2304
	.word	-68
	.word	4
	.word	_Label_2305
	.word	-72
	.word	4
	.word	_Label_2306
	.word	-76
	.word	4
	.word	0
_Label_2287:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2288:
	.ascii	"Pself\0"
	.align
_Label_2289:
	.byte	'P'
	.ascii	"aPageTable\0"
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
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2303:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_2304:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_2305:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2306:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2307
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
_Label_2307:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2308
	.word	_sourceFileName
	.word	282		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2308:
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
_Label_3844:
	push	r0
	sub	r1,1,r1
	bne	_Label_3844
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
!   _temp_2309 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2311 = &_temp_2310
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2311 = _temp_2311 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2313:
!   Data Move: *_temp_2311 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2311 = _temp_2311 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2312 = _temp_2312 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2312) then goto _Label_2313
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2313
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2314 = &_temp_2310
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3845
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3845:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2309 = *_temp_2314  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3846:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3846
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
	.word	_Label_2315
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2316
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2317
	.word	-12
	.word	4
	.word	_Label_2318
	.word	-16
	.word	4
	.word	_Label_2319
	.word	-20
	.word	4
	.word	_Label_2320
	.word	-104
	.word	84
	.word	_Label_2321
	.word	-108
	.word	4
	.word	0
_Label_2315:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2316:
	.ascii	"Pself\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2309\0"
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
_Label_3847:
	push	r0
	sub	r1,1,r1
	bne	_Label_3847
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2322 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2322  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2323 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2323  sizeInBytes=4
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
!   _temp_2328 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2329 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2328  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2324:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2329 then goto _Label_2327		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2327
_Label_2325:
	mov	1395,r13		! source line 1395
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2330 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2330  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2332 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2332 [i ] into _temp_2333
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
!   _temp_2331 = _temp_2333		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2334 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2334  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2336 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2336 [i ] into _temp_2337
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
!   Data Move: _temp_2335 = *_temp_2337  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2335  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2338 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2339 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2339  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1401,r13		! source line 1401
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2340 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2340  sizeInBytes=4
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
!   if intIsZero (_temp_2342) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2341  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1403,r13		! source line 1403
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2343 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2343  sizeInBytes=4
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
!   if intIsZero (_temp_2347) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2346  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2346) then goto _Label_2345
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2345
!	jmp	_Label_2344
_Label_2344:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2349) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2348  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2348  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2350
_Label_2345:
! ELSE...
	mov	1408,r13		! source line 1408
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2351 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2351  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2350:
! CALL STATEMENT...
!   _temp_2352 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2352  sizeInBytes=4
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
!   if intIsZero (_temp_2355) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2353 else goto _Label_2354
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2354
	jmp	_Label_2353
_Label_2353:
! THEN...
	mov	1412,r13		! source line 1412
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2356 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2356  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2357
_Label_2354:
! ELSE...
	mov	1414,r13		! source line 1414
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2358 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2358  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2357:
! CALL STATEMENT...
!   _temp_2359 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2359  sizeInBytes=4
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
!   if intIsZero (_temp_2362) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2360 else goto _Label_2361
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2361
	jmp	_Label_2360
_Label_2360:
! THEN...
	mov	1418,r13		! source line 1418
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2363 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2363  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2364
_Label_2361:
! ELSE...
	mov	1420,r13		! source line 1420
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2365 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2365  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2364:
! CALL STATEMENT...
!   _temp_2366 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2366  sizeInBytes=4
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
!   if intIsZero (_temp_2369) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2367 else goto _Label_2368
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2368
	jmp	_Label_2367
_Label_2367:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2370 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2371
_Label_2368:
! ELSE...
	mov	1426,r13		! source line 1426
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2372 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2372  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2371:
! CALL STATEMENT...
!   _temp_2373 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2373  sizeInBytes=4
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
!   if intIsZero (_temp_2376) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2374 else goto _Label_2375
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2375
	jmp	_Label_2374
_Label_2374:
! THEN...
	mov	1430,r13		! source line 1430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2377 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2377  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2378
_Label_2375:
! ELSE...
	mov	1432,r13		! source line 1432
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2379 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2379  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1432,r13		! source line 1432
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2378:
! CALL STATEMENT...
!   Call the function
	mov	1434,r13		! source line 1434
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2326:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2324
! END FOR
_Label_2327:
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
	.word	_Label_2380
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2381
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2382
	.word	-12
	.word	4
	.word	_Label_2383
	.word	-16
	.word	4
	.word	_Label_2384
	.word	-20
	.word	4
	.word	_Label_2385
	.word	-24
	.word	4
	.word	_Label_2386
	.word	-28
	.word	4
	.word	_Label_2387
	.word	-32
	.word	4
	.word	_Label_2388
	.word	-36
	.word	4
	.word	_Label_2389
	.word	-40
	.word	4
	.word	_Label_2390
	.word	-44
	.word	4
	.word	_Label_2391
	.word	-48
	.word	4
	.word	_Label_2392
	.word	-52
	.word	4
	.word	_Label_2393
	.word	-56
	.word	4
	.word	_Label_2394
	.word	-60
	.word	4
	.word	_Label_2395
	.word	-64
	.word	4
	.word	_Label_2396
	.word	-68
	.word	4
	.word	_Label_2397
	.word	-72
	.word	4
	.word	_Label_2398
	.word	-76
	.word	4
	.word	_Label_2399
	.word	-80
	.word	4
	.word	_Label_2400
	.word	-84
	.word	4
	.word	_Label_2401
	.word	-88
	.word	4
	.word	_Label_2402
	.word	-92
	.word	4
	.word	_Label_2403
	.word	-96
	.word	4
	.word	_Label_2404
	.word	-100
	.word	4
	.word	_Label_2405
	.word	-104
	.word	4
	.word	_Label_2406
	.word	-108
	.word	4
	.word	_Label_2407
	.word	-112
	.word	4
	.word	_Label_2408
	.word	-116
	.word	4
	.word	_Label_2409
	.word	-120
	.word	4
	.word	_Label_2410
	.word	-124
	.word	4
	.word	_Label_2411
	.word	-128
	.word	4
	.word	_Label_2412
	.word	-132
	.word	4
	.word	_Label_2413
	.word	-136
	.word	4
	.word	_Label_2414
	.word	-140
	.word	4
	.word	_Label_2415
	.word	-144
	.word	4
	.word	_Label_2416
	.word	-148
	.word	4
	.word	_Label_2417
	.word	-152
	.word	4
	.word	_Label_2418
	.word	-156
	.word	4
	.word	_Label_2419
	.word	-160
	.word	4
	.word	_Label_2420
	.word	-164
	.word	4
	.word	_Label_2421
	.word	-168
	.word	4
	.word	0
_Label_2380:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2381:
	.ascii	"Pself\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2376\0"
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
	.ascii	"_temp_2370\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2421:
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
_Label_3848:
	push	r0
	sub	r1,1,r1
	bne	_Label_3848
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0RE",r10
!   _temp_2424 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2424 [entry ] into _temp_2425
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
!   Data Move: _temp_2423 = *_temp_2425  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2422 = _temp_2423 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2422  (sizeInBytes=4)
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
	.word	_Label_2426
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2427
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2428
	.word	12
	.word	4
	.word	_Label_2429
	.word	-12
	.word	4
	.word	_Label_2430
	.word	-16
	.word	4
	.word	_Label_2431
	.word	-20
	.word	4
	.word	_Label_2432
	.word	-24
	.word	4
	.word	0
_Label_2426:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2427:
	.ascii	"Pself\0"
	.align
_Label_2428:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2422\0"
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
_Label_3849:
	push	r0
	sub	r1,1,r1
	bne	_Label_3849
	mov	1450,r13		! source line 1450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0RE",r10
!   _temp_2435 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2435 [entry ] into _temp_2436
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
!   Data Move: _temp_2434 = *_temp_2436  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2433 = _temp_2434 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2433  (sizeInBytes=4)
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
	.word	_Label_2437
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2439
	.word	12
	.word	4
	.word	_Label_2440
	.word	-12
	.word	4
	.word	_Label_2441
	.word	-16
	.word	4
	.word	_Label_2442
	.word	-20
	.word	4
	.word	_Label_2443
	.word	-24
	.word	4
	.word	0
_Label_2437:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2438:
	.ascii	"Pself\0"
	.align
_Label_2439:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2433\0"
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
_Label_3850:
	push	r0
	sub	r1,1,r1
	bne	_Label_3850
	mov	1459,r13		! source line 1459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   _temp_2444 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2444 [entry ] into _temp_2445
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
!   _temp_2449 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2449 [entry ] into _temp_2450
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
!   Data Move: _temp_2448 = *_temp_2450  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2447 = _temp_2448 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2446 = _temp_2447 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2445 = _temp_2446  (sizeInBytes=4)
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
	.word	_Label_2451
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2453
	.word	12
	.word	4
	.word	_Label_2454
	.word	16
	.word	4
	.word	_Label_2455
	.word	-12
	.word	4
	.word	_Label_2456
	.word	-16
	.word	4
	.word	_Label_2457
	.word	-20
	.word	4
	.word	_Label_2458
	.word	-24
	.word	4
	.word	_Label_2459
	.word	-28
	.word	4
	.word	_Label_2460
	.word	-32
	.word	4
	.word	_Label_2461
	.word	-36
	.word	4
	.word	0
_Label_2451:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2452:
	.ascii	"Pself\0"
	.align
_Label_2453:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2454:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2444\0"
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
_Label_3851:
	push	r0
	sub	r1,1,r1
	bne	_Label_3851
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   _temp_2465 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2465 [entry ] into _temp_2466
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
!   Data Move: _temp_2464 = *_temp_2466  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2463 = _temp_2464 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2463) then goto _Label_2467
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2467
!   _temp_2462 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2468
_Label_2467:
!   _temp_2462 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2468:
!   ReturnResult: _temp_2462  (sizeInBytes=1)
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
	.word	_Label_2469
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2470
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2471
	.word	12
	.word	4
	.word	_Label_2472
	.word	-16
	.word	4
	.word	_Label_2473
	.word	-20
	.word	4
	.word	_Label_2474
	.word	-24
	.word	4
	.word	_Label_2475
	.word	-28
	.word	4
	.word	_Label_2476
	.word	-9
	.word	1
	.word	0
_Label_2469:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2470:
	.ascii	"Pself\0"
	.align
_Label_2471:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2476:
	.byte	'C'
	.ascii	"_temp_2462\0"
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
_Label_3852:
	push	r0
	sub	r1,1,r1
	bne	_Label_3852
	mov	1478,r13		! source line 1478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   _temp_2480 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2480 [entry ] into _temp_2481
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
!   Data Move: _temp_2479 = *_temp_2481  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2478 = _temp_2479 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2478) then goto _Label_2482
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2482
!   _temp_2477 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2483
_Label_2482:
!   _temp_2477 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2483:
!   ReturnResult: _temp_2477  (sizeInBytes=1)
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
	.word	_Label_2484
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2485
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2486
	.word	12
	.word	4
	.word	_Label_2487
	.word	-16
	.word	4
	.word	_Label_2488
	.word	-20
	.word	4
	.word	_Label_2489
	.word	-24
	.word	4
	.word	_Label_2490
	.word	-28
	.word	4
	.word	_Label_2491
	.word	-9
	.word	1
	.word	0
_Label_2484:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2485:
	.ascii	"Pself\0"
	.align
_Label_2486:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2491:
	.byte	'C'
	.ascii	"_temp_2477\0"
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
_Label_3853:
	push	r0
	sub	r1,1,r1
	bne	_Label_3853
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
!   _temp_2495 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2495 [entry ] into _temp_2496
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
!   Data Move: _temp_2494 = *_temp_2496  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2493 = _temp_2494 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2493) then goto _Label_2497
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2497
!   _temp_2492 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2498
_Label_2497:
!   _temp_2492 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2498:
!   ReturnResult: _temp_2492  (sizeInBytes=1)
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
	.word	_Label_2499
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2500
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2501
	.word	12
	.word	4
	.word	_Label_2502
	.word	-16
	.word	4
	.word	_Label_2503
	.word	-20
	.word	4
	.word	_Label_2504
	.word	-24
	.word	4
	.word	_Label_2505
	.word	-28
	.word	4
	.word	_Label_2506
	.word	-9
	.word	1
	.word	0
_Label_2499:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2500:
	.ascii	"Pself\0"
	.align
_Label_2501:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2506:
	.byte	'C'
	.ascii	"_temp_2492\0"
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
_Label_3854:
	push	r0
	sub	r1,1,r1
	bne	_Label_3854
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   _temp_2510 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2510 [entry ] into _temp_2511
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
!   Data Move: _temp_2509 = *_temp_2511  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2508 = _temp_2509 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2508) then goto _Label_2512
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2512
!   _temp_2507 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2513
_Label_2512:
!   _temp_2507 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2513:
!   ReturnResult: _temp_2507  (sizeInBytes=1)
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
	.word	_Label_2514
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2515
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2516
	.word	12
	.word	4
	.word	_Label_2517
	.word	-16
	.word	4
	.word	_Label_2518
	.word	-20
	.word	4
	.word	_Label_2519
	.word	-24
	.word	4
	.word	_Label_2520
	.word	-28
	.word	4
	.word	_Label_2521
	.word	-9
	.word	1
	.word	0
_Label_2514:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2515:
	.ascii	"Pself\0"
	.align
_Label_2516:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2521:
	.byte	'C'
	.ascii	"_temp_2507\0"
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
_Label_3855:
	push	r0
	sub	r1,1,r1
	bne	_Label_3855
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   _temp_2522 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2522 [entry ] into _temp_2523
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
!   _temp_2526 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2526 [entry ] into _temp_2527
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
!   Data Move: _temp_2525 = *_temp_2527  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2524 = _temp_2525 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2523 = _temp_2524  (sizeInBytes=4)
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
	.word	_Label_2528
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2529
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2530
	.word	12
	.word	4
	.word	_Label_2531
	.word	-12
	.word	4
	.word	_Label_2532
	.word	-16
	.word	4
	.word	_Label_2533
	.word	-20
	.word	4
	.word	_Label_2534
	.word	-24
	.word	4
	.word	_Label_2535
	.word	-28
	.word	4
	.word	_Label_2536
	.word	-32
	.word	4
	.word	0
_Label_2528:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2529:
	.ascii	"Pself\0"
	.align
_Label_2530:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2522\0"
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
_Label_3856:
	push	r0
	sub	r1,1,r1
	bne	_Label_3856
	mov	1514,r13		! source line 1514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   _temp_2537 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2537 [entry ] into _temp_2538
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
!   _temp_2541 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2541 [entry ] into _temp_2542
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
!   Data Move: _temp_2540 = *_temp_2542  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2539 = _temp_2540 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2538 = _temp_2539  (sizeInBytes=4)
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
	.word	_Label_2543
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2545
	.word	12
	.word	4
	.word	_Label_2546
	.word	-12
	.word	4
	.word	_Label_2547
	.word	-16
	.word	4
	.word	_Label_2548
	.word	-20
	.word	4
	.word	_Label_2549
	.word	-24
	.word	4
	.word	_Label_2550
	.word	-28
	.word	4
	.word	_Label_2551
	.word	-32
	.word	4
	.word	0
_Label_2543:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2544:
	.ascii	"Pself\0"
	.align
_Label_2545:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2537\0"
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
_Label_3857:
	push	r0
	sub	r1,1,r1
	bne	_Label_3857
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _temp_2552 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2552 [entry ] into _temp_2553
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
!   _temp_2556 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2556 [entry ] into _temp_2557
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
!   Data Move: _temp_2555 = *_temp_2557  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2554 = _temp_2555 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2553 = _temp_2554  (sizeInBytes=4)
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
	.word	_Label_2558
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2559
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2560
	.word	12
	.word	4
	.word	_Label_2561
	.word	-12
	.word	4
	.word	_Label_2562
	.word	-16
	.word	4
	.word	_Label_2563
	.word	-20
	.word	4
	.word	_Label_2564
	.word	-24
	.word	4
	.word	_Label_2565
	.word	-28
	.word	4
	.word	_Label_2566
	.word	-32
	.word	4
	.word	0
_Label_2558:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2559:
	.ascii	"Pself\0"
	.align
_Label_2560:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2552\0"
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
_Label_3858:
	push	r0
	sub	r1,1,r1
	bne	_Label_3858
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _temp_2567 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2567 [entry ] into _temp_2568
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
!   _temp_2571 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2571 [entry ] into _temp_2572
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
!   Data Move: _temp_2570 = *_temp_2572  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2569 = _temp_2570 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2568 = _temp_2569  (sizeInBytes=4)
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
	.word	_Label_2573
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2574
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2575
	.word	12
	.word	4
	.word	_Label_2576
	.word	-12
	.word	4
	.word	_Label_2577
	.word	-16
	.word	4
	.word	_Label_2578
	.word	-20
	.word	4
	.word	_Label_2579
	.word	-24
	.word	4
	.word	_Label_2580
	.word	-28
	.word	4
	.word	_Label_2581
	.word	-32
	.word	4
	.word	0
_Label_2573:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2574:
	.ascii	"Pself\0"
	.align
_Label_2575:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2567\0"
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
_Label_3859:
	push	r0
	sub	r1,1,r1
	bne	_Label_3859
	mov	1541,r13		! source line 1541
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   _temp_2582 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2582 [entry ] into _temp_2583
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
!   _temp_2586 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2586 [entry ] into _temp_2587
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
!   Data Move: _temp_2585 = *_temp_2587  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2584 = _temp_2585 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2583 = _temp_2584  (sizeInBytes=4)
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
	.word	_Label_2588
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2589
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2590
	.word	12
	.word	4
	.word	_Label_2591
	.word	-12
	.word	4
	.word	_Label_2592
	.word	-16
	.word	4
	.word	_Label_2593
	.word	-20
	.word	4
	.word	_Label_2594
	.word	-24
	.word	4
	.word	_Label_2595
	.word	-28
	.word	4
	.word	_Label_2596
	.word	-32
	.word	4
	.word	0
_Label_2588:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2589:
	.ascii	"Pself\0"
	.align
_Label_2590:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2582\0"
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
_Label_3860:
	push	r0
	sub	r1,1,r1
	bne	_Label_3860
	mov	1550,r13		! source line 1550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   _temp_2597 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2597 [entry ] into _temp_2598
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
!   _temp_2601 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2601 [entry ] into _temp_2602
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
!   Data Move: _temp_2600 = *_temp_2602  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2599 = _temp_2600 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2598 = _temp_2599  (sizeInBytes=4)
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
	.word	_Label_2603
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2605
	.word	12
	.word	4
	.word	_Label_2606
	.word	-12
	.word	4
	.word	_Label_2607
	.word	-16
	.word	4
	.word	_Label_2608
	.word	-20
	.word	4
	.word	_Label_2609
	.word	-24
	.word	4
	.word	_Label_2610
	.word	-28
	.word	4
	.word	_Label_2611
	.word	-32
	.word	4
	.word	0
_Label_2603:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2604:
	.ascii	"Pself\0"
	.align
_Label_2605:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2597\0"
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
_Label_3861:
	push	r0
	sub	r1,1,r1
	bne	_Label_3861
	mov	1559,r13		! source line 1559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   _temp_2612 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2612 [entry ] into _temp_2613
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
!   _temp_2616 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2616 [entry ] into _temp_2617
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
!   Data Move: _temp_2615 = *_temp_2617  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2614 = _temp_2615 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2613 = _temp_2614  (sizeInBytes=4)
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
	.word	_Label_2618
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2620
	.word	12
	.word	4
	.word	_Label_2621
	.word	-12
	.word	4
	.word	_Label_2622
	.word	-16
	.word	4
	.word	_Label_2623
	.word	-20
	.word	4
	.word	_Label_2624
	.word	-24
	.word	4
	.word	_Label_2625
	.word	-28
	.word	4
	.word	_Label_2626
	.word	-32
	.word	4
	.word	0
_Label_2618:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2619:
	.ascii	"Pself\0"
	.align
_Label_2620:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2612\0"
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
_Label_3862:
	push	r0
	sub	r1,1,r1
	bne	_Label_3862
	mov	1568,r13		! source line 1568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0AS",r10
!   _temp_2627 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2627 [entry ] into _temp_2628
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
!   _temp_2631 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2631 [entry ] into _temp_2632
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
!   Data Move: _temp_2630 = *_temp_2632  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2629 = _temp_2630 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2628 = _temp_2629  (sizeInBytes=4)
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
	.word	_Label_2633
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2634
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2635
	.word	12
	.word	4
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
	.word	0
_Label_2633:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2634:
	.ascii	"Pself\0"
	.align
_Label_2635:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2627\0"
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
_Label_3863:
	push	r0
	sub	r1,1,r1
	bne	_Label_3863
	mov	1577,r13		! source line 1577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2643 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2643 [0 ] into _temp_2644
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
!   _temp_2642 = _temp_2644		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2645 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2642  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2645  sizeInBytes=4
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
	.word	_Label_2646
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2647
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2648
	.word	-12
	.word	4
	.word	_Label_2649
	.word	-16
	.word	4
	.word	_Label_2650
	.word	-20
	.word	4
	.word	_Label_2651
	.word	-24
	.word	4
	.word	0
_Label_2646:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2647:
	.ascii	"Pself\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2642\0"
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
_Label_3864:
	push	r0
	sub	r1,1,r1
	bne	_Label_3864
	mov	1588,r13		! source line 1588
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2652
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2652
	jmp	_Label_2653
_Label_2652:
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
	jmp	_Label_2654
_Label_2653:
! ELSE...
	mov	1605,r13		! source line 1605
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2656		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2656
!	jmp	_Label_2655
_Label_2655:
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
_Label_2656:
! END IF...
_Label_2654:
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
_Label_2657:
!	jmp	_Label_2658
_Label_2658:
	mov	1612,r13		! source line 1612
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2661		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2661
!	jmp	_Label_2660
_Label_2660:
! THEN...
	mov	1614,r13		! source line 1614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2662 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2662  sizeInBytes=4
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
_Label_2661:
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
	mov	1617,r13		! source line 1617
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2666) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2665  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2665 then goto _Label_2664 else goto _Label_2663
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2663
	jmp	_Label_2664
_Label_2663:
! THEN...
	mov	1618,r13		! source line 1618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2667 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2667  sizeInBytes=4
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
_Label_2664:
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
	mov	1621,r13		! source line 1621
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2669) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2668  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2668 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0WH",r10
_Label_2670:
!   if offset >= 8192 then goto _Label_2672		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2672
!	jmp	_Label_2671
_Label_2671:
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
!   Data Move: _temp_2673 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2673  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2675		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2675
!	jmp	_Label_2674
_Label_2674:
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
_Label_2675:
! END WHILE...
	jmp	_Label_2670
_Label_2672:
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
	jmp	_Label_2657
_Label_2659:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2676
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2677
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2678
	.word	12
	.word	4
	.word	_Label_2679
	.word	16
	.word	4
	.word	_Label_2680
	.word	20
	.word	4
	.word	_Label_2681
	.word	-9
	.word	1
	.word	_Label_2682
	.word	-16
	.word	4
	.word	_Label_2683
	.word	-20
	.word	4
	.word	_Label_2684
	.word	-24
	.word	4
	.word	_Label_2685
	.word	-28
	.word	4
	.word	_Label_2686
	.word	-10
	.word	1
	.word	_Label_2687
	.word	-32
	.word	4
	.word	_Label_2688
	.word	-36
	.word	4
	.word	_Label_2689
	.word	-40
	.word	4
	.word	_Label_2690
	.word	-44
	.word	4
	.word	_Label_2691
	.word	-48
	.word	4
	.word	0
_Label_2676:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2677:
	.ascii	"Pself\0"
	.align
_Label_2678:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2679:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2680:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2681:
	.byte	'C'
	.ascii	"_temp_2673\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2686:
	.byte	'C'
	.ascii	"_temp_2665\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2689:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2690:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2691:
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
_Label_3865:
	push	r0
	sub	r1,1,r1
	bne	_Label_3865
	mov	1642,r13		! source line 1642
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2692
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2692
	jmp	_Label_2693
_Label_2692:
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
	jmp	_Label_2694
_Label_2693:
! ELSE...
	mov	1655,r13		! source line 1655
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2696		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2696
!	jmp	_Label_2695
_Label_2695:
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
_Label_2696:
! END IF...
_Label_2694:
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
_Label_2697:
!	jmp	_Label_2698
_Label_2698:
	mov	1660,r13		! source line 1660
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2703		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2703
	jmp	_Label_2700
_Label_2703:
	mov	1662,r13		! source line 1662
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2705) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2704  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2704 then goto _Label_2702 else goto _Label_2700
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2700
	jmp	_Label_2702
_Label_2702:
	mov	1663,r13		! source line 1663
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2707) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2706  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2706 then goto _Label_2701 else goto _Label_2700
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2700
	jmp	_Label_2701
_Label_2700:
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
_Label_2701:
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
	mov	1666,r13		! source line 1666
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2709) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2708  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2708 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0WH",r10
_Label_2710:
!   if offset >= 8192 then goto _Label_2712		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2712
!	jmp	_Label_2711
_Label_2711:
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
!   Data Move: _temp_2713 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2713  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2715		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2715
!	jmp	_Label_2714
_Label_2714:
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
_Label_2715:
! END WHILE...
	jmp	_Label_2710
_Label_2712:
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
	jmp	_Label_2697
_Label_2699:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2716
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2717
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2718
	.word	12
	.word	4
	.word	_Label_2719
	.word	16
	.word	4
	.word	_Label_2720
	.word	20
	.word	4
	.word	_Label_2721
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_2726
	.word	-28
	.word	4
	.word	_Label_2727
	.word	-11
	.word	1
	.word	_Label_2728
	.word	-32
	.word	4
	.word	_Label_2729
	.word	-36
	.word	4
	.word	_Label_2730
	.word	-40
	.word	4
	.word	_Label_2731
	.word	-44
	.word	4
	.word	0
_Label_2716:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2717:
	.ascii	"Pself\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2720:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2721:
	.byte	'C'
	.ascii	"_temp_2713\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2725:
	.byte	'C'
	.ascii	"_temp_2706\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2727:
	.byte	'C'
	.ascii	"_temp_2704\0"
	.align
_Label_2728:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2729:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2730:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2731:
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
_Label_3866:
	push	r0
	sub	r1,1,r1
	bne	_Label_3866
	mov	1684,r13		! source line 1684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0IF",r10
	mov	1708,r13		! source line 1708
	mov	"\0\0SE",r10
!   _temp_2735 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2736) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2735  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2734  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2734 >= 4 then goto _Label_2733		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2733
!	jmp	_Label_2732
_Label_2732:
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
_Label_2733:
! IF STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2738		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2738
!	jmp	_Label_2737
_Label_2737:
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
_Label_2738:
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
!   _temp_2741 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2740 = _temp_2741 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2742 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2743) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2740  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2742  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2739  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2739  (sizeInBytes=4)
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
	.word	_Label_2744
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2745
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2746
	.word	12
	.word	4
	.word	_Label_2747
	.word	16
	.word	4
	.word	_Label_2748
	.word	20
	.word	4
	.word	_Label_2749
	.word	-12
	.word	4
	.word	_Label_2750
	.word	-16
	.word	4
	.word	_Label_2751
	.word	-20
	.word	4
	.word	_Label_2752
	.word	-24
	.word	4
	.word	_Label_2753
	.word	-28
	.word	4
	.word	_Label_2754
	.word	-32
	.word	4
	.word	_Label_2755
	.word	-36
	.word	4
	.word	_Label_2756
	.word	-40
	.word	4
	.word	_Label_2757
	.word	-44
	.word	4
	.word	0
_Label_2744:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2745:
	.ascii	"Pself\0"
	.align
_Label_2746:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2747:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2757:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2758
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2758:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2759
	.word	_sourceFileName
	.word	314		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2759:
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
_Label_3867:
	push	r0
	sub	r1,1,r1
	bne	_Label_3867
	mov	2592,r13		! source line 2592
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2760 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2760  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2600,r13		! source line 2600
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
	mov	2601,r13		! source line 2601
	mov	"\0\0SE",r10
!   _temp_2762 = &semUsedInSynchMethods
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
	mov	2602,r13		! source line 2602
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
	mov	2603,r13		! source line 2603
	mov	"\0\0SE",r10
!   _temp_2764 = &diskBusy
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
	mov	2603,r13		! source line 2603
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
	.word	_Label_2765
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2766
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2767
	.word	-12
	.word	4
	.word	_Label_2768
	.word	-16
	.word	4
	.word	_Label_2769
	.word	-20
	.word	4
	.word	_Label_2770
	.word	-24
	.word	4
	.word	_Label_2771
	.word	-28
	.word	4
	.word	0
_Label_2765:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2766:
	.ascii	"Pself\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2760\0"
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
_Label_3868:
	push	r0
	sub	r1,1,r1
	bne	_Label_3868
	mov	2608,r13		! source line 2608
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   _temp_2772 = &diskBusy
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
	mov	2622,r13		! source line 2622
	mov	"\0\0WH",r10
_Label_2773:
!	jmp	_Label_2774
_Label_2774:
	mov	2622,r13		! source line 2622
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0SE",r10
!   _temp_2776 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2777) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2776  sizeInBytes=4
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
	mov	2626,r13		! source line 2626
	mov	"\0\0SE",r10
!   _temp_2778 = &semUsedInSynchMethods
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
	mov	2629,r13		! source line 2629
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2787 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2781
	cmp	r1,2
	be	_Label_2782
	cmp	r1,3
	be	_Label_2783
	cmp	r1,4
	be	_Label_2784
	cmp	r1,5
	be	_Label_2785
	cmp	r1,6
	be	_Label_2786
	jmp	_Label_2779
! CASE 1...
_Label_2781:
! SEND STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0SE",r10
!   _temp_2788 = &diskBusy
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
	mov	2632,r13		! source line 2632
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2782:
! CALL STATEMENT...
!   _temp_2789 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2634,r13		! source line 2634
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2783:
! CALL STATEMENT...
!   _temp_2790 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2790  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2636,r13		! source line 2636
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2784:
! CALL STATEMENT...
!   _temp_2791 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2791  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2638,r13		! source line 2638
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2785:
! BREAK STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0BR",r10
	jmp	_Label_2780
! CASE 6...
_Label_2786:
! CALL STATEMENT...
!   _temp_2792 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2792  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2644,r13		! source line 2644
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2779:
! CALL STATEMENT...
!   _temp_2793 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2793  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2646,r13		! source line 2646
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2780:
! END WHILE...
	jmp	_Label_2773
_Label_2775:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2794
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	12
	.word	4
	.word	_Label_2797
	.word	16
	.word	4
	.word	_Label_2798
	.word	20
	.word	4
	.word	_Label_2799
	.word	-12
	.word	4
	.word	_Label_2800
	.word	-16
	.word	4
	.word	_Label_2801
	.word	-20
	.word	4
	.word	_Label_2802
	.word	-24
	.word	4
	.word	_Label_2803
	.word	-28
	.word	4
	.word	_Label_2804
	.word	-32
	.word	4
	.word	_Label_2805
	.word	-36
	.word	4
	.word	_Label_2806
	.word	-40
	.word	4
	.word	_Label_2807
	.word	-44
	.word	4
	.word	_Label_2808
	.word	-48
	.word	4
	.word	_Label_2809
	.word	-52
	.word	4
	.word	0
_Label_2794:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2797:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2798:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2772\0"
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
	mov	2655,r13		! source line 2655
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
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
	mov	2674,r13		! source line 2674
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
	mov	2675,r13		! source line 2675
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
	mov	2676,r13		! source line 2676
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
	mov	2676,r13		! source line 2676
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
	.word	_Label_2810
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2812
	.word	12
	.word	4
	.word	_Label_2813
	.word	16
	.word	4
	.word	_Label_2814
	.word	20
	.word	4
	.word	_Label_2815
	.word	24
	.word	4
	.word	0
_Label_2810:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2811:
	.ascii	"Pself\0"
	.align
_Label_2812:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2813:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2814:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2815:
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
_Label_3869:
	push	r0
	sub	r1,1,r1
	bne	_Label_3869
	mov	2681,r13		! source line 2681
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
!   _temp_2816 = &diskBusy
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
	mov	2694,r13		! source line 2694
	mov	"\0\0WH",r10
_Label_2817:
!	jmp	_Label_2818
_Label_2818:
	mov	2694,r13		! source line 2694
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2695,r13		! source line 2695
	mov	"\0\0SE",r10
!   _temp_2820 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2821) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2820  sizeInBytes=4
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
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   _temp_2822 = &semUsedInSynchMethods
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
	mov	2700,r13		! source line 2700
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2831 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2825
	cmp	r1,2
	be	_Label_2826
	cmp	r1,3
	be	_Label_2827
	cmp	r1,4
	be	_Label_2828
	cmp	r1,5
	be	_Label_2829
	cmp	r1,6
	be	_Label_2830
	jmp	_Label_2823
! CASE 1...
_Label_2825:
! SEND STATEMENT...
	mov	2702,r13		! source line 2702
	mov	"\0\0SE",r10
!   _temp_2832 = &diskBusy
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
	mov	2703,r13		! source line 2703
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2826:
! CALL STATEMENT...
!   _temp_2833 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2833  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2705,r13		! source line 2705
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2827:
! CALL STATEMENT...
!   _temp_2834 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2834  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2707,r13		! source line 2707
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2828:
! CALL STATEMENT...
!   _temp_2835 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2835  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2709,r13		! source line 2709
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2829:
! BREAK STATEMENT...
	mov	2713,r13		! source line 2713
	mov	"\0\0BR",r10
	jmp	_Label_2824
! CASE 6...
_Label_2830:
! CALL STATEMENT...
!   _temp_2836 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2836  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2715,r13		! source line 2715
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2823:
! CALL STATEMENT...
!   _temp_2837 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2837  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2717,r13		! source line 2717
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2824:
! END WHILE...
	jmp	_Label_2817
_Label_2819:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2838
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2839
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2840
	.word	12
	.word	4
	.word	_Label_2841
	.word	16
	.word	4
	.word	_Label_2842
	.word	20
	.word	4
	.word	_Label_2843
	.word	-12
	.word	4
	.word	_Label_2844
	.word	-16
	.word	4
	.word	_Label_2845
	.word	-20
	.word	4
	.word	_Label_2846
	.word	-24
	.word	4
	.word	_Label_2847
	.word	-28
	.word	4
	.word	_Label_2848
	.word	-32
	.word	4
	.word	_Label_2849
	.word	-36
	.word	4
	.word	_Label_2850
	.word	-40
	.word	4
	.word	_Label_2851
	.word	-44
	.word	4
	.word	_Label_2852
	.word	-48
	.word	4
	.word	_Label_2853
	.word	-52
	.word	4
	.word	0
_Label_2838:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2839:
	.ascii	"Pself\0"
	.align
_Label_2840:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2841:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2842:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2846:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2847:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2851:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2852:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2816\0"
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
	mov	2726,r13		! source line 2726
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
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
	mov	2744,r13		! source line 2744
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
	mov	2745,r13		! source line 2745
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
	mov	2746,r13		! source line 2746
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
	mov	2746,r13		! source line 2746
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
	.word	_Label_2854
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2856
	.word	12
	.word	4
	.word	_Label_2857
	.word	16
	.word	4
	.word	_Label_2858
	.word	20
	.word	4
	.word	_Label_2859
	.word	24
	.word	4
	.word	0
_Label_2854:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2855:
	.ascii	"Pself\0"
	.align
_Label_2856:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2857:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2858:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2859:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2860
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
_Label_2860:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2861
	.word	_sourceFileName
	.word	337		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2861:
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
_Label_3870:
	push	r0
	sub	r1,1,r1
	bne	_Label_3870
	mov	2757,r13		! source line 2757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2862 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2862  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2764,r13		! source line 2764
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
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
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
!   _temp_2864 = &fileManagerLock
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
	mov	2769,r13		! source line 2769
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
	mov	2770,r13		! source line 2770
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
	mov	2771,r13		! source line 2771
	mov	"\0\0SE",r10
!   _temp_2867 = &anFCBBecameFree
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
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
!   _temp_2868 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2870 = &_temp_2869
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2870 = _temp_2870 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2872 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3871:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3871
!   _temp_2872 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2874:
!   Data Move: *_temp_2870 = _temp_2872  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3872:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3872
!   _temp_2870 = _temp_2870 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2871 = _temp_2871 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2871) then goto _Label_2874
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2874
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2875 = &_temp_2869
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3873
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3873:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2868 = *_temp_2875  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3874:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3874
! FOR STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2880 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2881 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2880  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2876:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2881 then goto _Label_2879		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2879
_Label_2877:
	mov	2774,r13		! source line 2774
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0AS",r10
!   _temp_2882 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2882 [i ] into _temp_2883
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
!   _temp_2884 = _temp_2883 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2884 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0SE",r10
!   _temp_2885 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2885 [i ] into _temp_2886
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
	mov	2777,r13		! source line 2777
	mov	"\0\0SE",r10
!   _temp_2888 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2888 [i ] into _temp_2889
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
!   _temp_2887 = _temp_2889		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2890 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2887  sizeInBytes=4
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
_Label_2878:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2876
! END FOR
_Label_2879:
! ASSIGNMENT STATEMENT...
	mov	2781,r13		! source line 2781
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
	mov	2782,r13		! source line 2782
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
	mov	2783,r13		! source line 2783
	mov	"\0\0SE",r10
!   _temp_2893 = &anOpenFileBecameFree
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
	mov	2784,r13		! source line 2784
	mov	"\0\0AS",r10
!   _temp_2894 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2896 = &_temp_2895
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2896 = _temp_2896 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2898 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3875:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3875
!   _temp_2898 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2900:
!   Data Move: *_temp_2896 = _temp_2898  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3876:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3876
!   _temp_2896 = _temp_2896 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2897 = _temp_2897 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2897) then goto _Label_2900
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2900
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2901 = &_temp_2895
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3877
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3877:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2894 = *_temp_2901  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3878:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3878
! FOR STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2906 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2907 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2906  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2902:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2907 then goto _Label_2905		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2905
_Label_2903:
	mov	2786,r13		! source line 2786
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
!   _temp_2908 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2908 [i ] into _temp_2909
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
!   _temp_2910 = _temp_2909 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2910 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0SE",r10
!   _temp_2912 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2912 [i ] into _temp_2913
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
!   _temp_2911 = _temp_2913		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2914 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2911  sizeInBytes=4
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
_Label_2904:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2902
! END FOR
_Label_2905:
! ASSIGNMENT STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3879:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3879
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0AS",r10
!   _temp_2916 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2917 = _temp_2916 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2917 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
	mov	2798,r13		! source line 2798
	mov	"\0\0SE",r10
!   _temp_2918 = &_P_Kernel_frameManager
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
	mov	2799,r13		! source line 2799
	mov	"\0\0SE",r10
!   _temp_2919 = &_P_Kernel_diskDriver
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
	mov	2799,r13		! source line 2799
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
	.word	_Label_2920
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2921
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2922
	.word	-12
	.word	4
	.word	_Label_2923
	.word	-16
	.word	4
	.word	_Label_2924
	.word	-20
	.word	4
	.word	_Label_2925
	.word	-24
	.word	4
	.word	_Label_2926
	.word	-28
	.word	4
	.word	_Label_2927
	.word	-32
	.word	4
	.word	_Label_2928
	.word	-36
	.word	4
	.word	_Label_2929
	.word	-40
	.word	4
	.word	_Label_2930
	.word	-44
	.word	4
	.word	_Label_2931
	.word	-48
	.word	4
	.word	_Label_2932
	.word	-52
	.word	4
	.word	_Label_2933
	.word	-56
	.word	4
	.word	_Label_2934
	.word	-60
	.word	4
	.word	_Label_2935
	.word	-64
	.word	4
	.word	_Label_2936
	.word	-68
	.word	4
	.word	_Label_2937
	.word	-72
	.word	4
	.word	_Label_2938
	.word	-100
	.word	28
	.word	_Label_2939
	.word	-104
	.word	4
	.word	_Label_2940
	.word	-108
	.word	4
	.word	_Label_2941
	.word	-392
	.word	284
	.word	_Label_2942
	.word	-396
	.word	4
	.word	_Label_2943
	.word	-400
	.word	4
	.word	_Label_2944
	.word	-404
	.word	4
	.word	_Label_2945
	.word	-408
	.word	4
	.word	_Label_2946
	.word	-412
	.word	4
	.word	_Label_2947
	.word	-416
	.word	4
	.word	_Label_2948
	.word	-420
	.word	4
	.word	_Label_2949
	.word	-424
	.word	4
	.word	_Label_2950
	.word	-428
	.word	4
	.word	_Label_2951
	.word	-432
	.word	4
	.word	_Label_2952
	.word	-436
	.word	4
	.word	_Label_2953
	.word	-440
	.word	4
	.word	_Label_2954
	.word	-444
	.word	4
	.word	_Label_2955
	.word	-448
	.word	4
	.word	_Label_2956
	.word	-452
	.word	4
	.word	_Label_2957
	.word	-456
	.word	4
	.word	_Label_2958
	.word	-460
	.word	4
	.word	_Label_2959
	.word	-500
	.word	40
	.word	_Label_2960
	.word	-504
	.word	4
	.word	_Label_2961
	.word	-508
	.word	4
	.word	_Label_2962
	.word	-912
	.word	404
	.word	_Label_2963
	.word	-916
	.word	4
	.word	_Label_2964
	.word	-920
	.word	4
	.word	_Label_2965
	.word	-924
	.word	4
	.word	_Label_2966
	.word	-928
	.word	4
	.word	_Label_2967
	.word	-932
	.word	4
	.word	_Label_2968
	.word	-936
	.word	4
	.word	_Label_2969
	.word	-940
	.word	4
	.word	_Label_2970
	.word	-944
	.word	4
	.word	0
_Label_2920:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2921:
	.ascii	"Pself\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2970:
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
_Label_3880:
	push	r0
	sub	r1,1,r1
	bne	_Label_3880
	mov	2806,r13		! source line 2806
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
!   _temp_2971 = &fileManagerLock
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
!   _temp_2972 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2972  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2977 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2978 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2977  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2973:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2978 then goto _Label_2976		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2976
_Label_2974:
	mov	2810,r13		! source line 2810
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2979 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2979  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2812,r13		! source line 2812
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2980 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2980  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0SE",r10
!   _temp_2981 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2981 [i ] into _temp_2982
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
_Label_2975:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2973
! END FOR
_Label_2976:
! CALL STATEMENT...
!   _temp_2983 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2983  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2816,r13		! source line 2816
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0SE",r10
!   _temp_2984 = _function_196_printFCB
	set	_function_196_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2985 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2984  sizeInBytes=4
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
	mov	2818,r13		! source line 2818
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2986 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2986  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2819,r13		! source line 2819
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2991 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2992 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2991  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2987:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2992 then goto _Label_2990		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2990
_Label_2988:
	mov	2820,r13		! source line 2820
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2993 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2821,r13		! source line 2821
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2822,r13		! source line 2822
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2994 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2994  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2996 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2996 [i ] into _temp_2997
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
!   _temp_2995 = _temp_2997		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2995  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2998 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2998  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2825,r13		! source line 2825
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0SE",r10
!   _temp_2999 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2999 [i ] into _temp_3000
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
_Label_2989:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2987
! END FOR
_Label_2990:
! CALL STATEMENT...
!   _temp_3001 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3001  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2828,r13		! source line 2828
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0SE",r10
!   _temp_3002 = _function_195_printOpen
	set	_function_195_printOpen,r1
	store	r1,[r14+-20]
!   _temp_3003 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3002  sizeInBytes=4
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
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
!   _temp_3004 = &fileManagerLock
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
	mov	2830,r13		! source line 2830
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
	.word	_Label_3005
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3007
	.word	-12
	.word	4
	.word	_Label_3008
	.word	-16
	.word	4
	.word	_Label_3009
	.word	-20
	.word	4
	.word	_Label_3010
	.word	-24
	.word	4
	.word	_Label_3011
	.word	-28
	.word	4
	.word	_Label_3012
	.word	-32
	.word	4
	.word	_Label_3013
	.word	-36
	.word	4
	.word	_Label_3014
	.word	-40
	.word	4
	.word	_Label_3015
	.word	-44
	.word	4
	.word	_Label_3016
	.word	-48
	.word	4
	.word	_Label_3017
	.word	-52
	.word	4
	.word	_Label_3018
	.word	-56
	.word	4
	.word	_Label_3019
	.word	-60
	.word	4
	.word	_Label_3020
	.word	-64
	.word	4
	.word	_Label_3021
	.word	-68
	.word	4
	.word	_Label_3022
	.word	-72
	.word	4
	.word	_Label_3023
	.word	-76
	.word	4
	.word	_Label_3024
	.word	-80
	.word	4
	.word	_Label_3025
	.word	-84
	.word	4
	.word	_Label_3026
	.word	-88
	.word	4
	.word	_Label_3027
	.word	-92
	.word	4
	.word	_Label_3028
	.word	-96
	.word	4
	.word	_Label_3029
	.word	-100
	.word	4
	.word	_Label_3030
	.word	-104
	.word	4
	.word	_Label_3031
	.word	-108
	.word	4
	.word	_Label_3032
	.word	-112
	.word	4
	.word	_Label_3033
	.word	-116
	.word	4
	.word	0
_Label_3005:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3006:
	.ascii	"Pself\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2996\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2995\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_3033:
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
_Label_3881:
	push	r0
	sub	r1,1,r1
	bne	_Label_3881
	mov	2835,r13		! source line 2835
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   _temp_3034 = &_P_Kernel_fileManager
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
	mov	2852,r13		! source line 2852
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3035
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3035
	jmp	_Label_3036
_Label_3035:
! THEN...
	mov	2853,r13		! source line 2853
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3036:
! SEND STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
!   _temp_3037 = &fileManagerLock
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
	mov	2858,r13		! source line 2858
	mov	"\0\0WH",r10
_Label_3038:
	mov	2858,r13		! source line 2858
	mov	"\0\0SE",r10
!   _temp_3041 = &openFileFreeList
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
!   if result==true then goto _Label_3039 else goto _Label_3040
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3040
	jmp	_Label_3039
_Label_3039:
	mov	2858,r13		! source line 2858
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0SE",r10
!   _temp_3042 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3043 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3042  sizeInBytes=4
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
	jmp	_Label_3038
_Label_3040:
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
	mov	2861,r13		! source line 2861
	mov	"\0\0SE",r10
!   _temp_3044 = &openFileFreeList
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
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3045 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3045 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3046 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3046 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3047 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3047 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2870,r13		! source line 2870
	mov	"\0\0SE",r10
!   _temp_3048 = &fileManagerLock
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
	mov	2871,r13		! source line 2871
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
	.word	_Label_3049
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3051
	.word	12
	.word	4
	.word	_Label_3052
	.word	-12
	.word	4
	.word	_Label_3053
	.word	-16
	.word	4
	.word	_Label_3054
	.word	-20
	.word	4
	.word	_Label_3055
	.word	-24
	.word	4
	.word	_Label_3056
	.word	-28
	.word	4
	.word	_Label_3057
	.word	-32
	.word	4
	.word	_Label_3058
	.word	-36
	.word	4
	.word	_Label_3059
	.word	-40
	.word	4
	.word	_Label_3060
	.word	-44
	.word	4
	.word	_Label_3061
	.word	-48
	.word	4
	.word	_Label_3062
	.word	-52
	.word	4
	.word	_Label_3063
	.word	-56
	.word	4
	.word	0
_Label_3049:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3050:
	.ascii	"Pself\0"
	.align
_Label_3051:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3053:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3055:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3056:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3057:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3058:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3059:
	.byte	'?'
	.ascii	"_temp_3041\0"
	.align
_Label_3060:
	.byte	'?'
	.ascii	"_temp_3037\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3034\0"
	.align
_Label_3062:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3063:
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
_Label_3882:
	push	r0
	sub	r1,1,r1
	bne	_Label_3882
	mov	2876,r13		! source line 2876
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2904,r13		! source line 2904
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
	mov	2905,r13		! source line 2905
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3065		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3065
!	jmp	_Label_3064
_Label_3064:
! THEN...
	mov	2907,r13		! source line 2907
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3066 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3066  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2907,r13		! source line 2907
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3065:
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
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
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
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
	mov	2914,r13		! source line 2914
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0WH",r10
_Label_3067:
!   if numFiles <= 0 then goto _Label_3069		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3069
!	jmp	_Label_3068
_Label_3068:
	mov	2917,r13		! source line 2917
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3070 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3070  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2918,r13		! source line 2918
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3071 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3071  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2920,r13		! source line 2920
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2921,r13		! source line 2921
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3072 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3072  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2922,r13		! source line 2922
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3076 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3076 then goto _Label_3074		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3074
!	jmp	_Label_3075
_Label_3075:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3078
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
!   _temp_3077 = _temp_3078		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3077  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2925,r13		! source line 2925
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3073 else goto _Label_3074
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3074
	jmp	_Label_3073
_Label_3073:
! THEN...
	mov	2926,r13		! source line 2926
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2926,r13		! source line 2926
	mov	"\0\0BR",r10
	jmp	_Label_3069
! END IF...
_Label_3074:
! ASSIGNMENT STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2929,r13		! source line 2929
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3067
_Label_3069:
! IF STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3080		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3080
!	jmp	_Label_3079
_Label_3079:
! THEN...
	mov	2934,r13		! source line 2934
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3080:
! SEND STATEMENT...
	mov	2937,r13		! source line 2937
	mov	"\0\0SE",r10
!   _temp_3081 = &fileManagerLock
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
	mov	2939,r13		! source line 2939
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3086 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3087 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3086  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3082:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3087 then goto _Label_3085		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3085
_Label_3083:
	mov	2939,r13		! source line 2939
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0AS",r10
!   _temp_3088 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3088 [i ] into _temp_3089
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
!   fcb = _temp_3089		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2941,r13		! source line 2941
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3093 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3092 = *_temp_3093  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3092 != start then goto _Label_3091		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3091
!	jmp	_Label_3090
_Label_3090:
! THEN...
	mov	2942,r13		! source line 2942
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2942,r13		! source line 2942
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3094 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3097 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3096 = *_temp_3097  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3095 = _temp_3096 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3094 = _temp_3095  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0SE",r10
!   _temp_3098 = &fileManagerLock
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
	mov	2944,r13		! source line 2944
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3091:
!   Increment the FOR-LOOP index variable and jump back
_Label_3084:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3082
! END FOR
_Label_3085:
! WHILE STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0WH",r10
_Label_3099:
	mov	2949,r13		! source line 2949
	mov	"\0\0SE",r10
!   _temp_3102 = &fcbFreeList
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
!   if result==true then goto _Label_3100 else goto _Label_3101
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3101
	jmp	_Label_3100
_Label_3100:
	mov	2949,r13		! source line 2949
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0SE",r10
!   _temp_3103 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3104 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3103  sizeInBytes=4
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
	jmp	_Label_3099
_Label_3101:
! ASSIGNMENT STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0AS",r10
	mov	2952,r13		! source line 2952
	mov	"\0\0SE",r10
!   _temp_3105 = &fcbFreeList
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
	mov	2955,r13		! source line 2955
	mov	"\0\0SE",r10
!   _temp_3106 = &fileManagerLock
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
	mov	2958,r13		! source line 2958
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3107 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3107 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2959,r13		! source line 2959
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3108 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3108 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3109 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3109 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2961,r13		! source line 2961
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3114 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3113 = *_temp_3114  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3113 < 0 then goto _Label_3112		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3112
	jmp	_Label_3110
_Label_3112:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3115 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3115 ) then goto _Label_3111		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3111
!	jmp	_Label_3110
_Label_3110:
! THEN...
	mov	2962,r13		! source line 2962
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3116 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3116  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2962,r13		! source line 2962
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3111:
! RETURN STATEMENT...
	mov	2964,r13		! source line 2964
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
	.word	_Label_3117
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3118
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3119
	.word	12
	.word	4
	.word	_Label_3120
	.word	-12
	.word	4
	.word	_Label_3121
	.word	-16
	.word	4
	.word	_Label_3122
	.word	-20
	.word	4
	.word	_Label_3123
	.word	-24
	.word	4
	.word	_Label_3124
	.word	-28
	.word	4
	.word	_Label_3125
	.word	-32
	.word	4
	.word	_Label_3126
	.word	-36
	.word	4
	.word	_Label_3127
	.word	-40
	.word	4
	.word	_Label_3128
	.word	-44
	.word	4
	.word	_Label_3129
	.word	-48
	.word	4
	.word	_Label_3130
	.word	-52
	.word	4
	.word	_Label_3131
	.word	-56
	.word	4
	.word	_Label_3132
	.word	-60
	.word	4
	.word	_Label_3133
	.word	-64
	.word	4
	.word	_Label_3134
	.word	-68
	.word	4
	.word	_Label_3135
	.word	-72
	.word	4
	.word	_Label_3136
	.word	-76
	.word	4
	.word	_Label_3137
	.word	-80
	.word	4
	.word	_Label_3138
	.word	-84
	.word	4
	.word	_Label_3139
	.word	-88
	.word	4
	.word	_Label_3140
	.word	-92
	.word	4
	.word	_Label_3141
	.word	-96
	.word	4
	.word	_Label_3142
	.word	-100
	.word	4
	.word	_Label_3143
	.word	-104
	.word	4
	.word	_Label_3144
	.word	-108
	.word	4
	.word	_Label_3145
	.word	-112
	.word	4
	.word	_Label_3146
	.word	-116
	.word	4
	.word	_Label_3147
	.word	-120
	.word	4
	.word	_Label_3148
	.word	-124
	.word	4
	.word	_Label_3149
	.word	-128
	.word	4
	.word	_Label_3150
	.word	-132
	.word	4
	.word	_Label_3151
	.word	-136
	.word	4
	.word	_Label_3152
	.word	-140
	.word	4
	.word	_Label_3153
	.word	-144
	.word	4
	.word	_Label_3154
	.word	-148
	.word	4
	.word	_Label_3155
	.word	-152
	.word	4
	.word	_Label_3156
	.word	-156
	.word	4
	.word	_Label_3157
	.word	-160
	.word	4
	.word	0
_Label_3117:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3118:
	.ascii	"Pself\0"
	.align
_Label_3119:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3123:
	.byte	'?'
	.ascii	"_temp_3113\0"
	.align
_Label_3124:
	.byte	'?'
	.ascii	"_temp_3109\0"
	.align
_Label_3125:
	.byte	'?'
	.ascii	"_temp_3108\0"
	.align
_Label_3126:
	.byte	'?'
	.ascii	"_temp_3107\0"
	.align
_Label_3127:
	.byte	'?'
	.ascii	"_temp_3106\0"
	.align
_Label_3128:
	.byte	'?'
	.ascii	"_temp_3105\0"
	.align
_Label_3129:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3130:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3097\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3137:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3138:
	.byte	'?'
	.ascii	"_temp_3092\0"
	.align
_Label_3139:
	.byte	'?'
	.ascii	"_temp_3089\0"
	.align
_Label_3140:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3141:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3142:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3143:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3144:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3145:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3146:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3150:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3151:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3152:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3153:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3154:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3155:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3156:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3157:
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
_Label_3883:
	push	r0
	sub	r1,1,r1
	bne	_Label_3883
	mov	2977,r13		! source line 2977
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2979,r13		! source line 2979
	mov	"\0\0IF",r10
!   _temp_3160 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3160 then goto _Label_3159		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3159
!	jmp	_Label_3158
_Label_3158:
! THEN...
	mov	2980,r13		! source line 2980
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3159:
! SEND STATEMENT...
	mov	2982,r13		! source line 2982
	mov	"\0\0SE",r10
!   _temp_3161 = &fileManagerLock
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
	mov	2983,r13		! source line 2983
	mov	"\0\0SE",r10
!   _temp_3162 = &_P_Kernel_fileManager
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
	mov	2984,r13		! source line 2984
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3163 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3163  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3164 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3167 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3166 = *_temp_3167  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3165 = _temp_3166 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3164 = _temp_3165  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3171 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3170 = *_temp_3171  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3170 > 0 then goto _Label_3169		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3169
!	jmp	_Label_3168
_Label_3168:
! THEN...
	mov	2987,r13		! source line 2987
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0SE",r10
!   _temp_3172 = &openFileFreeList
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
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
!   _temp_3173 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3174 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3173  sizeInBytes=4
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
	mov	2989,r13		! source line 2989
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3175 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3178 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3177 = *_temp_3178  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3176 = _temp_3177 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3175 = _temp_3176  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3182 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3181 = *_temp_3182  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3181 > 0 then goto _Label_3180		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3180
!	jmp	_Label_3179
_Label_3179:
! THEN...
	mov	2991,r13		! source line 2991
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0SE",r10
!   _temp_3183 = &fcbFreeList
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
	mov	2992,r13		! source line 2992
	mov	"\0\0SE",r10
!   _temp_3184 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3185 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3184  sizeInBytes=4
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
_Label_3180:
! END IF...
_Label_3169:
! SEND STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
!   _temp_3186 = &fileManagerLock
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
	mov	2995,r13		! source line 2995
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
	.word	_Label_3187
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3188
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3189
	.word	12
	.word	4
	.word	_Label_3190
	.word	-12
	.word	4
	.word	_Label_3191
	.word	-16
	.word	4
	.word	_Label_3192
	.word	-20
	.word	4
	.word	_Label_3193
	.word	-24
	.word	4
	.word	_Label_3194
	.word	-28
	.word	4
	.word	_Label_3195
	.word	-32
	.word	4
	.word	_Label_3196
	.word	-36
	.word	4
	.word	_Label_3197
	.word	-40
	.word	4
	.word	_Label_3198
	.word	-44
	.word	4
	.word	_Label_3199
	.word	-48
	.word	4
	.word	_Label_3200
	.word	-52
	.word	4
	.word	_Label_3201
	.word	-56
	.word	4
	.word	_Label_3202
	.word	-60
	.word	4
	.word	_Label_3203
	.word	-64
	.word	4
	.word	_Label_3204
	.word	-68
	.word	4
	.word	_Label_3205
	.word	-72
	.word	4
	.word	_Label_3206
	.word	-76
	.word	4
	.word	_Label_3207
	.word	-80
	.word	4
	.word	_Label_3208
	.word	-84
	.word	4
	.word	_Label_3209
	.word	-88
	.word	4
	.word	_Label_3210
	.word	-92
	.word	4
	.word	_Label_3211
	.word	-96
	.word	4
	.word	_Label_3212
	.word	-100
	.word	4
	.word	_Label_3213
	.word	-104
	.word	4
	.word	0
_Label_3187:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3188:
	.ascii	"Pself\0"
	.align
_Label_3189:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3190:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3191:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3192:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3193:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3194:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3195:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3196:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3197:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3198:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3199:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3200:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3201:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3202:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3203:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3204:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3167\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3161\0"
	.align
_Label_3212:
	.byte	'?'
	.ascii	"_temp_3160\0"
	.align
_Label_3213:
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
_Label_3884:
	push	r0
	sub	r1,1,r1
	bne	_Label_3884
	mov	3000,r13		! source line 3000
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3217 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3216 = *_temp_3217  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3216) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3218 = _temp_3216 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3218 ) then goto _Label_3215		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3215
!	jmp	_Label_3214
_Label_3214:
! THEN...
	mov	3006,r13		! source line 3006
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3223 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3222 = *_temp_3223  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3222) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3224 = _temp_3222 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3221 = *_temp_3224  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3221 >= 0 then goto _Label_3220		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3220
!	jmp	_Label_3219
_Label_3219:
! THEN...
	mov	3007,r13		! source line 3007
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3225 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3225  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3007,r13		! source line 3007
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3220:
! ASSIGNMENT STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3227 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3226 = *_temp_3227  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3226) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3228 = _temp_3226 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3228 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	3010,r13		! source line 3010
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3232 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3231 = *_temp_3232  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3231) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3233 = _temp_3231 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3230 = *_temp_3233  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3236 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3235 = *_temp_3236  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3235) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3237 = _temp_3235 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3234 = *_temp_3237  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3229 = _temp_3230 + _temp_3234		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3240 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3239 = *_temp_3240  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3239) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3241 = _temp_3239 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3238 = *_temp_3241  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3242 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3229  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3238  sizeInBytes=4
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
_Label_3215:
! RETURN STATEMENT...
	mov	3005,r13		! source line 3005
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
	.word	_Label_3243
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3244
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3245
	.word	12
	.word	4
	.word	_Label_3246
	.word	-12
	.word	4
	.word	_Label_3247
	.word	-16
	.word	4
	.word	_Label_3248
	.word	-20
	.word	4
	.word	_Label_3249
	.word	-24
	.word	4
	.word	_Label_3250
	.word	-28
	.word	4
	.word	_Label_3251
	.word	-32
	.word	4
	.word	_Label_3252
	.word	-36
	.word	4
	.word	_Label_3253
	.word	-40
	.word	4
	.word	_Label_3254
	.word	-44
	.word	4
	.word	_Label_3255
	.word	-48
	.word	4
	.word	_Label_3256
	.word	-52
	.word	4
	.word	_Label_3257
	.word	-56
	.word	4
	.word	_Label_3258
	.word	-60
	.word	4
	.word	_Label_3259
	.word	-64
	.word	4
	.word	_Label_3260
	.word	-68
	.word	4
	.word	_Label_3261
	.word	-72
	.word	4
	.word	_Label_3262
	.word	-76
	.word	4
	.word	_Label_3263
	.word	-80
	.word	4
	.word	_Label_3264
	.word	-84
	.word	4
	.word	_Label_3265
	.word	-88
	.word	4
	.word	_Label_3266
	.word	-92
	.word	4
	.word	_Label_3267
	.word	-96
	.word	4
	.word	_Label_3268
	.word	-100
	.word	4
	.word	_Label_3269
	.word	-104
	.word	4
	.word	_Label_3270
	.word	-108
	.word	4
	.word	0
_Label_3243:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3244:
	.ascii	"Pself\0"
	.align
_Label_3245:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3242\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3239\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3238\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3237\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3236\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3231\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3230\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3225\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3224\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3218\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3217\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3216\0"
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
_Label_3885:
	push	r0
	sub	r1,1,r1
	bne	_Label_3885
	mov	3019,r13		! source line 3019
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3034,r13		! source line 3034
	mov	"\0\0SE",r10
!   _temp_3271 = &fileManagerLock
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
	mov	3035,r13		! source line 3035
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3277		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3277
!   _temp_3276 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3278
_Label_3277:
!   _temp_3276 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3278:
!   if _temp_3276 then goto _Label_3275 else goto _Label_3272
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3272
	jmp	_Label_3275
_Label_3275:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3281 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3280 = *_temp_3281  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3280 == 0 then goto _Label_3282		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3282
!   _temp_3279 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3283
_Label_3282:
!   _temp_3279 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3283:
!   if _temp_3279 then goto _Label_3274 else goto _Label_3272
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3272
	jmp	_Label_3274
_Label_3274:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3286 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3285 = *_temp_3286  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3285) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3287 = _temp_3285 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3284 = *_temp_3287  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3284 >= 0 then goto _Label_3273		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3273
!	jmp	_Label_3272
_Label_3272:
! THEN...
	mov	3036,r13		! source line 3036
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3288 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3288  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3036,r13		! source line 3036
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3273:
! ASSIGNMENT STATEMENT...
	mov	3038,r13		! source line 3038
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3289 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3289  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	3039,r13		! source line 3039
	mov	"\0\0WH",r10
_Label_3290:
!   if numBytes <= 0 then goto _Label_3292		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3292
!	jmp	_Label_3291
_Label_3291:
	mov	3039,r13		! source line 3039
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3048,r13		! source line 3048
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
	mov	3049,r13		! source line 3049
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
	mov	3053,r13		! source line 3053
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3296 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3295 = *_temp_3296  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3295 == sector then goto _Label_3294		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3294
!	jmp	_Label_3293
_Label_3293:
! THEN...
	mov	3054,r13		! source line 3054
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3297) then goto _runtimeErrorNullPointer
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
	mov	3056,r13		! source line 3056
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3300 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3299 = *_temp_3300  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3298 = sector + _temp_3299		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3302 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3301 = *_temp_3302  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3303 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3298  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3301  sizeInBytes=4
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
	mov	3059,r13		! source line 3059
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3304 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3304 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3305 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3305 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3294:
! ASSIGNMENT STATEMENT...
	mov	3062,r13		! source line 3062
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3307 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3306 = *_temp_3307  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3306 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0AS",r10
!   _temp_3308 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3308  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3063,r13		! source line 3063
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
	mov	3067,r13		! source line 3067
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3069,r13		! source line 3069
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3290
_Label_3292:
! SEND STATEMENT...
	mov	3077,r13		! source line 3077
	mov	"\0\0SE",r10
!   _temp_3309 = &fileManagerLock
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
	mov	3078,r13		! source line 3078
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
	.word	_Label_3310
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3311
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3312
	.word	12
	.word	4
	.word	_Label_3313
	.word	16
	.word	4
	.word	_Label_3314
	.word	20
	.word	4
	.word	_Label_3315
	.word	24
	.word	4
	.word	_Label_3316
	.word	-16
	.word	4
	.word	_Label_3317
	.word	-20
	.word	4
	.word	_Label_3318
	.word	-24
	.word	4
	.word	_Label_3319
	.word	-28
	.word	4
	.word	_Label_3320
	.word	-32
	.word	4
	.word	_Label_3321
	.word	-36
	.word	4
	.word	_Label_3322
	.word	-40
	.word	4
	.word	_Label_3323
	.word	-44
	.word	4
	.word	_Label_3324
	.word	-48
	.word	4
	.word	_Label_3325
	.word	-52
	.word	4
	.word	_Label_3326
	.word	-56
	.word	4
	.word	_Label_3327
	.word	-60
	.word	4
	.word	_Label_3328
	.word	-64
	.word	4
	.word	_Label_3329
	.word	-68
	.word	4
	.word	_Label_3330
	.word	-72
	.word	4
	.word	_Label_3331
	.word	-76
	.word	4
	.word	_Label_3332
	.word	-80
	.word	4
	.word	_Label_3333
	.word	-84
	.word	4
	.word	_Label_3334
	.word	-88
	.word	4
	.word	_Label_3335
	.word	-92
	.word	4
	.word	_Label_3336
	.word	-96
	.word	4
	.word	_Label_3337
	.word	-100
	.word	4
	.word	_Label_3338
	.word	-104
	.word	4
	.word	_Label_3339
	.word	-9
	.word	1
	.word	_Label_3340
	.word	-10
	.word	1
	.word	_Label_3341
	.word	-108
	.word	4
	.word	_Label_3342
	.word	-112
	.word	4
	.word	_Label_3343
	.word	-116
	.word	4
	.word	_Label_3344
	.word	-120
	.word	4
	.word	_Label_3345
	.word	-124
	.word	4
	.word	_Label_3346
	.word	-128
	.word	4
	.word	0
_Label_3310:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3311:
	.ascii	"Pself\0"
	.align
_Label_3312:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3313:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3314:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3315:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3309\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3308\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3307\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3306\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3305\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3304\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3303\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3302\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3301\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3300\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3299\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3298\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3297\0"
	.align
_Label_3329:
	.byte	'?'
	.ascii	"_temp_3296\0"
	.align
_Label_3330:
	.byte	'?'
	.ascii	"_temp_3295\0"
	.align
_Label_3331:
	.byte	'?'
	.ascii	"_temp_3289\0"
	.align
_Label_3332:
	.byte	'?'
	.ascii	"_temp_3288\0"
	.align
_Label_3333:
	.byte	'?'
	.ascii	"_temp_3287\0"
	.align
_Label_3334:
	.byte	'?'
	.ascii	"_temp_3286\0"
	.align
_Label_3335:
	.byte	'?'
	.ascii	"_temp_3285\0"
	.align
_Label_3336:
	.byte	'?'
	.ascii	"_temp_3284\0"
	.align
_Label_3337:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3338:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3339:
	.byte	'C'
	.ascii	"_temp_3279\0"
	.align
_Label_3340:
	.byte	'C'
	.ascii	"_temp_3276\0"
	.align
_Label_3341:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3342:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3343:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3344:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3345:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3346:
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
_Label_3886:
	push	r0
	sub	r1,1,r1
	bne	_Label_3886
	mov	3083,r13		! source line 3083
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3099,r13		! source line 3099
	mov	"\0\0SE",r10
!   _temp_3347 = &fileManagerLock
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
	mov	3100,r13		! source line 3100
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3353		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3353
!   _temp_3352 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3354
_Label_3353:
!   _temp_3352 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3354:
!   if _temp_3352 then goto _Label_3351 else goto _Label_3348
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3348
	jmp	_Label_3351
_Label_3351:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3357 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3356 = *_temp_3357  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3356 == 0 then goto _Label_3358		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3358
!   _temp_3355 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3359
_Label_3358:
!   _temp_3355 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3359:
!   if _temp_3355 then goto _Label_3350 else goto _Label_3348
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3348
	jmp	_Label_3350
_Label_3350:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3362 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3361 = *_temp_3362  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3361) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3363 = _temp_3361 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3360 = *_temp_3363  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3360 >= 0 then goto _Label_3349		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3349
!	jmp	_Label_3348
_Label_3348:
! THEN...
	mov	3101,r13		! source line 3101
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3364 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3364  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3101,r13		! source line 3101
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3349:
! ASSIGNMENT STATEMENT...
	mov	3103,r13		! source line 3103
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3365 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3365  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0WH",r10
_Label_3366:
!   if numBytes <= 0 then goto _Label_3368		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3368
!	jmp	_Label_3367
_Label_3367:
	mov	3104,r13		! source line 3104
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3113,r13		! source line 3113
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
	mov	3114,r13		! source line 3114
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
	mov	3118,r13		! source line 3118
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3372 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3371 = *_temp_3372  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3371 == sector then goto _Label_3370		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3370
!	jmp	_Label_3369
_Label_3369:
! THEN...
	mov	3120,r13		! source line 3120
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3373) then goto _runtimeErrorNullPointer
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
_Label_3370:
! ASSIGNMENT STATEMENT...
	mov	3122,r13		! source line 3122
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3375 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3374 = *_temp_3375  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3374 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	3123,r13		! source line 3123
	mov	"\0\0AS",r10
!   _temp_3376 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3376  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	3123,r13		! source line 3123
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3380 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3379 = *_temp_3380  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3379 != sector then goto _Label_3378		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3378
!	jmp	_Label_3377
_Label_3377:
	jmp	_Label_3381
_Label_3378:
! ELSE...
	mov	3126,r13		! source line 3126
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3126,r13		! source line 3126
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3384
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3384
	jmp	_Label_3383
_Label_3384:
!   if bytesToMove != 8192 then goto _Label_3383		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3383
!	jmp	_Label_3382
_Label_3382:
	jmp	_Label_3385
_Label_3383:
! ELSE...
	mov	3130,r13		! source line 3130
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3388 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3387 = *_temp_3388  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3386 = sector + _temp_3387		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3390 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3389 = *_temp_3390  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3391 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3386  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3389  sizeInBytes=4
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
_Label_3385:
! END IF...
_Label_3381:
! ASSIGNMENT STATEMENT...
	mov	3134,r13		! source line 3134
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3392 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3392 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3135,r13		! source line 3135
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3393 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3393 = 1  (sizeInBytes=1)
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
	mov	3139,r13		! source line 3139
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3140,r13		! source line 3140
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3141,r13		! source line 3141
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3142,r13		! source line 3142
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3366
_Label_3368:
! SEND STATEMENT...
	mov	3149,r13		! source line 3149
	mov	"\0\0SE",r10
!   _temp_3394 = &fileManagerLock
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
	mov	3151,r13		! source line 3151
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
	.word	_Label_3395
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3396
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3397
	.word	12
	.word	4
	.word	_Label_3398
	.word	16
	.word	4
	.word	_Label_3399
	.word	20
	.word	4
	.word	_Label_3400
	.word	24
	.word	4
	.word	_Label_3401
	.word	-16
	.word	4
	.word	_Label_3402
	.word	-20
	.word	4
	.word	_Label_3403
	.word	-24
	.word	4
	.word	_Label_3404
	.word	-28
	.word	4
	.word	_Label_3405
	.word	-32
	.word	4
	.word	_Label_3406
	.word	-36
	.word	4
	.word	_Label_3407
	.word	-40
	.word	4
	.word	_Label_3408
	.word	-44
	.word	4
	.word	_Label_3409
	.word	-48
	.word	4
	.word	_Label_3410
	.word	-52
	.word	4
	.word	_Label_3411
	.word	-56
	.word	4
	.word	_Label_3412
	.word	-60
	.word	4
	.word	_Label_3413
	.word	-64
	.word	4
	.word	_Label_3414
	.word	-68
	.word	4
	.word	_Label_3415
	.word	-72
	.word	4
	.word	_Label_3416
	.word	-76
	.word	4
	.word	_Label_3417
	.word	-80
	.word	4
	.word	_Label_3418
	.word	-84
	.word	4
	.word	_Label_3419
	.word	-88
	.word	4
	.word	_Label_3420
	.word	-92
	.word	4
	.word	_Label_3421
	.word	-96
	.word	4
	.word	_Label_3422
	.word	-100
	.word	4
	.word	_Label_3423
	.word	-104
	.word	4
	.word	_Label_3424
	.word	-108
	.word	4
	.word	_Label_3425
	.word	-112
	.word	4
	.word	_Label_3426
	.word	-9
	.word	1
	.word	_Label_3427
	.word	-10
	.word	1
	.word	_Label_3428
	.word	-116
	.word	4
	.word	_Label_3429
	.word	-120
	.word	4
	.word	_Label_3430
	.word	-124
	.word	4
	.word	_Label_3431
	.word	-128
	.word	4
	.word	_Label_3432
	.word	-132
	.word	4
	.word	_Label_3433
	.word	-136
	.word	4
	.word	0
_Label_3395:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3396:
	.ascii	"Pself\0"
	.align
_Label_3397:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3398:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3399:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3400:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3401:
	.byte	'?'
	.ascii	"_temp_3394\0"
	.align
_Label_3402:
	.byte	'?'
	.ascii	"_temp_3393\0"
	.align
_Label_3403:
	.byte	'?'
	.ascii	"_temp_3392\0"
	.align
_Label_3404:
	.byte	'?'
	.ascii	"_temp_3391\0"
	.align
_Label_3405:
	.byte	'?'
	.ascii	"_temp_3390\0"
	.align
_Label_3406:
	.byte	'?'
	.ascii	"_temp_3389\0"
	.align
_Label_3407:
	.byte	'?'
	.ascii	"_temp_3388\0"
	.align
_Label_3408:
	.byte	'?'
	.ascii	"_temp_3387\0"
	.align
_Label_3409:
	.byte	'?'
	.ascii	"_temp_3386\0"
	.align
_Label_3410:
	.byte	'?'
	.ascii	"_temp_3380\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3379\0"
	.align
_Label_3412:
	.byte	'?'
	.ascii	"_temp_3376\0"
	.align
_Label_3413:
	.byte	'?'
	.ascii	"_temp_3375\0"
	.align
_Label_3414:
	.byte	'?'
	.ascii	"_temp_3374\0"
	.align
_Label_3415:
	.byte	'?'
	.ascii	"_temp_3373\0"
	.align
_Label_3416:
	.byte	'?'
	.ascii	"_temp_3372\0"
	.align
_Label_3417:
	.byte	'?'
	.ascii	"_temp_3371\0"
	.align
_Label_3418:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
_Label_3419:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3357\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3356\0"
	.align
_Label_3426:
	.byte	'C'
	.ascii	"_temp_3355\0"
	.align
_Label_3427:
	.byte	'C'
	.ascii	"_temp_3352\0"
	.align
_Label_3428:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3429:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3430:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3431:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3432:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3433:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3434
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3434:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3435
	.word	_sourceFileName
	.word	362		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3435:
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
_Label_3887:
	push	r0
	sub	r1,1,r1
	bne	_Label_3887
	mov	3187,r13		! source line 3187
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3188,r13		! source line 3188
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3189,r13		! source line 3189
	mov	"\0\0AS",r10
	mov	3189,r13		! source line 3189
	mov	"\0\0SE",r10
!   _temp_3436 = &_P_Kernel_frameManager
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
	mov	3190,r13		! source line 3190
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3191,r13		! source line 3191
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3192,r13		! source line 3192
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3192,r13		! source line 3192
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
	.word	_Label_3437
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3439
	.word	-12
	.word	4
	.word	0
_Label_3437:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3438:
	.ascii	"Pself\0"
	.align
_Label_3439:
	.byte	'?'
	.ascii	"_temp_3436\0"
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
_Label_3888:
	push	r0
	sub	r1,1,r1
	bne	_Label_3888
	mov	3197,r13		! source line 3197
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3440 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3440  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3198,r13		! source line 3198
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3199,r13		! source line 3199
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3441 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3441  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3200,r13		! source line 3200
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3201,r13		! source line 3201
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3442 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3442  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3202,r13		! source line 3202
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3203,r13		! source line 3203
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3443 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3443  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3204,r13		! source line 3204
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3205,r13		! source line 3205
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3444 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3444  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3206,r13		! source line 3206
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3207,r13		! source line 3207
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3445 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3445  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3208,r13		! source line 3208
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3209,r13		! source line 3209
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3210,r13		! source line 3210
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3210,r13		! source line 3210
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
	.word	_Label_3446
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3448
	.word	-12
	.word	4
	.word	_Label_3449
	.word	-16
	.word	4
	.word	_Label_3450
	.word	-20
	.word	4
	.word	_Label_3451
	.word	-24
	.word	4
	.word	_Label_3452
	.word	-28
	.word	4
	.word	_Label_3453
	.word	-32
	.word	4
	.word	0
_Label_3446:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3447:
	.ascii	"Pself\0"
	.align
_Label_3448:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3449:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3443\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3452:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3454
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3454:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3455
	.word	_sourceFileName
	.word	379		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3455:
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
_Label_3889:
	push	r0
	sub	r1,1,r1
	bne	_Label_3889
	mov	3221,r13		! source line 3221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3456 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3456  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3222,r13		! source line 3222
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3223,r13		! source line 3223
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3457 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3457  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3224,r13		! source line 3224
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3225,r13		! source line 3225
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3459		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3459
!	jmp	_Label_3458
_Label_3458:
! THEN...
	mov	3226,r13		! source line 3226
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3226,r13		! source line 3226
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
	jmp	_Label_3460
_Label_3459:
! ELSE...
	mov	3228,r13		! source line 3228
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3461 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3461  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3228,r13		! source line 3228
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3460:
! RETURN STATEMENT...
	mov	3225,r13		! source line 3225
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
	.word	_Label_3462
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3464
	.word	-12
	.word	4
	.word	_Label_3465
	.word	-16
	.word	4
	.word	_Label_3466
	.word	-20
	.word	4
	.word	0
_Label_3462:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3463:
	.ascii	"Pself\0"
	.align
_Label_3464:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3465:
	.byte	'?'
	.ascii	"_temp_3457\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3456\0"
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
_Label_3890:
	push	r0
	sub	r1,1,r1
	bne	_Label_3890
	mov	3234,r13		! source line 3234
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3244,r13		! source line 3244
	mov	"\0\0SE",r10
!   _temp_3467 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3468 = _temp_3467 + 4
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
	mov	3245,r13		! source line 3245
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3246,r13		! source line 3246
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
	mov	3247,r13		! source line 3247
	mov	"\0\0SE",r10
!   _temp_3469 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3470 = _temp_3469 + 4
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
	mov	3248,r13		! source line 3248
	mov	"\0\0RE",r10
	mov	3248,r13		! source line 3248
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3473 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3472  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3471  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3471  (sizeInBytes=1)
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
	.word	_Label_3474
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3476
	.word	12
	.word	4
	.word	_Label_3477
	.word	16
	.word	4
	.word	_Label_3478
	.word	-16
	.word	4
	.word	_Label_3479
	.word	-20
	.word	4
	.word	_Label_3480
	.word	-9
	.word	1
	.word	_Label_3481
	.word	-24
	.word	4
	.word	_Label_3482
	.word	-28
	.word	4
	.word	_Label_3483
	.word	-32
	.word	4
	.word	_Label_3484
	.word	-36
	.word	4
	.word	_Label_3485
	.word	-40
	.word	4
	.word	0
_Label_3474:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3475:
	.ascii	"Pself\0"
	.align
_Label_3476:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3477:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3478:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3479:
	.byte	'?'
	.ascii	"_temp_3472\0"
	.align
_Label_3480:
	.byte	'C'
	.ascii	"_temp_3471\0"
	.align
_Label_3481:
	.byte	'?'
	.ascii	"_temp_3470\0"
	.align
_Label_3482:
	.byte	'?'
	.ascii	"_temp_3469\0"
	.align
_Label_3483:
	.byte	'?'
	.ascii	"_temp_3468\0"
	.align
_Label_3484:
	.byte	'?'
	.ascii	"_temp_3467\0"
	.align
_Label_3485:
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
_Label_3891:
	push	r0
	sub	r1,1,r1
	bne	_Label_3891
	mov	3253,r13		! source line 3253
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3258,r13		! source line 3258
	mov	"\0\0IF",r10
	mov	3258,r13		! source line 3258
	mov	"\0\0SE",r10
!   _temp_3489 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3490) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3489  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3488  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3488 then goto _Label_3487 else goto _Label_3486
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3486
	jmp	_Label_3487
_Label_3486:
! THEN...
	mov	3259,r13		! source line 3259
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3491 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3491  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3259,r13		! source line 3259
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3487:
! RETURN STATEMENT...
	mov	3261,r13		! source line 3261
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
	.word	_Label_3492
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3494
	.word	-16
	.word	4
	.word	_Label_3495
	.word	-20
	.word	4
	.word	_Label_3496
	.word	-24
	.word	4
	.word	_Label_3497
	.word	-9
	.word	1
	.word	_Label_3498
	.word	-28
	.word	4
	.word	0
_Label_3492:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3493:
	.ascii	"Pself\0"
	.align
_Label_3494:
	.byte	'?'
	.ascii	"_temp_3491\0"
	.align
_Label_3495:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3496:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3497:
	.byte	'C'
	.ascii	"_temp_3488\0"
	.align
_Label_3498:
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
_Label_3892:
	push	r0
	sub	r1,1,r1
	bne	_Label_3892
	mov	3266,r13		! source line 3266
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3292,r13		! source line 3292
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3502 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3501 = *_temp_3502  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3501) then goto _Label_3500
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3500
!	jmp	_Label_3499
_Label_3499:
! THEN...
	mov	3293,r13		! source line 3293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3503 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3503  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3293,r13		! source line 3293
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3500:
! IF STATEMENT...
	mov	3297,r13		! source line 3297
	mov	"\0\0IF",r10
	mov	3297,r13		! source line 3297
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3507) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3506  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3506 == 1112300152 then goto _Label_3505		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3505
!	jmp	_Label_3504
_Label_3504:
! THEN...
	mov	3298,r13		! source line 3298
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3508 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3508  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3298,r13		! source line 3298
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3299,r13		! source line 3299
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3505:
! ASSIGNMENT STATEMENT...
	mov	3303,r13		! source line 3303
	mov	"\0\0AS",r10
	mov	3303,r13		! source line 3303
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3509) then goto _runtimeErrorNullPointer
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
	mov	3304,r13		! source line 3304
	mov	"\0\0AS",r10
	mov	3304,r13		! source line 3304
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3510) then goto _runtimeErrorNullPointer
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
	mov	3305,r13		! source line 3305
	mov	"\0\0AS",r10
	mov	3305,r13		! source line 3305
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3511) then goto _runtimeErrorNullPointer
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
	mov	3306,r13		! source line 3306
	mov	"\0\0AS",r10
	mov	3306,r13		! source line 3306
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3512) then goto _runtimeErrorNullPointer
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
	mov	3307,r13		! source line 3307
	mov	"\0\0AS",r10
	mov	3307,r13		! source line 3307
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3513) then goto _runtimeErrorNullPointer
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
	mov	3308,r13		! source line 3308
	mov	"\0\0AS",r10
	mov	3308,r13		! source line 3308
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3514) then goto _runtimeErrorNullPointer
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
	mov	3311,r13		! source line 3311
	mov	"\0\0IF",r10
!   _temp_3517 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3517) then goto _Label_3516
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3516
!	jmp	_Label_3515
_Label_3515:
! THEN...
	mov	3312,r13		! source line 3312
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3518 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3518  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3312,r13		! source line 3312
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3313,r13		! source line 3313
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3516:
! ASSIGNMENT STATEMENT...
	mov	3315,r13		! source line 3315
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
	mov	3319,r13		! source line 3319
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3520
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3520
!	jmp	_Label_3519
_Label_3519:
! THEN...
	mov	3320,r13		! source line 3320
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3521 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3521  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3320,r13		! source line 3320
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3321,r13		! source line 3321
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3520:
! IF STATEMENT...
	mov	3325,r13		! source line 3325
	mov	"\0\0IF",r10
!   _temp_3524 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3524) then goto _Label_3523
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3523
!	jmp	_Label_3522
_Label_3522:
! THEN...
	mov	3326,r13		! source line 3326
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3525 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3525  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3326,r13		! source line 3326
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3327,r13		! source line 3327
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3523:
! IF STATEMENT...
	mov	3329,r13		! source line 3329
	mov	"\0\0IF",r10
!   _temp_3528 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3528 then goto _Label_3527		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3527
!	jmp	_Label_3526
_Label_3526:
! THEN...
	mov	3330,r13		! source line 3330
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3529 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3529  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3330,r13		! source line 3330
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3331,r13		! source line 3331
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3527:
! ASSIGNMENT STATEMENT...
	mov	3333,r13		! source line 3333
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
	mov	3336,r13		! source line 3336
	mov	"\0\0IF",r10
!   _temp_3532 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3532) then goto _Label_3531
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3531
!	jmp	_Label_3530
_Label_3530:
! THEN...
	mov	3337,r13		! source line 3337
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3533 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3533  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3337,r13		! source line 3337
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3338,r13		! source line 3338
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3531:
! IF STATEMENT...
	mov	3340,r13		! source line 3340
	mov	"\0\0IF",r10
!   _temp_3536 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3536 then goto _Label_3535		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3535
!	jmp	_Label_3534
_Label_3534:
! THEN...
	mov	3341,r13		! source line 3341
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3537 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3537  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3341,r13		! source line 3341
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3342,r13		! source line 3342
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3535:
! ASSIGNMENT STATEMENT...
	mov	3344,r13		! source line 3344
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
	mov	3347,r13		! source line 3347
	mov	"\0\0AS",r10
!   _temp_3540 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3539 = _temp_3540 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3538 = _temp_3539 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3538 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3362,r13		! source line 3362
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3542		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3542
!	jmp	_Label_3541
_Label_3541:
! THEN...
	mov	3363,r13		! source line 3363
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3543 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3543  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3363,r13		! source line 3363
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3544 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3544  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3364,r13		! source line 3364
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3545 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3545  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3365,r13		! source line 3365
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3366,r13		! source line 3366
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3542:
! SEND STATEMENT...
	mov	3368,r13		! source line 3368
	mov	"\0\0SE",r10
!   _temp_3546 = &_P_Kernel_frameManager
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
	mov	3374,r13		! source line 3374
	mov	"\0\0IF",r10
	mov	3374,r13		! source line 3374
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3550) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3549 == 707406378 then goto _Label_3548		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3548
!	jmp	_Label_3547
_Label_3547:
! THEN...
	mov	3375,r13		! source line 3375
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3551 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3551  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3375,r13		! source line 3375
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3376,r13		! source line 3376
	mov	"\0\0SE",r10
!   _temp_3552 = &_P_Kernel_frameManager
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
	mov	3377,r13		! source line 3377
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3548:
! ASSIGNMENT STATEMENT...
	mov	3381,r13		! source line 3381
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
	mov	3382,r13		! source line 3382
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3557 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3558 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3557  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3553:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3558 then goto _Label_3556		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3556
_Label_3554:
	mov	3382,r13		! source line 3382
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3383,r13		! source line 3383
	mov	"\0\0AS",r10
	mov	3383,r13		! source line 3383
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
	mov	3386,r13		! source line 3386
	mov	"\0\0IF",r10
	mov	3386,r13		! source line 3386
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3562) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3561  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3561 then goto _Label_3560 else goto _Label_3559
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3559
	jmp	_Label_3560
_Label_3559:
! THEN...
	mov	3387,r13		! source line 3387
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3563 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3563  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3387,r13		! source line 3387
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3388,r13		! source line 3388
	mov	"\0\0SE",r10
!   _temp_3564 = &_P_Kernel_frameManager
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
	mov	3389,r13		! source line 3389
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3560:
! SEND STATEMENT...
	mov	3391,r13		! source line 3391
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
	mov	3392,r13		! source line 3392
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3555:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3553
! END FOR
_Label_3556:
! IF STATEMENT...
	mov	3396,r13		! source line 3396
	mov	"\0\0IF",r10
	mov	3396,r13		! source line 3396
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3568) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3567  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3567 == 707406378 then goto _Label_3566		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3566
!	jmp	_Label_3565
_Label_3565:
! THEN...
	mov	3397,r13		! source line 3397
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3569 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3569  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3397,r13		! source line 3397
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3398,r13		! source line 3398
	mov	"\0\0SE",r10
!   _temp_3570 = &_P_Kernel_frameManager
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
	mov	3399,r13		! source line 3399
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3566:
! FOR STATEMENT...
	mov	3403,r13		! source line 3403
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3575 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3576 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3575  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3571:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3576 then goto _Label_3574		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3574
_Label_3572:
	mov	3403,r13		! source line 3403
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3404,r13		! source line 3404
	mov	"\0\0AS",r10
	mov	3404,r13		! source line 3404
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
	mov	3407,r13		! source line 3407
	mov	"\0\0IF",r10
	mov	3407,r13		! source line 3407
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3580) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3579  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3579 then goto _Label_3578 else goto _Label_3577
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3577
	jmp	_Label_3578
_Label_3577:
! THEN...
	mov	3408,r13		! source line 3408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3581 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3581  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3408,r13		! source line 3408
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3409,r13		! source line 3409
	mov	"\0\0SE",r10
!   _temp_3582 = &_P_Kernel_frameManager
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
	mov	3410,r13		! source line 3410
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3578:
! ASSIGNMENT STATEMENT...
	mov	3412,r13		! source line 3412
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3573:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3571
! END FOR
_Label_3574:
! IF STATEMENT...
	mov	3416,r13		! source line 3416
	mov	"\0\0IF",r10
	mov	3416,r13		! source line 3416
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3586) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3585  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3585 == 707406378 then goto _Label_3584		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3584
!	jmp	_Label_3583
_Label_3583:
! THEN...
	mov	3417,r13		! source line 3417
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3587 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3587  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3417,r13		! source line 3417
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3418,r13		! source line 3418
	mov	"\0\0SE",r10
!   _temp_3588 = &_P_Kernel_frameManager
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
	mov	3419,r13		! source line 3419
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3584:
! ASSIGNMENT STATEMENT...
	mov	3423,r13		! source line 3423
	mov	"\0\0AS",r10
	mov	3423,r13		! source line 3423
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
	mov	3427,r13		! source line 3427
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3430,r13		! source line 3430
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
	.word	_Label_3589
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3590
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3591
	.word	12
	.word	4
	.word	_Label_3592
	.word	-16
	.word	4
	.word	_Label_3593
	.word	-20
	.word	4
	.word	_Label_3594
	.word	-24
	.word	4
	.word	_Label_3595
	.word	-28
	.word	4
	.word	_Label_3596
	.word	-32
	.word	4
	.word	_Label_3597
	.word	-36
	.word	4
	.word	_Label_3598
	.word	-40
	.word	4
	.word	_Label_3599
	.word	-9
	.word	1
	.word	_Label_3600
	.word	-44
	.word	4
	.word	_Label_3601
	.word	-48
	.word	4
	.word	_Label_3602
	.word	-52
	.word	4
	.word	_Label_3603
	.word	-56
	.word	4
	.word	_Label_3604
	.word	-60
	.word	4
	.word	_Label_3605
	.word	-64
	.word	4
	.word	_Label_3606
	.word	-68
	.word	4
	.word	_Label_3607
	.word	-72
	.word	4
	.word	_Label_3608
	.word	-76
	.word	4
	.word	_Label_3609
	.word	-10
	.word	1
	.word	_Label_3610
	.word	-80
	.word	4
	.word	_Label_3611
	.word	-84
	.word	4
	.word	_Label_3612
	.word	-88
	.word	4
	.word	_Label_3613
	.word	-92
	.word	4
	.word	_Label_3614
	.word	-96
	.word	4
	.word	_Label_3615
	.word	-100
	.word	4
	.word	_Label_3616
	.word	-104
	.word	4
	.word	_Label_3617
	.word	-108
	.word	4
	.word	_Label_3618
	.word	-112
	.word	4
	.word	_Label_3619
	.word	-116
	.word	4
	.word	_Label_3620
	.word	-120
	.word	4
	.word	_Label_3621
	.word	-124
	.word	4
	.word	_Label_3622
	.word	-128
	.word	4
	.word	_Label_3623
	.word	-132
	.word	4
	.word	_Label_3624
	.word	-136
	.word	4
	.word	_Label_3625
	.word	-140
	.word	4
	.word	_Label_3626
	.word	-144
	.word	4
	.word	_Label_3627
	.word	-148
	.word	4
	.word	_Label_3628
	.word	-152
	.word	4
	.word	_Label_3629
	.word	-156
	.word	4
	.word	_Label_3630
	.word	-160
	.word	4
	.word	_Label_3631
	.word	-164
	.word	4
	.word	_Label_3632
	.word	-168
	.word	4
	.word	_Label_3633
	.word	-172
	.word	4
	.word	_Label_3634
	.word	-176
	.word	4
	.word	_Label_3635
	.word	-180
	.word	4
	.word	_Label_3636
	.word	-184
	.word	4
	.word	_Label_3637
	.word	-188
	.word	4
	.word	_Label_3638
	.word	-192
	.word	4
	.word	_Label_3639
	.word	-196
	.word	4
	.word	_Label_3640
	.word	-200
	.word	4
	.word	_Label_3641
	.word	-204
	.word	4
	.word	_Label_3642
	.word	-208
	.word	4
	.word	_Label_3643
	.word	-212
	.word	4
	.word	_Label_3644
	.word	-216
	.word	4
	.word	_Label_3645
	.word	-220
	.word	4
	.word	_Label_3646
	.word	-224
	.word	4
	.word	_Label_3647
	.word	-228
	.word	4
	.word	_Label_3648
	.word	-232
	.word	4
	.word	_Label_3649
	.word	-236
	.word	4
	.word	_Label_3650
	.word	-240
	.word	4
	.word	_Label_3651
	.word	-244
	.word	4
	.word	_Label_3652
	.word	-248
	.word	4
	.word	_Label_3653
	.word	-252
	.word	4
	.word	_Label_3654
	.word	-256
	.word	4
	.word	_Label_3655
	.word	-260
	.word	4
	.word	_Label_3656
	.word	-264
	.word	4
	.word	_Label_3657
	.word	-268
	.word	4
	.word	0
_Label_3589:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3590:
	.ascii	"Pself\0"
	.align
_Label_3591:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3588\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3587\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3586\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3585\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3582\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3581\0"
	.align
_Label_3598:
	.byte	'?'
	.ascii	"_temp_3580\0"
	.align
_Label_3599:
	.byte	'C'
	.ascii	"_temp_3579\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3576\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3575\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3570\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3569\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3568\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3567\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3564\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3563\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3562\0"
	.align
_Label_3609:
	.byte	'C'
	.ascii	"_temp_3561\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3551\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3550\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3549\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3546\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3545\0"
	.align
_Label_3618:
	.byte	'?'
	.ascii	"_temp_3544\0"
	.align
_Label_3619:
	.byte	'?'
	.ascii	"_temp_3543\0"
	.align
_Label_3620:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3621:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3622:
	.byte	'?'
	.ascii	"_temp_3538\0"
	.align
_Label_3623:
	.byte	'?'
	.ascii	"_temp_3537\0"
	.align
_Label_3624:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3625:
	.byte	'?'
	.ascii	"_temp_3533\0"
	.align
_Label_3626:
	.byte	'?'
	.ascii	"_temp_3532\0"
	.align
_Label_3627:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3628:
	.byte	'?'
	.ascii	"_temp_3528\0"
	.align
_Label_3629:
	.byte	'?'
	.ascii	"_temp_3525\0"
	.align
_Label_3630:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3631:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3632:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3633:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3634:
	.byte	'?'
	.ascii	"_temp_3514\0"
	.align
_Label_3635:
	.byte	'?'
	.ascii	"_temp_3513\0"
	.align
_Label_3636:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3637:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3638:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3639:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3640:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3641:
	.byte	'?'
	.ascii	"_temp_3507\0"
	.align
_Label_3642:
	.byte	'?'
	.ascii	"_temp_3506\0"
	.align
_Label_3643:
	.byte	'?'
	.ascii	"_temp_3503\0"
	.align
_Label_3644:
	.byte	'?'
	.ascii	"_temp_3502\0"
	.align
_Label_3645:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3646:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3647:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3648:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3649:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3650:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3651:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3652:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3653:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3654:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3655:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3656:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3657:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_3658
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_3658:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3659
	.word	_sourceFileName
	.word	399		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_3659:
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
	mov	27,r1
_Label_3893:
	push	r0
	sub	r1,1,r1
	bne	_Label_3893
	mov	3439,r13		! source line 3439
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3660 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3660  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	3442,r13		! source line 3442
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	3444,r13		! source line 3444
	mov	"\0\0AS",r10
!   if intIsZero (serial_status_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *serial_status_word_address = 16776960  (sizeInBytes=4)
	set	16776960,r1
	load	[r14+8],r2
	load	[r2+4],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3445,r13		! source line 3445
	mov	"\0\0AS",r10
!   if intIsZero (serial_data_word_address) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *serial_data_word_address = 16776964  (sizeInBytes=4)
	set	16776964,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3447,r13		! source line 3447
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
	mov	3448,r13		! source line 3448
	mov	"\0\0SE",r10
!   _temp_3662 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-100]
!   Send message Init
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3450,r13		! source line 3450
	mov	"\0\0AS",r10
!   _temp_3663 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-96]
!   NEW ARRAY Constructor...
!   _temp_3665 = &_temp_3664
	add	r14,-92,r1
	store	r1,[r14+-76]
!   _temp_3665 = _temp_3665 + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Next value...
	mov	10,r1
	store	r1,[r14+-72]
_Label_3667:
!   Data Move: *_temp_3665 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-76],r2
	storeb	r1,[r2]
!   _temp_3665 = _temp_3665 + 1
	load	[r14+-76],r1
	add	r1,1,r1
	store	r1,[r14+-76]
!   _temp_3666 = _temp_3666 + -1
	load	[r14+-72],r1
	add	r1,-1,r1
	store	r1,[r14+-72]
!   if intNotZero (_temp_3666) then goto _Label_3667
	load	[r14+-72],r1
	cmp	r1,r0
	bne	_Label_3667
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-92]
!   _temp_3668 = &_temp_3664
	add	r14,-92,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-96],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3894
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3894:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3663 = *_temp_3668  (sizeInBytes=16)
	load	[r14+-68],r5
	load	[r14+-96],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3451,r13		! source line 3451
	mov	"\0\0AS",r10
!   getBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! ASSIGNMENT STATEMENT...
	mov	3452,r13		! source line 3452
	mov	"\0\0AS",r10
!   getBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	3453,r13		! source line 3453
	mov	"\0\0AS",r10
!   getBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3454,r13		! source line 3454
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
	mov	3455,r13		! source line 3455
	mov	"\0\0SE",r10
!   _temp_3670 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3457,r13		! source line 3457
	mov	"\0\0AS",r10
!   _temp_3671 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   NEW ARRAY Constructor...
!   _temp_3673 = &_temp_3672
	add	r14,-52,r1
	store	r1,[r14+-36]
!   _temp_3673 = _temp_3673 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Next value...
	mov	10,r1
	store	r1,[r14+-32]
_Label_3675:
!   Data Move: *_temp_3673 = 32  (sizeInBytes=1)
	mov	32,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
!   _temp_3673 = _temp_3673 + 1
	load	[r14+-36],r1
	add	r1,1,r1
	store	r1,[r14+-36]
!   _temp_3674 = _temp_3674 + -1
	load	[r14+-32],r1
	add	r1,-1,r1
	store	r1,[r14+-32]
!   if intNotZero (_temp_3674) then goto _Label_3675
	load	[r14+-32],r1
	cmp	r1,r0
	bne	_Label_3675
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-52]
!   _temp_3676 = &_temp_3672
	add	r14,-52,r1
	store	r1,[r14+-28]
!   make sure array has size 10
	load	[r14+-56],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3895
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3895:
!   make sure array has size 10
	load	[r14+-28],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_3671 = *_temp_3676  (sizeInBytes=16)
	load	[r14+-28],r5
	load	[r14+-56],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
! ASSIGNMENT STATEMENT...
	mov	3458,r13		! source line 3458
	mov	"\0\0AS",r10
!   putBufferSize = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	3459,r13		! source line 3459
	mov	"\0\0AS",r10
!   putBufferNextIn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3460,r13		! source line 3460
	mov	"\0\0AS",r10
!   putBufferNextOut = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	3461,r13		! source line 3461
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
	mov	3462,r13		! source line 3462
	mov	"\0\0SE",r10
!   _temp_3678 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
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
	mov	3464,r13		! source line 3464
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
	mov	3465,r13		! source line 3465
	mov	"\0\0SE",r10
!   _temp_3680 = &serialNeedsAttention
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3467,r13		! source line 3467
	mov	"\0\0AS",r10
!   _P_Kernel_serialHasBeenInitialized = 1		(1 byte)
	mov	1,r1
	set	_P_Kernel_serialHasBeenInitialized,r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3467,r13		! source line 3467
	mov	"\0\0RE",r10
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_3681
	.word	4		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_3682
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3683
	.word	-12
	.word	4
	.word	_Label_3684
	.word	-16
	.word	4
	.word	_Label_3685
	.word	-20
	.word	4
	.word	_Label_3686
	.word	-24
	.word	4
	.word	_Label_3687
	.word	-28
	.word	4
	.word	_Label_3688
	.word	-32
	.word	4
	.word	_Label_3689
	.word	-36
	.word	4
	.word	_Label_3690
	.word	-52
	.word	16
	.word	_Label_3691
	.word	-56
	.word	4
	.word	_Label_3692
	.word	-60
	.word	4
	.word	_Label_3693
	.word	-64
	.word	4
	.word	_Label_3694
	.word	-68
	.word	4
	.word	_Label_3695
	.word	-72
	.word	4
	.word	_Label_3696
	.word	-76
	.word	4
	.word	_Label_3697
	.word	-92
	.word	16
	.word	_Label_3698
	.word	-96
	.word	4
	.word	_Label_3699
	.word	-100
	.word	4
	.word	_Label_3700
	.word	-104
	.word	4
	.word	_Label_3701
	.word	-108
	.word	4
	.word	0
_Label_3681:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3682:
	.ascii	"Pself\0"
	.align
_Label_3683:
	.byte	'?'
	.ascii	"_temp_3680\0"
	.align
_Label_3684:
	.byte	'?'
	.ascii	"_temp_3679\0"
	.align
_Label_3685:
	.byte	'?'
	.ascii	"_temp_3678\0"
	.align
_Label_3686:
	.byte	'?'
	.ascii	"_temp_3677\0"
	.align
_Label_3687:
	.byte	'?'
	.ascii	"_temp_3676\0"
	.align
_Label_3688:
	.byte	'?'
	.ascii	"_temp_3674\0"
	.align
_Label_3689:
	.byte	'?'
	.ascii	"_temp_3673\0"
	.align
_Label_3690:
	.byte	'?'
	.ascii	"_temp_3672\0"
	.align
_Label_3691:
	.byte	'?'
	.ascii	"_temp_3671\0"
	.align
_Label_3692:
	.byte	'?'
	.ascii	"_temp_3670\0"
	.align
_Label_3693:
	.byte	'?'
	.ascii	"_temp_3669\0"
	.align
_Label_3694:
	.byte	'?'
	.ascii	"_temp_3668\0"
	.align
_Label_3695:
	.byte	'?'
	.ascii	"_temp_3666\0"
	.align
_Label_3696:
	.byte	'?'
	.ascii	"_temp_3665\0"
	.align
_Label_3697:
	.byte	'?'
	.ascii	"_temp_3664\0"
	.align
_Label_3698:
	.byte	'?'
	.ascii	"_temp_3663\0"
	.align
_Label_3699:
	.byte	'?'
	.ascii	"_temp_3662\0"
	.align
_Label_3700:
	.byte	'?'
	.ascii	"_temp_3661\0"
	.align
_Label_3701:
	.byte	'?'
	.ascii	"_temp_3660\0"
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
	mov	7,r1
_Label_3896:
	push	r0
	sub	r1,1,r1
	bne	_Label_3896
	mov	3471,r13		! source line 3471
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3477,r13		! source line 3477
	mov	"\0\0SE",r10
!   _temp_3702 = &putBufferSem
	load	[r14+8],r1
	add	r1,104,r1
	store	r1,[r14+-32]
!   Send message Down
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3480,r13		! source line 3480
	mov	"\0\0SE",r10
!   _temp_3703 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-28]
!   _temp_3704 = _temp_3703 + 12
	load	[r14+-28],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	3483,r13		! source line 3483
	mov	"\0\0AS",r10
!   _temp_3705 = &putBuffer
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Move address of _temp_3705 [putBufferNextIn ] into _temp_3706
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+96],r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: *_temp_3706 = value  (sizeInBytes=1)
	loadb	[r14+12],r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3486,r13		! source line 3486
	mov	"\0\0AS",r10
!   putBufferNextIn = putBufferNextIn + 1		(int)
	load	[r14+8],r1
	load	[r1+96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	3487,r13		! source line 3487
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
	mov	3490,r13		! source line 3490
	mov	"\0\0SE",r10
!   _temp_3707 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Send message Lock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	3490,r13		! source line 3490
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_3708
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3709
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3710
	.word	12
	.word	1
	.word	_Label_3711
	.word	-12
	.word	4
	.word	_Label_3712
	.word	-16
	.word	4
	.word	_Label_3713
	.word	-20
	.word	4
	.word	_Label_3714
	.word	-24
	.word	4
	.word	_Label_3715
	.word	-28
	.word	4
	.word	_Label_3716
	.word	-32
	.word	4
	.word	0
_Label_3708:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_3709:
	.ascii	"Pself\0"
	.align
_Label_3710:
	.byte	'C'
	.ascii	"value\0"
	.align
_Label_3711:
	.byte	'?'
	.ascii	"_temp_3707\0"
	.align
_Label_3712:
	.byte	'?'
	.ascii	"_temp_3706\0"
	.align
_Label_3713:
	.byte	'?'
	.ascii	"_temp_3705\0"
	.align
_Label_3714:
	.byte	'?'
	.ascii	"_temp_3704\0"
	.align
_Label_3715:
	.byte	'?'
	.ascii	"_temp_3703\0"
	.align
_Label_3716:
	.byte	'?'
	.ascii	"_temp_3702\0"
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
	mov	12,r1
_Label_3897:
	push	r0
	sub	r1,1,r1
	bne	_Label_3897
	mov	3494,r13		! source line 3494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3503,r13		! source line 3503
	mov	"\0\0SE",r10
!   _temp_3717 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Send message Unlock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! WHILE STATEMENT...
	mov	3506,r13		! source line 3506
	mov	"\0\0WH",r10
_Label_3718:
!   if intIsZero (getBufferSize) then goto _Label_3719
	load	[r14+8],r1
	load	[r1+48],r1
	cmp	r1,r0
	be	_Label_3719
	jmp	_Label_3720
_Label_3719:
	mov	3506,r13		! source line 3506
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	3507,r13		! source line 3507
	mov	"\0\0SE",r10
!   _temp_3721 = &serialLock
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   _temp_3722 = &getCharacterAvail
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3721  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_3718
_Label_3720:
! ASSIGNMENT STATEMENT...
	mov	3511,r13		! source line 3511
	mov	"\0\0AS",r10
!   _temp_3723 = &getBuffer
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Move address of _temp_3723 [getBufferNextOut ] into _temp_3724
!     make sure index expr is >= 0
	load	[r14+8],r2
	load	[r2+56],r2
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
!   Data Move: tmpChar = *_temp_3724  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
! ASSIGNMENT STATEMENT...
	mov	3513,r13		! source line 3513
	mov	"\0\0AS",r10
!   getBufferNextOut = getBufferNextOut + 1		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	3514,r13		! source line 3514
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
	mov	3517,r13		! source line 3517
	mov	"\0\0SE",r10
!   _temp_3725 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-28]
!   _temp_3726 = _temp_3725 + 12
	load	[r14+-28],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Send message Lock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	3518,r13		! source line 3518
	mov	"\0\0SE",r10
!   _temp_3727 = &_P_Kernel_serialDriver
	set	_P_Kernel_serialDriver,r1
	store	r1,[r14+-20]
!   _temp_3728 = _temp_3727 + 124
	load	[r14+-20],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	3521,r13		! source line 3521
	mov	"\0\0RE",r10
!   ReturnResult: tmpChar  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_3729
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_3730
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3731
	.word	-16
	.word	4
	.word	_Label_3732
	.word	-20
	.word	4
	.word	_Label_3733
	.word	-24
	.word	4
	.word	_Label_3734
	.word	-28
	.word	4
	.word	_Label_3735
	.word	-32
	.word	4
	.word	_Label_3736
	.word	-36
	.word	4
	.word	_Label_3737
	.word	-40
	.word	4
	.word	_Label_3738
	.word	-44
	.word	4
	.word	_Label_3739
	.word	-48
	.word	4
	.word	_Label_3740
	.word	-9
	.word	1
	.word	0
_Label_3729:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_3730:
	.ascii	"Pself\0"
	.align
_Label_3731:
	.byte	'?'
	.ascii	"_temp_3728\0"
	.align
_Label_3732:
	.byte	'?'
	.ascii	"_temp_3727\0"
	.align
_Label_3733:
	.byte	'?'
	.ascii	"_temp_3726\0"
	.align
_Label_3734:
	.byte	'?'
	.ascii	"_temp_3725\0"
	.align
_Label_3735:
	.byte	'?'
	.ascii	"_temp_3724\0"
	.align
_Label_3736:
	.byte	'?'
	.ascii	"_temp_3723\0"
	.align
_Label_3737:
	.byte	'?'
	.ascii	"_temp_3722\0"
	.align
_Label_3738:
	.byte	'?'
	.ascii	"_temp_3721\0"
	.align
_Label_3739:
	.byte	'?'
	.ascii	"_temp_3717\0"
	.align
_Label_3740:
	.byte	'C'
	.ascii	"tmpChar\0"
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
	mov	3525,r13		! source line 3525
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	3535,r13		! source line 3535
	mov	"\0\0WH",r10
_Label_3741:
!	jmp	_Label_3742
_Label_3742:
	mov	3535,r13		! source line 3535
	mov	"\0\0WB",r10
! END WHILE...
	jmp	_Label_3741
_Label_3743:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_3744
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3745
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_3744:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_3745:
	.ascii	"Pself\0"
	.align
