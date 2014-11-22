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
	set	0xdfa5e74d,r4		! myHashVal = -542775475
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
_Label_3641:
	push	r0
	sub	r1,1,r1
	bne	_Label_3641
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
_Label_3642:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3642
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
_Label_3643:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3643
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
_Label_3644:
	push	r0
	sub	r1,1,r1
	bne	_Label_3644
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
_Label_3645:
	push	r0
	sub	r1,1,r1
	bne	_Label_3645
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
_Label_3646:
	push	r0
	sub	r1,1,r1
	bne	_Label_3646
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
_Label_3647:
	push	r0
	sub	r1,1,r1
	bne	_Label_3647
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
_Label_3648:
	push	r0
	sub	r1,1,r1
	bne	_Label_3648
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
_Label_3649:
	push	r0
	sub	r1,1,r1
	bne	_Label_3649
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
_Label_3650:
	push	r0
	sub	r1,1,r1
	bne	_Label_3650
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
_Label_3651:
	push	r0
	sub	r1,1,r1
	bne	_Label_3651
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
_Label_3652:
	push	r0
	sub	r1,1,r1
	bne	_Label_3652
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
_Label_3653:
	push	r0
	sub	r1,1,r1
	bne	_Label_3653
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
_Label_3654:
	push	r0
	sub	r1,1,r1
	bne	_Label_3654
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
_Label_3655:
	push	r0
	sub	r1,1,r1
	bne	_Label_3655
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
_Label_3656:
	push	r0
	sub	r1,1,r1
	bne	_Label_3656
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
_Label_3657:
	push	r0
	sub	r1,1,r1
	bne	_Label_3657
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
_Label_3658:
	push	r0
	sub	r1,1,r1
	bne	_Label_3658
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
_Label_3659:
	push	r0
	sub	r1,1,r1
	bne	_Label_3659
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
_Label_3660:
	push	r0
	sub	r1,1,r1
	bne	_Label_3660
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
_Label_3661:
	push	r0
	sub	r1,1,r1
	bne	_Label_3661
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
_Label_3662:
	push	r0
	sub	r1,1,r1
	bne	_Label_3662
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
_Label_3663:
	push	r0
	sub	r1,1,r1
	bne	_Label_3663
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
_Label_3664:
	push	r0
	sub	r1,1,r1
	bne	_Label_3664
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
_Label_3665:
	push	r0
	sub	r1,1,r1
	bne	_Label_3665
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
_Label_3666:
	push	r0
	sub	r1,1,r1
	bne	_Label_3666
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
	be	_Label_3667
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_543
_Label_3667:
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
_Label_3668:
	push	r0
	sub	r1,1,r1
	bne	_Label_3668
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
_Label_3669:
	push	r0
	sub	r1,1,r1
	bne	_Label_3669
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
_Label_3670:
	push	r0
	sub	r1,1,r1
	bne	_Label_3670
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
_Label_3671:
	push	r0
	sub	r1,1,r1
	bne	_Label_3671
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
_Label_3672:
	push	r0
	sub	r1,1,r1
	bne	_Label_3672
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
	mov	58,r1
_Label_3673:
	push	r0
	sub	r1,1,r1
	bne	_Label_3673
	mov	2088,r13		! source line 2088
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-176,r4
	mov	23,r3
_Label_3674:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3674
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-176]
! SEND STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   _temp_781 = &newAddrSpace
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
	store	r1,[r14+-72]
!   Data Move: ptrToPCB = *_temp_782  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-204]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
	mov	2116,r13		! source line 2116
	mov	"\0\0SE",r10
!   _temp_783 = &stringStorage
	add	r14,-200,r1
	store	r1,[r14+-68]
!   _temp_784 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = ptrToPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_783  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_784  sizeInBytes=4
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
	mov	2117,r13		! source line 2117
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_787		(int)
	load	[r14+-212],r1
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
	add	r15,236,r15
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
	add	r14,-200,r1
	store	r1,[r14+-56]
!   _temp_789 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_788  sizeInBytes=4
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
	mov	2123,r13		! source line 2123
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_790
	load	[r14+-84],r1
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
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_791:
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
	mov	2132,r13		! source line 2132
	mov	"\0\0SE",r10
!   _temp_792 = &newAddrSpace
	add	r14,-176,r1
	store	r1,[r14+-48]
!   if intIsZero (ptrOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_792  sizeInBytes=4
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
	mov	2133,r13		! source line 2133
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_794		(int)
	load	[r14+-208],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_794
!	jmp	_Label_793
_Label_793:
! THEN...
	mov	2134,r13		! source line 2134
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,236,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_794:
! ASSIGNMENT STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_795 = ptrToPCB + 32
	load	[r14+-204],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_795 = newAddrSpace  (sizeInBytes=92)
	add	r14,-176,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3675:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3675
! SEND STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0SE",r10
!   _temp_796 = &_P_Kernel_fileManager
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
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
!   _temp_798 = &newAddrSpace
	add	r14,-176,r1
	store	r1,[r14+-32]
!   _temp_799 = _temp_798 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_797 = *_temp_799  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_797 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-216]
! ASSIGNMENT STATEMENT...
	mov	2143,r13		! source line 2143
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_800 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_800 [999 ] into _temp_801
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
!   ptrInitSystemStackTop = _temp_801		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2144,r13		! source line 2144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_802 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_802 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_803 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-220],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_803  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2146,r13		! source line 2146
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2147,r13		! source line 2147
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
	.word	_Label_804
	.word	4		! total size of parameters
	.word	232		! frame size = 232
	.word	_Label_805
	.word	8
	.word	4
	.word	_Label_806
	.word	-12
	.word	4
	.word	_Label_807
	.word	-16
	.word	4
	.word	_Label_808
	.word	-20
	.word	4
	.word	_Label_809
	.word	-24
	.word	4
	.word	_Label_810
	.word	-28
	.word	4
	.word	_Label_811
	.word	-32
	.word	4
	.word	_Label_812
	.word	-36
	.word	4
	.word	_Label_813
	.word	-40
	.word	4
	.word	_Label_814
	.word	-44
	.word	4
	.word	_Label_815
	.word	-48
	.word	4
	.word	_Label_816
	.word	-52
	.word	4
	.word	_Label_817
	.word	-56
	.word	4
	.word	_Label_818
	.word	-60
	.word	4
	.word	_Label_819
	.word	-64
	.word	4
	.word	_Label_820
	.word	-68
	.word	4
	.word	_Label_821
	.word	-72
	.word	4
	.word	_Label_822
	.word	-76
	.word	4
	.word	_Label_823
	.word	-80
	.word	4
	.word	_Label_824
	.word	-84
	.word	4
	.word	_Label_825
	.word	-176
	.word	92
	.word	_Label_826
	.word	-200
	.word	24
	.word	_Label_827
	.word	-204
	.word	4
	.word	_Label_828
	.word	-208
	.word	4
	.word	_Label_829
	.word	-212
	.word	4
	.word	_Label_830
	.word	-216
	.word	4
	.word	_Label_831
	.word	-220
	.word	4
	.word	_Label_832
	.word	-224
	.word	4
	.word	0
_Label_804:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_805:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_824:
	.byte	'P'
	.ascii	"ptrOpenFile\0"
	.align
_Label_825:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_826:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_827:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_828:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_829:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_830:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_831:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_832:
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
_Label_3676:
	push	r0
	sub	r1,1,r1
	bne	_Label_3676
	mov	2150,r13		! source line 2150
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0AS",r10
	mov	2155,r13		! source line 2155
	mov	"\0\0SE",r10
!   _temp_833 = &stringStorage
	add	r14,-56,r1
	store	r1,[r14+-32]
!   _temp_834 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_836 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_835 = *_temp_836  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_835) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_837 = _temp_835 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_833  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_834  sizeInBytes=4
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
	mov	2158,r13		! source line 2158
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_839		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_839
!	jmp	_Label_838
_Label_838:
! THEN...
	mov	2159,r13		! source line 2159
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_840 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_840  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2159,r13		! source line 2159
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_839:
! RETURN STATEMENT...
	mov	2166,r13		! source line 2166
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
	.word	_Label_841
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_842
	.word	8
	.word	4
	.word	_Label_843
	.word	-12
	.word	4
	.word	_Label_844
	.word	-16
	.word	4
	.word	_Label_845
	.word	-20
	.word	4
	.word	_Label_846
	.word	-24
	.word	4
	.word	_Label_847
	.word	-28
	.word	4
	.word	_Label_848
	.word	-32
	.word	4
	.word	_Label_849
	.word	-56
	.word	24
	.word	_Label_850
	.word	-60
	.word	4
	.word	0
_Label_841:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_842:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_849:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_850:
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
	mov	30,r1
_Label_3677:
	push	r0
	sub	r1,1,r1
	bne	_Label_3677
	mov	2169,r13		! source line 2169
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_851 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: pcb = *_temp_851  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2193,r13		! source line 2193
	mov	"\0\0AS",r10
	mov	2193,r13		! source line 2193
	mov	"\0\0SE",r10
!   _temp_852 = &stringStorage
	add	r14,-96,r1
	store	r1,[r14+-64]
!   _temp_853 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_854 = pcb + 32
	load	[r14+-104],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_852  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_853  sizeInBytes=4
	load	[r14+-60],r1
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
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0IF",r10
!   _temp_858 = &stringStorage
	add	r14,-96,r1
	store	r1,[r14+-48]
!   Data Move: _temp_857 = *_temp_858  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_857 <= 20 then goto _Label_856		(int)
	load	[r14+-52],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_856
!	jmp	_Label_855
_Label_855:
! THEN...
	mov	2197,r13		! source line 2197
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_856:
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   open = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   holdI = -1		(4 bytes)
	mov	-1,r1
	store	r1,[r14+-112]
! FOR STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_863 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_864 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_863  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_859:
!   Perform the FOR-LOOP termination test
!   if i > _temp_864 then goto _Label_862		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_862
_Label_860:
	mov	2204,r13		! source line 2204
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_868 = pcb + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-32]
!   Move address of _temp_868 [i ] into _temp_869
!     make sure index expr is >= 0
	load	[r14+-100],r2
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
!   Data Move: _temp_867 = *_temp_869  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_867) then goto _Label_865
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_865
	jmp	_Label_866
_Label_865:
! THEN...
	mov	2206,r13		! source line 2206
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   holdI = i		(4 bytes)
	load	[r14+-100],r1
	store	r1,[r14+-112]
! BREAK STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0BR",r10
	jmp	_Label_862
! END IF...
_Label_866:
!   Increment the FOR-LOOP index variable and jump back
_Label_861:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_859
! END FOR
_Label_862:
! ASSIGNMENT STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0AS",r10
	mov	2211,r13		! source line 2211
	mov	"\0\0SE",r10
!   _temp_870 = &stringStorage
	add	r14,-96,r1
	store	r1,[r14+-24]
!   _temp_871 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_870  sizeInBytes=4
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
	store	r1,[r14+-108]
! IF STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_872
	load	[r14+-108],r1
	cmp	r1,r0
	be	_Label_872
!	jmp	_Label_874
_Label_874:
!   if holdI != -1 then goto _Label_873		(int)
	load	[r14+-112],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_873
!	jmp	_Label_872
_Label_872:
! THEN...
	mov	2216,r13		! source line 2216
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_873:
! ASSIGNMENT STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_875 = pcb + 124
	load	[r14+-104],r1
	add	r1,124,r1
	store	r1,[r14+-16]
!   Move address of _temp_875 [holdI ] into _temp_876
!     make sure index expr is >= 0
	load	[r14+-112],r2
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
!   Data Move: *_temp_876 = open  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0RE",r10
!   ReturnResult: holdI  (sizeInBytes=4)
	load	[r14+-112],r1
	store	r1,[r14+8]
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_877
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_878
	.word	8
	.word	4
	.word	_Label_879
	.word	-12
	.word	4
	.word	_Label_880
	.word	-16
	.word	4
	.word	_Label_881
	.word	-20
	.word	4
	.word	_Label_882
	.word	-24
	.word	4
	.word	_Label_883
	.word	-28
	.word	4
	.word	_Label_884
	.word	-32
	.word	4
	.word	_Label_885
	.word	-36
	.word	4
	.word	_Label_886
	.word	-40
	.word	4
	.word	_Label_887
	.word	-44
	.word	4
	.word	_Label_888
	.word	-48
	.word	4
	.word	_Label_889
	.word	-52
	.word	4
	.word	_Label_890
	.word	-56
	.word	4
	.word	_Label_891
	.word	-60
	.word	4
	.word	_Label_892
	.word	-64
	.word	4
	.word	_Label_893
	.word	-68
	.word	4
	.word	_Label_894
	.word	-72
	.word	4
	.word	_Label_895
	.word	-96
	.word	24
	.word	_Label_896
	.word	-100
	.word	4
	.word	_Label_897
	.word	-104
	.word	4
	.word	_Label_898
	.word	-108
	.word	4
	.word	_Label_899
	.word	-112
	.word	4
	.word	0
_Label_877:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_878:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_852\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_894:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_895:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_896:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_897:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_898:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_899:
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
_Label_3678:
	push	r0
	sub	r1,1,r1
	bne	_Label_3678
	mov	2227,r13		! source line 2227
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_902		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_902
	jmp	_Label_900
_Label_902:
!   if fileDesc >= 0 then goto _Label_901		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_901
!	jmp	_Label_900
_Label_900:
! THEN...
	mov	2250,r13		! source line 2250
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_901:
! IF STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_904		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_904
!	jmp	_Label_903
_Label_903:
! THEN...
	mov	2255,r13		! source line 2255
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_904:
! ASSIGNMENT STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_906 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-120]
!   Data Move: _temp_905 = *_temp_906  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-124]
!   if intIsZero (_temp_905) then goto _runtimeErrorNullPointer
	load	[r14+-124],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_907 = _temp_905 + 124
	load	[r14+-124],r1
	add	r1,124,r1
	store	r1,[r14+-116]
!   Move address of _temp_907 [fileDesc ] into _temp_908
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
!   Data Move: open = *_temp_908  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_909
	load	[r14+-128],r1
	cmp	r1,r0
	be	_Label_909
	jmp	_Label_910
_Label_909:
! THEN...
	mov	2261,r13		! source line 2261
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_910:
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
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
	mov	2266,r13		! source line 2266
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
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2268,r13		! source line 2268
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_911 = open + 16
	load	[r14+-128],r1
	add	r1,16,r1
	store	r1,[r14+-108]
!   Data Move: nextPosInFile = *_temp_911  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_913 = open + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_912 = *_temp_913  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_912) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_914 = _temp_912 + 24
	load	[r14+-104],r1
	add	r1,24,r1
	store	r1,[r14+-96]
!   Data Move: sizeOfFile = *_temp_914  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-156]
! WHILE STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0WH",r10
_Label_915:
!	jmp	_Label_916
_Label_916:
	mov	2272,r13		! source line 2272
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   thisChunksize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-140],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
! IF STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0IF",r10
!   _temp_920 = nextPosInFile + thisChunksize		(int)
	load	[r14+-148],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
!   if _temp_920 <= sizeOfFile then goto _Label_919		(int)
	load	[r14+-92],r1
	load	[r14+-156],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_919
!	jmp	_Label_918
_Label_918:
! THEN...
	mov	2277,r13		! source line 2277
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   thisChunksize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-156],r1
	load	[r14+-148],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
! END IF...
_Label_919:
! IF STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0IF",r10
!   _temp_923 = copiedSoFar + thisChunksize		(int)
	load	[r14+-144],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
!   if _temp_923 <= sizeInBytes then goto _Label_922		(int)
	load	[r14+-88],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_922
!	jmp	_Label_921
_Label_921:
! THEN...
	mov	2281,r13		! source line 2281
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   thisChunksize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-144],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
! END IF...
_Label_922:
! IF STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0IF",r10
!   if thisChunksize > 0 then goto _Label_925		(int)
	load	[r14+-152],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_925
!	jmp	_Label_924
_Label_924:
! THEN...
	mov	2287,r13		! source line 2287
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0BR",r10
	jmp	_Label_917
! END IF...
_Label_925:
! IF STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_930		(int)
	load	[r14+-136],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_930
	jmp	_Label_926
_Label_930:
!   if virtPage <= 512 then goto _Label_929		(int)
	load	[r14+-136],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_929
	jmp	_Label_926
_Label_929:
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_933 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-80]
!   Data Move: _temp_932 = *_temp_933  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_932) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = _temp_932 + 32
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
!   Retrieve Result: targetName=_temp_931  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_931 then goto _Label_928 else goto _Label_926
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_926
	jmp	_Label_928
_Label_928:
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_936 = *_temp_937  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_936) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = _temp_936 + 32
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
!   Retrieve Result: targetName=_temp_935  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_935 then goto _Label_927 else goto _Label_926
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_926
	jmp	_Label_927
_Label_926:
! THEN...
	mov	2292,r13		! source line 2292
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2292,r13		! source line 2292
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_927:
! SEND STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_940 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: _temp_939 = *_temp_940  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_939) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_941 = _temp_939 + 32
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
	mov	2299,r13		! source line 2299
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_943 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_942 = *_temp_943  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_942) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_944 = _temp_942 + 32
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
	mov	2301,r13		! source line 2301
	mov	"\0\0AS",r10
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_947 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_946 = *_temp_947  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_946) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_948 = _temp_946 + 32
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
!   Retrieve Result: targetName=_temp_945  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   destAddr = _temp_945 + offset		(int)
	load	[r14+-36],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_949
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_949
	jmp	_Label_950
_Label_949:
! THEN...
	mov	2303,r13		! source line 2303
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+8]
	add	r15,176,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_950:
! ASSIGNMENT STATEMENT...
	mov	2307,r13		! source line 2307
	mov	"\0\0AS",r10
	mov	2307,r13		! source line 2307
	mov	"\0\0SE",r10
!   _temp_951 = &_P_Kernel_fileManager
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
	mov	2310,r13		! source line 2310
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunksize		(int)
	load	[r14+-148],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
! ASSIGNMENT STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_952 = open + 16
	load	[r14+-128],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_952 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunksize		(int)
	load	[r14+-144],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2314,r13		! source line 2314
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_954		(int)
	load	[r14+-144],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_954
!	jmp	_Label_953
_Label_953:
! THEN...
	mov	2318,r13		! source line 2318
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2318,r13		! source line 2318
	mov	"\0\0BR",r10
	jmp	_Label_917
! END IF...
_Label_954:
! END WHILE...
	jmp	_Label_915
_Label_917:
! RETURN STATEMENT...
	mov	2323,r13		! source line 2323
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
	.word	_Label_955
	.word	12		! total size of parameters
	.word	172		! frame size = 172
	.word	_Label_956
	.word	8
	.word	4
	.word	_Label_957
	.word	12
	.word	4
	.word	_Label_958
	.word	16
	.word	4
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-20
	.word	4
	.word	_Label_961
	.word	-24
	.word	4
	.word	_Label_962
	.word	-28
	.word	4
	.word	_Label_963
	.word	-32
	.word	4
	.word	_Label_964
	.word	-36
	.word	4
	.word	_Label_965
	.word	-40
	.word	4
	.word	_Label_966
	.word	-44
	.word	4
	.word	_Label_967
	.word	-48
	.word	4
	.word	_Label_968
	.word	-52
	.word	4
	.word	_Label_969
	.word	-56
	.word	4
	.word	_Label_970
	.word	-60
	.word	4
	.word	_Label_971
	.word	-64
	.word	4
	.word	_Label_972
	.word	-68
	.word	4
	.word	_Label_973
	.word	-72
	.word	4
	.word	_Label_974
	.word	-9
	.word	1
	.word	_Label_975
	.word	-76
	.word	4
	.word	_Label_976
	.word	-80
	.word	4
	.word	_Label_977
	.word	-84
	.word	4
	.word	_Label_978
	.word	-10
	.word	1
	.word	_Label_979
	.word	-88
	.word	4
	.word	_Label_980
	.word	-92
	.word	4
	.word	_Label_981
	.word	-96
	.word	4
	.word	_Label_982
	.word	-100
	.word	4
	.word	_Label_983
	.word	-104
	.word	4
	.word	_Label_984
	.word	-108
	.word	4
	.word	_Label_985
	.word	-112
	.word	4
	.word	_Label_986
	.word	-116
	.word	4
	.word	_Label_987
	.word	-120
	.word	4
	.word	_Label_988
	.word	-124
	.word	4
	.word	_Label_989
	.word	-128
	.word	4
	.word	_Label_990
	.word	-132
	.word	4
	.word	_Label_991
	.word	-136
	.word	4
	.word	_Label_992
	.word	-140
	.word	4
	.word	_Label_993
	.word	-144
	.word	4
	.word	_Label_994
	.word	-148
	.word	4
	.word	_Label_995
	.word	-152
	.word	4
	.word	_Label_996
	.word	-156
	.word	4
	.word	_Label_997
	.word	-11
	.word	1
	.word	_Label_998
	.word	-160
	.word	4
	.word	0
_Label_955:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_956:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_957:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_958:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_941\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_974:
	.byte	'C'
	.ascii	"_temp_935\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_978:
	.byte	'C'
	.ascii	"_temp_931\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_989:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_990:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_991:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_992:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_993:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_994:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_995:
	.byte	'I'
	.ascii	"thisChunksize\0"
	.align
_Label_996:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_997:
	.byte	'B'
	.ascii	"hold\0"
	.align
_Label_998:
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
_Label_3679:
	push	r0
	sub	r1,1,r1
	bne	_Label_3679
	mov	2326,r13		! source line 2326
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1001		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1001
	jmp	_Label_999
_Label_1001:
!   if fileDesc >= 0 then goto _Label_1000		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1000
!	jmp	_Label_999
_Label_999:
! THEN...
	mov	2350,r13		! source line 2350
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1000:
! IF STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0IF",r10
!   if sizeInBytes >= 0 then goto _Label_1003		(int)
	load	[r14+16],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1003
!	jmp	_Label_1002
_Label_1002:
! THEN...
	mov	2355,r13		! source line 2355
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1003:
! ASSIGNMENT STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1005 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1004 = *_temp_1005  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_1004) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1006 = _temp_1004 + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-104]
!   Move address of _temp_1006 [fileDesc ] into _temp_1007
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
!   Data Move: open = *_temp_1007  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1008
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_1008
	jmp	_Label_1009
_Label_1008:
! THEN...
	mov	2361,r13		! source line 2361
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1009:
! ASSIGNMENT STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0AS",r10
!   virtAddr = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
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
	mov	2366,r13		! source line 2366
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
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   copiedSoFar = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1010 = open + 16
	load	[r14+-116],r1
	add	r1,16,r1
	store	r1,[r14+-96]
!   Data Move: nextPosInFile = *_temp_1010  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1012 = open + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_1011 = *_temp_1012  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1011) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1013 = _temp_1011 + 24
	load	[r14+-92],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   Data Move: sizeOfFile = *_temp_1013  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-144]
! WHILE STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0WH",r10
_Label_1014:
!	jmp	_Label_1015
_Label_1015:
	mov	2372,r13		! source line 2372
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   thisChunksize = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-128],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! IF STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0IF",r10
!   _temp_1019 = nextPosInFile + thisChunksize		(int)
	load	[r14+-136],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   if _temp_1019 <= sizeOfFile then goto _Label_1018		(int)
	load	[r14+-80],r1
	load	[r14+-144],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1018
!	jmp	_Label_1017
_Label_1017:
! THEN...
	mov	2377,r13		! source line 2377
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   thisChunksize = sizeOfFile - nextPosInFile		(int)
	load	[r14+-144],r1
	load	[r14+-136],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! END IF...
_Label_1018:
! IF STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0IF",r10
!   _temp_1022 = copiedSoFar + thisChunksize		(int)
	load	[r14+-132],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
!   if _temp_1022 <= sizeInBytes then goto _Label_1021		(int)
	load	[r14+-76],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1021
!	jmp	_Label_1020
_Label_1020:
! THEN...
	mov	2381,r13		! source line 2381
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0AS",r10
!   thisChunksize = sizeInBytes - copiedSoFar		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
! END IF...
_Label_1021:
! IF STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0IF",r10
!   if thisChunksize > 0 then goto _Label_1024		(int)
	load	[r14+-140],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1024
!	jmp	_Label_1023
_Label_1023:
! THEN...
	mov	2387,r13		! source line 2387
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0BR",r10
	jmp	_Label_1016
! END IF...
_Label_1024:
! IF STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0IF",r10
!   if virtPage >= 0 then goto _Label_1029		(int)
	load	[r14+-124],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1029
	jmp	_Label_1025
_Label_1029:
!   if virtPage <= 512 then goto _Label_1028		(int)
	load	[r14+-124],r1
	mov	512,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1028
	jmp	_Label_1025
_Label_1028:
	mov	2391,r13		! source line 2391
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1032 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1031 = *_temp_1032  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1031) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1033 = _temp_1031 + 32
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
!   Retrieve Result: targetName=_temp_1030  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1030 then goto _Label_1027 else goto _Label_1025
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1025
	jmp	_Label_1027
_Label_1027:
	mov	2391,r13		! source line 2391
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
	store	r1,[r14+-56]
!   Data Move: _temp_1035 = *_temp_1036  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_1035) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1037 = _temp_1035 + 32
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
!   Retrieve Result: targetName=_temp_1034  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1034 then goto _Label_1026 else goto _Label_1025
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1025
	jmp	_Label_1026
_Label_1025:
! THEN...
	mov	2392,r13		! source line 2392
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1026:
! SEND STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1039 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1038 = *_temp_1039  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_1038) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1040 = _temp_1038 + 32
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
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
	mov	2399,r13		! source line 2399
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1043 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_1042 = *_temp_1043  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1042) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1044 = _temp_1042 + 32
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
!   Retrieve Result: targetName=_temp_1041  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   destAddr = _temp_1041 + offset		(int)
	load	[r14+-36],r1
	load	[r14+-128],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
! IF STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0IF",r10
!   if intIsZero (destAddr) then goto _Label_1045
	load	[r14+-148],r1
	cmp	r1,r0
	be	_Label_1045
	jmp	_Label_1046
_Label_1045:
! THEN...
	mov	2401,r13		! source line 2401
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-132],r1
	store	r1,[r14+8]
	add	r15,164,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1046:
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
!   _temp_1047 = &_P_Kernel_fileManager
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
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   nextPosInFile = nextPosInFile + thisChunksize		(int)
	load	[r14+-136],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1048 = open + 16
	load	[r14+-116],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1048 = nextPosInFile  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + thisChunksize		(int)
	load	[r14+-132],r1
	load	[r14+-140],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-128]
! IF STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0IF",r10
!   if copiedSoFar != sizeInBytes then goto _Label_1050		(int)
	load	[r14+-132],r1
	load	[r14+16],r2
	cmp	r1,r2
	bne	_Label_1050
!	jmp	_Label_1049
_Label_1049:
! THEN...
	mov	2417,r13		! source line 2417
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0BR",r10
	jmp	_Label_1016
! END IF...
_Label_1050:
! END WHILE...
	jmp	_Label_1014
_Label_1016:
! RETURN STATEMENT...
	mov	2421,r13		! source line 2421
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
	.word	_Label_1051
	.word	12		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_1052
	.word	8
	.word	4
	.word	_Label_1053
	.word	12
	.word	4
	.word	_Label_1054
	.word	16
	.word	4
	.word	_Label_1055
	.word	-16
	.word	4
	.word	_Label_1056
	.word	-20
	.word	4
	.word	_Label_1057
	.word	-24
	.word	4
	.word	_Label_1058
	.word	-28
	.word	4
	.word	_Label_1059
	.word	-32
	.word	4
	.word	_Label_1060
	.word	-36
	.word	4
	.word	_Label_1061
	.word	-40
	.word	4
	.word	_Label_1062
	.word	-44
	.word	4
	.word	_Label_1063
	.word	-48
	.word	4
	.word	_Label_1064
	.word	-52
	.word	4
	.word	_Label_1065
	.word	-56
	.word	4
	.word	_Label_1066
	.word	-60
	.word	4
	.word	_Label_1067
	.word	-9
	.word	1
	.word	_Label_1068
	.word	-64
	.word	4
	.word	_Label_1069
	.word	-68
	.word	4
	.word	_Label_1070
	.word	-72
	.word	4
	.word	_Label_1071
	.word	-10
	.word	1
	.word	_Label_1072
	.word	-76
	.word	4
	.word	_Label_1073
	.word	-80
	.word	4
	.word	_Label_1074
	.word	-84
	.word	4
	.word	_Label_1075
	.word	-88
	.word	4
	.word	_Label_1076
	.word	-92
	.word	4
	.word	_Label_1077
	.word	-96
	.word	4
	.word	_Label_1078
	.word	-100
	.word	4
	.word	_Label_1079
	.word	-104
	.word	4
	.word	_Label_1080
	.word	-108
	.word	4
	.word	_Label_1081
	.word	-112
	.word	4
	.word	_Label_1082
	.word	-116
	.word	4
	.word	_Label_1083
	.word	-120
	.word	4
	.word	_Label_1084
	.word	-124
	.word	4
	.word	_Label_1085
	.word	-128
	.word	4
	.word	_Label_1086
	.word	-132
	.word	4
	.word	_Label_1087
	.word	-136
	.word	4
	.word	_Label_1088
	.word	-140
	.word	4
	.word	_Label_1089
	.word	-144
	.word	4
	.word	_Label_1090
	.word	-11
	.word	1
	.word	_Label_1091
	.word	-148
	.word	4
	.word	0
_Label_1051:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_1052:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1053:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_1054:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1067:
	.byte	'C'
	.ascii	"_temp_1034\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1071:
	.byte	'C'
	.ascii	"_temp_1030\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1082:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1083:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1084:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1085:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1086:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1087:
	.byte	'I'
	.ascii	"nextPosInFile\0"
	.align
_Label_1088:
	.byte	'I'
	.ascii	"thisChunksize\0"
	.align
_Label_1089:
	.byte	'I'
	.ascii	"sizeOfFile\0"
	.align
_Label_1090:
	.byte	'B'
	.ascii	"hold\0"
	.align
_Label_1091:
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
_Label_3680:
	push	r0
	sub	r1,1,r1
	bne	_Label_3680
	mov	2424,r13		! source line 2424
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1092 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: pcb = *_temp_1092  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_1093 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-104]
!   _temp_1094 = _temp_1093 + 4
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
	mov	2460,r13		! source line 2460
	mov	"\0\0IF",r10
!   if fileDesc <= 10 then goto _Label_1097		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1097
	jmp	_Label_1095
_Label_1097:
!   if fileDesc >= 0 then goto _Label_1096		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1096
!	jmp	_Label_1095
_Label_1095:
! THEN...
	mov	2461,r13		! source line 2461
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0SE",r10
!   _temp_1098 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-96]
!   _temp_1099 = _temp_1098 + 4
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
	mov	2462,r13		! source line 2462
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1096:
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1100 = pcb + 124
	load	[r14+-112],r1
	add	r1,124,r1
	store	r1,[r14+-88]
!   Move address of _temp_1100 [fileDesc ] into _temp_1101
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
!   Data Move: open = *_temp_1101  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1102
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_1102
	jmp	_Label_1103
_Label_1102:
! THEN...
	mov	2466,r13		! source line 2466
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
!   _temp_1104 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   _temp_1105 = _temp_1104 + 4
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
	mov	2467,r13		! source line 2467
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1103:
! IF STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1109 = open + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1108 = *_temp_1109  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_1108) then goto _Label_1106
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_1106
	jmp	_Label_1107
_Label_1106:
! THEN...
	mov	2472,r13		! source line 2472
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0SE",r10
!   _temp_1110 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   _temp_1111 = _temp_1110 + 4
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
	mov	2473,r13		! source line 2473
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1107:
! IF STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0IF",r10
!   if newCurrentPos != -1 then goto _Label_1113		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_1113
!	jmp	_Label_1112
_Label_1112:
! THEN...
	mov	2478,r13		! source line 2478
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1115 = open + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_1114 = *_temp_1115  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_1114) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1116 = _temp_1114 + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Data Move: newCurrentPos = *_temp_1116  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+12]
! END IF...
_Label_1113:
! IF STATEMENT...
	mov	2483,r13		! source line 2483
	mov	"\0\0IF",r10
!   if newCurrentPos >= -1 then goto _Label_1119		(int)
	load	[r14+12],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1119
	jmp	_Label_1117
_Label_1119:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1122 = open + 20
	load	[r14+-116],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_1121 = *_temp_1122  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_1121) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1123 = _temp_1121 + 24
	load	[r14+-40],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: _temp_1120 = *_temp_1123  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if newCurrentPos <= _temp_1120 then goto _Label_1118		(int)
	load	[r14+12],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1118
!	jmp	_Label_1117
_Label_1117:
! THEN...
	mov	2484,r13		! source line 2484
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0SE",r10
!   _temp_1124 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_1125 = _temp_1124 + 4
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
	mov	2485,r13		! source line 2485
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1118:
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1126 = open + 16
	load	[r14+-116],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1126 = newCurrentPos  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0SE",r10
!   _temp_1127 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   _temp_1128 = _temp_1127 + 4
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
	mov	2493,r13		! source line 2493
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
	.word	_Label_1129
	.word	8		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_1130
	.word	8
	.word	4
	.word	_Label_1131
	.word	12
	.word	4
	.word	_Label_1132
	.word	-12
	.word	4
	.word	_Label_1133
	.word	-16
	.word	4
	.word	_Label_1134
	.word	-20
	.word	4
	.word	_Label_1135
	.word	-24
	.word	4
	.word	_Label_1136
	.word	-28
	.word	4
	.word	_Label_1137
	.word	-32
	.word	4
	.word	_Label_1138
	.word	-36
	.word	4
	.word	_Label_1139
	.word	-40
	.word	4
	.word	_Label_1140
	.word	-44
	.word	4
	.word	_Label_1141
	.word	-48
	.word	4
	.word	_Label_1142
	.word	-52
	.word	4
	.word	_Label_1143
	.word	-56
	.word	4
	.word	_Label_1144
	.word	-60
	.word	4
	.word	_Label_1145
	.word	-64
	.word	4
	.word	_Label_1146
	.word	-68
	.word	4
	.word	_Label_1147
	.word	-72
	.word	4
	.word	_Label_1148
	.word	-76
	.word	4
	.word	_Label_1149
	.word	-80
	.word	4
	.word	_Label_1150
	.word	-84
	.word	4
	.word	_Label_1151
	.word	-88
	.word	4
	.word	_Label_1152
	.word	-92
	.word	4
	.word	_Label_1153
	.word	-96
	.word	4
	.word	_Label_1154
	.word	-100
	.word	4
	.word	_Label_1155
	.word	-104
	.word	4
	.word	_Label_1156
	.word	-108
	.word	4
	.word	_Label_1157
	.word	-112
	.word	4
	.word	_Label_1158
	.word	-116
	.word	4
	.word	0
_Label_1129:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_1130:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1131:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1157:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_1158:
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
_Label_3681:
	push	r0
	sub	r1,1,r1
	bne	_Label_3681
	mov	2496,r13		! source line 2496
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2507,r13		! source line 2507
	mov	"\0\0IF",r10
!   if fileDesc < 10 then goto _Label_1161		(int)
	load	[r14+8],r1
	mov	10,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1161
	jmp	_Label_1159
_Label_1161:
!   if fileDesc >= 0 then goto _Label_1160		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1160
!	jmp	_Label_1159
_Label_1159:
! THEN...
	mov	2508,r13		! source line 2508
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1160:
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1163 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-40]
!   Data Move: _temp_1162 = *_temp_1163  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_1162) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1164 = _temp_1162 + 124
	load	[r14+-44],r1
	add	r1,124,r1
	store	r1,[r14+-36]
!   Move address of _temp_1164 [fileDesc ] into _temp_1165
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
!   Data Move: open = *_temp_1165  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1167 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1166 = *_temp_1167  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1166) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1168 = _temp_1166 + 124
	load	[r14+-28],r1
	add	r1,124,r1
	store	r1,[r14+-20]
!   Move address of _temp_1168 [fileDesc ] into _temp_1169
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
!   Data Move: *_temp_1169 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2515,r13		! source line 2515
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _Label_1170
	load	[r14+-48],r1
	cmp	r1,r0
	be	_Label_1170
	jmp	_Label_1171
_Label_1170:
! THEN...
	mov	2516,r13		! source line 2516
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1171:
! SEND STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0SE",r10
!   _temp_1172 = &_P_Kernel_fileManager
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
	mov	2519,r13		! source line 2519
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
	.word	_Label_1173
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1174
	.word	8
	.word	4
	.word	_Label_1175
	.word	-12
	.word	4
	.word	_Label_1176
	.word	-16
	.word	4
	.word	_Label_1177
	.word	-20
	.word	4
	.word	_Label_1178
	.word	-24
	.word	4
	.word	_Label_1179
	.word	-28
	.word	4
	.word	_Label_1180
	.word	-32
	.word	4
	.word	_Label_1181
	.word	-36
	.word	4
	.word	_Label_1182
	.word	-40
	.word	4
	.word	_Label_1183
	.word	-44
	.word	4
	.word	_Label_1184
	.word	-48
	.word	4
	.word	0
_Label_1173:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_1174:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1184:
	.byte	'P'
	.ascii	"open\0"
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
_Label_3682:
	push	r0
	sub	r1,1,r1
	bne	_Label_3682
	mov	2523,r13		! source line 2523
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2525,r13		! source line 2525
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
	.word	_Label_1185
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1186
	.word	8
	.word	4
	.word	0
_Label_1185:
	.ascii	"printString\0"
	.align
_Label_1186:
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
_Label_3683:
	push	r0
	sub	r1,1,r1
	bne	_Label_3683
	mov	2529,r13		! source line 2529
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2541,r13		! source line 2541
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1188 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_1187 = *_temp_1188  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1187) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = _temp_1187 + 32
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
!   _temp_1191 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1191 [0 ] into _temp_1192
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
!   _temp_1190 = _temp_1192		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1193 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1193 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1194 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_1194 [999 ] into _temp_1195
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
!   initSystemStackTop = _temp_1195		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1196 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_1196 [14 ] into _temp_1197
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
!   Data Move: initUserStackTop = *_temp_1197  (sizeInBytes=4)
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
	mov	2555,r13		! source line 2555
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2555,r13		! source line 2555
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
	.word	_Label_1198
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1199
	.word	8
	.word	4
	.word	_Label_1200
	.word	-12
	.word	4
	.word	_Label_1201
	.word	-16
	.word	4
	.word	_Label_1202
	.word	-20
	.word	4
	.word	_Label_1203
	.word	-24
	.word	4
	.word	_Label_1204
	.word	-28
	.word	4
	.word	_Label_1205
	.word	-32
	.word	4
	.word	_Label_1206
	.word	-36
	.word	4
	.word	_Label_1207
	.word	-40
	.word	4
	.word	_Label_1208
	.word	-44
	.word	4
	.word	_Label_1209
	.word	-48
	.word	4
	.word	_Label_1210
	.word	-52
	.word	4
	.word	_Label_1211
	.word	-56
	.word	4
	.word	_Label_1212
	.word	-60
	.word	4
	.word	_Label_1213
	.word	-64
	.word	4
	.word	0
_Label_1198:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_1199:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1211:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_1212:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_1213:
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
_Label_3684:
	push	r0
	sub	r1,1,r1
	bne	_Label_3684
	mov	3146,r13		! source line 3146
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3148,r13		! source line 3148
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3149,r13		! source line 3149
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	3150,r13		! source line 3150
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1214 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_1214  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3151,r13		! source line 3151
	mov	"\0\0AS",r10
!   _temp_1215 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_1215) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1217 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_1217) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1216 = *_temp_1217  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_1215 = _temp_1216  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3152,r13		! source line 3152
	mov	"\0\0AS",r10
!   _temp_1218 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_1218) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1220 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_1220) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1219 = *_temp_1220  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_1218 = _temp_1219  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3153,r13		! source line 3153
	mov	"\0\0AS",r10
!   _temp_1221 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_1221) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1223 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_1223) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1222 = *_temp_1223  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1221 = _temp_1222  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	3153,r13		! source line 3153
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
	.word	_Label_1224
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1225
	.word	8
	.word	4
	.word	_Label_1226
	.word	12
	.word	4
	.word	_Label_1227
	.word	-16
	.word	4
	.word	_Label_1228
	.word	-9
	.word	1
	.word	_Label_1229
	.word	-20
	.word	4
	.word	_Label_1230
	.word	-24
	.word	4
	.word	_Label_1231
	.word	-10
	.word	1
	.word	_Label_1232
	.word	-28
	.word	4
	.word	_Label_1233
	.word	-32
	.word	4
	.word	_Label_1234
	.word	-11
	.word	1
	.word	_Label_1235
	.word	-36
	.word	4
	.word	_Label_1236
	.word	-12
	.word	1
	.word	_Label_1237
	.word	-40
	.word	4
	.word	_Label_1238
	.word	-44
	.word	4
	.word	0
_Label_1224:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_1225:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_1226:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1228:
	.byte	'C'
	.ascii	"_temp_1222\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1231:
	.byte	'C'
	.ascii	"_temp_1219\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1234:
	.byte	'C'
	.ascii	"_temp_1216\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1236:
	.byte	'C'
	.ascii	"_temp_1214\0"
	.align
_Label_1237:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_1238:
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
_Label_3685:
	push	r0
	sub	r1,1,r1
	bne	_Label_3685
	mov	3156,r13		! source line 3156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1240 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_1239 = *_temp_1240  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3157,r13		! source line 3157
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	3158,r13		! source line 3158
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	3158,r13		! source line 3158
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
	.word	_Label_1241
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1242
	.word	8
	.word	4
	.word	_Label_1243
	.word	-12
	.word	4
	.word	_Label_1244
	.word	-16
	.word	4
	.word	0
_Label_1241:
	.ascii	"printFCB\0"
	.align
_Label_1242:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1239\0"
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
_Label_3686:
	push	r0
	sub	r1,1,r1
	bne	_Label_3686
	mov	3161,r13		! source line 3161
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1245 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1245  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3162,r13		! source line 3162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1246 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3163,r13		! source line 3163
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1247 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3164,r13		! source line 3164
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3165,r13		! source line 3165
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
	mov	3165,r13		! source line 3165
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
	.word	_Label_1248
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1249
	.word	8
	.word	4
	.word	_Label_1250
	.word	-12
	.word	4
	.word	_Label_1251
	.word	-16
	.word	4
	.word	_Label_1252
	.word	-20
	.word	4
	.word	0
_Label_1248:
	.ascii	"printOpen\0"
	.align
_Label_1249:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_1253
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_1253:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1254
	.word	_sourceFileName
	.word	131		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_1254:
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
_Label_3687:
	push	r0
	sub	r1,1,r1
	bne	_Label_3687
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_1256		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1256
!	jmp	_Label_1255
_Label_1255:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1257 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
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
_Label_1256:
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
	.word	_Label_1259
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1260
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1261
	.word	12
	.word	4
	.word	_Label_1262
	.word	-12
	.word	4
	.word	_Label_1263
	.word	-16
	.word	4
	.word	0
_Label_1259:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1260:
	.ascii	"Pself\0"
	.align
_Label_1261:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1257\0"
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
_Label_3688:
	push	r0
	sub	r1,1,r1
	bne	_Label_3688
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
!   if count != 2147483647 then goto _Label_1265		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_1265
!	jmp	_Label_1264
_Label_1264:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1266 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1266  sizeInBytes=4
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
_Label_1265:
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
!   if count > 0 then goto _Label_1268		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1268
!	jmp	_Label_1267
_Label_1267:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_1269 = &waitingThreads
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
!   _temp_1270 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1270 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_1271 = &_P_Kernel_readyList
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
_Label_1268:
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
	.word	_Label_1272
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1274
	.word	-12
	.word	4
	.word	_Label_1275
	.word	-16
	.word	4
	.word	_Label_1276
	.word	-20
	.word	4
	.word	_Label_1277
	.word	-24
	.word	4
	.word	_Label_1278
	.word	-28
	.word	4
	.word	_Label_1279
	.word	-32
	.word	4
	.word	0
_Label_1272:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_1273:
	.ascii	"Pself\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1278:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1279:
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
_Label_3689:
	push	r0
	sub	r1,1,r1
	bne	_Label_3689
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
!   if count != -2147483648 then goto _Label_1281		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_1281
!	jmp	_Label_1280
_Label_1280:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1282 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
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
_Label_1281:
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
!   if count >= 0 then goto _Label_1284		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1284
!	jmp	_Label_1283
_Label_1283:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_1285 = &waitingThreads
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
_Label_1284:
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
	.word	_Label_1286
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1287
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1288
	.word	-12
	.word	4
	.word	_Label_1289
	.word	-16
	.word	4
	.word	_Label_1290
	.word	-20
	.word	4
	.word	0
_Label_1286:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_1287:
	.ascii	"Pself\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1290:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1291
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1291:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1292
	.word	_sourceFileName
	.word	144		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1292:
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
_Label_3690:
	push	r0
	sub	r1,1,r1
	bne	_Label_3690
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
	.word	_Label_1294
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1295
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1296
	.word	-12
	.word	4
	.word	0
_Label_1294:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1295:
	.ascii	"Pself\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1293\0"
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
_Label_3691:
	push	r0
	sub	r1,1,r1
	bne	_Label_3691
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1298		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1298
!	jmp	_Label_1297
_Label_1297:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1299 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
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
_Label_1298:
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
!   if heldBy == 0 then goto _Label_1303		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1303
!   _temp_1302 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1304
_Label_1303:
!   _temp_1302 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1304:
!   if _temp_1302 then goto _Label_1301 else goto _Label_1300
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1300
	jmp	_Label_1301
_Label_1300:
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
	jmp	_Label_1305
_Label_1301:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_1306 = &waitingThreads
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
_Label_1305:
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
	.word	_Label_1307
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1308
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1309
	.word	-16
	.word	4
	.word	_Label_1310
	.word	-9
	.word	1
	.word	_Label_1311
	.word	-20
	.word	4
	.word	_Label_1312
	.word	-24
	.word	4
	.word	0
_Label_1307:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1308:
	.ascii	"Pself\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1310:
	.byte	'C'
	.ascii	"_temp_1302\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1312:
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
_Label_3692:
	push	r0
	sub	r1,1,r1
	bne	_Label_3692
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1314		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1314
!	jmp	_Label_1313
_Label_1313:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1315 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1315  sizeInBytes=4
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
_Label_1314:
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
!   _temp_1316 = &waitingThreads
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
!   if t == 0 then goto _Label_1318		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1318
!	jmp	_Label_1317
_Label_1317:
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
!   _temp_1319 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1319 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_1320 = &_P_Kernel_readyList
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
	jmp	_Label_1321
_Label_1318:
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
_Label_1321:
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
	.word	_Label_1322
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1323
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1324
	.word	-12
	.word	4
	.word	_Label_1325
	.word	-16
	.word	4
	.word	_Label_1326
	.word	-20
	.word	4
	.word	_Label_1327
	.word	-24
	.word	4
	.word	_Label_1328
	.word	-28
	.word	4
	.word	_Label_1329
	.word	-32
	.word	4
	.word	0
_Label_1322:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1323:
	.ascii	"Pself\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1328:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1329:
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
_Label_3693:
	push	r0
	sub	r1,1,r1
	bne	_Label_3693
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1332		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1332
!	jmp	_Label_1331
_Label_1331:
!   _temp_1330 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1333
_Label_1332:
!   _temp_1330 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1333:
!   ReturnResult: _temp_1330  (sizeInBytes=1)
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
	.word	_Label_1334
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1335
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1336
	.word	-9
	.word	1
	.word	0
_Label_1334:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1335:
	.ascii	"Pself\0"
	.align
_Label_1336:
	.byte	'C'
	.ascii	"_temp_1330\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1337
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1337:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1338
	.word	_sourceFileName
	.word	158		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1338:
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
_Label_3694:
	push	r0
	sub	r1,1,r1
	bne	_Label_3694
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
	.word	_Label_1340
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1341
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1342
	.word	-12
	.word	4
	.word	0
_Label_1340:
	.ascii	"Condition"
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
_Label_3695:
	push	r0
	sub	r1,1,r1
	bne	_Label_3695
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
!   Retrieve Result: targetName=_temp_1345  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1345 then goto _Label_1344 else goto _Label_1343
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1343
	jmp	_Label_1344
_Label_1343:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1346 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1346  sizeInBytes=4
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
_Label_1344:
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
!   _temp_1347 = &waitingThreads
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
	.word	_Label_1348
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1349
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1350
	.word	12
	.word	4
	.word	_Label_1351
	.word	-16
	.word	4
	.word	_Label_1352
	.word	-20
	.word	4
	.word	_Label_1353
	.word	-9
	.word	1
	.word	_Label_1354
	.word	-24
	.word	4
	.word	0
_Label_1348:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1349:
	.ascii	"Pself\0"
	.align
_Label_1350:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1353:
	.byte	'C'
	.ascii	"_temp_1345\0"
	.align
_Label_1354:
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
_Label_3696:
	push	r0
	sub	r1,1,r1
	bne	_Label_3696
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
!   Retrieve Result: targetName=_temp_1357  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1357 then goto _Label_1356 else goto _Label_1355
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1355
	jmp	_Label_1356
_Label_1355:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1358 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1358  sizeInBytes=4
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
_Label_1356:
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
!   _temp_1359 = &waitingThreads
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
!   if t == 0 then goto _Label_1361		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1361
!	jmp	_Label_1360
_Label_1360:
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
!   _temp_1362 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1362 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_1363 = &_P_Kernel_readyList
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
_Label_1361:
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
	.word	_Label_1364
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1365
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1366
	.word	12
	.word	4
	.word	_Label_1367
	.word	-16
	.word	4
	.word	_Label_1368
	.word	-20
	.word	4
	.word	_Label_1369
	.word	-24
	.word	4
	.word	_Label_1370
	.word	-28
	.word	4
	.word	_Label_1371
	.word	-9
	.word	1
	.word	_Label_1372
	.word	-32
	.word	4
	.word	_Label_1373
	.word	-36
	.word	4
	.word	0
_Label_1364:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1365:
	.ascii	"Pself\0"
	.align
_Label_1366:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1371:
	.byte	'C'
	.ascii	"_temp_1357\0"
	.align
_Label_1372:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1373:
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
_Label_3697:
	push	r0
	sub	r1,1,r1
	bne	_Label_3697
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
!   Retrieve Result: targetName=_temp_1376  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1376 then goto _Label_1375 else goto _Label_1374
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1374
	jmp	_Label_1375
_Label_1374:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1377 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1377  sizeInBytes=4
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
_Label_1375:
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
_Label_1378:
!	jmp	_Label_1379
_Label_1379:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_1381 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1382
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1382
	jmp	_Label_1383
_Label_1382:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_1380
! END IF...
_Label_1383:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1384 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1384 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_1385 = &_P_Kernel_readyList
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
	jmp	_Label_1378
_Label_1380:
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
	.word	_Label_1386
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1387
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1388
	.word	12
	.word	4
	.word	_Label_1389
	.word	-16
	.word	4
	.word	_Label_1390
	.word	-20
	.word	4
	.word	_Label_1391
	.word	-24
	.word	4
	.word	_Label_1392
	.word	-28
	.word	4
	.word	_Label_1393
	.word	-9
	.word	1
	.word	_Label_1394
	.word	-32
	.word	4
	.word	_Label_1395
	.word	-36
	.word	4
	.word	0
_Label_1386:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1387:
	.ascii	"Pself\0"
	.align
_Label_1388:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1393:
	.byte	'C'
	.ascii	"_temp_1376\0"
	.align
_Label_1394:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1395:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1396
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
_Label_1396:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1397
	.word	_sourceFileName
	.word	171		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1397:
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
_Label_3698:
	push	r0
	sub	r1,1,r1
	bne	_Label_3698
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
!   _temp_1398 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1398) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1398 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1399 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1399 [0 ] into _temp_1400
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
!   Data Move: *_temp_1400 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1401 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1401 [999 ] into _temp_1402
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
!   Data Move: *_temp_1402 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1403 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1403 [999 ] into _temp_1404
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
!   stackTop = _temp_1404		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1405 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1407 = &_temp_1406
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1407 = _temp_1407 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1409:
!   Data Move: *_temp_1407 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1407 = _temp_1407 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1408 = _temp_1408 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1408) then goto _Label_1409
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1409
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1410 = &_temp_1406
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3699
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3699:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1405 = *_temp_1410  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3700:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3700
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
!   _temp_1411 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1413 = &_temp_1412
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1413 = _temp_1413 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1415:
!   Data Move: *_temp_1413 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1413 = _temp_1413 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1414 = _temp_1414 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1414) then goto _Label_1415
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1415
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1416 = &_temp_1412
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3701
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3701:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1411 = *_temp_1416  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3702:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3702
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
	.word	_Label_1417
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1418
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1419
	.word	12
	.word	4
	.word	_Label_1420
	.word	-12
	.word	4
	.word	_Label_1421
	.word	-16
	.word	4
	.word	_Label_1422
	.word	-20
	.word	4
	.word	_Label_1423
	.word	-84
	.word	64
	.word	_Label_1424
	.word	-88
	.word	4
	.word	_Label_1425
	.word	-92
	.word	4
	.word	_Label_1426
	.word	-96
	.word	4
	.word	_Label_1427
	.word	-100
	.word	4
	.word	_Label_1428
	.word	-156
	.word	56
	.word	_Label_1429
	.word	-160
	.word	4
	.word	_Label_1430
	.word	-164
	.word	4
	.word	_Label_1431
	.word	-168
	.word	4
	.word	_Label_1432
	.word	-172
	.word	4
	.word	_Label_1433
	.word	-176
	.word	4
	.word	_Label_1434
	.word	-180
	.word	4
	.word	_Label_1435
	.word	-184
	.word	4
	.word	_Label_1436
	.word	-188
	.word	4
	.word	0
_Label_1417:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1418:
	.ascii	"Pself\0"
	.align
_Label_1419:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1398\0"
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
_Label_3703:
	push	r0
	sub	r1,1,r1
	bne	_Label_3703
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
!   _temp_1437 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1437  (sizeInBytes=4)
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
!   _temp_1439 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1438  sizeInBytes=4
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
	.word	_Label_1440
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1441
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1442
	.word	12
	.word	4
	.word	_Label_1443
	.word	16
	.word	4
	.word	_Label_1444
	.word	-12
	.word	4
	.word	_Label_1445
	.word	-16
	.word	4
	.word	_Label_1446
	.word	-20
	.word	4
	.word	_Label_1447
	.word	-24
	.word	4
	.word	_Label_1448
	.word	-28
	.word	4
	.word	0
_Label_1440:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1441:
	.ascii	"Pself\0"
	.align
_Label_1442:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1443:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1447:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1448:
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
_Label_3704:
	push	r0
	sub	r1,1,r1
	bne	_Label_3704
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1451 == _P_Kernel_currentThread then goto _Label_1450		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1450
!	jmp	_Label_1449
_Label_1449:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1452 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1452  sizeInBytes=4
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
_Label_1450:
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
!   _temp_1453 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1455		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1455
!	jmp	_Label_1454
_Label_1454:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1457		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1457
!	jmp	_Label_1456
_Label_1456:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1458 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1458  sizeInBytes=4
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
_Label_1457:
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
!   _temp_1460 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1459  sizeInBytes=4
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
_Label_1455:
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
	.word	_Label_1461
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1463
	.word	-12
	.word	4
	.word	_Label_1464
	.word	-16
	.word	4
	.word	_Label_1465
	.word	-20
	.word	4
	.word	_Label_1466
	.word	-24
	.word	4
	.word	_Label_1467
	.word	-28
	.word	4
	.word	_Label_1468
	.word	-32
	.word	4
	.word	_Label_1469
	.word	-36
	.word	4
	.word	_Label_1470
	.word	-40
	.word	4
	.word	_Label_1471
	.word	-44
	.word	4
	.word	0
_Label_1461:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1462:
	.ascii	"Pself\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1469:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1470:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1471:
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
_Label_3705:
	push	r0
	sub	r1,1,r1
	bne	_Label_3705
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1473		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1473
!	jmp	_Label_1472
_Label_1472:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1474 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1474  sizeInBytes=4
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
_Label_1473:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1477 == _P_Kernel_currentThread then goto _Label_1476		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1476
!	jmp	_Label_1475
_Label_1475:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1478 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1478  sizeInBytes=4
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
_Label_1476:
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
!   _temp_1479 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1480
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1480
	jmp	_Label_1481
_Label_1480:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1482 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1482  sizeInBytes=4
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
_Label_1481:
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
	.word	_Label_1483
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1485
	.word	-12
	.word	4
	.word	_Label_1486
	.word	-16
	.word	4
	.word	_Label_1487
	.word	-20
	.word	4
	.word	_Label_1488
	.word	-24
	.word	4
	.word	_Label_1489
	.word	-28
	.word	4
	.word	_Label_1490
	.word	-32
	.word	4
	.word	0
_Label_1483:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1484:
	.ascii	"Pself\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1490:
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
_Label_3706:
	push	r0
	sub	r1,1,r1
	bne	_Label_3706
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1494 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1494 [0 ] into _temp_1495
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
!   Data Move: _temp_1493 = *_temp_1495  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1493 == 606348324 then goto _Label_1492		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1492
!	jmp	_Label_1491
_Label_1491:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1496 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
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
	jmp	_Label_1497
_Label_1492:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1501 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1501 [999 ] into _temp_1502
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
!   Data Move: _temp_1500 = *_temp_1502  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1500 == 606348324 then goto _Label_1499		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1499
!	jmp	_Label_1498
_Label_1498:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1503 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1503  sizeInBytes=4
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
_Label_1499:
! END IF...
_Label_1497:
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
	.word	_Label_1504
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1505
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1506
	.word	-12
	.word	4
	.word	_Label_1507
	.word	-16
	.word	4
	.word	_Label_1508
	.word	-20
	.word	4
	.word	_Label_1509
	.word	-24
	.word	4
	.word	_Label_1510
	.word	-28
	.word	4
	.word	_Label_1511
	.word	-32
	.word	4
	.word	_Label_1512
	.word	-36
	.word	4
	.word	_Label_1513
	.word	-40
	.word	4
	.word	0
_Label_1504:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1505:
	.ascii	"Pself\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1493\0"
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
_Label_3707:
	push	r0
	sub	r1,1,r1
	bne	_Label_3707
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
!   _temp_1514 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1514  sizeInBytes=4
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
!   _temp_1515 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1515  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1516  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1517 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1517  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1518 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1518  sizeInBytes=4
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
!   _temp_1523 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1524 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1523  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1519:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1524 then goto _Label_1522		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1522
_Label_1520:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1525 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1525  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1526 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1526  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1527 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1527  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1529 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1529 [i ] into _temp_1530
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
!   Data Move: _temp_1528 = *_temp_1530  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1531 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1531  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1533 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1533 [i ] into _temp_1534
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
!   Data Move: _temp_1532 = *_temp_1534  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1532  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1535 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1535  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1521:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1519
! END FOR
_Label_1522:
! CALL STATEMENT...
!   _temp_1536 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-116]
!   _temp_1537 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1536  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1537  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1538 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-108]
!   _temp_1540 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1540 [0 ] into _temp_1541
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
!   _temp_1539 = _temp_1541		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1538  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1539  sizeInBytes=4
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
	be	_Label_1544
	cmp	r1,2
	be	_Label_1545
	cmp	r1,3
	be	_Label_1546
	cmp	r1,4
	be	_Label_1547
	cmp	r1,5
	be	_Label_1548
	jmp	_Label_1542
! CASE 1...
_Label_1544:
! CALL STATEMENT...
!   _temp_1549 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1549  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1543
! CASE 2...
_Label_1545:
! CALL STATEMENT...
!   _temp_1550 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1550  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1543
! CASE 3...
_Label_1546:
! CALL STATEMENT...
!   _temp_1551 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1551  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1543
! CASE 4...
_Label_1547:
! CALL STATEMENT...
!   _temp_1552 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1552  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1543
! CASE 5...
_Label_1548:
! CALL STATEMENT...
!   _temp_1553 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1553  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1543
! DEFAULT CASE...
_Label_1542:
! CALL STATEMENT...
!   _temp_1554 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1554  sizeInBytes=4
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
_Label_1543:
! CALL STATEMENT...
!   _temp_1555 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
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
!   _temp_1556 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1556  sizeInBytes=4
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
!   _temp_1561 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1562 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1561  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1557:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1562 then goto _Label_1560		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1560
_Label_1558:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1563 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1563  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1564 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1564  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1565 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1565  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1567 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1567 [i ] into _temp_1568
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
!   Data Move: _temp_1566 = *_temp_1568  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1566  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1569 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1569  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1571 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1571 [i ] into _temp_1572
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
!   Data Move: _temp_1570 = *_temp_1572  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1570  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1573 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1573  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1559:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1557
! END FOR
_Label_1560:
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
	.word	_Label_1574
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1576
	.word	-12
	.word	4
	.word	_Label_1577
	.word	-16
	.word	4
	.word	_Label_1578
	.word	-20
	.word	4
	.word	_Label_1579
	.word	-24
	.word	4
	.word	_Label_1580
	.word	-28
	.word	4
	.word	_Label_1581
	.word	-32
	.word	4
	.word	_Label_1582
	.word	-36
	.word	4
	.word	_Label_1583
	.word	-40
	.word	4
	.word	_Label_1584
	.word	-44
	.word	4
	.word	_Label_1585
	.word	-48
	.word	4
	.word	_Label_1586
	.word	-52
	.word	4
	.word	_Label_1587
	.word	-56
	.word	4
	.word	_Label_1588
	.word	-60
	.word	4
	.word	_Label_1589
	.word	-64
	.word	4
	.word	_Label_1590
	.word	-68
	.word	4
	.word	_Label_1591
	.word	-72
	.word	4
	.word	_Label_1592
	.word	-76
	.word	4
	.word	_Label_1593
	.word	-80
	.word	4
	.word	_Label_1594
	.word	-84
	.word	4
	.word	_Label_1595
	.word	-88
	.word	4
	.word	_Label_1596
	.word	-92
	.word	4
	.word	_Label_1597
	.word	-96
	.word	4
	.word	_Label_1598
	.word	-100
	.word	4
	.word	_Label_1599
	.word	-104
	.word	4
	.word	_Label_1600
	.word	-108
	.word	4
	.word	_Label_1601
	.word	-112
	.word	4
	.word	_Label_1602
	.word	-116
	.word	4
	.word	_Label_1603
	.word	-120
	.word	4
	.word	_Label_1604
	.word	-124
	.word	4
	.word	_Label_1605
	.word	-128
	.word	4
	.word	_Label_1606
	.word	-132
	.word	4
	.word	_Label_1607
	.word	-136
	.word	4
	.word	_Label_1608
	.word	-140
	.word	4
	.word	_Label_1609
	.word	-144
	.word	4
	.word	_Label_1610
	.word	-148
	.word	4
	.word	_Label_1611
	.word	-152
	.word	4
	.word	_Label_1612
	.word	-156
	.word	4
	.word	_Label_1613
	.word	-160
	.word	4
	.word	_Label_1614
	.word	-164
	.word	4
	.word	_Label_1615
	.word	-168
	.word	4
	.word	_Label_1616
	.word	-172
	.word	4
	.word	_Label_1617
	.word	-176
	.word	4
	.word	_Label_1618
	.word	-180
	.word	4
	.word	_Label_1619
	.word	-184
	.word	4
	.word	_Label_1620
	.word	-188
	.word	4
	.word	_Label_1621
	.word	-192
	.word	4
	.word	_Label_1622
	.word	-196
	.word	4
	.word	0
_Label_1574:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1575:
	.ascii	"Pself\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1621:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1622:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1623
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1623:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1624
	.word	_sourceFileName
	.word	198		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1624:
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
_Label_3708:
	push	r0
	sub	r1,1,r1
	bne	_Label_3708
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1625 = _StringConst_80
	set	_StringConst_80,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
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
!   _temp_1627 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1629 = &_temp_1628
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1629 = _temp_1629 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1631 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_3709:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3709
!   _temp_1631 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1633:
!   Data Move: *_temp_1629 = _temp_1631  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_3710:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3710
!   _temp_1629 = _temp_1629 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1630 = _temp_1630 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1630) then goto _Label_1633
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1633
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1634 = &_temp_1628
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3711
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3711:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1627 = *_temp_1634  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3712:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3712
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1635 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-188]
!   _temp_1636 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1636 [0 ] into _temp_1637
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
!   Prepare Argument: offset=12  value=_temp_1635  sizeInBytes=4
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
!   _temp_1638 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-176]
!   _temp_1639 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1639 [1 ] into _temp_1640
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
!   Prepare Argument: offset=12  value=_temp_1638  sizeInBytes=4
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
!   _temp_1641 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-164]
!   _temp_1642 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1642 [2 ] into _temp_1643
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
!   Prepare Argument: offset=12  value=_temp_1641  sizeInBytes=4
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
!   _temp_1644 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-152]
!   _temp_1645 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1645 [3 ] into _temp_1646
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
!   Prepare Argument: offset=12  value=_temp_1644  sizeInBytes=4
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
!   _temp_1647 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-140]
!   _temp_1648 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1648 [4 ] into _temp_1649
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
!   Prepare Argument: offset=12  value=_temp_1647  sizeInBytes=4
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
!   _temp_1650 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-128]
!   _temp_1651 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1651 [5 ] into _temp_1652
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
!   Prepare Argument: offset=12  value=_temp_1650  sizeInBytes=4
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
!   _temp_1653 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-116]
!   _temp_1654 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1654 [6 ] into _temp_1655
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
!   Prepare Argument: offset=12  value=_temp_1653  sizeInBytes=4
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
!   _temp_1656 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-104]
!   _temp_1657 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1657 [7 ] into _temp_1658
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
!   Prepare Argument: offset=12  value=_temp_1656  sizeInBytes=4
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
!   _temp_1659 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-92]
!   _temp_1660 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1660 [8 ] into _temp_1661
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
!   Prepare Argument: offset=12  value=_temp_1659  sizeInBytes=4
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
!   _temp_1662 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-80]
!   _temp_1663 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1663 [9 ] into _temp_1664
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
!   Prepare Argument: offset=12  value=_temp_1662  sizeInBytes=4
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
!   _temp_1669 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1670 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1669  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1665:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1670 then goto _Label_1668		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1668
_Label_1666:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1671 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1671 [index ] into _temp_1672
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
!   _temp_1673 = _temp_1672 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1673 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1675 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1675 [index ] into _temp_1676
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
!   _temp_1674 = _temp_1676		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1677 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1674  sizeInBytes=4
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
_Label_1667:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1665
! END FOR
_Label_1668:
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
!   _temp_1679 = &threadManagerLock
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
!   _temp_1681 = &aThreadBecameFree
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
!   _temp_1683 = &leadThread
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
	.word	_Label_1684
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1685
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1686
	.word	-12
	.word	4
	.word	_Label_1687
	.word	-16
	.word	4
	.word	_Label_1688
	.word	-20
	.word	4
	.word	_Label_1689
	.word	-24
	.word	4
	.word	_Label_1690
	.word	-28
	.word	4
	.word	_Label_1691
	.word	-32
	.word	4
	.word	_Label_1692
	.word	-36
	.word	4
	.word	_Label_1693
	.word	-40
	.word	4
	.word	_Label_1694
	.word	-44
	.word	4
	.word	_Label_1695
	.word	-48
	.word	4
	.word	_Label_1696
	.word	-52
	.word	4
	.word	_Label_1697
	.word	-56
	.word	4
	.word	_Label_1698
	.word	-60
	.word	4
	.word	_Label_1699
	.word	-64
	.word	4
	.word	_Label_1700
	.word	-68
	.word	4
	.word	_Label_1701
	.word	-72
	.word	4
	.word	_Label_1702
	.word	-76
	.word	4
	.word	_Label_1703
	.word	-80
	.word	4
	.word	_Label_1704
	.word	-84
	.word	4
	.word	_Label_1705
	.word	-88
	.word	4
	.word	_Label_1706
	.word	-92
	.word	4
	.word	_Label_1707
	.word	-96
	.word	4
	.word	_Label_1708
	.word	-100
	.word	4
	.word	_Label_1709
	.word	-104
	.word	4
	.word	_Label_1710
	.word	-108
	.word	4
	.word	_Label_1711
	.word	-112
	.word	4
	.word	_Label_1712
	.word	-116
	.word	4
	.word	_Label_1713
	.word	-120
	.word	4
	.word	_Label_1714
	.word	-124
	.word	4
	.word	_Label_1715
	.word	-128
	.word	4
	.word	_Label_1716
	.word	-132
	.word	4
	.word	_Label_1717
	.word	-136
	.word	4
	.word	_Label_1718
	.word	-140
	.word	4
	.word	_Label_1719
	.word	-144
	.word	4
	.word	_Label_1720
	.word	-148
	.word	4
	.word	_Label_1721
	.word	-152
	.word	4
	.word	_Label_1722
	.word	-156
	.word	4
	.word	_Label_1723
	.word	-160
	.word	4
	.word	_Label_1724
	.word	-164
	.word	4
	.word	_Label_1725
	.word	-168
	.word	4
	.word	_Label_1726
	.word	-172
	.word	4
	.word	_Label_1727
	.word	-176
	.word	4
	.word	_Label_1728
	.word	-180
	.word	4
	.word	_Label_1729
	.word	-184
	.word	4
	.word	_Label_1730
	.word	-188
	.word	4
	.word	_Label_1731
	.word	-192
	.word	4
	.word	_Label_1732
	.word	-196
	.word	4
	.word	_Label_1733
	.word	-4360
	.word	4164
	.word	_Label_1734
	.word	-4364
	.word	4
	.word	_Label_1735
	.word	-4368
	.word	4
	.word	_Label_1736
	.word	-46012
	.word	41644
	.word	_Label_1737
	.word	-46016
	.word	4
	.word	_Label_1738
	.word	-46020
	.word	4
	.word	_Label_1739
	.word	-46024
	.word	4
	.word	_Label_1740
	.word	-46028
	.word	4
	.word	0
_Label_1684:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1685:
	.ascii	"Pself\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1740:
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
_Label_3713:
	push	r0
	sub	r1,1,r1
	bne	_Label_3713
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
!   _temp_1741 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1741  sizeInBytes=4
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
!   _temp_1746 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1747 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1746  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1742:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1747 then goto _Label_1745		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1745
_Label_1743:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1748 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1748  sizeInBytes=4
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
!   _temp_1749 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1749  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1751 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1751 [i ] into _temp_1752
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
!   _temp_1750 = _temp_1752		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1750  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_201_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1744:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1742
! END FOR
_Label_1745:
! CALL STATEMENT...
!   _temp_1753 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1753  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1754 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1755 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1754  sizeInBytes=4
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
	.word	_Label_1756
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1757
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1758
	.word	-12
	.word	4
	.word	_Label_1759
	.word	-16
	.word	4
	.word	_Label_1760
	.word	-20
	.word	4
	.word	_Label_1761
	.word	-24
	.word	4
	.word	_Label_1762
	.word	-28
	.word	4
	.word	_Label_1763
	.word	-32
	.word	4
	.word	_Label_1764
	.word	-36
	.word	4
	.word	_Label_1765
	.word	-40
	.word	4
	.word	_Label_1766
	.word	-44
	.word	4
	.word	_Label_1767
	.word	-48
	.word	4
	.word	_Label_1768
	.word	-52
	.word	4
	.word	_Label_1769
	.word	-56
	.word	4
	.word	_Label_1770
	.word	-60
	.word	4
	.word	0
_Label_1756:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1757:
	.ascii	"Pself\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1769:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1770:
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
_Label_3714:
	push	r0
	sub	r1,1,r1
	bne	_Label_3714
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1771 = &threadManagerLock
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
_Label_1772:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1775 = &freeList
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
!   if result==true then goto _Label_1773 else goto _Label_1774
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1774
	jmp	_Label_1773
_Label_1773:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1776 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   _temp_1777 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1776  sizeInBytes=4
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
	jmp	_Label_1772
_Label_1774:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1778 = &freeList
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
!   _temp_1779 = threadToReturn + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1779 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1780 = &threadManagerLock
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
	.word	_Label_1781
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1782
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1783
	.word	-12
	.word	4
	.word	_Label_1784
	.word	-16
	.word	4
	.word	_Label_1785
	.word	-20
	.word	4
	.word	_Label_1786
	.word	-24
	.word	4
	.word	_Label_1787
	.word	-28
	.word	4
	.word	_Label_1788
	.word	-32
	.word	4
	.word	_Label_1789
	.word	-36
	.word	4
	.word	_Label_1790
	.word	-40
	.word	4
	.word	0
_Label_1781:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1782:
	.ascii	"Pself\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1790:
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
_Label_3715:
	push	r0
	sub	r1,1,r1
	bne	_Label_3715
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1791 = &threadManagerLock
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
!   if th == 0 then goto _Label_1793		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1793
!	jmp	_Label_1792
_Label_1792:
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
!   _temp_1794 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1794 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1795 = &freeList
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
!   _temp_1796 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1797 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1796  sizeInBytes=4
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
	jmp	_Label_1798
_Label_1793:
! ELSE...
	mov	794,r13		! source line 794
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1799 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1799  sizeInBytes=4
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
_Label_1798:
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1800 = &threadManagerLock
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
	.word	_Label_1801
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1803
	.word	12
	.word	4
	.word	_Label_1804
	.word	-12
	.word	4
	.word	_Label_1805
	.word	-16
	.word	4
	.word	_Label_1806
	.word	-20
	.word	4
	.word	_Label_1807
	.word	-24
	.word	4
	.word	_Label_1808
	.word	-28
	.word	4
	.word	_Label_1809
	.word	-32
	.word	4
	.word	_Label_1810
	.word	-36
	.word	4
	.word	0
_Label_1801:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1802:
	.ascii	"Pself\0"
	.align
_Label_1803:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1791\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1811
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1811:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1812
	.word	_sourceFileName
	.word	220		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1812:
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
_Label_3716:
	push	r0
	sub	r1,1,r1
	bne	_Label_3716
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
_Label_3717:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3717
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_1814 = &addrSpace
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
!   _temp_1815 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1817 = &_temp_1816
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1817 = _temp_1817 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1819:
!   Data Move: *_temp_1817 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1817 = _temp_1817 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1818 = _temp_1818 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1818) then goto _Label_1819
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1819
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1820 = &_temp_1816
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3718
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3718:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1815 = *_temp_1820  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3719:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3719
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
	.word	_Label_1821
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1823
	.word	-12
	.word	4
	.word	_Label_1824
	.word	-16
	.word	4
	.word	_Label_1825
	.word	-20
	.word	4
	.word	_Label_1826
	.word	-64
	.word	44
	.word	_Label_1827
	.word	-68
	.word	4
	.word	_Label_1828
	.word	-72
	.word	4
	.word	_Label_1829
	.word	-76
	.word	4
	.word	0
_Label_1821:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1822:
	.ascii	"Pself\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1828:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1829:
	.byte	'?'
	.ascii	"_temp_1813\0"
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
_Label_3720:
	push	r0
	sub	r1,1,r1
	bne	_Label_3720
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1830) then goto _runtimeErrorNullPointer
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
!   _temp_1831 = &addrSpace
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
!   _temp_1832 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1832  sizeInBytes=4
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
	.word	_Label_1833
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1834
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1835
	.word	-12
	.word	4
	.word	_Label_1836
	.word	-16
	.word	4
	.word	_Label_1837
	.word	-20
	.word	4
	.word	0
_Label_1833:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1834:
	.ascii	"Pself\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1830\0"
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
_Label_3721:
	push	r0
	sub	r1,1,r1
	bne	_Label_3721
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1838 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1838  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1839  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1840 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1840  sizeInBytes=4
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
!   _temp_1841 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1841  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1843		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1843
!	jmp	_Label_1842
_Label_1842:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1844 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1844  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1845
_Label_1843:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1847		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1847
!	jmp	_Label_1846
_Label_1846:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1848 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1848  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1849
_Label_1847:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1851		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1851
!	jmp	_Label_1850
_Label_1850:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1852 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1852  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1853
_Label_1851:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1854 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1854  sizeInBytes=4
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
_Label_1853:
! END IF...
_Label_1849:
! END IF...
_Label_1845:
! CALL STATEMENT...
!   _temp_1855 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1855  sizeInBytes=4
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
!   _temp_1856 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1856  sizeInBytes=4
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
	.word	_Label_1857
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1859
	.word	-12
	.word	4
	.word	_Label_1860
	.word	-16
	.word	4
	.word	_Label_1861
	.word	-20
	.word	4
	.word	_Label_1862
	.word	-24
	.word	4
	.word	_Label_1863
	.word	-28
	.word	4
	.word	_Label_1864
	.word	-32
	.word	4
	.word	_Label_1865
	.word	-36
	.word	4
	.word	_Label_1866
	.word	-40
	.word	4
	.word	_Label_1867
	.word	-44
	.word	4
	.word	_Label_1868
	.word	-48
	.word	4
	.word	0
_Label_1857:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1858:
	.ascii	"Pself\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1860:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1869
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
_Label_1869:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1870
	.word	_sourceFileName
	.word	240		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1870:
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
_Label_3722:
	push	r0
	sub	r1,1,r1
	bne	_Label_3722
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
!   _temp_1872 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1936]
!   NEW ARRAY Constructor...
!   _temp_1874 = &_temp_1873
	add	r14,-1932,r1
	store	r1,[r14+-248]
!   _temp_1874 = _temp_1874 + 4
	load	[r14+-248],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1876 = zeros  (sizeInBytes=168)
	add	r14,-240,r4
	mov	42,r3
_Label_3723:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3723
!   _temp_1876 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-240]
	mov	10,r1
	store	r1,[r14+-244]
_Label_1878:
!   Data Move: *_temp_1874 = _temp_1876  (sizeInBytes=168)
	add	r14,-240,r5
	load	[r14+-248],r4
	mov	42,r3
_Label_3724:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3724
!   _temp_1874 = _temp_1874 + 168
	load	[r14+-248],r1
	add	r1,168,r1
	store	r1,[r14+-248]
!   _temp_1875 = _temp_1875 + -1
	load	[r14+-244],r1
	add	r1,-1,r1
	store	r1,[r14+-244]
!   if intNotZero (_temp_1875) then goto _Label_1878
	load	[r14+-244],r1
	cmp	r1,r0
	bne	_Label_1878
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1932]
!   _temp_1879 = &_temp_1873
	add	r14,-1932,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1936],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3725
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3725:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1872 = *_temp_1879  (sizeInBytes=1684)
	load	[r14+-68],r5
	load	[r14+-1936],r4
	mov	421,r3
_Label_3726:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3726
! FOR STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1884 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1885 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1884  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1944]
_Label_1880:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1885 then goto _Label_1883		
	load	[r14+-1944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1883
_Label_1881:
	mov	898,r13		! source line 898
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1886 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1886 [index ] into _temp_1887
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
!   _temp_1889 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1889 [index ] into _temp_1890
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
!   _temp_1888 = _temp_1890		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1891 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1888  sizeInBytes=4
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
_Label_1882:
!   index = index + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_1880
! END FOR
_Label_1883:
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
!   _temp_1893 = &processManagerLock
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
!   _temp_1895 = &aProcessBecameFree
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
!   _temp_1897 = &aProcessDied
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
	.word	_Label_1898
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_1899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1900
	.word	-12
	.word	4
	.word	_Label_1901
	.word	-16
	.word	4
	.word	_Label_1902
	.word	-20
	.word	4
	.word	_Label_1903
	.word	-24
	.word	4
	.word	_Label_1904
	.word	-28
	.word	4
	.word	_Label_1905
	.word	-32
	.word	4
	.word	_Label_1906
	.word	-36
	.word	4
	.word	_Label_1907
	.word	-40
	.word	4
	.word	_Label_1908
	.word	-44
	.word	4
	.word	_Label_1909
	.word	-48
	.word	4
	.word	_Label_1910
	.word	-52
	.word	4
	.word	_Label_1911
	.word	-56
	.word	4
	.word	_Label_1912
	.word	-60
	.word	4
	.word	_Label_1913
	.word	-64
	.word	4
	.word	_Label_1914
	.word	-68
	.word	4
	.word	_Label_1915
	.word	-72
	.word	4
	.word	_Label_1916
	.word	-240
	.word	168
	.word	_Label_1917
	.word	-244
	.word	4
	.word	_Label_1918
	.word	-248
	.word	4
	.word	_Label_1919
	.word	-1932
	.word	1684
	.word	_Label_1920
	.word	-1936
	.word	4
	.word	_Label_1921
	.word	-1940
	.word	4
	.word	_Label_1922
	.word	-1944
	.word	4
	.word	0
_Label_1898:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1899:
	.ascii	"Pself\0"
	.align
_Label_1900:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1895\0"
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
	.ascii	"_temp_1892\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1922:
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
_Label_3727:
	push	r0
	sub	r1,1,r1
	bne	_Label_3727
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
!   _temp_1923 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1923  sizeInBytes=4
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
!   _temp_1928 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1929 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1928  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1924:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1929 then goto _Label_1927		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1927
_Label_1925:
	mov	924,r13		! source line 924
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1930 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1930  sizeInBytes=4
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
!   _temp_1931 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1931  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1932 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1932 [i ] into _temp_1933
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
_Label_1926:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1924
! END FOR
_Label_1927:
! CALL STATEMENT...
!   _temp_1934 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1934  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1935 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1936 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1935  sizeInBytes=4
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
	.word	_Label_1937
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1938
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1939
	.word	-12
	.word	4
	.word	_Label_1940
	.word	-16
	.word	4
	.word	_Label_1941
	.word	-20
	.word	4
	.word	_Label_1942
	.word	-24
	.word	4
	.word	_Label_1943
	.word	-28
	.word	4
	.word	_Label_1944
	.word	-32
	.word	4
	.word	_Label_1945
	.word	-36
	.word	4
	.word	_Label_1946
	.word	-40
	.word	4
	.word	_Label_1947
	.word	-44
	.word	4
	.word	_Label_1948
	.word	-48
	.word	4
	.word	_Label_1949
	.word	-52
	.word	4
	.word	_Label_1950
	.word	-56
	.word	4
	.word	0
_Label_1937:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1938:
	.ascii	"Pself\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1949:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1950:
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
_Label_3728:
	push	r0
	sub	r1,1,r1
	bne	_Label_3728
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
!   _temp_1951 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1951  sizeInBytes=4
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
!   _temp_1956 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1957 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1956  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1952:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1957 then goto _Label_1955		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1955
_Label_1953:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1958 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1958  sizeInBytes=4
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
!   _temp_1959 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1959 [i ] into _temp_1960
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
_Label_1954:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1952
! END FOR
_Label_1955:
! CALL STATEMENT...
!   _temp_1961 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1961  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1962 = _function_200_PrintObjectAddr
	set	_function_200_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1963 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1962  sizeInBytes=4
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
	.word	_Label_1964
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1966
	.word	-12
	.word	4
	.word	_Label_1967
	.word	-16
	.word	4
	.word	_Label_1968
	.word	-20
	.word	4
	.word	_Label_1969
	.word	-24
	.word	4
	.word	_Label_1970
	.word	-28
	.word	4
	.word	_Label_1971
	.word	-32
	.word	4
	.word	_Label_1972
	.word	-36
	.word	4
	.word	_Label_1973
	.word	-40
	.word	4
	.word	_Label_1974
	.word	-44
	.word	4
	.word	_Label_1975
	.word	-48
	.word	4
	.word	_Label_1976
	.word	-52
	.word	4
	.word	0
_Label_1964:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1965:
	.ascii	"Pself\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_1975:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1976:
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
_Label_3729:
	push	r0
	sub	r1,1,r1
	bne	_Label_3729
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1977 = &processManagerLock
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
_Label_1978:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1981 = &freeList
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
!   if result==true then goto _Label_1979 else goto _Label_1980
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1980
	jmp	_Label_1979
_Label_1979:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1982 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_1983 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1982  sizeInBytes=4
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
	jmp	_Label_1978
_Label_1980:
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
!   _temp_1984 = &freeList
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
!   _temp_1985 = processToReturn + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1985 = 1  (sizeInBytes=4)
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
!   _temp_1986 = processToReturn + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1986 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1987 = &processManagerLock
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
	.word	_Label_1988
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1989
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1990
	.word	-12
	.word	4
	.word	_Label_1991
	.word	-16
	.word	4
	.word	_Label_1992
	.word	-20
	.word	4
	.word	_Label_1993
	.word	-24
	.word	4
	.word	_Label_1994
	.word	-28
	.word	4
	.word	_Label_1995
	.word	-32
	.word	4
	.word	_Label_1996
	.word	-36
	.word	4
	.word	_Label_1997
	.word	-40
	.word	4
	.word	_Label_1998
	.word	-44
	.word	4
	.word	0
_Label_1988:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1989:
	.ascii	"Pself\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1998:
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
_Label_3730:
	push	r0
	sub	r1,1,r1
	bne	_Label_3730
	mov	991,r13		! source line 991
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1999 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1999  sizeInBytes=4
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
!   _temp_2000 = &processManagerLock
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
!   _temp_2001 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2001 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_2002 = &freeList
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
!   _temp_2003 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2004 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2003  sizeInBytes=4
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
!   _temp_2005 = &processManagerLock
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
	.word	_Label_2006
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_2007
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2008
	.word	12
	.word	4
	.word	_Label_2009
	.word	-12
	.word	4
	.word	_Label_2010
	.word	-16
	.word	4
	.word	_Label_2011
	.word	-20
	.word	4
	.word	_Label_2012
	.word	-24
	.word	4
	.word	_Label_2013
	.word	-28
	.word	4
	.word	_Label_2014
	.word	-32
	.word	4
	.word	_Label_2015
	.word	-36
	.word	4
	.word	0
_Label_2006:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_2007:
	.ascii	"Pself\0"
	.align
_Label_2008:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1999\0"
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
_Label_3731:
	push	r0
	sub	r1,1,r1
	bne	_Label_3731
	mov	1010,r13		! source line 1010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_2016 = &processManagerLock
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
!   _temp_2021 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2022 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2021  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-152]
_Label_2017:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2022 then goto _Label_2020		
	load	[r14+-152],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2020
_Label_2018:
	mov	1035,r13		! source line 1035
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   _temp_2023 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_2023 [i ] into _temp_2024
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
!   child = _temp_2024		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2029 = child + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: _temp_2028 = *_temp_2029  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2031 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_2030 = *_temp_2031  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_2028 != _temp_2030 then goto _Label_2026		(int)
	load	[r14+-128],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2026
!	jmp	_Label_2027
_Label_2027:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2033 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2032 = *_temp_2033  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2032 != 2 then goto _Label_2026		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_2026
!	jmp	_Label_2025
_Label_2025:
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
!   _temp_2034 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_2034 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_2035 = &freeList
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
!   _temp_2036 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-96]
!   _temp_2037 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_2036  sizeInBytes=4
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
_Label_2026:
!   Increment the FOR-LOOP index variable and jump back
_Label_2019:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_2017
! END FOR
_Label_2020:
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
!   _temp_2042 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2043 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2042  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-152]
_Label_2038:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2043 then goto _Label_2041		
	load	[r14+-152],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2041
_Label_2039:
	mov	1046,r13		! source line 1046
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
!   _temp_2047 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_2047 [i ] into _temp_2048
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
!   _temp_2049 = _temp_2048 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2046 = *_temp_2049  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2051 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_2050 = *_temp_2051  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_2046 != _temp_2050 then goto _Label_2045		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_2045
!	jmp	_Label_2044
_Label_2044:
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   _temp_2052 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_2052 [i ] into _temp_2053
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
!   parent = _temp_2053		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-160]
! END IF...
_Label_2045:
!   Increment the FOR-LOOP index variable and jump back
_Label_2040:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_2038
! END FOR
_Label_2041:
! IF STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0IF",r10
!   if parent == 0 then goto _Label_2055		(int)
	load	[r14+-160],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2055
!	jmp	_Label_2056
_Label_2056:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2058 = parent + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2057 = *_temp_2058  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2057 != 1 then goto _Label_2055		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_2055
!	jmp	_Label_2054
_Label_2054:
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
!   _temp_2059 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_2059 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_2060 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_2061 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2060  sizeInBytes=4
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
	jmp	_Label_2062
_Label_2055:
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
!   _temp_2063 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2063 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_2064 = &freeList
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
!   _temp_2065 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2066 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2065  sizeInBytes=4
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
_Label_2062:
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_2067 = &processManagerLock
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
	.word	_Label_2068
	.word	8		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_2069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2070
	.word	12
	.word	4
	.word	_Label_2071
	.word	-12
	.word	4
	.word	_Label_2072
	.word	-16
	.word	4
	.word	_Label_2073
	.word	-20
	.word	4
	.word	_Label_2074
	.word	-24
	.word	4
	.word	_Label_2075
	.word	-28
	.word	4
	.word	_Label_2076
	.word	-32
	.word	4
	.word	_Label_2077
	.word	-36
	.word	4
	.word	_Label_2078
	.word	-40
	.word	4
	.word	_Label_2079
	.word	-44
	.word	4
	.word	_Label_2080
	.word	-48
	.word	4
	.word	_Label_2081
	.word	-52
	.word	4
	.word	_Label_2082
	.word	-56
	.word	4
	.word	_Label_2083
	.word	-60
	.word	4
	.word	_Label_2084
	.word	-64
	.word	4
	.word	_Label_2085
	.word	-68
	.word	4
	.word	_Label_2086
	.word	-72
	.word	4
	.word	_Label_2087
	.word	-76
	.word	4
	.word	_Label_2088
	.word	-80
	.word	4
	.word	_Label_2089
	.word	-84
	.word	4
	.word	_Label_2090
	.word	-88
	.word	4
	.word	_Label_2091
	.word	-92
	.word	4
	.word	_Label_2092
	.word	-96
	.word	4
	.word	_Label_2093
	.word	-100
	.word	4
	.word	_Label_2094
	.word	-104
	.word	4
	.word	_Label_2095
	.word	-108
	.word	4
	.word	_Label_2096
	.word	-112
	.word	4
	.word	_Label_2097
	.word	-116
	.word	4
	.word	_Label_2098
	.word	-120
	.word	4
	.word	_Label_2099
	.word	-124
	.word	4
	.word	_Label_2100
	.word	-128
	.word	4
	.word	_Label_2101
	.word	-132
	.word	4
	.word	_Label_2102
	.word	-136
	.word	4
	.word	_Label_2103
	.word	-140
	.word	4
	.word	_Label_2104
	.word	-144
	.word	4
	.word	_Label_2105
	.word	-148
	.word	4
	.word	_Label_2106
	.word	-152
	.word	4
	.word	_Label_2107
	.word	-156
	.word	4
	.word	_Label_2108
	.word	-160
	.word	4
	.word	0
_Label_2068:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_2069:
	.ascii	"Pself\0"
	.align
_Label_2070:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2033\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2105:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2106:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2107:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_2108:
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
_Label_3732:
	push	r0
	sub	r1,1,r1
	bne	_Label_3732
	mov	1068,r13		! source line 1068
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_2109 = &processManagerLock
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
_Label_2110:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2114 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2113 = *_temp_2114  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_2113 == 2 then goto _Label_2112		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_2112
!	jmp	_Label_2111
_Label_2111:
	mov	1078,r13		! source line 1078
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_2115 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_2116 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_2115  sizeInBytes=4
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
	jmp	_Label_2110
_Label_2112:
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2117 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatusToReturn = *_temp_2117  (sizeInBytes=4)
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
!   _temp_2118 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2118 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_2119 = &freeList
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
!   _temp_2120 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_2121 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2120  sizeInBytes=4
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
!   _temp_2122 = &processManagerLock
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
	.word	_Label_2123
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2124
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2125
	.word	12
	.word	4
	.word	_Label_2126
	.word	-12
	.word	4
	.word	_Label_2127
	.word	-16
	.word	4
	.word	_Label_2128
	.word	-20
	.word	4
	.word	_Label_2129
	.word	-24
	.word	4
	.word	_Label_2130
	.word	-28
	.word	4
	.word	_Label_2131
	.word	-32
	.word	4
	.word	_Label_2132
	.word	-36
	.word	4
	.word	_Label_2133
	.word	-40
	.word	4
	.word	_Label_2134
	.word	-44
	.word	4
	.word	_Label_2135
	.word	-48
	.word	4
	.word	_Label_2136
	.word	-52
	.word	4
	.word	_Label_2137
	.word	-56
	.word	4
	.word	0
_Label_2123:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_2124:
	.ascii	"Pself\0"
	.align
_Label_2125:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2137:
	.byte	'I'
	.ascii	"exitStatusToReturn\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_2138
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_2138:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2139
	.word	_sourceFileName
	.word	263		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_2139:
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
_Label_3733:
	push	r0
	sub	r1,1,r1
	bne	_Label_3733
	mov	1224,r13		! source line 1224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2140 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2140  sizeInBytes=4
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
!   _temp_2142 = &framesInUse
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
!   _temp_2144 = &frameManagerLock
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
!   _temp_2146 = &newFramesAvailable
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
!   _temp_2151 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2152 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2151  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_2147:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2152 then goto _Label_2150		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2150
_Label_2148:
	mov	1243,r13		! source line 1243
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2155 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2155) then goto _Label_2154
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_2154
!	jmp	_Label_2153
_Label_2153:
! THEN...
	mov	1247,r13		! source line 1247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2156 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2156  sizeInBytes=4
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
_Label_2154:
!   Increment the FOR-LOOP index variable and jump back
_Label_2149:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_2147
! END FOR
_Label_2150:
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
	.word	_Label_2157
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2158
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2159
	.word	-12
	.word	4
	.word	_Label_2160
	.word	-16
	.word	4
	.word	_Label_2161
	.word	-20
	.word	4
	.word	_Label_2162
	.word	-24
	.word	4
	.word	_Label_2163
	.word	-28
	.word	4
	.word	_Label_2164
	.word	-32
	.word	4
	.word	_Label_2165
	.word	-36
	.word	4
	.word	_Label_2166
	.word	-40
	.word	4
	.word	_Label_2167
	.word	-44
	.word	4
	.word	_Label_2168
	.word	-48
	.word	4
	.word	_Label_2169
	.word	-52
	.word	4
	.word	_Label_2170
	.word	-56
	.word	4
	.word	0
_Label_2157:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2158:
	.ascii	"Pself\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2165:
	.byte	'?'
	.ascii	"_temp_2144\0"
	.align
_Label_2166:
	.byte	'?'
	.ascii	"_temp_2143\0"
	.align
_Label_2167:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2168:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2169:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2170:
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
_Label_3734:
	push	r0
	sub	r1,1,r1
	bne	_Label_3734
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_2171 = &frameManagerLock
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
!   _temp_2172 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2172  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2173 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2173  sizeInBytes=4
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
!   _temp_2174 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   _temp_2175 = &framesInUse
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
!   _temp_2176 = &frameManagerLock
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
	.word	_Label_2177
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2178
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2179
	.word	-12
	.word	4
	.word	_Label_2180
	.word	-16
	.word	4
	.word	_Label_2181
	.word	-20
	.word	4
	.word	_Label_2182
	.word	-24
	.word	4
	.word	_Label_2183
	.word	-28
	.word	4
	.word	_Label_2184
	.word	-32
	.word	4
	.word	0
_Label_2177:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2178:
	.ascii	"Pself\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2171\0"
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
_Label_3735:
	push	r0
	sub	r1,1,r1
	bne	_Label_3735
	mov	1268,r13		! source line 1268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
!   _temp_2185 = &frameManagerLock
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
_Label_2186:
!   if numberFreeFrames >= 1 then goto _Label_2188		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2188
!	jmp	_Label_2187
_Label_2187:
	mov	1279,r13		! source line 1279
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_2189 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_2190 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_2189  sizeInBytes=4
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
	jmp	_Label_2186
_Label_2188:
! ASSIGNMENT STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0AS",r10
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
!   _temp_2191 = &framesInUse
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
!   _temp_2192 = &frameManagerLock
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
!   _temp_2193 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_2193		(int)
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
	.word	_Label_2194
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_2195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2196
	.word	-12
	.word	4
	.word	_Label_2197
	.word	-16
	.word	4
	.word	_Label_2198
	.word	-20
	.word	4
	.word	_Label_2199
	.word	-24
	.word	4
	.word	_Label_2200
	.word	-28
	.word	4
	.word	_Label_2201
	.word	-32
	.word	4
	.word	_Label_2202
	.word	-36
	.word	4
	.word	_Label_2203
	.word	-40
	.word	4
	.word	0
_Label_2194:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_2195:
	.ascii	"Pself\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2190\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2189\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2202:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_2203:
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
_Label_3736:
	push	r0
	sub	r1,1,r1
	bne	_Label_3736
	mov	1298,r13		! source line 1298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0SE",r10
!   _temp_2204 = &frameManagerLock
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
_Label_2205:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_2207		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2207
!	jmp	_Label_2206
_Label_2206:
	mov	1310,r13		! source line 1310
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_2208 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_2209 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2208  sizeInBytes=4
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
	jmp	_Label_2205
_Label_2207:
! FOR STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2214 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2215 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_2214  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_2210:
!   Perform the FOR-LOOP termination test
!   if index > _temp_2215 then goto _Label_2213		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2213
_Label_2211:
	mov	1317,r13		! source line 1317
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
	mov	1318,r13		! source line 1318
	mov	"\0\0SE",r10
!   _temp_2216 = &framesInUse
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
!   _temp_2217 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_2217		(int)
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
_Label_2212:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_2210
! END FOR
_Label_2213:
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
!   _temp_2218 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2221 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2220 = *_temp_2221  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2219 = _temp_2220 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_2218 = _temp_2219  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_2222 = &frameManagerLock
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
	.word	_Label_2223
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_2224
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2225
	.word	12
	.word	4
	.word	_Label_2226
	.word	16
	.word	4
	.word	_Label_2227
	.word	-12
	.word	4
	.word	_Label_2228
	.word	-16
	.word	4
	.word	_Label_2229
	.word	-20
	.word	4
	.word	_Label_2230
	.word	-24
	.word	4
	.word	_Label_2231
	.word	-28
	.word	4
	.word	_Label_2232
	.word	-32
	.word	4
	.word	_Label_2233
	.word	-36
	.word	4
	.word	_Label_2234
	.word	-40
	.word	4
	.word	_Label_2235
	.word	-44
	.word	4
	.word	_Label_2236
	.word	-48
	.word	4
	.word	_Label_2237
	.word	-52
	.word	4
	.word	_Label_2238
	.word	-56
	.word	4
	.word	_Label_2239
	.word	-60
	.word	4
	.word	_Label_2240
	.word	-64
	.word	4
	.word	_Label_2241
	.word	-68
	.word	4
	.word	0
_Label_2223:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_2224:
	.ascii	"Pself\0"
	.align
_Label_2225:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2226:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2239:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_2240:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2241:
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
_Label_3737:
	push	r0
	sub	r1,1,r1
	bne	_Label_3737
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
!   _temp_2242 = &frameManagerLock
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
!   _temp_2243 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_2243  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2248 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2249 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_2248  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_2244:
!   Perform the FOR-LOOP termination test
!   if index > _temp_2249 then goto _Label_2247		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2247
_Label_2245:
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
!   _temp_2250 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_2250 div 8192		(int)
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
!   _temp_2251 = &framesInUse
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
_Label_2246:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_2244
! END FOR
_Label_2247:
! SEND STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_2252 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_2253 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2252  sizeInBytes=4
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
!   _temp_2254 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2257 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2256 = *_temp_2257  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2255 = _temp_2256 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_2254 = _temp_2255  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
!   _temp_2258 = &frameManagerLock
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
	.word	_Label_2259
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_2260
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2261
	.word	12
	.word	4
	.word	_Label_2262
	.word	-12
	.word	4
	.word	_Label_2263
	.word	-16
	.word	4
	.word	_Label_2264
	.word	-20
	.word	4
	.word	_Label_2265
	.word	-24
	.word	4
	.word	_Label_2266
	.word	-28
	.word	4
	.word	_Label_2267
	.word	-32
	.word	4
	.word	_Label_2268
	.word	-36
	.word	4
	.word	_Label_2269
	.word	-40
	.word	4
	.word	_Label_2270
	.word	-44
	.word	4
	.word	_Label_2271
	.word	-48
	.word	4
	.word	_Label_2272
	.word	-52
	.word	4
	.word	_Label_2273
	.word	-56
	.word	4
	.word	_Label_2274
	.word	-60
	.word	4
	.word	_Label_2275
	.word	-64
	.word	4
	.word	_Label_2276
	.word	-68
	.word	4
	.word	_Label_2277
	.word	-72
	.word	4
	.word	_Label_2278
	.word	-76
	.word	4
	.word	0
_Label_2259:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_2260:
	.ascii	"Pself\0"
	.align
_Label_2261:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2275:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_2276:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_2277:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2278:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_2279
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
_Label_2279:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2280
	.word	_sourceFileName
	.word	282		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_2280:
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
_Label_3738:
	push	r0
	sub	r1,1,r1
	bne	_Label_3738
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
!   _temp_2281 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_2283 = &_temp_2282
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_2283 = _temp_2283 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_2285:
!   Data Move: *_temp_2283 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_2283 = _temp_2283 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2284 = _temp_2284 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_2284) then goto _Label_2285
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_2285
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_2286 = &_temp_2282
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3739
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3739:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2281 = *_temp_2286  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3740:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3740
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
	.word	_Label_2287
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_2288
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2289
	.word	-12
	.word	4
	.word	_Label_2290
	.word	-16
	.word	4
	.word	_Label_2291
	.word	-20
	.word	4
	.word	_Label_2292
	.word	-104
	.word	84
	.word	_Label_2293
	.word	-108
	.word	4
	.word	0
_Label_2287:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2288:
	.ascii	"Pself\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2281\0"
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
_Label_3741:
	push	r0
	sub	r1,1,r1
	bne	_Label_3741
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2294 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2294  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2295 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2295  sizeInBytes=4
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
!   _temp_2300 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2301 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2300  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2296:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2301 then goto _Label_2299		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2299
_Label_2297:
	mov	1395,r13		! source line 1395
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2302 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2302  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2304 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2304 [i ] into _temp_2305
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
!   _temp_2303 = _temp_2305		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2303  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2306 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2306  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2308 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2308 [i ] into _temp_2309
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
!   Data Move: _temp_2307 = *_temp_2309  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2307  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2310 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2310  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2311 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2311  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1401,r13		! source line 1401
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2312 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2312  sizeInBytes=4
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
!   if intIsZero (_temp_2314) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2313  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2313  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1403,r13		! source line 1403
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2315 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2315  sizeInBytes=4
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
!   if intIsZero (_temp_2319) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2318  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2318) then goto _Label_2317
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2317
!	jmp	_Label_2316
_Label_2316:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2321) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2320  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2320  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2322
_Label_2317:
! ELSE...
	mov	1408,r13		! source line 1408
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2323 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2323  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2322:
! CALL STATEMENT...
!   _temp_2324 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2324  sizeInBytes=4
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
!   if intIsZero (_temp_2327) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2325 else goto _Label_2326
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2326
	jmp	_Label_2325
_Label_2325:
! THEN...
	mov	1412,r13		! source line 1412
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2328 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2329
_Label_2326:
! ELSE...
	mov	1414,r13		! source line 1414
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2330 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2330  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2329:
! CALL STATEMENT...
!   _temp_2331 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
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
!   if intIsZero (_temp_2334) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2332 else goto _Label_2333
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2333
	jmp	_Label_2332
_Label_2332:
! THEN...
	mov	1418,r13		! source line 1418
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2335 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2335  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2336
_Label_2333:
! ELSE...
	mov	1420,r13		! source line 1420
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2337 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2337  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2336:
! CALL STATEMENT...
!   _temp_2338 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2338  sizeInBytes=4
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
!   if intIsZero (_temp_2341) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2339 else goto _Label_2340
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2340
	jmp	_Label_2339
_Label_2339:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2342 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2342  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2343
_Label_2340:
! ELSE...
	mov	1426,r13		! source line 1426
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2344 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2344  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2343:
! CALL STATEMENT...
!   _temp_2345 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2345  sizeInBytes=4
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
!   if intIsZero (_temp_2348) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2346 else goto _Label_2347
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2347
	jmp	_Label_2346
_Label_2346:
! THEN...
	mov	1430,r13		! source line 1430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2349 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2349  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2350
_Label_2347:
! ELSE...
	mov	1432,r13		! source line 1432
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2351 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1432,r13		! source line 1432
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2350:
! CALL STATEMENT...
!   Call the function
	mov	1434,r13		! source line 1434
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2298:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2296
! END FOR
_Label_2299:
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
	.word	_Label_2352
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2353
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2354
	.word	-12
	.word	4
	.word	_Label_2355
	.word	-16
	.word	4
	.word	_Label_2356
	.word	-20
	.word	4
	.word	_Label_2357
	.word	-24
	.word	4
	.word	_Label_2358
	.word	-28
	.word	4
	.word	_Label_2359
	.word	-32
	.word	4
	.word	_Label_2360
	.word	-36
	.word	4
	.word	_Label_2361
	.word	-40
	.word	4
	.word	_Label_2362
	.word	-44
	.word	4
	.word	_Label_2363
	.word	-48
	.word	4
	.word	_Label_2364
	.word	-52
	.word	4
	.word	_Label_2365
	.word	-56
	.word	4
	.word	_Label_2366
	.word	-60
	.word	4
	.word	_Label_2367
	.word	-64
	.word	4
	.word	_Label_2368
	.word	-68
	.word	4
	.word	_Label_2369
	.word	-72
	.word	4
	.word	_Label_2370
	.word	-76
	.word	4
	.word	_Label_2371
	.word	-80
	.word	4
	.word	_Label_2372
	.word	-84
	.word	4
	.word	_Label_2373
	.word	-88
	.word	4
	.word	_Label_2374
	.word	-92
	.word	4
	.word	_Label_2375
	.word	-96
	.word	4
	.word	_Label_2376
	.word	-100
	.word	4
	.word	_Label_2377
	.word	-104
	.word	4
	.word	_Label_2378
	.word	-108
	.word	4
	.word	_Label_2379
	.word	-112
	.word	4
	.word	_Label_2380
	.word	-116
	.word	4
	.word	_Label_2381
	.word	-120
	.word	4
	.word	_Label_2382
	.word	-124
	.word	4
	.word	_Label_2383
	.word	-128
	.word	4
	.word	_Label_2384
	.word	-132
	.word	4
	.word	_Label_2385
	.word	-136
	.word	4
	.word	_Label_2386
	.word	-140
	.word	4
	.word	_Label_2387
	.word	-144
	.word	4
	.word	_Label_2388
	.word	-148
	.word	4
	.word	_Label_2389
	.word	-152
	.word	4
	.word	_Label_2390
	.word	-156
	.word	4
	.word	_Label_2391
	.word	-160
	.word	4
	.word	_Label_2392
	.word	-164
	.word	4
	.word	_Label_2393
	.word	-168
	.word	4
	.word	0
_Label_2352:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2353:
	.ascii	"Pself\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2338\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2337\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2308\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2306\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2393:
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
_Label_3742:
	push	r0
	sub	r1,1,r1
	bne	_Label_3742
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0RE",r10
!   _temp_2396 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2396 [entry ] into _temp_2397
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
!   Data Move: _temp_2395 = *_temp_2397  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2394 = _temp_2395 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2394  (sizeInBytes=4)
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
	.word	_Label_2398
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2399
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2400
	.word	12
	.word	4
	.word	_Label_2401
	.word	-12
	.word	4
	.word	_Label_2402
	.word	-16
	.word	4
	.word	_Label_2403
	.word	-20
	.word	4
	.word	_Label_2404
	.word	-24
	.word	4
	.word	0
_Label_2398:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2399:
	.ascii	"Pself\0"
	.align
_Label_2400:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2394\0"
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
_Label_3743:
	push	r0
	sub	r1,1,r1
	bne	_Label_3743
	mov	1450,r13		! source line 1450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0RE",r10
!   _temp_2407 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2407 [entry ] into _temp_2408
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
!   Data Move: _temp_2406 = *_temp_2408  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2405 = _temp_2406 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2405  (sizeInBytes=4)
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
	.word	_Label_2409
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2411
	.word	12
	.word	4
	.word	_Label_2412
	.word	-12
	.word	4
	.word	_Label_2413
	.word	-16
	.word	4
	.word	_Label_2414
	.word	-20
	.word	4
	.word	_Label_2415
	.word	-24
	.word	4
	.word	0
_Label_2409:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2410:
	.ascii	"Pself\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2405\0"
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
_Label_3744:
	push	r0
	sub	r1,1,r1
	bne	_Label_3744
	mov	1459,r13		! source line 1459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   _temp_2416 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2416 [entry ] into _temp_2417
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
!   _temp_2421 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2421 [entry ] into _temp_2422
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
!   Data Move: _temp_2420 = *_temp_2422  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2419 = _temp_2420 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2418 = _temp_2419 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2417 = _temp_2418  (sizeInBytes=4)
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
	.word	_Label_2423
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2424
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2425
	.word	12
	.word	4
	.word	_Label_2426
	.word	16
	.word	4
	.word	_Label_2427
	.word	-12
	.word	4
	.word	_Label_2428
	.word	-16
	.word	4
	.word	_Label_2429
	.word	-20
	.word	4
	.word	_Label_2430
	.word	-24
	.word	4
	.word	_Label_2431
	.word	-28
	.word	4
	.word	_Label_2432
	.word	-32
	.word	4
	.word	_Label_2433
	.word	-36
	.word	4
	.word	0
_Label_2423:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2424:
	.ascii	"Pself\0"
	.align
_Label_2425:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2426:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2416\0"
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
_Label_3745:
	push	r0
	sub	r1,1,r1
	bne	_Label_3745
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   _temp_2437 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2437 [entry ] into _temp_2438
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
!   Data Move: _temp_2436 = *_temp_2438  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2435 = _temp_2436 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2435) then goto _Label_2439
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2439
!   _temp_2434 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2440
_Label_2439:
!   _temp_2434 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2440:
!   ReturnResult: _temp_2434  (sizeInBytes=1)
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
	.word	_Label_2441
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2442
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2443
	.word	12
	.word	4
	.word	_Label_2444
	.word	-16
	.word	4
	.word	_Label_2445
	.word	-20
	.word	4
	.word	_Label_2446
	.word	-24
	.word	4
	.word	_Label_2447
	.word	-28
	.word	4
	.word	_Label_2448
	.word	-9
	.word	1
	.word	0
_Label_2441:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2442:
	.ascii	"Pself\0"
	.align
_Label_2443:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2446:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2447:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2448:
	.byte	'C'
	.ascii	"_temp_2434\0"
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
_Label_3746:
	push	r0
	sub	r1,1,r1
	bne	_Label_3746
	mov	1478,r13		! source line 1478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   _temp_2452 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2452 [entry ] into _temp_2453
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
!   Data Move: _temp_2451 = *_temp_2453  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2450 = _temp_2451 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2450) then goto _Label_2454
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2454
!   _temp_2449 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2455
_Label_2454:
!   _temp_2449 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2455:
!   ReturnResult: _temp_2449  (sizeInBytes=1)
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
	.word	_Label_2456
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2458
	.word	12
	.word	4
	.word	_Label_2459
	.word	-16
	.word	4
	.word	_Label_2460
	.word	-20
	.word	4
	.word	_Label_2461
	.word	-24
	.word	4
	.word	_Label_2462
	.word	-28
	.word	4
	.word	_Label_2463
	.word	-9
	.word	1
	.word	0
_Label_2456:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2457:
	.ascii	"Pself\0"
	.align
_Label_2458:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2463:
	.byte	'C'
	.ascii	"_temp_2449\0"
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
_Label_3747:
	push	r0
	sub	r1,1,r1
	bne	_Label_3747
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
!   _temp_2467 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2467 [entry ] into _temp_2468
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
!   Data Move: _temp_2466 = *_temp_2468  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2465 = _temp_2466 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2465) then goto _Label_2469
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2469
!   _temp_2464 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2470
_Label_2469:
!   _temp_2464 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2470:
!   ReturnResult: _temp_2464  (sizeInBytes=1)
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
	.word	_Label_2471
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2472
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2473
	.word	12
	.word	4
	.word	_Label_2474
	.word	-16
	.word	4
	.word	_Label_2475
	.word	-20
	.word	4
	.word	_Label_2476
	.word	-24
	.word	4
	.word	_Label_2477
	.word	-28
	.word	4
	.word	_Label_2478
	.word	-9
	.word	1
	.word	0
_Label_2471:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2472:
	.ascii	"Pself\0"
	.align
_Label_2473:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2466\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2478:
	.byte	'C'
	.ascii	"_temp_2464\0"
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
_Label_3748:
	push	r0
	sub	r1,1,r1
	bne	_Label_3748
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   _temp_2482 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2482 [entry ] into _temp_2483
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
!   Data Move: _temp_2481 = *_temp_2483  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2480 = _temp_2481 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2480) then goto _Label_2484
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2484
!   _temp_2479 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2485
_Label_2484:
!   _temp_2479 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2485:
!   ReturnResult: _temp_2479  (sizeInBytes=1)
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
	.word	_Label_2486
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2488
	.word	12
	.word	4
	.word	_Label_2489
	.word	-16
	.word	4
	.word	_Label_2490
	.word	-20
	.word	4
	.word	_Label_2491
	.word	-24
	.word	4
	.word	_Label_2492
	.word	-28
	.word	4
	.word	_Label_2493
	.word	-9
	.word	1
	.word	0
_Label_2486:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2487:
	.ascii	"Pself\0"
	.align
_Label_2488:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2493:
	.byte	'C'
	.ascii	"_temp_2479\0"
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
_Label_3749:
	push	r0
	sub	r1,1,r1
	bne	_Label_3749
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   _temp_2494 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2494 [entry ] into _temp_2495
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
!   _temp_2498 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2498 [entry ] into _temp_2499
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
!   Data Move: _temp_2497 = *_temp_2499  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2496 = _temp_2497 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2495 = _temp_2496  (sizeInBytes=4)
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
	.word	_Label_2500
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2502
	.word	12
	.word	4
	.word	_Label_2503
	.word	-12
	.word	4
	.word	_Label_2504
	.word	-16
	.word	4
	.word	_Label_2505
	.word	-20
	.word	4
	.word	_Label_2506
	.word	-24
	.word	4
	.word	_Label_2507
	.word	-28
	.word	4
	.word	_Label_2508
	.word	-32
	.word	4
	.word	0
_Label_2500:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2501:
	.ascii	"Pself\0"
	.align
_Label_2502:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2494\0"
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
_Label_3750:
	push	r0
	sub	r1,1,r1
	bne	_Label_3750
	mov	1514,r13		! source line 1514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   _temp_2509 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2509 [entry ] into _temp_2510
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
!   _temp_2513 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2513 [entry ] into _temp_2514
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
!   Data Move: _temp_2512 = *_temp_2514  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2511 = _temp_2512 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2510 = _temp_2511  (sizeInBytes=4)
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
	.word	_Label_2515
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2516
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2517
	.word	12
	.word	4
	.word	_Label_2518
	.word	-12
	.word	4
	.word	_Label_2519
	.word	-16
	.word	4
	.word	_Label_2520
	.word	-20
	.word	4
	.word	_Label_2521
	.word	-24
	.word	4
	.word	_Label_2522
	.word	-28
	.word	4
	.word	_Label_2523
	.word	-32
	.word	4
	.word	0
_Label_2515:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2516:
	.ascii	"Pself\0"
	.align
_Label_2517:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2509\0"
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
_Label_3751:
	push	r0
	sub	r1,1,r1
	bne	_Label_3751
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _temp_2524 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2524 [entry ] into _temp_2525
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
!   _temp_2528 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2528 [entry ] into _temp_2529
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
!   Data Move: _temp_2527 = *_temp_2529  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2526 = _temp_2527 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2525 = _temp_2526  (sizeInBytes=4)
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
	.word	_Label_2530
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2531
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2532
	.word	12
	.word	4
	.word	_Label_2533
	.word	-12
	.word	4
	.word	_Label_2534
	.word	-16
	.word	4
	.word	_Label_2535
	.word	-20
	.word	4
	.word	_Label_2536
	.word	-24
	.word	4
	.word	_Label_2537
	.word	-28
	.word	4
	.word	_Label_2538
	.word	-32
	.word	4
	.word	0
_Label_2530:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2531:
	.ascii	"Pself\0"
	.align
_Label_2532:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2524\0"
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
_Label_3752:
	push	r0
	sub	r1,1,r1
	bne	_Label_3752
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _temp_2539 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2539 [entry ] into _temp_2540
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
!   _temp_2543 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2543 [entry ] into _temp_2544
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
!   Data Move: _temp_2542 = *_temp_2544  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2541 = _temp_2542 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2540 = _temp_2541  (sizeInBytes=4)
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
	.word	_Label_2545
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2546
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2547
	.word	12
	.word	4
	.word	_Label_2548
	.word	-12
	.word	4
	.word	_Label_2549
	.word	-16
	.word	4
	.word	_Label_2550
	.word	-20
	.word	4
	.word	_Label_2551
	.word	-24
	.word	4
	.word	_Label_2552
	.word	-28
	.word	4
	.word	_Label_2553
	.word	-32
	.word	4
	.word	0
_Label_2545:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2546:
	.ascii	"Pself\0"
	.align
_Label_2547:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2539\0"
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
_Label_3753:
	push	r0
	sub	r1,1,r1
	bne	_Label_3753
	mov	1541,r13		! source line 1541
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   _temp_2554 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2554 [entry ] into _temp_2555
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
!   _temp_2558 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2558 [entry ] into _temp_2559
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
!   Data Move: _temp_2557 = *_temp_2559  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2556 = _temp_2557 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2555 = _temp_2556  (sizeInBytes=4)
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
	.word	_Label_2560
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2561
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2562
	.word	12
	.word	4
	.word	_Label_2563
	.word	-12
	.word	4
	.word	_Label_2564
	.word	-16
	.word	4
	.word	_Label_2565
	.word	-20
	.word	4
	.word	_Label_2566
	.word	-24
	.word	4
	.word	_Label_2567
	.word	-28
	.word	4
	.word	_Label_2568
	.word	-32
	.word	4
	.word	0
_Label_2560:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2561:
	.ascii	"Pself\0"
	.align
_Label_2562:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2554\0"
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
_Label_3754:
	push	r0
	sub	r1,1,r1
	bne	_Label_3754
	mov	1550,r13		! source line 1550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   _temp_2569 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2569 [entry ] into _temp_2570
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
!   _temp_2573 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2573 [entry ] into _temp_2574
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
!   Data Move: _temp_2572 = *_temp_2574  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2571 = _temp_2572 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2570 = _temp_2571  (sizeInBytes=4)
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
	.word	_Label_2575
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2577
	.word	12
	.word	4
	.word	_Label_2578
	.word	-12
	.word	4
	.word	_Label_2579
	.word	-16
	.word	4
	.word	_Label_2580
	.word	-20
	.word	4
	.word	_Label_2581
	.word	-24
	.word	4
	.word	_Label_2582
	.word	-28
	.word	4
	.word	_Label_2583
	.word	-32
	.word	4
	.word	0
_Label_2575:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2576:
	.ascii	"Pself\0"
	.align
_Label_2577:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2569\0"
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
_Label_3755:
	push	r0
	sub	r1,1,r1
	bne	_Label_3755
	mov	1559,r13		! source line 1559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   _temp_2584 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2584 [entry ] into _temp_2585
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
!   _temp_2588 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2588 [entry ] into _temp_2589
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
!   Data Move: _temp_2587 = *_temp_2589  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2586 = _temp_2587 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2585 = _temp_2586  (sizeInBytes=4)
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
	.word	_Label_2590
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2592
	.word	12
	.word	4
	.word	_Label_2593
	.word	-12
	.word	4
	.word	_Label_2594
	.word	-16
	.word	4
	.word	_Label_2595
	.word	-20
	.word	4
	.word	_Label_2596
	.word	-24
	.word	4
	.word	_Label_2597
	.word	-28
	.word	4
	.word	_Label_2598
	.word	-32
	.word	4
	.word	0
_Label_2590:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2591:
	.ascii	"Pself\0"
	.align
_Label_2592:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2584\0"
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
_Label_3756:
	push	r0
	sub	r1,1,r1
	bne	_Label_3756
	mov	1568,r13		! source line 1568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0AS",r10
!   _temp_2599 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2599 [entry ] into _temp_2600
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
!   _temp_2603 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2603 [entry ] into _temp_2604
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
!   Data Move: _temp_2602 = *_temp_2604  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2601 = _temp_2602 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2600 = _temp_2601  (sizeInBytes=4)
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
	.word	_Label_2605
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2607
	.word	12
	.word	4
	.word	_Label_2608
	.word	-12
	.word	4
	.word	_Label_2609
	.word	-16
	.word	4
	.word	_Label_2610
	.word	-20
	.word	4
	.word	_Label_2611
	.word	-24
	.word	4
	.word	_Label_2612
	.word	-28
	.word	4
	.word	_Label_2613
	.word	-32
	.word	4
	.word	0
_Label_2605:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2606:
	.ascii	"Pself\0"
	.align
_Label_2607:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2599\0"
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
_Label_3757:
	push	r0
	sub	r1,1,r1
	bne	_Label_3757
	mov	1577,r13		! source line 1577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2615 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2615 [0 ] into _temp_2616
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
!   _temp_2614 = _temp_2616		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2617 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2614  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2617  sizeInBytes=4
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
	.word	_Label_2618
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2620
	.word	-12
	.word	4
	.word	_Label_2621
	.word	-16
	.word	4
	.word	_Label_2622
	.word	-20
	.word	4
	.word	_Label_2623
	.word	-24
	.word	4
	.word	0
_Label_2618:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2619:
	.ascii	"Pself\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2614\0"
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
_Label_3758:
	push	r0
	sub	r1,1,r1
	bne	_Label_3758
	mov	1588,r13		! source line 1588
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2624
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2624
	jmp	_Label_2625
_Label_2624:
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
	jmp	_Label_2626
_Label_2625:
! ELSE...
	mov	1605,r13		! source line 1605
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2628		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2628
!	jmp	_Label_2627
_Label_2627:
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
_Label_2628:
! END IF...
_Label_2626:
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
_Label_2629:
!	jmp	_Label_2630
_Label_2630:
	mov	1612,r13		! source line 1612
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2633		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2633
!	jmp	_Label_2632
_Label_2632:
! THEN...
	mov	1614,r13		! source line 1614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2634 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2634  sizeInBytes=4
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
_Label_2633:
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
	mov	1617,r13		! source line 1617
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2638) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2637  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2637 then goto _Label_2636 else goto _Label_2635
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2635
	jmp	_Label_2636
_Label_2635:
! THEN...
	mov	1618,r13		! source line 1618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2639 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2639  sizeInBytes=4
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
_Label_2636:
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
	mov	1621,r13		! source line 1621
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2641) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2640  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2640 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0WH",r10
_Label_2642:
!   if offset >= 8192 then goto _Label_2644		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2644
!	jmp	_Label_2643
_Label_2643:
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
!   Data Move: _temp_2645 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2645  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2647		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2647
!	jmp	_Label_2646
_Label_2646:
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
_Label_2647:
! END WHILE...
	jmp	_Label_2642
_Label_2644:
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
	jmp	_Label_2629
_Label_2631:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2648
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2649
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2650
	.word	12
	.word	4
	.word	_Label_2651
	.word	16
	.word	4
	.word	_Label_2652
	.word	20
	.word	4
	.word	_Label_2653
	.word	-9
	.word	1
	.word	_Label_2654
	.word	-16
	.word	4
	.word	_Label_2655
	.word	-20
	.word	4
	.word	_Label_2656
	.word	-24
	.word	4
	.word	_Label_2657
	.word	-28
	.word	4
	.word	_Label_2658
	.word	-10
	.word	1
	.word	_Label_2659
	.word	-32
	.word	4
	.word	_Label_2660
	.word	-36
	.word	4
	.word	_Label_2661
	.word	-40
	.word	4
	.word	_Label_2662
	.word	-44
	.word	4
	.word	_Label_2663
	.word	-48
	.word	4
	.word	0
_Label_2648:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2649:
	.ascii	"Pself\0"
	.align
_Label_2650:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2651:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2652:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2653:
	.byte	'C'
	.ascii	"_temp_2645\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2658:
	.byte	'C'
	.ascii	"_temp_2637\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2660:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2661:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2662:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2663:
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
_Label_3759:
	push	r0
	sub	r1,1,r1
	bne	_Label_3759
	mov	1642,r13		! source line 1642
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2664
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2664
	jmp	_Label_2665
_Label_2664:
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
	jmp	_Label_2666
_Label_2665:
! ELSE...
	mov	1655,r13		! source line 1655
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2668		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2668
!	jmp	_Label_2667
_Label_2667:
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
_Label_2668:
! END IF...
_Label_2666:
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
_Label_2669:
!	jmp	_Label_2670
_Label_2670:
	mov	1660,r13		! source line 1660
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2675		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2675
	jmp	_Label_2672
_Label_2675:
	mov	1662,r13		! source line 1662
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2677) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2676  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2676 then goto _Label_2674 else goto _Label_2672
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2672
	jmp	_Label_2674
_Label_2674:
	mov	1663,r13		! source line 1663
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2679) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2678  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2678 then goto _Label_2673 else goto _Label_2672
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2672
	jmp	_Label_2673
_Label_2672:
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
_Label_2673:
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
	mov	1666,r13		! source line 1666
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2681) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2680  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2680 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0WH",r10
_Label_2682:
!   if offset >= 8192 then goto _Label_2684		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2684
!	jmp	_Label_2683
_Label_2683:
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
!   Data Move: _temp_2685 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2685  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2687		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2687
!	jmp	_Label_2686
_Label_2686:
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
_Label_2687:
! END WHILE...
	jmp	_Label_2682
_Label_2684:
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
	jmp	_Label_2669
_Label_2671:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2688
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2689
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2690
	.word	12
	.word	4
	.word	_Label_2691
	.word	16
	.word	4
	.word	_Label_2692
	.word	20
	.word	4
	.word	_Label_2693
	.word	-9
	.word	1
	.word	_Label_2694
	.word	-16
	.word	4
	.word	_Label_2695
	.word	-20
	.word	4
	.word	_Label_2696
	.word	-24
	.word	4
	.word	_Label_2697
	.word	-10
	.word	1
	.word	_Label_2698
	.word	-28
	.word	4
	.word	_Label_2699
	.word	-11
	.word	1
	.word	_Label_2700
	.word	-32
	.word	4
	.word	_Label_2701
	.word	-36
	.word	4
	.word	_Label_2702
	.word	-40
	.word	4
	.word	_Label_2703
	.word	-44
	.word	4
	.word	0
_Label_2688:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2689:
	.ascii	"Pself\0"
	.align
_Label_2690:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2691:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2692:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2693:
	.byte	'C'
	.ascii	"_temp_2685\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2697:
	.byte	'C'
	.ascii	"_temp_2678\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2699:
	.byte	'C'
	.ascii	"_temp_2676\0"
	.align
_Label_2700:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2701:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2702:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2703:
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
_Label_3760:
	push	r0
	sub	r1,1,r1
	bne	_Label_3760
	mov	1684,r13		! source line 1684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0IF",r10
	mov	1708,r13		! source line 1708
	mov	"\0\0SE",r10
!   _temp_2707 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2708) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2707  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2706  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2706 >= 4 then goto _Label_2705		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2705
!	jmp	_Label_2704
_Label_2704:
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
_Label_2705:
! IF STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2710		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2710
!	jmp	_Label_2709
_Label_2709:
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
_Label_2710:
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
!   _temp_2713 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2712 = _temp_2713 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2714 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2715) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2712  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2714  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2711  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2711  (sizeInBytes=4)
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
	.word	_Label_2716
	.word	16		! total size of parameters
	.word	52		! frame size = 52
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
	.word	0
_Label_2716:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2717:
	.ascii	"Pself\0"
	.align
_Label_2718:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2720:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2729:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2730
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2730:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2731
	.word	_sourceFileName
	.word	314		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2731:
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
_Label_3761:
	push	r0
	sub	r1,1,r1
	bne	_Label_3761
	mov	2582,r13		! source line 2582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2732 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2732  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2583,r13		! source line 2583
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
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
	mov	2591,r13		! source line 2591
	mov	"\0\0SE",r10
!   _temp_2734 = &semUsedInSynchMethods
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
	mov	2592,r13		! source line 2592
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
	mov	2593,r13		! source line 2593
	mov	"\0\0SE",r10
!   _temp_2736 = &diskBusy
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
	mov	2593,r13		! source line 2593
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
	.word	_Label_2737
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2738
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2739
	.word	-12
	.word	4
	.word	_Label_2740
	.word	-16
	.word	4
	.word	_Label_2741
	.word	-20
	.word	4
	.word	_Label_2742
	.word	-24
	.word	4
	.word	_Label_2743
	.word	-28
	.word	4
	.word	0
_Label_2737:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2738:
	.ascii	"Pself\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2732\0"
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
_Label_3762:
	push	r0
	sub	r1,1,r1
	bne	_Label_3762
	mov	2598,r13		! source line 2598
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0SE",r10
!   _temp_2744 = &diskBusy
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
	mov	2612,r13		! source line 2612
	mov	"\0\0WH",r10
_Label_2745:
!	jmp	_Label_2746
_Label_2746:
	mov	2612,r13		! source line 2612
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0SE",r10
!   _temp_2748 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2749) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2748  sizeInBytes=4
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
	mov	2616,r13		! source line 2616
	mov	"\0\0SE",r10
!   _temp_2750 = &semUsedInSynchMethods
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
	mov	2619,r13		! source line 2619
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2759 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2753
	cmp	r1,2
	be	_Label_2754
	cmp	r1,3
	be	_Label_2755
	cmp	r1,4
	be	_Label_2756
	cmp	r1,5
	be	_Label_2757
	cmp	r1,6
	be	_Label_2758
	jmp	_Label_2751
! CASE 1...
_Label_2753:
! SEND STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   _temp_2760 = &diskBusy
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
	mov	2622,r13		! source line 2622
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2754:
! CALL STATEMENT...
!   _temp_2761 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2761  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2624,r13		! source line 2624
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2755:
! CALL STATEMENT...
!   _temp_2762 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2762  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2626,r13		! source line 2626
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2756:
! CALL STATEMENT...
!   _temp_2763 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2763  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2628,r13		! source line 2628
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2757:
! BREAK STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0BR",r10
	jmp	_Label_2752
! CASE 6...
_Label_2758:
! CALL STATEMENT...
!   _temp_2764 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2764  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2634,r13		! source line 2634
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2751:
! CALL STATEMENT...
!   _temp_2765 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2636,r13		! source line 2636
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2752:
! END WHILE...
	jmp	_Label_2745
_Label_2747:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2766
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2768
	.word	12
	.word	4
	.word	_Label_2769
	.word	16
	.word	4
	.word	_Label_2770
	.word	20
	.word	4
	.word	_Label_2771
	.word	-12
	.word	4
	.word	_Label_2772
	.word	-16
	.word	4
	.word	_Label_2773
	.word	-20
	.word	4
	.word	_Label_2774
	.word	-24
	.word	4
	.word	_Label_2775
	.word	-28
	.word	4
	.word	_Label_2776
	.word	-32
	.word	4
	.word	_Label_2777
	.word	-36
	.word	4
	.word	_Label_2778
	.word	-40
	.word	4
	.word	_Label_2779
	.word	-44
	.word	4
	.word	_Label_2780
	.word	-48
	.word	4
	.word	_Label_2781
	.word	-52
	.word	4
	.word	0
_Label_2766:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2767:
	.ascii	"Pself\0"
	.align
_Label_2768:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2769:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2770:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2744\0"
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
	mov	2645,r13		! source line 2645
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2663,r13		! source line 2663
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
	mov	2664,r13		! source line 2664
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
	mov	2665,r13		! source line 2665
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
	mov	2666,r13		! source line 2666
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
	mov	2666,r13		! source line 2666
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
	.word	_Label_2782
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2784
	.word	12
	.word	4
	.word	_Label_2785
	.word	16
	.word	4
	.word	_Label_2786
	.word	20
	.word	4
	.word	_Label_2787
	.word	24
	.word	4
	.word	0
_Label_2782:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2783:
	.ascii	"Pself\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2785:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2786:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2787:
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
_Label_3763:
	push	r0
	sub	r1,1,r1
	bne	_Label_3763
	mov	2671,r13		! source line 2671
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
!   _temp_2788 = &diskBusy
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
	mov	2684,r13		! source line 2684
	mov	"\0\0WH",r10
_Label_2789:
!	jmp	_Label_2790
_Label_2790:
	mov	2684,r13		! source line 2684
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0SE",r10
!   _temp_2792 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2793) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2792  sizeInBytes=4
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
	mov	2687,r13		! source line 2687
	mov	"\0\0SE",r10
!   _temp_2794 = &semUsedInSynchMethods
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
	mov	2690,r13		! source line 2690
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2803 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2797
	cmp	r1,2
	be	_Label_2798
	cmp	r1,3
	be	_Label_2799
	cmp	r1,4
	be	_Label_2800
	cmp	r1,5
	be	_Label_2801
	cmp	r1,6
	be	_Label_2802
	jmp	_Label_2795
! CASE 1...
_Label_2797:
! SEND STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0SE",r10
!   _temp_2804 = &diskBusy
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
	mov	2693,r13		! source line 2693
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2798:
! CALL STATEMENT...
!   _temp_2805 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2695,r13		! source line 2695
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2799:
! CALL STATEMENT...
!   _temp_2806 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2806  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2697,r13		! source line 2697
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2800:
! CALL STATEMENT...
!   _temp_2807 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2807  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2699,r13		! source line 2699
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2801:
! BREAK STATEMENT...
	mov	2703,r13		! source line 2703
	mov	"\0\0BR",r10
	jmp	_Label_2796
! CASE 6...
_Label_2802:
! CALL STATEMENT...
!   _temp_2808 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2808  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2705,r13		! source line 2705
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2795:
! CALL STATEMENT...
!   _temp_2809 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2809  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2707,r13		! source line 2707
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2796:
! END WHILE...
	jmp	_Label_2789
_Label_2791:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2810
	.word	16		! total size of parameters
	.word	64		! frame size = 64
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
	.word	-12
	.word	4
	.word	_Label_2816
	.word	-16
	.word	4
	.word	_Label_2817
	.word	-20
	.word	4
	.word	_Label_2818
	.word	-24
	.word	4
	.word	_Label_2819
	.word	-28
	.word	4
	.word	_Label_2820
	.word	-32
	.word	4
	.word	_Label_2821
	.word	-36
	.word	4
	.word	_Label_2822
	.word	-40
	.word	4
	.word	_Label_2823
	.word	-44
	.word	4
	.word	_Label_2824
	.word	-48
	.word	4
	.word	_Label_2825
	.word	-52
	.word	4
	.word	0
_Label_2810:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
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
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2806\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2788\0"
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
	mov	2716,r13		! source line 2716
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
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
	mov	2734,r13		! source line 2734
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
	mov	2735,r13		! source line 2735
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
	mov	2736,r13		! source line 2736
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
	mov	2736,r13		! source line 2736
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
	.word	_Label_2826
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2828
	.word	12
	.word	4
	.word	_Label_2829
	.word	16
	.word	4
	.word	_Label_2830
	.word	20
	.word	4
	.word	_Label_2831
	.word	24
	.word	4
	.word	0
_Label_2826:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2827:
	.ascii	"Pself\0"
	.align
_Label_2828:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2829:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2830:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2831:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2832
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
_Label_2832:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2833
	.word	_sourceFileName
	.word	337		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2833:
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
_Label_3764:
	push	r0
	sub	r1,1,r1
	bne	_Label_3764
	mov	2747,r13		! source line 2747
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2834 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2834  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2754,r13		! source line 2754
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2755,r13		! source line 2755
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
	mov	2756,r13		! source line 2756
	mov	"\0\0SE",r10
!   _temp_2836 = &fileManagerLock
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
	mov	2759,r13		! source line 2759
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
	mov	2760,r13		! source line 2760
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
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
!   _temp_2839 = &anFCBBecameFree
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
	mov	2762,r13		! source line 2762
	mov	"\0\0AS",r10
!   _temp_2840 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2842 = &_temp_2841
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2842 = _temp_2842 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2844 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3765:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3765
!   _temp_2844 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2846:
!   Data Move: *_temp_2842 = _temp_2844  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3766:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3766
!   _temp_2842 = _temp_2842 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2843 = _temp_2843 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2843) then goto _Label_2846
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2846
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2847 = &_temp_2841
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3767
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3767:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2840 = *_temp_2847  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3768:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3768
! FOR STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2852 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2853 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2852  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2848:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2853 then goto _Label_2851		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2851
_Label_2849:
	mov	2764,r13		! source line 2764
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   _temp_2854 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2854 [i ] into _temp_2855
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
!   _temp_2856 = _temp_2855 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2856 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0SE",r10
!   _temp_2857 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2857 [i ] into _temp_2858
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
	mov	2767,r13		! source line 2767
	mov	"\0\0SE",r10
!   _temp_2860 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2860 [i ] into _temp_2861
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
!   _temp_2859 = _temp_2861		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2862 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2859  sizeInBytes=4
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
_Label_2850:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2848
! END FOR
_Label_2851:
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
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
	mov	2772,r13		! source line 2772
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
	mov	2773,r13		! source line 2773
	mov	"\0\0SE",r10
!   _temp_2865 = &anOpenFileBecameFree
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
	mov	2774,r13		! source line 2774
	mov	"\0\0AS",r10
!   _temp_2866 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2868 = &_temp_2867
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2868 = _temp_2868 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2870 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3769:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3769
!   _temp_2870 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2872:
!   Data Move: *_temp_2868 = _temp_2870  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3770:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3770
!   _temp_2868 = _temp_2868 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2869 = _temp_2869 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2869) then goto _Label_2872
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2872
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2873 = &_temp_2867
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3771
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3771:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2866 = *_temp_2873  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3772:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3772
! FOR STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2878 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2879 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2878  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2874:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2879 then goto _Label_2877		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2877
_Label_2875:
	mov	2776,r13		! source line 2776
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0AS",r10
!   _temp_2880 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2880 [i ] into _temp_2881
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
!   _temp_2882 = _temp_2881 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2882 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2778,r13		! source line 2778
	mov	"\0\0SE",r10
!   _temp_2884 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2884 [i ] into _temp_2885
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
!   _temp_2883 = _temp_2885		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2886 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2883  sizeInBytes=4
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
_Label_2876:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2874
! END FOR
_Label_2877:
! ASSIGNMENT STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3773:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3773
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
!   _temp_2888 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2889 = _temp_2888 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2889 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0AS",r10
	mov	2788,r13		! source line 2788
	mov	"\0\0SE",r10
!   _temp_2890 = &_P_Kernel_frameManager
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
	mov	2789,r13		! source line 2789
	mov	"\0\0SE",r10
!   _temp_2891 = &_P_Kernel_diskDriver
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
	mov	2789,r13		! source line 2789
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
	.word	_Label_2892
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2893
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2894
	.word	-12
	.word	4
	.word	_Label_2895
	.word	-16
	.word	4
	.word	_Label_2896
	.word	-20
	.word	4
	.word	_Label_2897
	.word	-24
	.word	4
	.word	_Label_2898
	.word	-28
	.word	4
	.word	_Label_2899
	.word	-32
	.word	4
	.word	_Label_2900
	.word	-36
	.word	4
	.word	_Label_2901
	.word	-40
	.word	4
	.word	_Label_2902
	.word	-44
	.word	4
	.word	_Label_2903
	.word	-48
	.word	4
	.word	_Label_2904
	.word	-52
	.word	4
	.word	_Label_2905
	.word	-56
	.word	4
	.word	_Label_2906
	.word	-60
	.word	4
	.word	_Label_2907
	.word	-64
	.word	4
	.word	_Label_2908
	.word	-68
	.word	4
	.word	_Label_2909
	.word	-72
	.word	4
	.word	_Label_2910
	.word	-100
	.word	28
	.word	_Label_2911
	.word	-104
	.word	4
	.word	_Label_2912
	.word	-108
	.word	4
	.word	_Label_2913
	.word	-392
	.word	284
	.word	_Label_2914
	.word	-396
	.word	4
	.word	_Label_2915
	.word	-400
	.word	4
	.word	_Label_2916
	.word	-404
	.word	4
	.word	_Label_2917
	.word	-408
	.word	4
	.word	_Label_2918
	.word	-412
	.word	4
	.word	_Label_2919
	.word	-416
	.word	4
	.word	_Label_2920
	.word	-420
	.word	4
	.word	_Label_2921
	.word	-424
	.word	4
	.word	_Label_2922
	.word	-428
	.word	4
	.word	_Label_2923
	.word	-432
	.word	4
	.word	_Label_2924
	.word	-436
	.word	4
	.word	_Label_2925
	.word	-440
	.word	4
	.word	_Label_2926
	.word	-444
	.word	4
	.word	_Label_2927
	.word	-448
	.word	4
	.word	_Label_2928
	.word	-452
	.word	4
	.word	_Label_2929
	.word	-456
	.word	4
	.word	_Label_2930
	.word	-460
	.word	4
	.word	_Label_2931
	.word	-500
	.word	40
	.word	_Label_2932
	.word	-504
	.word	4
	.word	_Label_2933
	.word	-508
	.word	4
	.word	_Label_2934
	.word	-912
	.word	404
	.word	_Label_2935
	.word	-916
	.word	4
	.word	_Label_2936
	.word	-920
	.word	4
	.word	_Label_2937
	.word	-924
	.word	4
	.word	_Label_2938
	.word	-928
	.word	4
	.word	_Label_2939
	.word	-932
	.word	4
	.word	_Label_2940
	.word	-936
	.word	4
	.word	_Label_2941
	.word	-940
	.word	4
	.word	_Label_2942
	.word	-944
	.word	4
	.word	0
_Label_2892:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2893:
	.ascii	"Pself\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2942:
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
_Label_3774:
	push	r0
	sub	r1,1,r1
	bne	_Label_3774
	mov	2796,r13		! source line 2796
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0SE",r10
!   _temp_2943 = &fileManagerLock
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
!   _temp_2944 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2944  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2799,r13		! source line 2799
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2949 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2950 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2949  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2945:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2950 then goto _Label_2948		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2948
_Label_2946:
	mov	2800,r13		! source line 2800
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2951 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2951  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2801,r13		! source line 2801
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2802,r13		! source line 2802
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2952 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2952  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2803,r13		! source line 2803
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0SE",r10
!   _temp_2953 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2953 [i ] into _temp_2954
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
_Label_2947:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2945
! END FOR
_Label_2948:
! CALL STATEMENT...
!   _temp_2955 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2955  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0SE",r10
!   _temp_2956 = _function_194_printFCB
	set	_function_194_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2957 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2956  sizeInBytes=4
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
	mov	2808,r13		! source line 2808
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2958 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2958  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2963 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2964 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2963  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2959:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2964 then goto _Label_2962		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2962
_Label_2960:
	mov	2810,r13		! source line 2810
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2965 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2965  sizeInBytes=4
	load	[r14+-56],r1
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
!   _temp_2966 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2966  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2968 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2968 [i ] into _temp_2969
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
!   _temp_2967 = _temp_2969		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2967  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2970 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2970  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2815,r13		! source line 2815
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0SE",r10
!   _temp_2971 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2971 [i ] into _temp_2972
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
_Label_2961:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2959
! END FOR
_Label_2962:
! CALL STATEMENT...
!   _temp_2973 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2973  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2818,r13		! source line 2818
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0SE",r10
!   _temp_2974 = _function_193_printOpen
	set	_function_193_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2975 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2974  sizeInBytes=4
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
	mov	2820,r13		! source line 2820
	mov	"\0\0SE",r10
!   _temp_2976 = &fileManagerLock
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
	mov	2820,r13		! source line 2820
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
	.word	_Label_2977
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2978
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2979
	.word	-12
	.word	4
	.word	_Label_2980
	.word	-16
	.word	4
	.word	_Label_2981
	.word	-20
	.word	4
	.word	_Label_2982
	.word	-24
	.word	4
	.word	_Label_2983
	.word	-28
	.word	4
	.word	_Label_2984
	.word	-32
	.word	4
	.word	_Label_2985
	.word	-36
	.word	4
	.word	_Label_2986
	.word	-40
	.word	4
	.word	_Label_2987
	.word	-44
	.word	4
	.word	_Label_2988
	.word	-48
	.word	4
	.word	_Label_2989
	.word	-52
	.word	4
	.word	_Label_2990
	.word	-56
	.word	4
	.word	_Label_2991
	.word	-60
	.word	4
	.word	_Label_2992
	.word	-64
	.word	4
	.word	_Label_2993
	.word	-68
	.word	4
	.word	_Label_2994
	.word	-72
	.word	4
	.word	_Label_2995
	.word	-76
	.word	4
	.word	_Label_2996
	.word	-80
	.word	4
	.word	_Label_2997
	.word	-84
	.word	4
	.word	_Label_2998
	.word	-88
	.word	4
	.word	_Label_2999
	.word	-92
	.word	4
	.word	_Label_3000
	.word	-96
	.word	4
	.word	_Label_3001
	.word	-100
	.word	4
	.word	_Label_3002
	.word	-104
	.word	4
	.word	_Label_3003
	.word	-108
	.word	4
	.word	_Label_3004
	.word	-112
	.word	4
	.word	_Label_3005
	.word	-116
	.word	4
	.word	0
_Label_2977:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2978:
	.ascii	"Pself\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_3005:
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
_Label_3775:
	push	r0
	sub	r1,1,r1
	bne	_Label_3775
	mov	2825,r13		! source line 2825
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0AS",r10
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
!   _temp_3006 = &_P_Kernel_fileManager
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
	mov	2842,r13		! source line 2842
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_3007
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_3007
	jmp	_Label_3008
_Label_3007:
! THEN...
	mov	2843,r13		! source line 2843
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3008:
! SEND STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0SE",r10
!   _temp_3009 = &fileManagerLock
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
	mov	2848,r13		! source line 2848
	mov	"\0\0WH",r10
_Label_3010:
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
!   _temp_3013 = &openFileFreeList
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
!   if result==true then goto _Label_3011 else goto _Label_3012
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3012
	jmp	_Label_3011
_Label_3011:
	mov	2848,r13		! source line 2848
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0SE",r10
!   _temp_3014 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_3015 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_3014  sizeInBytes=4
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
	jmp	_Label_3010
_Label_3012:
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   _temp_3016 = &openFileFreeList
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
	mov	2854,r13		! source line 2854
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3017 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3017 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3018 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3018 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2858,r13		! source line 2858
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3019 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_3019 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0SE",r10
!   _temp_3020 = &fileManagerLock
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
	mov	2861,r13		! source line 2861
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
	.word	_Label_3021
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_3022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3023
	.word	12
	.word	4
	.word	_Label_3024
	.word	-12
	.word	4
	.word	_Label_3025
	.word	-16
	.word	4
	.word	_Label_3026
	.word	-20
	.word	4
	.word	_Label_3027
	.word	-24
	.word	4
	.word	_Label_3028
	.word	-28
	.word	4
	.word	_Label_3029
	.word	-32
	.word	4
	.word	_Label_3030
	.word	-36
	.word	4
	.word	_Label_3031
	.word	-40
	.word	4
	.word	_Label_3032
	.word	-44
	.word	4
	.word	_Label_3033
	.word	-48
	.word	4
	.word	_Label_3034
	.word	-52
	.word	4
	.word	_Label_3035
	.word	-56
	.word	4
	.word	0
_Label_3021:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_3022:
	.ascii	"Pself\0"
	.align
_Label_3023:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3009\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3034:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3035:
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
_Label_3776:
	push	r0
	sub	r1,1,r1
	bne	_Label_3776
	mov	2866,r13		! source line 2866
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2894,r13		! source line 2894
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
	mov	2895,r13		! source line 2895
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2896,r13		! source line 2896
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_3037		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_3037
!	jmp	_Label_3036
_Label_3036:
! THEN...
	mov	2897,r13		! source line 2897
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3038 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3038  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2897,r13		! source line 2897
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3037:
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
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
	mov	2902,r13		! source line 2902
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2903,r13		! source line 2903
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
	mov	2904,r13		! source line 2904
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0WH",r10
_Label_3039:
!   if numFiles <= 0 then goto _Label_3041		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3041
!	jmp	_Label_3040
_Label_3040:
	mov	2907,r13		! source line 2907
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_3042 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_3042  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2908,r13		! source line 2908
	mov	"\0\0CA",r10
	call	_function_195_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2909,r13		! source line 2909
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3043 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_3043  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2910,r13		! source line 2910
	mov	"\0\0CA",r10
	call	_function_195_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_3044 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_3044  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CA",r10
	call	_function_195_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_3048 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_3048 then goto _Label_3046		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_3046
!	jmp	_Label_3047
_Label_3047:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_3050
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
!   _temp_3049 = _temp_3050		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3049  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2915,r13		! source line 2915
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_3045 else goto _Label_3046
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3046
	jmp	_Label_3045
_Label_3045:
! THEN...
	mov	2916,r13		! source line 2916
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2916,r13		! source line 2916
	mov	"\0\0BR",r10
	jmp	_Label_3041
! END IF...
_Label_3046:
! ASSIGNMENT STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2919,r13		! source line 2919
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_3039
_Label_3041:
! IF STATEMENT...
	mov	2923,r13		! source line 2923
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_3052		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3052
!	jmp	_Label_3051
_Label_3051:
! THEN...
	mov	2924,r13		! source line 2924
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3052:
! SEND STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0SE",r10
!   _temp_3053 = &fileManagerLock
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
	mov	2929,r13		! source line 2929
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3058 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3059 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3058  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_3054:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3059 then goto _Label_3057		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3057
_Label_3055:
	mov	2929,r13		! source line 2929
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2930,r13		! source line 2930
	mov	"\0\0AS",r10
!   _temp_3060 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_3060 [i ] into _temp_3061
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
!   fcb = _temp_3061		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3065 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_3064 = *_temp_3065  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_3064 != start then goto _Label_3063		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_3063
!	jmp	_Label_3062
_Label_3062:
! THEN...
	mov	2932,r13		! source line 2932
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3066 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3069 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3068 = *_temp_3069  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_3067 = _temp_3068 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_3066 = _temp_3067  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0SE",r10
!   _temp_3070 = &fileManagerLock
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
	mov	2934,r13		! source line 2934
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3063:
!   Increment the FOR-LOOP index variable and jump back
_Label_3056:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_3054
! END FOR
_Label_3057:
! WHILE STATEMENT...
	mov	2939,r13		! source line 2939
	mov	"\0\0WH",r10
_Label_3071:
	mov	2939,r13		! source line 2939
	mov	"\0\0SE",r10
!   _temp_3074 = &fcbFreeList
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
!   if result==true then goto _Label_3072 else goto _Label_3073
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_3073
	jmp	_Label_3072
_Label_3072:
	mov	2939,r13		! source line 2939
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0SE",r10
!   _temp_3075 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_3076 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_3075  sizeInBytes=4
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
	jmp	_Label_3071
_Label_3073:
! ASSIGNMENT STATEMENT...
	mov	2942,r13		! source line 2942
	mov	"\0\0AS",r10
	mov	2942,r13		! source line 2942
	mov	"\0\0SE",r10
!   _temp_3077 = &fcbFreeList
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
	mov	2945,r13		! source line 2945
	mov	"\0\0SE",r10
!   _temp_3078 = &fileManagerLock
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
	mov	2948,r13		! source line 2948
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3079 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3079 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3080 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3080 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2950,r13		! source line 2950
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3081 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_3081 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3086 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3085 = *_temp_3086  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_3085 < 0 then goto _Label_3084		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_3084
	jmp	_Label_3082
_Label_3084:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3087 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_3087 ) then goto _Label_3083		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3083
!	jmp	_Label_3082
_Label_3082:
! THEN...
	mov	2952,r13		! source line 2952
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3088 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3088  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2952,r13		! source line 2952
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3083:
! RETURN STATEMENT...
	mov	2954,r13		! source line 2954
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
	.word	_Label_3089
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_3090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3091
	.word	12
	.word	4
	.word	_Label_3092
	.word	-12
	.word	4
	.word	_Label_3093
	.word	-16
	.word	4
	.word	_Label_3094
	.word	-20
	.word	4
	.word	_Label_3095
	.word	-24
	.word	4
	.word	_Label_3096
	.word	-28
	.word	4
	.word	_Label_3097
	.word	-32
	.word	4
	.word	_Label_3098
	.word	-36
	.word	4
	.word	_Label_3099
	.word	-40
	.word	4
	.word	_Label_3100
	.word	-44
	.word	4
	.word	_Label_3101
	.word	-48
	.word	4
	.word	_Label_3102
	.word	-52
	.word	4
	.word	_Label_3103
	.word	-56
	.word	4
	.word	_Label_3104
	.word	-60
	.word	4
	.word	_Label_3105
	.word	-64
	.word	4
	.word	_Label_3106
	.word	-68
	.word	4
	.word	_Label_3107
	.word	-72
	.word	4
	.word	_Label_3108
	.word	-76
	.word	4
	.word	_Label_3109
	.word	-80
	.word	4
	.word	_Label_3110
	.word	-84
	.word	4
	.word	_Label_3111
	.word	-88
	.word	4
	.word	_Label_3112
	.word	-92
	.word	4
	.word	_Label_3113
	.word	-96
	.word	4
	.word	_Label_3114
	.word	-100
	.word	4
	.word	_Label_3115
	.word	-104
	.word	4
	.word	_Label_3116
	.word	-108
	.word	4
	.word	_Label_3117
	.word	-112
	.word	4
	.word	_Label_3118
	.word	-116
	.word	4
	.word	_Label_3119
	.word	-120
	.word	4
	.word	_Label_3120
	.word	-124
	.word	4
	.word	_Label_3121
	.word	-128
	.word	4
	.word	_Label_3122
	.word	-132
	.word	4
	.word	_Label_3123
	.word	-136
	.word	4
	.word	_Label_3124
	.word	-140
	.word	4
	.word	_Label_3125
	.word	-144
	.word	4
	.word	_Label_3126
	.word	-148
	.word	4
	.word	_Label_3127
	.word	-152
	.word	4
	.word	_Label_3128
	.word	-156
	.word	4
	.word	_Label_3129
	.word	-160
	.word	4
	.word	0
_Label_3089:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_3090:
	.ascii	"Pself\0"
	.align
_Label_3091:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3088\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3081\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3080\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3079\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3078\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3065\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3064\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3061\0"
	.align
_Label_3112:
	.byte	'?'
	.ascii	"_temp_3060\0"
	.align
_Label_3113:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3114:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3115:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
_Label_3116:
	.byte	'?'
	.ascii	"_temp_3050\0"
	.align
_Label_3117:
	.byte	'?'
	.ascii	"_temp_3049\0"
	.align
_Label_3118:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3119:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3042\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3038\0"
	.align
_Label_3123:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3124:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_3125:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_3126:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_3127:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_3128:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_3129:
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
_Label_3777:
	push	r0
	sub	r1,1,r1
	bne	_Label_3777
	mov	2967,r13		! source line 2967
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0IF",r10
!   _temp_3132 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_3132 then goto _Label_3131		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_3131
!	jmp	_Label_3130
_Label_3130:
! THEN...
	mov	2970,r13		! source line 2970
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3131:
! SEND STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0SE",r10
!   _temp_3133 = &fileManagerLock
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
	mov	2973,r13		! source line 2973
	mov	"\0\0SE",r10
!   _temp_3134 = &_P_Kernel_fileManager
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
	mov	2974,r13		! source line 2974
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3135 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_3135  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3136 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3139 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3138 = *_temp_3139  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_3137 = _temp_3138 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_3136 = _temp_3137  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2976,r13		! source line 2976
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3143 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3142 = *_temp_3143  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_3142 > 0 then goto _Label_3141		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3141
!	jmp	_Label_3140
_Label_3140:
! THEN...
	mov	2977,r13		! source line 2977
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0SE",r10
!   _temp_3144 = &openFileFreeList
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
	mov	2978,r13		! source line 2978
	mov	"\0\0SE",r10
!   _temp_3145 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_3146 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_3145  sizeInBytes=4
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
	mov	2979,r13		! source line 2979
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3147 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3150 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3149 = *_temp_3150  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_3148 = _temp_3149 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_3147 = _temp_3148  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3154 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_3153 = *_temp_3154  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_3153 > 0 then goto _Label_3152		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3152
!	jmp	_Label_3151
_Label_3151:
! THEN...
	mov	2981,r13		! source line 2981
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0SE",r10
!   _temp_3155 = &fcbFreeList
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
	mov	2982,r13		! source line 2982
	mov	"\0\0SE",r10
!   _temp_3156 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_3157 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3156  sizeInBytes=4
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
_Label_3152:
! END IF...
_Label_3141:
! SEND STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0SE",r10
!   _temp_3158 = &fileManagerLock
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
	mov	2985,r13		! source line 2985
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
	.word	_Label_3159
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_3160
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3161
	.word	12
	.word	4
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
	.word	_Label_3168
	.word	-36
	.word	4
	.word	_Label_3169
	.word	-40
	.word	4
	.word	_Label_3170
	.word	-44
	.word	4
	.word	_Label_3171
	.word	-48
	.word	4
	.word	_Label_3172
	.word	-52
	.word	4
	.word	_Label_3173
	.word	-56
	.word	4
	.word	_Label_3174
	.word	-60
	.word	4
	.word	_Label_3175
	.word	-64
	.word	4
	.word	_Label_3176
	.word	-68
	.word	4
	.word	_Label_3177
	.word	-72
	.word	4
	.word	_Label_3178
	.word	-76
	.word	4
	.word	_Label_3179
	.word	-80
	.word	4
	.word	_Label_3180
	.word	-84
	.word	4
	.word	_Label_3181
	.word	-88
	.word	4
	.word	_Label_3182
	.word	-92
	.word	4
	.word	_Label_3183
	.word	-96
	.word	4
	.word	_Label_3184
	.word	-100
	.word	4
	.word	_Label_3185
	.word	-104
	.word	4
	.word	0
_Label_3159:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_3160:
	.ascii	"Pself\0"
	.align
_Label_3161:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3163:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3168:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3169:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3170:
	.byte	'?'
	.ascii	"_temp_3148\0"
	.align
_Label_3171:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3172:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3173:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3174:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3175:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3176:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3180:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3181:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3182:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3183:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3184:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3185:
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
_Label_3778:
	push	r0
	sub	r1,1,r1
	bne	_Label_3778
	mov	2990,r13		! source line 2990
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3189 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_3188 = *_temp_3189  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_3188) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3190 = _temp_3188 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_3190 ) then goto _Label_3187		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_3187
!	jmp	_Label_3186
_Label_3186:
! THEN...
	mov	2996,r13		! source line 2996
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2996,r13		! source line 2996
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3195 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3194 = *_temp_3195  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3194) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3196 = _temp_3194 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3193 = *_temp_3196  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3193 >= 0 then goto _Label_3192		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3192
!	jmp	_Label_3191
_Label_3191:
! THEN...
	mov	2997,r13		! source line 2997
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3197 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3197  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2997,r13		! source line 2997
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3192:
! ASSIGNMENT STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3199 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_3198 = *_temp_3199  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3198) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3200 = _temp_3198 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_3200 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	3000,r13		! source line 3000
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3204 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3203 = *_temp_3204  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_3203) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3205 = _temp_3203 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_3202 = *_temp_3205  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3208 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_3207 = *_temp_3208  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3207) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3209 = _temp_3207 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3206 = *_temp_3209  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3201 = _temp_3202 + _temp_3206		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3212 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_3211 = *_temp_3212  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3211) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3213 = _temp_3211 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_3210 = *_temp_3213  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_3214 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_3201  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3210  sizeInBytes=4
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
_Label_3187:
! RETURN STATEMENT...
	mov	2995,r13		! source line 2995
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
	.word	_Label_3215
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_3216
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3217
	.word	12
	.word	4
	.word	_Label_3218
	.word	-12
	.word	4
	.word	_Label_3219
	.word	-16
	.word	4
	.word	_Label_3220
	.word	-20
	.word	4
	.word	_Label_3221
	.word	-24
	.word	4
	.word	_Label_3222
	.word	-28
	.word	4
	.word	_Label_3223
	.word	-32
	.word	4
	.word	_Label_3224
	.word	-36
	.word	4
	.word	_Label_3225
	.word	-40
	.word	4
	.word	_Label_3226
	.word	-44
	.word	4
	.word	_Label_3227
	.word	-48
	.word	4
	.word	_Label_3228
	.word	-52
	.word	4
	.word	_Label_3229
	.word	-56
	.word	4
	.word	_Label_3230
	.word	-60
	.word	4
	.word	_Label_3231
	.word	-64
	.word	4
	.word	_Label_3232
	.word	-68
	.word	4
	.word	_Label_3233
	.word	-72
	.word	4
	.word	_Label_3234
	.word	-76
	.word	4
	.word	_Label_3235
	.word	-80
	.word	4
	.word	_Label_3236
	.word	-84
	.word	4
	.word	_Label_3237
	.word	-88
	.word	4
	.word	_Label_3238
	.word	-92
	.word	4
	.word	_Label_3239
	.word	-96
	.word	4
	.word	_Label_3240
	.word	-100
	.word	4
	.word	_Label_3241
	.word	-104
	.word	4
	.word	_Label_3242
	.word	-108
	.word	4
	.word	0
_Label_3215:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_3216:
	.ascii	"Pself\0"
	.align
_Label_3217:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3214\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3213\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3222:
	.byte	'?'
	.ascii	"_temp_3210\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3209\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3205\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3203\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3188\0"
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
_Label_3779:
	push	r0
	sub	r1,1,r1
	bne	_Label_3779
	mov	3009,r13		! source line 3009
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3024,r13		! source line 3024
	mov	"\0\0SE",r10
!   _temp_3243 = &fileManagerLock
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
	mov	3025,r13		! source line 3025
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3249		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3249
!   _temp_3248 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3250
_Label_3249:
!   _temp_3248 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3250:
!   if _temp_3248 then goto _Label_3247 else goto _Label_3244
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3244
	jmp	_Label_3247
_Label_3247:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3253 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_3252 = *_temp_3253  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3252 == 0 then goto _Label_3254		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3254
!   _temp_3251 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3255
_Label_3254:
!   _temp_3251 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3255:
!   if _temp_3251 then goto _Label_3246 else goto _Label_3244
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3244
	jmp	_Label_3246
_Label_3246:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3258 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_3257 = *_temp_3258  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_3257) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3259 = _temp_3257 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_3256 = *_temp_3259  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_3256 >= 0 then goto _Label_3245		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3245
!	jmp	_Label_3244
_Label_3244:
! THEN...
	mov	3026,r13		! source line 3026
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3260 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_3260  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3026,r13		! source line 3026
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3245:
! ASSIGNMENT STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3261 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_3261  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0WH",r10
_Label_3262:
!   if numBytes <= 0 then goto _Label_3264		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3264
!	jmp	_Label_3263
_Label_3263:
	mov	3029,r13		! source line 3029
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3038,r13		! source line 3038
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
	mov	3039,r13		! source line 3039
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
	mov	3043,r13		! source line 3043
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3268 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_3267 = *_temp_3268  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_3267 == sector then goto _Label_3266		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_3266
!	jmp	_Label_3265
_Label_3265:
! THEN...
	mov	3044,r13		! source line 3044
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_3269) then goto _runtimeErrorNullPointer
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
	mov	3046,r13		! source line 3046
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3272 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3271 = *_temp_3272  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_3270 = sector + _temp_3271		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3274 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_3273 = *_temp_3274  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_3275 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_3270  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3273  sizeInBytes=4
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
	mov	3049,r13		! source line 3049
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3276 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_3276 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3277 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_3277 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_3266:
! ASSIGNMENT STATEMENT...
	mov	3052,r13		! source line 3052
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3279 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_3278 = *_temp_3279  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_3278 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	3053,r13		! source line 3053
	mov	"\0\0AS",r10
!   _temp_3280 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3280  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	3053,r13		! source line 3053
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
	mov	3057,r13		! source line 3057
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3058,r13		! source line 3058
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3059,r13		! source line 3059
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3060,r13		! source line 3060
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3262
_Label_3264:
! SEND STATEMENT...
	mov	3067,r13		! source line 3067
	mov	"\0\0SE",r10
!   _temp_3281 = &fileManagerLock
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
	mov	3068,r13		! source line 3068
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
	.word	_Label_3282
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_3283
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3284
	.word	12
	.word	4
	.word	_Label_3285
	.word	16
	.word	4
	.word	_Label_3286
	.word	20
	.word	4
	.word	_Label_3287
	.word	24
	.word	4
	.word	_Label_3288
	.word	-16
	.word	4
	.word	_Label_3289
	.word	-20
	.word	4
	.word	_Label_3290
	.word	-24
	.word	4
	.word	_Label_3291
	.word	-28
	.word	4
	.word	_Label_3292
	.word	-32
	.word	4
	.word	_Label_3293
	.word	-36
	.word	4
	.word	_Label_3294
	.word	-40
	.word	4
	.word	_Label_3295
	.word	-44
	.word	4
	.word	_Label_3296
	.word	-48
	.word	4
	.word	_Label_3297
	.word	-52
	.word	4
	.word	_Label_3298
	.word	-56
	.word	4
	.word	_Label_3299
	.word	-60
	.word	4
	.word	_Label_3300
	.word	-64
	.word	4
	.word	_Label_3301
	.word	-68
	.word	4
	.word	_Label_3302
	.word	-72
	.word	4
	.word	_Label_3303
	.word	-76
	.word	4
	.word	_Label_3304
	.word	-80
	.word	4
	.word	_Label_3305
	.word	-84
	.word	4
	.word	_Label_3306
	.word	-88
	.word	4
	.word	_Label_3307
	.word	-92
	.word	4
	.word	_Label_3308
	.word	-96
	.word	4
	.word	_Label_3309
	.word	-100
	.word	4
	.word	_Label_3310
	.word	-104
	.word	4
	.word	_Label_3311
	.word	-9
	.word	1
	.word	_Label_3312
	.word	-10
	.word	1
	.word	_Label_3313
	.word	-108
	.word	4
	.word	_Label_3314
	.word	-112
	.word	4
	.word	_Label_3315
	.word	-116
	.word	4
	.word	_Label_3316
	.word	-120
	.word	4
	.word	_Label_3317
	.word	-124
	.word	4
	.word	_Label_3318
	.word	-128
	.word	4
	.word	0
_Label_3282:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_3283:
	.ascii	"Pself\0"
	.align
_Label_3284:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3285:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3286:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3287:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3281\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3280\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3279\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3278\0"
	.align
_Label_3292:
	.byte	'?'
	.ascii	"_temp_3277\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3276\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3275\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3274\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3273\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3272\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3267\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3261\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3260\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3257\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3256\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3311:
	.byte	'C'
	.ascii	"_temp_3251\0"
	.align
_Label_3312:
	.byte	'C'
	.ascii	"_temp_3248\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3243\0"
	.align
_Label_3314:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3315:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3316:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3317:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3318:
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
_Label_3780:
	push	r0
	sub	r1,1,r1
	bne	_Label_3780
	mov	3073,r13		! source line 3073
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0SE",r10
!   _temp_3319 = &fileManagerLock
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
	mov	3090,r13		! source line 3090
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3325		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3325
!   _temp_3324 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3326
_Label_3325:
!   _temp_3324 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3326:
!   if _temp_3324 then goto _Label_3323 else goto _Label_3320
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3320
	jmp	_Label_3323
_Label_3323:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3329 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3328 = *_temp_3329  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3328 == 0 then goto _Label_3330		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3330
!   _temp_3327 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3331
_Label_3330:
!   _temp_3327 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3331:
!   if _temp_3327 then goto _Label_3322 else goto _Label_3320
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3320
	jmp	_Label_3322
_Label_3322:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3334 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3333 = *_temp_3334  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3333) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3335 = _temp_3333 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3332 = *_temp_3335  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3332 >= 0 then goto _Label_3321		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3321
!	jmp	_Label_3320
_Label_3320:
! THEN...
	mov	3091,r13		! source line 3091
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3336 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3336  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3091,r13		! source line 3091
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3321:
! ASSIGNMENT STATEMENT...
	mov	3093,r13		! source line 3093
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3337 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3337  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	3094,r13		! source line 3094
	mov	"\0\0WH",r10
_Label_3338:
!   if numBytes <= 0 then goto _Label_3340		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3340
!	jmp	_Label_3339
_Label_3339:
	mov	3094,r13		! source line 3094
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	3103,r13		! source line 3103
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
	mov	3104,r13		! source line 3104
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
	mov	3108,r13		! source line 3108
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3344 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3343 = *_temp_3344  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3343 == sector then goto _Label_3342		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3342
!	jmp	_Label_3341
_Label_3341:
! THEN...
	mov	3110,r13		! source line 3110
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3110,r13		! source line 3110
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3345) then goto _runtimeErrorNullPointer
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
_Label_3342:
! ASSIGNMENT STATEMENT...
	mov	3112,r13		! source line 3112
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3347 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3346 = *_temp_3347  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3346 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	3113,r13		! source line 3113
	mov	"\0\0AS",r10
!   _temp_3348 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3348  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	3113,r13		! source line 3113
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	3114,r13		! source line 3114
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3352 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3351 = *_temp_3352  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3351 != sector then goto _Label_3350		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3350
!	jmp	_Label_3349
_Label_3349:
	jmp	_Label_3353
_Label_3350:
! ELSE...
	mov	3116,r13		! source line 3116
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	3116,r13		! source line 3116
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3356
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3356
	jmp	_Label_3355
_Label_3356:
!   if bytesToMove != 8192 then goto _Label_3355		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3355
!	jmp	_Label_3354
_Label_3354:
	jmp	_Label_3357
_Label_3355:
! ELSE...
	mov	3120,r13		! source line 3120
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3360 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3359 = *_temp_3360  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3358 = sector + _temp_3359		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3362 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3361 = *_temp_3362  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3363 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3358  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3361  sizeInBytes=4
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
_Label_3357:
! END IF...
_Label_3353:
! ASSIGNMENT STATEMENT...
	mov	3124,r13		! source line 3124
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3364 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3364 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3365 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3365 = 1  (sizeInBytes=1)
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
	mov	3129,r13		! source line 3129
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	3130,r13		! source line 3130
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	3131,r13		! source line 3131
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	3132,r13		! source line 3132
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3338
_Label_3340:
! SEND STATEMENT...
	mov	3139,r13		! source line 3139
	mov	"\0\0SE",r10
!   _temp_3366 = &fileManagerLock
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
	mov	3141,r13		! source line 3141
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
	.word	_Label_3367
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3368
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3369
	.word	12
	.word	4
	.word	_Label_3370
	.word	16
	.word	4
	.word	_Label_3371
	.word	20
	.word	4
	.word	_Label_3372
	.word	24
	.word	4
	.word	_Label_3373
	.word	-16
	.word	4
	.word	_Label_3374
	.word	-20
	.word	4
	.word	_Label_3375
	.word	-24
	.word	4
	.word	_Label_3376
	.word	-28
	.word	4
	.word	_Label_3377
	.word	-32
	.word	4
	.word	_Label_3378
	.word	-36
	.word	4
	.word	_Label_3379
	.word	-40
	.word	4
	.word	_Label_3380
	.word	-44
	.word	4
	.word	_Label_3381
	.word	-48
	.word	4
	.word	_Label_3382
	.word	-52
	.word	4
	.word	_Label_3383
	.word	-56
	.word	4
	.word	_Label_3384
	.word	-60
	.word	4
	.word	_Label_3385
	.word	-64
	.word	4
	.word	_Label_3386
	.word	-68
	.word	4
	.word	_Label_3387
	.word	-72
	.word	4
	.word	_Label_3388
	.word	-76
	.word	4
	.word	_Label_3389
	.word	-80
	.word	4
	.word	_Label_3390
	.word	-84
	.word	4
	.word	_Label_3391
	.word	-88
	.word	4
	.word	_Label_3392
	.word	-92
	.word	4
	.word	_Label_3393
	.word	-96
	.word	4
	.word	_Label_3394
	.word	-100
	.word	4
	.word	_Label_3395
	.word	-104
	.word	4
	.word	_Label_3396
	.word	-108
	.word	4
	.word	_Label_3397
	.word	-112
	.word	4
	.word	_Label_3398
	.word	-9
	.word	1
	.word	_Label_3399
	.word	-10
	.word	1
	.word	_Label_3400
	.word	-116
	.word	4
	.word	_Label_3401
	.word	-120
	.word	4
	.word	_Label_3402
	.word	-124
	.word	4
	.word	_Label_3403
	.word	-128
	.word	4
	.word	_Label_3404
	.word	-132
	.word	4
	.word	_Label_3405
	.word	-136
	.word	4
	.word	0
_Label_3367:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3368:
	.ascii	"Pself\0"
	.align
_Label_3369:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3370:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3371:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3372:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3373:
	.byte	'?'
	.ascii	"_temp_3366\0"
	.align
_Label_3374:
	.byte	'?'
	.ascii	"_temp_3365\0"
	.align
_Label_3375:
	.byte	'?'
	.ascii	"_temp_3364\0"
	.align
_Label_3376:
	.byte	'?'
	.ascii	"_temp_3363\0"
	.align
_Label_3377:
	.byte	'?'
	.ascii	"_temp_3362\0"
	.align
_Label_3378:
	.byte	'?'
	.ascii	"_temp_3361\0"
	.align
_Label_3379:
	.byte	'?'
	.ascii	"_temp_3360\0"
	.align
_Label_3380:
	.byte	'?'
	.ascii	"_temp_3359\0"
	.align
_Label_3381:
	.byte	'?'
	.ascii	"_temp_3358\0"
	.align
_Label_3382:
	.byte	'?'
	.ascii	"_temp_3352\0"
	.align
_Label_3383:
	.byte	'?'
	.ascii	"_temp_3351\0"
	.align
_Label_3384:
	.byte	'?'
	.ascii	"_temp_3348\0"
	.align
_Label_3385:
	.byte	'?'
	.ascii	"_temp_3347\0"
	.align
_Label_3386:
	.byte	'?'
	.ascii	"_temp_3346\0"
	.align
_Label_3387:
	.byte	'?'
	.ascii	"_temp_3345\0"
	.align
_Label_3388:
	.byte	'?'
	.ascii	"_temp_3344\0"
	.align
_Label_3389:
	.byte	'?'
	.ascii	"_temp_3343\0"
	.align
_Label_3390:
	.byte	'?'
	.ascii	"_temp_3337\0"
	.align
_Label_3391:
	.byte	'?'
	.ascii	"_temp_3336\0"
	.align
_Label_3392:
	.byte	'?'
	.ascii	"_temp_3335\0"
	.align
_Label_3393:
	.byte	'?'
	.ascii	"_temp_3334\0"
	.align
_Label_3394:
	.byte	'?'
	.ascii	"_temp_3333\0"
	.align
_Label_3395:
	.byte	'?'
	.ascii	"_temp_3332\0"
	.align
_Label_3396:
	.byte	'?'
	.ascii	"_temp_3329\0"
	.align
_Label_3397:
	.byte	'?'
	.ascii	"_temp_3328\0"
	.align
_Label_3398:
	.byte	'C'
	.ascii	"_temp_3327\0"
	.align
_Label_3399:
	.byte	'C'
	.ascii	"_temp_3324\0"
	.align
_Label_3400:
	.byte	'?'
	.ascii	"_temp_3319\0"
	.align
_Label_3401:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3402:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3403:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3404:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3405:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3406
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3406:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3407
	.word	_sourceFileName
	.word	362		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3407:
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
_Label_3781:
	push	r0
	sub	r1,1,r1
	bne	_Label_3781
	mov	3177,r13		! source line 3177
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	3178,r13		! source line 3178
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	3179,r13		! source line 3179
	mov	"\0\0AS",r10
	mov	3179,r13		! source line 3179
	mov	"\0\0SE",r10
!   _temp_3408 = &_P_Kernel_frameManager
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
	mov	3180,r13		! source line 3180
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	3181,r13		! source line 3181
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	3182,r13		! source line 3182
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	3182,r13		! source line 3182
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
	.word	_Label_3409
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3411
	.word	-12
	.word	4
	.word	0
_Label_3409:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3410:
	.ascii	"Pself\0"
	.align
_Label_3411:
	.byte	'?'
	.ascii	"_temp_3408\0"
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
_Label_3782:
	push	r0
	sub	r1,1,r1
	bne	_Label_3782
	mov	3187,r13		! source line 3187
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3412 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3412  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3188,r13		! source line 3188
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3189,r13		! source line 3189
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3413 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3413  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3190,r13		! source line 3190
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3191,r13		! source line 3191
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3414 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3414  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3192,r13		! source line 3192
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3193,r13		! source line 3193
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3415 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3415  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3194,r13		! source line 3194
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	3195,r13		! source line 3195
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3416 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3416  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3196,r13		! source line 3196
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	3197,r13		! source line 3197
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3417 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3417  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3198,r13		! source line 3198
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	3199,r13		! source line 3199
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	3200,r13		! source line 3200
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	3200,r13		! source line 3200
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
	.word	_Label_3418
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3419
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3420
	.word	-12
	.word	4
	.word	_Label_3421
	.word	-16
	.word	4
	.word	_Label_3422
	.word	-20
	.word	4
	.word	_Label_3423
	.word	-24
	.word	4
	.word	_Label_3424
	.word	-28
	.word	4
	.word	_Label_3425
	.word	-32
	.word	4
	.word	0
_Label_3418:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3419:
	.ascii	"Pself\0"
	.align
_Label_3420:
	.byte	'?'
	.ascii	"_temp_3417\0"
	.align
_Label_3421:
	.byte	'?'
	.ascii	"_temp_3416\0"
	.align
_Label_3422:
	.byte	'?'
	.ascii	"_temp_3415\0"
	.align
_Label_3423:
	.byte	'?'
	.ascii	"_temp_3414\0"
	.align
_Label_3424:
	.byte	'?'
	.ascii	"_temp_3413\0"
	.align
_Label_3425:
	.byte	'?'
	.ascii	"_temp_3412\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3426
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3426:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3427
	.word	_sourceFileName
	.word	379		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3427:
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
_Label_3783:
	push	r0
	sub	r1,1,r1
	bne	_Label_3783
	mov	3211,r13		! source line 3211
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3428 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3428  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3212,r13		! source line 3212
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3213,r13		! source line 3213
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3429 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3429  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	3214,r13		! source line 3214
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	3215,r13		! source line 3215
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3431		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3431
!	jmp	_Label_3430
_Label_3430:
! THEN...
	mov	3216,r13		! source line 3216
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	3216,r13		! source line 3216
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
	jmp	_Label_3432
_Label_3431:
! ELSE...
	mov	3218,r13		! source line 3218
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3433 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3433  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	3218,r13		! source line 3218
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3432:
! RETURN STATEMENT...
	mov	3215,r13		! source line 3215
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
	.word	_Label_3434
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3436
	.word	-12
	.word	4
	.word	_Label_3437
	.word	-16
	.word	4
	.word	_Label_3438
	.word	-20
	.word	4
	.word	0
_Label_3434:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3435:
	.ascii	"Pself\0"
	.align
_Label_3436:
	.byte	'?'
	.ascii	"_temp_3433\0"
	.align
_Label_3437:
	.byte	'?'
	.ascii	"_temp_3429\0"
	.align
_Label_3438:
	.byte	'?'
	.ascii	"_temp_3428\0"
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
_Label_3784:
	push	r0
	sub	r1,1,r1
	bne	_Label_3784
	mov	3224,r13		! source line 3224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	3234,r13		! source line 3234
	mov	"\0\0SE",r10
!   _temp_3439 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3440 = _temp_3439 + 4
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
	mov	3235,r13		! source line 3235
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	3236,r13		! source line 3236
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
	mov	3237,r13		! source line 3237
	mov	"\0\0SE",r10
!   _temp_3441 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3442 = _temp_3441 + 4
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
	mov	3238,r13		! source line 3238
	mov	"\0\0RE",r10
	mov	3238,r13		! source line 3238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3445 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3444  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3443  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3443  (sizeInBytes=1)
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
	.word	_Label_3446
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3447
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3448
	.word	12
	.word	4
	.word	_Label_3449
	.word	16
	.word	4
	.word	_Label_3450
	.word	-16
	.word	4
	.word	_Label_3451
	.word	-20
	.word	4
	.word	_Label_3452
	.word	-9
	.word	1
	.word	_Label_3453
	.word	-24
	.word	4
	.word	_Label_3454
	.word	-28
	.word	4
	.word	_Label_3455
	.word	-32
	.word	4
	.word	_Label_3456
	.word	-36
	.word	4
	.word	_Label_3457
	.word	-40
	.word	4
	.word	0
_Label_3446:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3447:
	.ascii	"Pself\0"
	.align
_Label_3448:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3449:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3450:
	.byte	'?'
	.ascii	"_temp_3445\0"
	.align
_Label_3451:
	.byte	'?'
	.ascii	"_temp_3444\0"
	.align
_Label_3452:
	.byte	'C'
	.ascii	"_temp_3443\0"
	.align
_Label_3453:
	.byte	'?'
	.ascii	"_temp_3442\0"
	.align
_Label_3454:
	.byte	'?'
	.ascii	"_temp_3441\0"
	.align
_Label_3455:
	.byte	'?'
	.ascii	"_temp_3440\0"
	.align
_Label_3456:
	.byte	'?'
	.ascii	"_temp_3439\0"
	.align
_Label_3457:
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
_Label_3785:
	push	r0
	sub	r1,1,r1
	bne	_Label_3785
	mov	3243,r13		! source line 3243
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3248,r13		! source line 3248
	mov	"\0\0IF",r10
	mov	3248,r13		! source line 3248
	mov	"\0\0SE",r10
!   _temp_3461 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3462) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3461  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3460  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3460 then goto _Label_3459 else goto _Label_3458
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3458
	jmp	_Label_3459
_Label_3458:
! THEN...
	mov	3249,r13		! source line 3249
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3463 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3463  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3249,r13		! source line 3249
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3459:
! RETURN STATEMENT...
	mov	3251,r13		! source line 3251
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
	.word	_Label_3464
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3466
	.word	-16
	.word	4
	.word	_Label_3467
	.word	-20
	.word	4
	.word	_Label_3468
	.word	-24
	.word	4
	.word	_Label_3469
	.word	-9
	.word	1
	.word	_Label_3470
	.word	-28
	.word	4
	.word	0
_Label_3464:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3465:
	.ascii	"Pself\0"
	.align
_Label_3466:
	.byte	'?'
	.ascii	"_temp_3463\0"
	.align
_Label_3467:
	.byte	'?'
	.ascii	"_temp_3462\0"
	.align
_Label_3468:
	.byte	'?'
	.ascii	"_temp_3461\0"
	.align
_Label_3469:
	.byte	'C'
	.ascii	"_temp_3460\0"
	.align
_Label_3470:
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
_Label_3786:
	push	r0
	sub	r1,1,r1
	bne	_Label_3786
	mov	3256,r13		! source line 3256
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	3282,r13		! source line 3282
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3474 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3473 = *_temp_3474  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3473) then goto _Label_3472
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3472
!	jmp	_Label_3471
_Label_3471:
! THEN...
	mov	3283,r13		! source line 3283
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3475 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3475  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	3283,r13		! source line 3283
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3472:
! IF STATEMENT...
	mov	3287,r13		! source line 3287
	mov	"\0\0IF",r10
	mov	3287,r13		! source line 3287
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3479) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3478  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3478 == 1112300152 then goto _Label_3477		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3477
!	jmp	_Label_3476
_Label_3476:
! THEN...
	mov	3288,r13		! source line 3288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3480 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3480  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	3288,r13		! source line 3288
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3289,r13		! source line 3289
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3477:
! ASSIGNMENT STATEMENT...
	mov	3293,r13		! source line 3293
	mov	"\0\0AS",r10
	mov	3293,r13		! source line 3293
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3481) then goto _runtimeErrorNullPointer
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
	mov	3294,r13		! source line 3294
	mov	"\0\0AS",r10
	mov	3294,r13		! source line 3294
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3482) then goto _runtimeErrorNullPointer
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
	mov	3295,r13		! source line 3295
	mov	"\0\0AS",r10
	mov	3295,r13		! source line 3295
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3483) then goto _runtimeErrorNullPointer
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
	mov	3296,r13		! source line 3296
	mov	"\0\0AS",r10
	mov	3296,r13		! source line 3296
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3484) then goto _runtimeErrorNullPointer
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
	mov	3297,r13		! source line 3297
	mov	"\0\0AS",r10
	mov	3297,r13		! source line 3297
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3485) then goto _runtimeErrorNullPointer
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
	mov	3298,r13		! source line 3298
	mov	"\0\0AS",r10
	mov	3298,r13		! source line 3298
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3486) then goto _runtimeErrorNullPointer
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
	mov	3301,r13		! source line 3301
	mov	"\0\0IF",r10
!   _temp_3489 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3489) then goto _Label_3488
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3488
!	jmp	_Label_3487
_Label_3487:
! THEN...
	mov	3302,r13		! source line 3302
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3490 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3490  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3302,r13		! source line 3302
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3303,r13		! source line 3303
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3488:
! ASSIGNMENT STATEMENT...
	mov	3305,r13		! source line 3305
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
	mov	3309,r13		! source line 3309
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3492
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3492
!	jmp	_Label_3491
_Label_3491:
! THEN...
	mov	3310,r13		! source line 3310
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3493 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3493  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3310,r13		! source line 3310
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3311,r13		! source line 3311
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3492:
! IF STATEMENT...
	mov	3315,r13		! source line 3315
	mov	"\0\0IF",r10
!   _temp_3496 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3496) then goto _Label_3495
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3495
!	jmp	_Label_3494
_Label_3494:
! THEN...
	mov	3316,r13		! source line 3316
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3497 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3497  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3316,r13		! source line 3316
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3317,r13		! source line 3317
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3495:
! IF STATEMENT...
	mov	3319,r13		! source line 3319
	mov	"\0\0IF",r10
!   _temp_3500 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3500 then goto _Label_3499		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3499
!	jmp	_Label_3498
_Label_3498:
! THEN...
	mov	3320,r13		! source line 3320
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3501 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3501  sizeInBytes=4
	load	[r14+-148],r1
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
_Label_3499:
! ASSIGNMENT STATEMENT...
	mov	3323,r13		! source line 3323
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
	mov	3326,r13		! source line 3326
	mov	"\0\0IF",r10
!   _temp_3504 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3504) then goto _Label_3503
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3503
!	jmp	_Label_3502
_Label_3502:
! THEN...
	mov	3327,r13		! source line 3327
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3505 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3505  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3327,r13		! source line 3327
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3328,r13		! source line 3328
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3503:
! IF STATEMENT...
	mov	3330,r13		! source line 3330
	mov	"\0\0IF",r10
!   _temp_3508 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3508 then goto _Label_3507		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3507
!	jmp	_Label_3506
_Label_3506:
! THEN...
	mov	3331,r13		! source line 3331
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3509 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3509  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3331,r13		! source line 3331
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3332,r13		! source line 3332
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3507:
! ASSIGNMENT STATEMENT...
	mov	3334,r13		! source line 3334
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
	mov	3337,r13		! source line 3337
	mov	"\0\0AS",r10
!   _temp_3512 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3511 = _temp_3512 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3510 = _temp_3511 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3510 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3352,r13		! source line 3352
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3514		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3514
!	jmp	_Label_3513
_Label_3513:
! THEN...
	mov	3353,r13		! source line 3353
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3515 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3515  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3353,r13		! source line 3353
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3516 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3516  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3354,r13		! source line 3354
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3517 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3517  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3355,r13		! source line 3355
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3356,r13		! source line 3356
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3514:
! SEND STATEMENT...
	mov	3358,r13		! source line 3358
	mov	"\0\0SE",r10
!   _temp_3518 = &_P_Kernel_frameManager
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
	mov	3364,r13		! source line 3364
	mov	"\0\0IF",r10
	mov	3364,r13		! source line 3364
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3522) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3521  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3521 == 707406378 then goto _Label_3520		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3520
!	jmp	_Label_3519
_Label_3519:
! THEN...
	mov	3365,r13		! source line 3365
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3523 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3523  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3365,r13		! source line 3365
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3366,r13		! source line 3366
	mov	"\0\0SE",r10
!   _temp_3524 = &_P_Kernel_frameManager
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
	mov	3367,r13		! source line 3367
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
! ASSIGNMENT STATEMENT...
	mov	3371,r13		! source line 3371
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
	mov	3372,r13		! source line 3372
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3529 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3530 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3529  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3525:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3530 then goto _Label_3528		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3528
_Label_3526:
	mov	3372,r13		! source line 3372
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3373,r13		! source line 3373
	mov	"\0\0AS",r10
	mov	3373,r13		! source line 3373
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
	mov	3376,r13		! source line 3376
	mov	"\0\0IF",r10
	mov	3376,r13		! source line 3376
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3534) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3533  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3533 then goto _Label_3532 else goto _Label_3531
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3531
	jmp	_Label_3532
_Label_3531:
! THEN...
	mov	3377,r13		! source line 3377
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3535 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3535  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3377,r13		! source line 3377
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3378,r13		! source line 3378
	mov	"\0\0SE",r10
!   _temp_3536 = &_P_Kernel_frameManager
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
	mov	3379,r13		! source line 3379
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3532:
! SEND STATEMENT...
	mov	3381,r13		! source line 3381
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
	mov	3382,r13		! source line 3382
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3527:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3525
! END FOR
_Label_3528:
! IF STATEMENT...
	mov	3386,r13		! source line 3386
	mov	"\0\0IF",r10
	mov	3386,r13		! source line 3386
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3540) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3539  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3539 == 707406378 then goto _Label_3538		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3538
!	jmp	_Label_3537
_Label_3537:
! THEN...
	mov	3387,r13		! source line 3387
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3541 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3541  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3387,r13		! source line 3387
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3388,r13		! source line 3388
	mov	"\0\0SE",r10
!   _temp_3542 = &_P_Kernel_frameManager
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
_Label_3538:
! FOR STATEMENT...
	mov	3393,r13		! source line 3393
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3547 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3548 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3547  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3543:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3548 then goto _Label_3546		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3546
_Label_3544:
	mov	3393,r13		! source line 3393
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3394,r13		! source line 3394
	mov	"\0\0AS",r10
	mov	3394,r13		! source line 3394
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
	mov	3397,r13		! source line 3397
	mov	"\0\0IF",r10
	mov	3397,r13		! source line 3397
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3552) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3551  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3551 then goto _Label_3550 else goto _Label_3549
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3549
	jmp	_Label_3550
_Label_3549:
! THEN...
	mov	3398,r13		! source line 3398
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3553 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3553  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3398,r13		! source line 3398
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3399,r13		! source line 3399
	mov	"\0\0SE",r10
!   _temp_3554 = &_P_Kernel_frameManager
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
	mov	3400,r13		! source line 3400
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3550:
! ASSIGNMENT STATEMENT...
	mov	3402,r13		! source line 3402
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3545:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3543
! END FOR
_Label_3546:
! IF STATEMENT...
	mov	3406,r13		! source line 3406
	mov	"\0\0IF",r10
	mov	3406,r13		! source line 3406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3558) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3557  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3557 == 707406378 then goto _Label_3556		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3556
!	jmp	_Label_3555
_Label_3555:
! THEN...
	mov	3407,r13		! source line 3407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3559 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3559  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3407,r13		! source line 3407
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3408,r13		! source line 3408
	mov	"\0\0SE",r10
!   _temp_3560 = &_P_Kernel_frameManager
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
	mov	3409,r13		! source line 3409
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3556:
! ASSIGNMENT STATEMENT...
	mov	3413,r13		! source line 3413
	mov	"\0\0AS",r10
	mov	3413,r13		! source line 3413
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
	mov	3417,r13		! source line 3417
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3420,r13		! source line 3420
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
	.word	_Label_3561
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3563
	.word	12
	.word	4
	.word	_Label_3564
	.word	-16
	.word	4
	.word	_Label_3565
	.word	-20
	.word	4
	.word	_Label_3566
	.word	-24
	.word	4
	.word	_Label_3567
	.word	-28
	.word	4
	.word	_Label_3568
	.word	-32
	.word	4
	.word	_Label_3569
	.word	-36
	.word	4
	.word	_Label_3570
	.word	-40
	.word	4
	.word	_Label_3571
	.word	-9
	.word	1
	.word	_Label_3572
	.word	-44
	.word	4
	.word	_Label_3573
	.word	-48
	.word	4
	.word	_Label_3574
	.word	-52
	.word	4
	.word	_Label_3575
	.word	-56
	.word	4
	.word	_Label_3576
	.word	-60
	.word	4
	.word	_Label_3577
	.word	-64
	.word	4
	.word	_Label_3578
	.word	-68
	.word	4
	.word	_Label_3579
	.word	-72
	.word	4
	.word	_Label_3580
	.word	-76
	.word	4
	.word	_Label_3581
	.word	-10
	.word	1
	.word	_Label_3582
	.word	-80
	.word	4
	.word	_Label_3583
	.word	-84
	.word	4
	.word	_Label_3584
	.word	-88
	.word	4
	.word	_Label_3585
	.word	-92
	.word	4
	.word	_Label_3586
	.word	-96
	.word	4
	.word	_Label_3587
	.word	-100
	.word	4
	.word	_Label_3588
	.word	-104
	.word	4
	.word	_Label_3589
	.word	-108
	.word	4
	.word	_Label_3590
	.word	-112
	.word	4
	.word	_Label_3591
	.word	-116
	.word	4
	.word	_Label_3592
	.word	-120
	.word	4
	.word	_Label_3593
	.word	-124
	.word	4
	.word	_Label_3594
	.word	-128
	.word	4
	.word	_Label_3595
	.word	-132
	.word	4
	.word	_Label_3596
	.word	-136
	.word	4
	.word	_Label_3597
	.word	-140
	.word	4
	.word	_Label_3598
	.word	-144
	.word	4
	.word	_Label_3599
	.word	-148
	.word	4
	.word	_Label_3600
	.word	-152
	.word	4
	.word	_Label_3601
	.word	-156
	.word	4
	.word	_Label_3602
	.word	-160
	.word	4
	.word	_Label_3603
	.word	-164
	.word	4
	.word	_Label_3604
	.word	-168
	.word	4
	.word	_Label_3605
	.word	-172
	.word	4
	.word	_Label_3606
	.word	-176
	.word	4
	.word	_Label_3607
	.word	-180
	.word	4
	.word	_Label_3608
	.word	-184
	.word	4
	.word	_Label_3609
	.word	-188
	.word	4
	.word	_Label_3610
	.word	-192
	.word	4
	.word	_Label_3611
	.word	-196
	.word	4
	.word	_Label_3612
	.word	-200
	.word	4
	.word	_Label_3613
	.word	-204
	.word	4
	.word	_Label_3614
	.word	-208
	.word	4
	.word	_Label_3615
	.word	-212
	.word	4
	.word	_Label_3616
	.word	-216
	.word	4
	.word	_Label_3617
	.word	-220
	.word	4
	.word	_Label_3618
	.word	-224
	.word	4
	.word	_Label_3619
	.word	-228
	.word	4
	.word	_Label_3620
	.word	-232
	.word	4
	.word	_Label_3621
	.word	-236
	.word	4
	.word	_Label_3622
	.word	-240
	.word	4
	.word	_Label_3623
	.word	-244
	.word	4
	.word	_Label_3624
	.word	-248
	.word	4
	.word	_Label_3625
	.word	-252
	.word	4
	.word	_Label_3626
	.word	-256
	.word	4
	.word	_Label_3627
	.word	-260
	.word	4
	.word	_Label_3628
	.word	-264
	.word	4
	.word	_Label_3629
	.word	-268
	.word	4
	.word	0
_Label_3561:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3562:
	.ascii	"Pself\0"
	.align
_Label_3563:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3564:
	.byte	'?'
	.ascii	"_temp_3560\0"
	.align
_Label_3565:
	.byte	'?'
	.ascii	"_temp_3559\0"
	.align
_Label_3566:
	.byte	'?'
	.ascii	"_temp_3558\0"
	.align
_Label_3567:
	.byte	'?'
	.ascii	"_temp_3557\0"
	.align
_Label_3568:
	.byte	'?'
	.ascii	"_temp_3554\0"
	.align
_Label_3569:
	.byte	'?'
	.ascii	"_temp_3553\0"
	.align
_Label_3570:
	.byte	'?'
	.ascii	"_temp_3552\0"
	.align
_Label_3571:
	.byte	'C'
	.ascii	"_temp_3551\0"
	.align
_Label_3572:
	.byte	'?'
	.ascii	"_temp_3548\0"
	.align
_Label_3573:
	.byte	'?'
	.ascii	"_temp_3547\0"
	.align
_Label_3574:
	.byte	'?'
	.ascii	"_temp_3542\0"
	.align
_Label_3575:
	.byte	'?'
	.ascii	"_temp_3541\0"
	.align
_Label_3576:
	.byte	'?'
	.ascii	"_temp_3540\0"
	.align
_Label_3577:
	.byte	'?'
	.ascii	"_temp_3539\0"
	.align
_Label_3578:
	.byte	'?'
	.ascii	"_temp_3536\0"
	.align
_Label_3579:
	.byte	'?'
	.ascii	"_temp_3535\0"
	.align
_Label_3580:
	.byte	'?'
	.ascii	"_temp_3534\0"
	.align
_Label_3581:
	.byte	'C'
	.ascii	"_temp_3533\0"
	.align
_Label_3582:
	.byte	'?'
	.ascii	"_temp_3530\0"
	.align
_Label_3583:
	.byte	'?'
	.ascii	"_temp_3529\0"
	.align
_Label_3584:
	.byte	'?'
	.ascii	"_temp_3524\0"
	.align
_Label_3585:
	.byte	'?'
	.ascii	"_temp_3523\0"
	.align
_Label_3586:
	.byte	'?'
	.ascii	"_temp_3522\0"
	.align
_Label_3587:
	.byte	'?'
	.ascii	"_temp_3521\0"
	.align
_Label_3588:
	.byte	'?'
	.ascii	"_temp_3518\0"
	.align
_Label_3589:
	.byte	'?'
	.ascii	"_temp_3517\0"
	.align
_Label_3590:
	.byte	'?'
	.ascii	"_temp_3516\0"
	.align
_Label_3591:
	.byte	'?'
	.ascii	"_temp_3515\0"
	.align
_Label_3592:
	.byte	'?'
	.ascii	"_temp_3512\0"
	.align
_Label_3593:
	.byte	'?'
	.ascii	"_temp_3511\0"
	.align
_Label_3594:
	.byte	'?'
	.ascii	"_temp_3510\0"
	.align
_Label_3595:
	.byte	'?'
	.ascii	"_temp_3509\0"
	.align
_Label_3596:
	.byte	'?'
	.ascii	"_temp_3508\0"
	.align
_Label_3597:
	.byte	'?'
	.ascii	"_temp_3505\0"
	.align
_Label_3598:
	.byte	'?'
	.ascii	"_temp_3504\0"
	.align
_Label_3599:
	.byte	'?'
	.ascii	"_temp_3501\0"
	.align
_Label_3600:
	.byte	'?'
	.ascii	"_temp_3500\0"
	.align
_Label_3601:
	.byte	'?'
	.ascii	"_temp_3497\0"
	.align
_Label_3602:
	.byte	'?'
	.ascii	"_temp_3496\0"
	.align
_Label_3603:
	.byte	'?'
	.ascii	"_temp_3493\0"
	.align
_Label_3604:
	.byte	'?'
	.ascii	"_temp_3490\0"
	.align
_Label_3605:
	.byte	'?'
	.ascii	"_temp_3489\0"
	.align
_Label_3606:
	.byte	'?'
	.ascii	"_temp_3486\0"
	.align
_Label_3607:
	.byte	'?'
	.ascii	"_temp_3485\0"
	.align
_Label_3608:
	.byte	'?'
	.ascii	"_temp_3484\0"
	.align
_Label_3609:
	.byte	'?'
	.ascii	"_temp_3483\0"
	.align
_Label_3610:
	.byte	'?'
	.ascii	"_temp_3482\0"
	.align
_Label_3611:
	.byte	'?'
	.ascii	"_temp_3481\0"
	.align
_Label_3612:
	.byte	'?'
	.ascii	"_temp_3480\0"
	.align
_Label_3613:
	.byte	'?'
	.ascii	"_temp_3479\0"
	.align
_Label_3614:
	.byte	'?'
	.ascii	"_temp_3478\0"
	.align
_Label_3615:
	.byte	'?'
	.ascii	"_temp_3475\0"
	.align
_Label_3616:
	.byte	'?'
	.ascii	"_temp_3474\0"
	.align
_Label_3617:
	.byte	'?'
	.ascii	"_temp_3473\0"
	.align
_Label_3618:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3619:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3620:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3621:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3622:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3623:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3624:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3625:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3626:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3627:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3628:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3629:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
! 
! ===============  CLASS SerialDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_SerialDriver:
	.word	_Label_3630
	jmp	_Method_P_Kernel_SerialDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_SerialDriver_2	! 8:	PutChar
	jmp	_Method_P_Kernel_SerialDriver_3	! 12:	GetChar
	jmp	_Method_P_Kernel_SerialDriver_4	! 16:	SerialHandler
	.word	0
! 
! Class descriptor:
! 
_Label_3630:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3631
	.word	_sourceFileName
	.word	399		! line number
	.word	4308		! size of instances, in bytes
	.word	_P_Kernel_SerialDriver
	.word	_P_System_Object
	.word	0
_Label_3631:
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
	mov	3429,r13		! source line 3429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	3429,r13		! source line 3429
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_1:
	.word	_sourceFileName
	.word	_Label_3632
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3633
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_3632:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3633:
	.ascii	"Pself\0"
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
	mov	3433,r13		! source line 3433
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	3433,r13		! source line 3433
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_2:
	.word	_sourceFileName
	.word	_Label_3634
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3636
	.word	12
	.word	1
	.word	0
_Label_3634:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"PutChar\0"
	.align
_Label_3635:
	.ascii	"Pself\0"
	.align
_Label_3636:
	.byte	'C'
	.ascii	"value\0"
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
	mov	3437,r13		! source line 3437
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	3438,r13		! source line 3438
	mov	"\0\0RE",r10
!   ReturnResult: 97  (sizeInBytes=1)
	mov	97,r1
	storeb	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_3:
	.word	_sourceFileName
	.word	_Label_3637
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3638
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_3637:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"GetChar\0"
	.align
_Label_3638:
	.ascii	"Pself\0"
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
	mov	3442,r13		! source line 3442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	3442,r13		! source line 3442
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_SerialDriver_4:
	.word	_sourceFileName
	.word	_Label_3639
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_3640
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_3639:
	.ascii	"SerialDriver"
	.ascii	"::"
	.ascii	"SerialHandler\0"
	.align
_Label_3640:
	.ascii	"Pself\0"
	.align
