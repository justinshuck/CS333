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
_StringConst_194:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_193:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_192:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_191:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_190:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_189:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_188:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_187:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_186:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_185:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_184:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_183:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_182:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_181:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_180:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_179:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_178:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_177:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_176:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_175:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_174:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_173:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_172:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_171:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_170:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_169:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_168:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_167:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_166:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_165:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_164:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_163:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_162:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_161:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_160:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_159:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_158:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_157:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_156:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_155:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_154:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_153:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_152:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_151:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_150:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_149:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_148:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_147:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_146:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_145:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_144:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_143:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_142:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_141:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_140:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_138:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_137:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_136:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_135:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_134:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_133:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_132:
	.word	6			! length
	.ascii	"      "
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
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_128:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_127:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_126:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_125:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_124:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_123:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_122:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_121:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_120:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_119:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_118:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_117:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_116:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_115:
	.word	12			! length
	.ascii	"Never called"
	.align
_StringConst_114:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_113:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_112:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_111:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_110:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_109:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_108:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_107:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_106:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_105:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_104:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_103:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_102:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_101:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_100:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_99:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_98:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_97:
	.word	32			! length
	.ascii	"Trying to Free an Invalid Thread"
	.align
_StringConst_96:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_95:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_94:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_93:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_92:
	.word	8			! length
	.ascii	"thread_9"
	.align
_StringConst_91:
	.word	8			! length
	.ascii	"thread_8"
	.align
_StringConst_90:
	.word	8			! length
	.ascii	"thread_7"
	.align
_StringConst_89:
	.word	8			! length
	.ascii	"thread_6"
	.align
_StringConst_88:
	.word	8			! length
	.ascii	"thread_5"
	.align
_StringConst_87:
	.word	8			! length
	.ascii	"thread_4"
	.align
_StringConst_86:
	.word	8			! length
	.ascii	"thread_3"
	.align
_StringConst_85:
	.word	8			! length
	.ascii	"thread_2"
	.align
_StringConst_84:
	.word	8			! length
	.ascii	"thread_1"
	.align
_StringConst_83:
	.word	8			! length
	.ascii	"thread_0"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_81:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_80:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_79:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_78:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_77:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_76:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_75:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_74:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_73:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_72:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_71:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_70:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_69:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_68:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_67:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_65:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_64:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_63:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_62:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_61:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_60:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_59:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_58:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_57:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_56:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_55:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_54:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_52:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_51:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_50:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_49:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_48:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_47:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_46:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_45:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_44:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_43:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_42:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_41:
	.word	43			! length
	.ascii	"ERROR: Error has occured in Handle_Sys_Open"
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
	.ascii	"ERROR: Cannot open \'TestProgram3\'."
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram3"
	.align
_StringConst_24:
	.word	12			! length
	.ascii	"TestProgram3"
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
_Label_3284:
	push	r0
	sub	r1,1,r1
	bne	_Label_3284
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
_Label_3285:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3285
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
_Label_3286:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3286
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
_Label_3287:
	push	r0
	sub	r1,1,r1
	bne	_Label_3287
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
_Label_3288:
	push	r0
	sub	r1,1,r1
	bne	_Label_3288
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
_Label_3289:
	push	r0
	sub	r1,1,r1
	bne	_Label_3289
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
_Label_3290:
	push	r0
	sub	r1,1,r1
	bne	_Label_3290
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
_Label_3291:
	push	r0
	sub	r1,1,r1
	bne	_Label_3291
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
_Label_3292:
	push	r0
	sub	r1,1,r1
	bne	_Label_3292
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
_Label_3293:
	push	r0
	sub	r1,1,r1
	bne	_Label_3293
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
_Label_3294:
	push	r0
	sub	r1,1,r1
	bne	_Label_3294
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
_Label_3295:
	push	r0
	sub	r1,1,r1
	bne	_Label_3295
	mov	1103,r13		! source line 1103
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
	mov	15,r1
_Label_3296:
	push	r0
	sub	r1,1,r1
	bne	_Label_3296
	mov	1113,r13		! source line 1113
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1124,r13		! source line 1124
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
	store	r1,[r14+-48]
!   Data Move: _temp_390 = *_temp_391  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_390) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_392 = _temp_390 + 28
	load	[r14+-52],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_392 = exitStatus  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r14+-44],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1126,r13		! source line 1126
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1126,r13		! source line 1126
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1129,r13		! source line 1129
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
	store	r1,[r14+-40]
!   Data Move: proc = *_temp_393  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1130,r13		! source line 1130
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
	store	r1,[r14+-36]
!   Data Move: *_temp_394 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_395 = proc + 24
	load	[r14+-56],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_395 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1132,r13		! source line 1132
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
	store	r1,[r14+-28]
!   Data Move: *_temp_396 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1136,r13		! source line 1136
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1138,r13		! source line 1138
	mov	"\0\0SE",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_398 = proc + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   _temp_397 = _temp_398		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-24]
!   _temp_399 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_397  sizeInBytes=4
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
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_400 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=proc  sizeInBytes=4
	load	[r14+-56],r1
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
	mov	1141,r13		! source line 1141
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1141,r13		! source line 1141
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_401
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_402
	.word	8
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
	.word	_Label_413
	.word	-52
	.word	4
	.word	_Label_414
	.word	-56
	.word	4
	.word	_Label_415
	.word	-60
	.word	4
	.word	0
_Label_401:
	.ascii	"ProcessFinish\0"
	.align
_Label_402:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_414:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_415:
	.byte	'I'
	.ascii	"ignore\0"
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
_Label_3297:
	push	r0
	sub	r1,1,r1
	bne	_Label_3297
	mov	1146,r13		! source line 1146
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0AS",r10
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_416 = &_P_Kernel_threadManager
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
	mov	1151,r13		! source line 1151
	mov	"\0\0SE",r10
!   _temp_417 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_417  sizeInBytes=4
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
	mov	1152,r13		! source line 1152
	mov	"\0\0SE",r10
!   _temp_418 = _function_201_StartUserProcess
	set	_function_201_StartUserProcess,r1
	store	r1,[r14+-16]
!   _temp_419 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_418  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_419  sizeInBytes=4
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
	mov	1152,r13		! source line 1152
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
	.word	_Label_420
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_421
	.word	-12
	.word	4
	.word	_Label_422
	.word	-16
	.word	4
	.word	_Label_423
	.word	-20
	.word	4
	.word	_Label_424
	.word	-24
	.word	4
	.word	_Label_425
	.word	-28
	.word	4
	.word	0
_Label_420:
	.ascii	"InitFirstProcess\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_425:
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
_Label_3298:
	push	r0
	sub	r1,1,r1
	bne	_Label_3298
	mov	1158,r13		! source line 1158
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0AS",r10
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_426 = &_P_Kernel_processManager
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
	mov	1177,r13		! source line 1177
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = ptrToPCB + 24
	load	[r14+-84],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: *_temp_427 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-72],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_428 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_428 = ptrToPCB  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
	mov	1181,r13		! source line 1181
	mov	"\0\0SE",r10
!   _temp_429 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-64]
!   _temp_430 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_429  sizeInBytes=4
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
	mov	1183,r13		! source line 1183
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_431
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_431
	jmp	_Label_432
_Label_431:
! THEN...
	mov	1184,r13		! source line 1184
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1184,r13		! source line 1184
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_432:
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_435 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_434 = _temp_435		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (ptrOpenFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_434  sizeInBytes=4
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
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_436 = &_P_Kernel_fileManager
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
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_438 = ptrToPCB + 32
	load	[r14+-84],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_439 = _temp_438 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_437 = *_temp_439  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStackTop = _temp_437 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
! ASSIGNMENT STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_440 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_440 [999 ] into _temp_441
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
!   ptrInitSystemStackTop = _temp_441		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1197,r13		! source line 1197
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1197,r13		! source line 1197
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = ptrToPCB + 32
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
	mov	1199,r13		! source line 1199
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_443 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_443 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_444 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1200,r13		! source line 1200
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
	.word	_Label_445
	.word	4		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_446
	.word	8
	.word	4
	.word	_Label_447
	.word	-12
	.word	4
	.word	_Label_448
	.word	-16
	.word	4
	.word	_Label_449
	.word	-20
	.word	4
	.word	_Label_450
	.word	-24
	.word	4
	.word	_Label_451
	.word	-28
	.word	4
	.word	_Label_452
	.word	-32
	.word	4
	.word	_Label_453
	.word	-36
	.word	4
	.word	_Label_454
	.word	-40
	.word	4
	.word	_Label_455
	.word	-44
	.word	4
	.word	_Label_456
	.word	-48
	.word	4
	.word	_Label_457
	.word	-52
	.word	4
	.word	_Label_458
	.word	-56
	.word	4
	.word	_Label_459
	.word	-60
	.word	4
	.word	_Label_460
	.word	-64
	.word	4
	.word	_Label_461
	.word	-68
	.word	4
	.word	_Label_462
	.word	-72
	.word	4
	.word	_Label_463
	.word	-76
	.word	4
	.word	_Label_464
	.word	-80
	.word	4
	.word	_Label_465
	.word	-84
	.word	4
	.word	_Label_466
	.word	-88
	.word	4
	.word	_Label_467
	.word	-92
	.word	4
	.word	_Label_468
	.word	-96
	.word	4
	.word	_Label_469
	.word	-100
	.word	4
	.word	0
_Label_445:
	.ascii	"StartUserProcess\0"
	.align
_Label_446:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_464:
	.byte	'P'
	.ascii	"ptrOpenFile\0"
	.align
_Label_465:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_466:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_467:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_469:
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
_Label_3299:
	push	r0
	sub	r1,1,r1
	bne	_Label_3299
	mov	1715,r13		! source line 1715
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1725,r13		! source line 1725
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1727,r13		! source line 1727
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
	mov	1728,r13		! source line 1728
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1728,r13		! source line 1728
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
	.word	_Label_470
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_470:
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
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1744,r13		! source line 1744
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0IF",r10
!   _temp_474 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_475 = _temp_474 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_473 = *_temp_475  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_473 == 0 then goto _Label_472		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_472
!	jmp	_Label_471
_Label_471:
! THEN...
	mov	1747,r13		! source line 1747
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0SE",r10
!   _temp_477 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_478 = _temp_477 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_476 = *_temp_478  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_476) then goto _runtimeErrorNullPointer
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
_Label_472:
! RETURN STATEMENT...
	mov	1746,r13		! source line 1746
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
	.word	_Label_479
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_480
	.word	-12
	.word	4
	.word	_Label_481
	.word	-16
	.word	4
	.word	_Label_482
	.word	-20
	.word	4
	.word	_Label_483
	.word	-24
	.word	4
	.word	_Label_484
	.word	-28
	.word	4
	.word	_Label_485
	.word	-32
	.word	4
	.word	0
_Label_479:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_473\0"
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
	mov	1754,r13		! source line 1754
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1763,r13		! source line 1763
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
	.word	_Label_486
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_486:
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
_Label_3301:
	push	r0
	sub	r1,1,r1
	bne	_Label_3301
	mov	1768,r13		! source line 1768
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
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
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
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
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
	mov	1780,r13		! source line 1780
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1786,r13		! source line 1786
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_490 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
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
	.word	_Label_491
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_492
	.word	-12
	.word	4
	.word	0
_Label_491:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_490\0"
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
_Label_3303:
	push	r0
	sub	r1,1,r1
	bne	_Label_3303
	mov	1792,r13		! source line 1792
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1798,r13		! source line 1798
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_493 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
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
	.word	_Label_494
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_495
	.word	-12
	.word	4
	.word	0
_Label_494:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_493\0"
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
_Label_3304:
	push	r0
	sub	r1,1,r1
	bne	_Label_3304
	mov	1804,r13		! source line 1804
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_496 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
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
	.word	_Label_497
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_498
	.word	-12
	.word	4
	.word	0
_Label_497:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_496\0"
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
_Label_3305:
	push	r0
	sub	r1,1,r1
	bne	_Label_3305
	mov	1816,r13		! source line 1816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1822,r13		! source line 1822
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_499 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
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
	.word	_Label_500
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_501
	.word	-12
	.word	4
	.word	0
_Label_500:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_499\0"
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
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
	mov	1828,r13		! source line 1828
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_502 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1835,r13		! source line 1835
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
	.word	_Label_503
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_504
	.word	-12
	.word	4
	.word	0
_Label_503:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_502\0"
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
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
	mov	1840,r13		! source line 1840
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_505 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1847,r13		! source line 1847
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
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
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
	mov	1852,r13		! source line 1852
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_508 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1857,r13		! source line 1857
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_509 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_509  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_513 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_512 = *_temp_513  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_512 == 0 then goto _Label_511		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_511
!	jmp	_Label_510
_Label_510:
! THEN...
	mov	1863,r13		! source line 1863
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_515 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_514 = *_temp_515  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_514) then goto _runtimeErrorNullPointer
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
	jmp	_Label_516
_Label_511:
! ELSE...
	mov	1865,r13		! source line 1865
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_517 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1865,r13		! source line 1865
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_516:
! SEND STATEMENT...
	mov	1867,r13		! source line 1867
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
	mov	1873,r13		! source line 1873
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1873,r13		! source line 1873
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
	.word	_Label_518
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_519
	.word	8
	.word	4
	.word	_Label_520
	.word	-12
	.word	4
	.word	_Label_521
	.word	-16
	.word	4
	.word	_Label_522
	.word	-20
	.word	4
	.word	_Label_523
	.word	-24
	.word	4
	.word	_Label_524
	.word	-28
	.word	4
	.word	_Label_525
	.word	-32
	.word	4
	.word	_Label_526
	.word	-36
	.word	4
	.word	0
_Label_518:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_519:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_508\0"
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
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
	mov	1878,r13		! source line 1878
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1899,r13		! source line 1899
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3310
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_527
_Label_3310:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_527
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_527
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_541,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_541:
	jmp	_Label_533	! 1:	
	jmp	_Label_540	! 2:	
	jmp	_Label_530	! 3:	
	jmp	_Label_529	! 4:	
	jmp	_Label_532	! 5:	
	jmp	_Label_531	! 6:	
	jmp	_Label_534	! 7:	
	jmp	_Label_535	! 8:	
	jmp	_Label_536	! 9:	
	jmp	_Label_537	! 10:	
	jmp	_Label_538	! 11:	
	jmp	_Label_539	! 12:	
! CASE 4...
_Label_529:
! RETURN STATEMENT...
	mov	1901,r13		! source line 1901
	mov	"\0\0RE",r10
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_542  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_542  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_530:
! CALL STATEMENT...
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_531:
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_543  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_543  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_532:
! RETURN STATEMENT...
	mov	1908,r13		! source line 1908
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_544  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_544  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_533:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1911,r13		! source line 1911
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_534:
! RETURN STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1913,r13		! source line 1913
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_545  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_545  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_535:
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_546  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_546  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_536:
! RETURN STATEMENT...
	mov	1917,r13		! source line 1917
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
	mov	1917,r13		! source line 1917
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_547  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_547  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_537:
! RETURN STATEMENT...
	mov	1919,r13		! source line 1919
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
	mov	1919,r13		! source line 1919
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_548  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_548  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_538:
! RETURN STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1921,r13		! source line 1921
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_549  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_549  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_539:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1923,r13		! source line 1923
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_540:
! CALL STATEMENT...
!   Call the function
	mov	1926,r13		! source line 1926
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_527:
! CALL STATEMENT...
!   _temp_550 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1929,r13		! source line 1929
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1930,r13		! source line 1930
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1931,r13		! source line 1931
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_551 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1932,r13		! source line 1932
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_528:
! RETURN STATEMENT...
	mov	1934,r13		! source line 1934
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
	.word	_Label_552
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_553
	.word	8
	.word	4
	.word	_Label_554
	.word	12
	.word	4
	.word	_Label_555
	.word	16
	.word	4
	.word	_Label_556
	.word	20
	.word	4
	.word	_Label_557
	.word	24
	.word	4
	.word	_Label_558
	.word	-12
	.word	4
	.word	_Label_559
	.word	-16
	.word	4
	.word	_Label_560
	.word	-20
	.word	4
	.word	_Label_561
	.word	-24
	.word	4
	.word	_Label_562
	.word	-28
	.word	4
	.word	_Label_563
	.word	-32
	.word	4
	.word	_Label_564
	.word	-36
	.word	4
	.word	_Label_565
	.word	-40
	.word	4
	.word	_Label_566
	.word	-44
	.word	4
	.word	_Label_567
	.word	-48
	.word	4
	.word	0
_Label_552:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_554:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_555:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_556:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_542\0"
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
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
	mov	1939,r13		! source line 1939
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1941,r13		! source line 1941
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1941,r13		! source line 1941
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
	.word	_Label_568
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_569
	.word	8
	.word	4
	.word	0
_Label_568:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_569:
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
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
	mov	1946,r13		! source line 1946
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_570 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1948,r13		! source line 1948
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1948,r13		! source line 1948
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
	.word	_Label_571
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_572
	.word	-12
	.word	4
	.word	0
_Label_571:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_570\0"
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
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
	mov	1952,r13		! source line 1952
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1956,r13		! source line 1956
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
	mov	1957,r13		! source line 1957
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
	.word	_Label_573
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_573:
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
	mov	51,r1
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1978,r13		! source line 1978
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
	mov	1982,r13		! source line 1982
	mov	"\0\0SE",r10
!   _temp_574 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-176]
!   Send message GetANewProcess
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_575 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-172]
!   Data Move: oldPCB = *_temp_575  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0AS",r10
	mov	1984,r13		! source line 1984
	mov	"\0\0SE",r10
!   _temp_576 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-168]
!   Send message GetANewThread
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-188]
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = newThread + 72
	load	[r14+-188],r1
	add	r1,72,r1
	store	r1,[r14+-164]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-156]
!   Data Move: _temp_578 = *_temp_579  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   Data Move: *_temp_577 = _temp_578  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r14+-164],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_580 = newThread + 76
	load	[r14+-188],r1
	add	r1,76,r1
	store	r1,[r14+-152]
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = newPCB + 20
	load	[r14+-180],r1
	add	r1,20,r1
	store	r1,[r14+-144]
!   Data Move: _temp_581 = *_temp_582  (sizeInBytes=4)
	load	[r14+-144],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Data Move: *_temp_580 = _temp_581  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-152],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1989,r13		! source line 1989
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = newThread + 4160
	load	[r14+-188],r1
	add	r1,4160,r1
	store	r1,[r14+-140]
!   Data Move: *_temp_583 = newPCB  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-140],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = newPCB + 24
	load	[r14+-180],r1
	add	r1,24,r1
	store	r1,[r14+-136]
!   Data Move: *_temp_584 = newThread  (sizeInBytes=4)
	load	[r14+-188],r1
	load	[r14+-136],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = newPCB + 16
	load	[r14+-180],r1
	add	r1,16,r1
	store	r1,[r14+-132]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = oldPCB + 12
	load	[r14+-184],r1
	add	r1,12,r1
	store	r1,[r14+-124]
!   Data Move: _temp_586 = *_temp_587  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Data Move: *_temp_585 = _temp_586  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r14+-132],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = newThread + 4096
	load	[r14+-188],r1
	add	r1,4096,r1
	store	r1,[r14+-116]
!   Move address of _temp_589 [0 ] into _temp_590
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_588 = _temp_590		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	2003,r13		! source line 2003
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = newThread + 68
	load	[r14+-188],r1
	add	r1,68,r1
	store	r1,[r14+-108]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = newThread + 88
	load	[r14+-188],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_593 [999 ] into _temp_594
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
!   _temp_592 = _temp_594		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Data Move: *_temp_591 = _temp_592  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = newPCB + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_595 = _temp_596		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = oldPCB + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_599 = _temp_598 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_597 = *_temp_599  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_600 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_595  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_597  sizeInBytes=4
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
	mov	2009,r13		! source line 2009
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_605 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = oldPCB + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_609 = _temp_608 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Data Move: _temp_607 = *_temp_609  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_606 = _temp_607 - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_605  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-196]
_Label_601:
!   Perform the FOR-LOOP termination test
!   if i > _temp_606 then goto _Label_604		
	load	[r14+-196],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_604
_Label_602:
	mov	2009,r13		! source line 2009
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2010,r13		! source line 2010
	mov	"\0\0IF",r10
	mov	2010,r13		! source line 2010
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_612 = oldPCB + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_610 else goto _Label_611
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_611
	jmp	_Label_610
_Label_610:
! THEN...
	mov	2011,r13		! source line 2011
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2011,r13		! source line 2011
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = newPCB + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_614
_Label_611:
! ELSE...
	mov	2013,r13		! source line 2013
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = newPCB + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-196],r1
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
_Label_614:
! CALL STATEMENT...
	mov	2015,r13		! source line 2015
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = newPCB + 32
	load	[r14+-180],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_616  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
	mov	2016,r13		! source line 2016
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_619 = oldPCB + 32
	load	[r14+-184],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_618  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_616  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_618  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CE",r10
	call	MemoryCopy
!   Increment the FOR-LOOP index variable and jump back
_Label_603:
!   i = i + 1
	load	[r14+-196],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-196]
	jmp	_Label_601
! END FOR
_Label_604:
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   Call the function
	mov	2022,r13		! source line 2022
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-200]
! SEND STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0SE",r10
!   _temp_620 = _function_198_ResumeChildAfterFork
	set	_function_198_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_620  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = newPCB + 12
	load	[r14+-180],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_621  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,208,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_623
	.word	0		! total size of parameters
	.word	204		! frame size = 204
	.word	_Label_624
	.word	-12
	.word	4
	.word	_Label_625
	.word	-16
	.word	4
	.word	_Label_626
	.word	-20
	.word	4
	.word	_Label_627
	.word	-24
	.word	4
	.word	_Label_628
	.word	-28
	.word	4
	.word	_Label_629
	.word	-32
	.word	4
	.word	_Label_630
	.word	-36
	.word	4
	.word	_Label_631
	.word	-40
	.word	4
	.word	_Label_632
	.word	-44
	.word	4
	.word	_Label_633
	.word	-48
	.word	4
	.word	_Label_634
	.word	-52
	.word	4
	.word	_Label_635
	.word	-56
	.word	4
	.word	_Label_636
	.word	-60
	.word	4
	.word	_Label_637
	.word	-64
	.word	4
	.word	_Label_638
	.word	-68
	.word	4
	.word	_Label_639
	.word	-72
	.word	4
	.word	_Label_640
	.word	-76
	.word	4
	.word	_Label_641
	.word	-80
	.word	4
	.word	_Label_642
	.word	-84
	.word	4
	.word	_Label_643
	.word	-88
	.word	4
	.word	_Label_644
	.word	-92
	.word	4
	.word	_Label_645
	.word	-96
	.word	4
	.word	_Label_646
	.word	-100
	.word	4
	.word	_Label_647
	.word	-104
	.word	4
	.word	_Label_648
	.word	-108
	.word	4
	.word	_Label_649
	.word	-112
	.word	4
	.word	_Label_650
	.word	-116
	.word	4
	.word	_Label_651
	.word	-120
	.word	4
	.word	_Label_652
	.word	-124
	.word	4
	.word	_Label_653
	.word	-128
	.word	4
	.word	_Label_654
	.word	-132
	.word	4
	.word	_Label_655
	.word	-136
	.word	4
	.word	_Label_656
	.word	-140
	.word	4
	.word	_Label_657
	.word	-144
	.word	4
	.word	_Label_658
	.word	-148
	.word	4
	.word	_Label_659
	.word	-152
	.word	4
	.word	_Label_660
	.word	-156
	.word	4
	.word	_Label_661
	.word	-160
	.word	4
	.word	_Label_662
	.word	-164
	.word	4
	.word	_Label_663
	.word	-168
	.word	4
	.word	_Label_664
	.word	-172
	.word	4
	.word	_Label_665
	.word	-176
	.word	4
	.word	_Label_666
	.word	-180
	.word	4
	.word	_Label_667
	.word	-184
	.word	4
	.word	_Label_668
	.word	-188
	.word	4
	.word	_Label_669
	.word	-192
	.word	4
	.word	_Label_670
	.word	-196
	.word	4
	.word	_Label_671
	.word	-200
	.word	4
	.word	0
_Label_623:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_667:
	.byte	'P'
	.ascii	"oldPCB\0"
	.align
_Label_668:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_669:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_670:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_671:
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
	mov	22,r1
_Label_3315:
	push	r0
	sub	r1,1,r1
	bne	_Label_3315
	mov	2031,r13		! source line 2031
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0AS",r10
!   flag = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_672 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-72]
!   Data Move: parent = *_temp_672  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-84]
! FOR STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_677 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_678 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_677  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-76]
_Label_673:
!   Perform the FOR-LOOP termination test
!   if i > _temp_678 then goto _Label_676		
	load	[r14+-76],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_676
_Label_674:
	mov	2053,r13		! source line 2053
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   _temp_679 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-60]
!   _temp_680 = _temp_679 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_680 [i ] into _temp_681
!     make sure index expr is >= 0
	load	[r14+-76],r2
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
!   child = _temp_681		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = child + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-44]
!   Data Move: _temp_686 = *_temp_687  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_686 != processID then goto _Label_683		(int)
	load	[r14+-48],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_683
!	jmp	_Label_685
_Label_685:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_689 = child + 16
	load	[r14+-80],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_688 = *_temp_689  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = parent + 12
	load	[r14+-84],r1
	add	r1,12,r1
	store	r1,[r14+-28]
!   Data Move: _temp_690 = *_temp_691  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_688 != _temp_690 then goto _Label_683		(int)
	load	[r14+-40],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bne	_Label_683
!	jmp	_Label_684
_Label_684:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_693 = child + 20
	load	[r14+-80],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_692 = *_temp_693  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_692 == 3 then goto _Label_683		(int)
	load	[r14+-24],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_683
!	jmp	_Label_682
_Label_682:
! THEN...
	mov	2056,r13		! source line 2056
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0AS",r10
!   flag = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
! BREAK STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0BR",r10
	jmp	_Label_676
! END IF...
_Label_683:
!   Increment the FOR-LOOP index variable and jump back
_Label_675:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_673
! END FOR
_Label_676:
! IF STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0IF",r10
!   _temp_696 = flag XOR 1		(bool)
	loadb	[r14+-10],r1
	mov	1,r2
	xor	r1,r2,r1
	storeb	r1,[r14+-9]
!   if _temp_696 then goto _Label_695 else goto _Label_694
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_694
	jmp	_Label_695
_Label_694:
! THEN...
	mov	2064,r13		! source line 2064
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_695:
! ASSIGNMENT STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0AS",r10
	mov	2068,r13		! source line 2068
	mov	"\0\0SE",r10
!   _temp_697 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=child  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message WaitForZombie
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=childsExitStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! RETURN STATEMENT...
	mov	2070,r13		! source line 2070
	mov	"\0\0RE",r10
!   ReturnResult: childsExitStatus  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_698
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_699
	.word	8
	.word	4
	.word	_Label_700
	.word	-16
	.word	4
	.word	_Label_701
	.word	-9
	.word	1
	.word	_Label_702
	.word	-20
	.word	4
	.word	_Label_703
	.word	-24
	.word	4
	.word	_Label_704
	.word	-28
	.word	4
	.word	_Label_705
	.word	-32
	.word	4
	.word	_Label_706
	.word	-36
	.word	4
	.word	_Label_707
	.word	-40
	.word	4
	.word	_Label_708
	.word	-44
	.word	4
	.word	_Label_709
	.word	-48
	.word	4
	.word	_Label_710
	.word	-52
	.word	4
	.word	_Label_711
	.word	-56
	.word	4
	.word	_Label_712
	.word	-60
	.word	4
	.word	_Label_713
	.word	-64
	.word	4
	.word	_Label_714
	.word	-68
	.word	4
	.word	_Label_715
	.word	-72
	.word	4
	.word	_Label_716
	.word	-76
	.word	4
	.word	_Label_717
	.word	-80
	.word	4
	.word	_Label_718
	.word	-84
	.word	4
	.word	_Label_719
	.word	-88
	.word	4
	.word	_Label_720
	.word	-10
	.word	1
	.word	0
_Label_698:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_699:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_701:
	.byte	'C'
	.ascii	"_temp_696\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_679\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_716:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_717:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_718:
	.byte	'P'
	.ascii	"parent\0"
	.align
_Label_719:
	.byte	'I'
	.ascii	"childsExitStatus\0"
	.align
_Label_720:
	.byte	'B'
	.ascii	"flag\0"
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
_Label_3316:
	push	r0
	sub	r1,1,r1
	bne	_Label_3316
	mov	2074,r13		! source line 2074
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-196,r4
	mov	23,r3
_Label_3317:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3317
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-196]
! SEND STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0SE",r10
!   _temp_722 = &newAddrSpace
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
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_723 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: ptrToPCB = *_temp_723  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
	mov	2102,r13		! source line 2102
	mov	"\0\0SE",r10
!   _temp_724 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-88]
!   _temp_725 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_726 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_724  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_725  sizeInBytes=4
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
	mov	2103,r13		! source line 2103
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_728		(int)
	load	[r14+-232],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_728
!	jmp	_Label_727
_Label_727:
! THEN...
	mov	2104,r13		! source line 2104
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_728:
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
	mov	2108,r13		! source line 2108
	mov	"\0\0SE",r10
!   _temp_729 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-76]
!   _temp_730 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_729  sizeInBytes=4
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
	mov	2109,r13		! source line 2109
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile2) then goto _Label_731
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_731
	jmp	_Label_732
_Label_731:
! THEN...
	mov	2110,r13		! source line 2110
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_732:
! ASSIGNMENT STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0AS",r10
	mov	2119,r13		! source line 2119
	mov	"\0\0SE",r10
!   _temp_733 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-68]
!   if intIsZero (ptrOpenFile2) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_733  sizeInBytes=4
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
	mov	2120,r13		! source line 2120
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_735		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_735
!	jmp	_Label_734
_Label_734:
! THEN...
	mov	2121,r13		! source line 2121
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_735:
! ASSIGNMENT STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_736 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_736 = newAddrSpace  (sizeInBytes=92)
	add	r14,-196,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3318:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3318
! SEND STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_737 = &_P_Kernel_fileManager
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
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_739 = *_temp_740  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_739) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_741 = _temp_739 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_738 = _temp_741		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_742 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_738  sizeInBytes=4
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
	mov	2129,r13		! source line 2129
	mov	"\0\0AS",r10
!   _temp_744 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-32]
!   _temp_745 = _temp_744 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_743 = *_temp_745  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_743 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2130,r13		! source line 2130
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_746 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_746 [999 ] into _temp_747
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
!   ptrInitSystemStackTop = _temp_747		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2131,r13		! source line 2131
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2131,r13		! source line 2131
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2132,r13		! source line 2132
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_748 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_748 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_749 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-240],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_749  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2133,r13		! source line 2133
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2134,r13		! source line 2134
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
	.word	_Label_750
	.word	4		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_751
	.word	8
	.word	4
	.word	_Label_752
	.word	-12
	.word	4
	.word	_Label_753
	.word	-16
	.word	4
	.word	_Label_754
	.word	-20
	.word	4
	.word	_Label_755
	.word	-24
	.word	4
	.word	_Label_756
	.word	-28
	.word	4
	.word	_Label_757
	.word	-32
	.word	4
	.word	_Label_758
	.word	-36
	.word	4
	.word	_Label_759
	.word	-40
	.word	4
	.word	_Label_760
	.word	-44
	.word	4
	.word	_Label_761
	.word	-48
	.word	4
	.word	_Label_762
	.word	-52
	.word	4
	.word	_Label_763
	.word	-56
	.word	4
	.word	_Label_764
	.word	-60
	.word	4
	.word	_Label_765
	.word	-64
	.word	4
	.word	_Label_766
	.word	-68
	.word	4
	.word	_Label_767
	.word	-72
	.word	4
	.word	_Label_768
	.word	-76
	.word	4
	.word	_Label_769
	.word	-80
	.word	4
	.word	_Label_770
	.word	-84
	.word	4
	.word	_Label_771
	.word	-88
	.word	4
	.word	_Label_772
	.word	-92
	.word	4
	.word	_Label_773
	.word	-96
	.word	4
	.word	_Label_774
	.word	-100
	.word	4
	.word	_Label_775
	.word	-104
	.word	4
	.word	_Label_776
	.word	-196
	.word	92
	.word	_Label_777
	.word	-220
	.word	24
	.word	_Label_778
	.word	-224
	.word	4
	.word	_Label_779
	.word	-228
	.word	4
	.word	_Label_780
	.word	-232
	.word	4
	.word	_Label_781
	.word	-236
	.word	4
	.word	_Label_782
	.word	-240
	.word	4
	.word	_Label_783
	.word	-244
	.word	4
	.word	0
_Label_750:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_751:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_775:
	.byte	'P'
	.ascii	"ptrOpenFile2\0"
	.align
_Label_776:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_777:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_778:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_779:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_780:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_781:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_782:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_783:
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
_Label_3319:
	push	r0
	sub	r1,1,r1
	bne	_Label_3319
	mov	2137,r13		! source line 2137
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2142,r13		! source line 2142
	mov	"\0\0AS",r10
	mov	2142,r13		! source line 2142
	mov	"\0\0SE",r10
!   _temp_784 = &stringStorage
	add	r14,-56,r1
	store	r1,[r14+-32]
!   _temp_785 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_787 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_786 = *_temp_787  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_786) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_788 = _temp_786 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_784  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_785  sizeInBytes=4
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
	mov	2145,r13		! source line 2145
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_790		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_790
!	jmp	_Label_789
_Label_789:
! THEN...
	mov	2146,r13		! source line 2146
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_791 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2146,r13		! source line 2146
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_790:
! RETURN STATEMENT...
	mov	2153,r13		! source line 2153
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
	.word	_Label_792
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_793
	.word	8
	.word	4
	.word	_Label_794
	.word	-12
	.word	4
	.word	_Label_795
	.word	-16
	.word	4
	.word	_Label_796
	.word	-20
	.word	4
	.word	_Label_797
	.word	-24
	.word	4
	.word	_Label_798
	.word	-28
	.word	4
	.word	_Label_799
	.word	-32
	.word	4
	.word	_Label_800
	.word	-56
	.word	24
	.word	_Label_801
	.word	-60
	.word	4
	.word	0
_Label_792:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_793:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_800:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_801:
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
	mov	18,r1
_Label_3320:
	push	r0
	sub	r1,1,r1
	bne	_Label_3320
	mov	2156,r13		! source line 2156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2161,r13		! source line 2161
	mov	"\0\0AS",r10
	mov	2161,r13		! source line 2161
	mov	"\0\0SE",r10
!   _temp_802 = &stringStorage
	add	r14,-60,r1
	store	r1,[r14+-36]
!   _temp_803 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_805 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_804 = *_temp_805  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_804) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_806 = _temp_804 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_802  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_803  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	2164,r13		! source line 2164
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_808		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_808
!	jmp	_Label_807
_Label_807:
! THEN...
	mov	2165,r13		! source line 2165
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_809 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_809  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2165,r13		! source line 2165
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_808:
! CALL STATEMENT...
!   _temp_810 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_810  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_811
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_812
	.word	8
	.word	4
	.word	_Label_813
	.word	-12
	.word	4
	.word	_Label_814
	.word	-16
	.word	4
	.word	_Label_815
	.word	-20
	.word	4
	.word	_Label_816
	.word	-24
	.word	4
	.word	_Label_817
	.word	-28
	.word	4
	.word	_Label_818
	.word	-32
	.word	4
	.word	_Label_819
	.word	-36
	.word	4
	.word	_Label_820
	.word	-60
	.word	24
	.word	_Label_821
	.word	-64
	.word	4
	.word	0
_Label_811:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_812:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_809\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_820:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_821:
	.byte	'I'
	.ascii	"numOfBytes\0"
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
	mov	2176,r13		! source line 2176
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2186,r13		! source line 2186
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
	.word	_Label_822
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_823
	.word	8
	.word	4
	.word	_Label_824
	.word	12
	.word	4
	.word	_Label_825
	.word	16
	.word	4
	.word	0
_Label_822:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_823:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_824:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_825:
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
	mov	2189,r13		! source line 2189
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2199,r13		! source line 2199
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
	.word	_Label_826
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_827
	.word	8
	.word	4
	.word	_Label_828
	.word	12
	.word	4
	.word	_Label_829
	.word	16
	.word	4
	.word	0
_Label_826:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_827:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_828:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_829:
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
	mov	2202,r13		! source line 2202
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2210,r13		! source line 2210
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
	.word	_Label_830
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_831
	.word	8
	.word	4
	.word	_Label_832
	.word	12
	.word	4
	.word	0
_Label_830:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_831:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_832:
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
	mov	2213,r13		! source line 2213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2213,r13		! source line 2213
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
	.word	_Label_833
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_834
	.word	8
	.word	4
	.word	0
_Label_833:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_834:
	.byte	'I'
	.ascii	"fileDesc\0"
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
_Label_3321:
	push	r0
	sub	r1,1,r1
	bne	_Label_3321
	mov	2221,r13		! source line 2221
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2223,r13		! source line 2223
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2223,r13		! source line 2223
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
	.word	_Label_835
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_836
	.word	8
	.word	4
	.word	0
_Label_835:
	.ascii	"printString\0"
	.align
_Label_836:
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
_Label_3322:
	push	r0
	sub	r1,1,r1
	bne	_Label_3322
	mov	2227,r13		! source line 2227
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2239,r13		! source line 2239
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_838 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_837 = *_temp_838  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_837) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_839 = _temp_837 + 32
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
!   _temp_841 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_841 [0 ] into _temp_842
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
!   _temp_840 = _temp_842		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_840  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2244,r13		! source line 2244
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_843 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_843 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_844 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_844 [999 ] into _temp_845
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
!   initSystemStackTop = _temp_845		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_846 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_846 [14 ] into _temp_847
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
!   Data Move: initUserStackTop = *_temp_847  (sizeInBytes=4)
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
	mov	2253,r13		! source line 2253
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2253,r13		! source line 2253
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
	.word	_Label_848
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_849
	.word	8
	.word	4
	.word	_Label_850
	.word	-12
	.word	4
	.word	_Label_851
	.word	-16
	.word	4
	.word	_Label_852
	.word	-20
	.word	4
	.word	_Label_853
	.word	-24
	.word	4
	.word	_Label_854
	.word	-28
	.word	4
	.word	_Label_855
	.word	-32
	.word	4
	.word	_Label_856
	.word	-36
	.word	4
	.word	_Label_857
	.word	-40
	.word	4
	.word	_Label_858
	.word	-44
	.word	4
	.word	_Label_859
	.word	-48
	.word	4
	.word	_Label_860
	.word	-52
	.word	4
	.word	_Label_861
	.word	-56
	.word	4
	.word	_Label_862
	.word	-60
	.word	4
	.word	_Label_863
	.word	-64
	.word	4
	.word	0
_Label_848:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_849:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_846\0"
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
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_861:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_862:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_863:
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
_Label_3323:
	push	r0
	sub	r1,1,r1
	bne	_Label_3323
	mov	2844,r13		! source line 2844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2846,r13		! source line 2846
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_864 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_864  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
!   _temp_865 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_865) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_867 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_867) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_866 = *_temp_867  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_865 = _temp_866  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0AS",r10
!   _temp_868 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_868) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_870 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_870) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_869 = *_temp_870  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_868 = _temp_869  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0AS",r10
!   _temp_871 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_871) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_873 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_873) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_872 = *_temp_873  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_871 = _temp_872  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2851,r13		! source line 2851
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
	.word	_Label_874
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_875
	.word	8
	.word	4
	.word	_Label_876
	.word	12
	.word	4
	.word	_Label_877
	.word	-16
	.word	4
	.word	_Label_878
	.word	-9
	.word	1
	.word	_Label_879
	.word	-20
	.word	4
	.word	_Label_880
	.word	-24
	.word	4
	.word	_Label_881
	.word	-10
	.word	1
	.word	_Label_882
	.word	-28
	.word	4
	.word	_Label_883
	.word	-32
	.word	4
	.word	_Label_884
	.word	-11
	.word	1
	.word	_Label_885
	.word	-36
	.word	4
	.word	_Label_886
	.word	-12
	.word	1
	.word	_Label_887
	.word	-40
	.word	4
	.word	_Label_888
	.word	-44
	.word	4
	.word	0
_Label_874:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_875:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_876:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_878:
	.byte	'C'
	.ascii	"_temp_872\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_881:
	.byte	'C'
	.ascii	"_temp_869\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_884:
	.byte	'C'
	.ascii	"_temp_866\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_886:
	.byte	'C'
	.ascii	"_temp_864\0"
	.align
_Label_887:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_888:
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
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
	mov	2854,r13		! source line 2854
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_890 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_889 = *_temp_890  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_889  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2855,r13		! source line 2855
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2856,r13		! source line 2856
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2856,r13		! source line 2856
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
	.word	_Label_891
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_892
	.word	8
	.word	4
	.word	_Label_893
	.word	-12
	.word	4
	.word	_Label_894
	.word	-16
	.word	4
	.word	0
_Label_891:
	.ascii	"printFCB\0"
	.align
_Label_892:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_889\0"
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
_Label_3325:
	push	r0
	sub	r1,1,r1
	bne	_Label_3325
	mov	2859,r13		! source line 2859
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_895 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_895  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2860,r13		! source line 2860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_896 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_896  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2861,r13		! source line 2861
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_897 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_897  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2862,r13		! source line 2862
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2863,r13		! source line 2863
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
	mov	2863,r13		! source line 2863
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
	.word	_Label_898
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_899
	.word	8
	.word	4
	.word	_Label_900
	.word	-12
	.word	4
	.word	_Label_901
	.word	-16
	.word	4
	.word	_Label_902
	.word	-20
	.word	4
	.word	0
_Label_898:
	.ascii	"printOpen\0"
	.align
_Label_899:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_897\0"
	.align
_Label_901:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_902:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_903
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_903:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_904
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_904:
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
_Label_3326:
	push	r0
	sub	r1,1,r1
	bne	_Label_3326
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_906		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_906
!	jmp	_Label_905
_Label_905:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_907 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
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
_Label_906:
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
	.word	_Label_909
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_911
	.word	12
	.word	4
	.word	_Label_912
	.word	-12
	.word	4
	.word	_Label_913
	.word	-16
	.word	4
	.word	0
_Label_909:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_910:
	.ascii	"Pself\0"
	.align
_Label_911:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_907\0"
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
_Label_3327:
	push	r0
	sub	r1,1,r1
	bne	_Label_3327
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
!   if count != 2147483647 then goto _Label_915		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_915
!	jmp	_Label_914
_Label_914:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_916 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_916  sizeInBytes=4
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
_Label_915:
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
!   if count > 0 then goto _Label_918		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_918
!	jmp	_Label_917
_Label_917:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_919 = &waitingThreads
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
!   _temp_920 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_920 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_921 = &_P_Kernel_readyList
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
_Label_918:
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
	.word	_Label_922
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_923
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_924
	.word	-12
	.word	4
	.word	_Label_925
	.word	-16
	.word	4
	.word	_Label_926
	.word	-20
	.word	4
	.word	_Label_927
	.word	-24
	.word	4
	.word	_Label_928
	.word	-28
	.word	4
	.word	_Label_929
	.word	-32
	.word	4
	.word	0
_Label_922:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_923:
	.ascii	"Pself\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_928:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_929:
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
_Label_3328:
	push	r0
	sub	r1,1,r1
	bne	_Label_3328
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
!   if count != -2147483648 then goto _Label_931		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_931
!	jmp	_Label_930
_Label_930:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_932 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_932  sizeInBytes=4
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
_Label_931:
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
!   if count >= 0 then goto _Label_934		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_934
!	jmp	_Label_933
_Label_933:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_935 = &waitingThreads
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
_Label_934:
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
	.word	_Label_936
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_938
	.word	-12
	.word	4
	.word	_Label_939
	.word	-16
	.word	4
	.word	_Label_940
	.word	-20
	.word	4
	.word	0
_Label_936:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_937:
	.ascii	"Pself\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_940:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_941
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_941:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_942
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_942:
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
_Label_3329:
	push	r0
	sub	r1,1,r1
	bne	_Label_3329
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
	.word	_Label_944
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_945
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_946
	.word	-12
	.word	4
	.word	0
_Label_944:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_945:
	.ascii	"Pself\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_943\0"
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
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_948		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_948
!	jmp	_Label_947
_Label_947:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_949 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_949  sizeInBytes=4
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
_Label_948:
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
!   if heldBy == 0 then goto _Label_953		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_953
!   _temp_952 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_954
_Label_953:
!   _temp_952 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_954:
!   if _temp_952 then goto _Label_951 else goto _Label_950
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_950
	jmp	_Label_951
_Label_950:
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
	jmp	_Label_955
_Label_951:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_956 = &waitingThreads
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
_Label_955:
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
	.word	_Label_957
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_959
	.word	-16
	.word	4
	.word	_Label_960
	.word	-9
	.word	1
	.word	_Label_961
	.word	-20
	.word	4
	.word	_Label_962
	.word	-24
	.word	4
	.word	0
_Label_957:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_958:
	.ascii	"Pself\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_960:
	.byte	'C'
	.ascii	"_temp_952\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_962:
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
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_964		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_964
!	jmp	_Label_963
_Label_963:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_965 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_965  sizeInBytes=4
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
_Label_964:
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
!   _temp_966 = &waitingThreads
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
!   if t == 0 then goto _Label_968		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_968
!	jmp	_Label_967
_Label_967:
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
!   _temp_969 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_969 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_970 = &_P_Kernel_readyList
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
	jmp	_Label_971
_Label_968:
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
_Label_971:
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
	.word	_Label_972
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_973
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_974
	.word	-12
	.word	4
	.word	_Label_975
	.word	-16
	.word	4
	.word	_Label_976
	.word	-20
	.word	4
	.word	_Label_977
	.word	-24
	.word	4
	.word	_Label_978
	.word	-28
	.word	4
	.word	_Label_979
	.word	-32
	.word	4
	.word	0
_Label_972:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_973:
	.ascii	"Pself\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_978:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_979:
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
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_982		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_982
!	jmp	_Label_981
_Label_981:
!   _temp_980 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_983
_Label_982:
!   _temp_980 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_983:
!   ReturnResult: _temp_980  (sizeInBytes=1)
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
	.word	_Label_984
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_986
	.word	-9
	.word	1
	.word	0
_Label_984:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_985:
	.ascii	"Pself\0"
	.align
_Label_986:
	.byte	'C'
	.ascii	"_temp_980\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_987
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_987:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_988
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_988:
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
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
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
	.word	_Label_990
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_991
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_992
	.word	-12
	.word	4
	.word	0
_Label_990:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_991:
	.ascii	"Pself\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_989\0"
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
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
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
!   Retrieve Result: targetName=_temp_995  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_995 then goto _Label_994 else goto _Label_993
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_993
	jmp	_Label_994
_Label_993:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_996 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_996  sizeInBytes=4
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
_Label_994:
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
!   _temp_997 = &waitingThreads
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
	.word	_Label_998
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1000
	.word	12
	.word	4
	.word	_Label_1001
	.word	-16
	.word	4
	.word	_Label_1002
	.word	-20
	.word	4
	.word	_Label_1003
	.word	-9
	.word	1
	.word	_Label_1004
	.word	-24
	.word	4
	.word	0
_Label_998:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_999:
	.ascii	"Pself\0"
	.align
_Label_1000:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1003:
	.byte	'C'
	.ascii	"_temp_995\0"
	.align
_Label_1004:
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
_Label_3335:
	push	r0
	sub	r1,1,r1
	bne	_Label_3335
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
!   Retrieve Result: targetName=_temp_1007  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1007 then goto _Label_1006 else goto _Label_1005
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1005
	jmp	_Label_1006
_Label_1005:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1008 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1008  sizeInBytes=4
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
_Label_1006:
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
!   _temp_1009 = &waitingThreads
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
!   if t == 0 then goto _Label_1011		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1011
!	jmp	_Label_1010
_Label_1010:
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
!   _temp_1012 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1012 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_1013 = &_P_Kernel_readyList
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
_Label_1011:
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
	.word	_Label_1014
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1015
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1016
	.word	12
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
	.word	-9
	.word	1
	.word	_Label_1022
	.word	-32
	.word	4
	.word	_Label_1023
	.word	-36
	.word	4
	.word	0
_Label_1014:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1015:
	.ascii	"Pself\0"
	.align
_Label_1016:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1018:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1019:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1021:
	.byte	'C'
	.ascii	"_temp_1007\0"
	.align
_Label_1022:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1023:
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
_Label_3336:
	push	r0
	sub	r1,1,r1
	bne	_Label_3336
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
!   Retrieve Result: targetName=_temp_1026  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1026 then goto _Label_1025 else goto _Label_1024
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1024
	jmp	_Label_1025
_Label_1024:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1027 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
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
_Label_1025:
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
_Label_1028:
!	jmp	_Label_1029
_Label_1029:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_1031 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1032
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1032
	jmp	_Label_1033
_Label_1032:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_1030
! END IF...
_Label_1033:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1034 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1034 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_1035 = &_P_Kernel_readyList
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
	jmp	_Label_1028
_Label_1030:
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
	.word	_Label_1036
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1037
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1038
	.word	12
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
	.word	-9
	.word	1
	.word	_Label_1044
	.word	-32
	.word	4
	.word	_Label_1045
	.word	-36
	.word	4
	.word	0
_Label_1036:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1037:
	.ascii	"Pself\0"
	.align
_Label_1038:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1034\0"
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
	.byte	'C'
	.ascii	"_temp_1026\0"
	.align
_Label_1044:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1045:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1046
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
_Label_1046:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1047
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1047:
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
_Label_3337:
	push	r0
	sub	r1,1,r1
	bne	_Label_3337
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
!   _temp_1048 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1048) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1048 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1049 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1049 [0 ] into _temp_1050
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
!   Data Move: *_temp_1050 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1051 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1051 [999 ] into _temp_1052
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
!   Data Move: *_temp_1052 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1053 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1053 [999 ] into _temp_1054
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
!   stackTop = _temp_1054		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1055 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1057 = &_temp_1056
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1057 = _temp_1057 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1059:
!   Data Move: *_temp_1057 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1057 = _temp_1057 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1058 = _temp_1058 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1058) then goto _Label_1059
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1059
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1060 = &_temp_1056
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3338
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3338:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1055 = *_temp_1060  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3339:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3339
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
!   _temp_1061 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1063 = &_temp_1062
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1063 = _temp_1063 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1065:
!   Data Move: *_temp_1063 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1063 = _temp_1063 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1064 = _temp_1064 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1064) then goto _Label_1065
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1065
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1066 = &_temp_1062
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3340
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3340:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1061 = *_temp_1066  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3341:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3341
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
	.word	_Label_1067
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1068
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1069
	.word	12
	.word	4
	.word	_Label_1070
	.word	-12
	.word	4
	.word	_Label_1071
	.word	-16
	.word	4
	.word	_Label_1072
	.word	-20
	.word	4
	.word	_Label_1073
	.word	-84
	.word	64
	.word	_Label_1074
	.word	-88
	.word	4
	.word	_Label_1075
	.word	-92
	.word	4
	.word	_Label_1076
	.word	-96
	.word	4
	.word	_Label_1077
	.word	-100
	.word	4
	.word	_Label_1078
	.word	-156
	.word	56
	.word	_Label_1079
	.word	-160
	.word	4
	.word	_Label_1080
	.word	-164
	.word	4
	.word	_Label_1081
	.word	-168
	.word	4
	.word	_Label_1082
	.word	-172
	.word	4
	.word	_Label_1083
	.word	-176
	.word	4
	.word	_Label_1084
	.word	-180
	.word	4
	.word	_Label_1085
	.word	-184
	.word	4
	.word	_Label_1086
	.word	-188
	.word	4
	.word	0
_Label_1067:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1068:
	.ascii	"Pself\0"
	.align
_Label_1069:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1082:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1083:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1084:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1048\0"
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
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
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
!   _temp_1087 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1087  (sizeInBytes=4)
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
!   _temp_1089 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1088  sizeInBytes=4
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
	.word	_Label_1090
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1091
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1092
	.word	12
	.word	4
	.word	_Label_1093
	.word	16
	.word	4
	.word	_Label_1094
	.word	-12
	.word	4
	.word	_Label_1095
	.word	-16
	.word	4
	.word	_Label_1096
	.word	-20
	.word	4
	.word	_Label_1097
	.word	-24
	.word	4
	.word	_Label_1098
	.word	-28
	.word	4
	.word	0
_Label_1090:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1091:
	.ascii	"Pself\0"
	.align
_Label_1092:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1093:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1097:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1098:
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
_Label_3343:
	push	r0
	sub	r1,1,r1
	bne	_Label_3343
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1101 == _P_Kernel_currentThread then goto _Label_1100		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1100
!	jmp	_Label_1099
_Label_1099:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1102 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
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
_Label_1100:
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
!   _temp_1103 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1105		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1105
!	jmp	_Label_1104
_Label_1104:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1107		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1107
!	jmp	_Label_1106
_Label_1106:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1108 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
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
_Label_1107:
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
!   _temp_1110 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1109  sizeInBytes=4
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
_Label_1105:
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
	.word	_Label_1111
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1112
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1113
	.word	-12
	.word	4
	.word	_Label_1114
	.word	-16
	.word	4
	.word	_Label_1115
	.word	-20
	.word	4
	.word	_Label_1116
	.word	-24
	.word	4
	.word	_Label_1117
	.word	-28
	.word	4
	.word	_Label_1118
	.word	-32
	.word	4
	.word	_Label_1119
	.word	-36
	.word	4
	.word	_Label_1120
	.word	-40
	.word	4
	.word	_Label_1121
	.word	-44
	.word	4
	.word	0
_Label_1111:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1112:
	.ascii	"Pself\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1119:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1120:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1121:
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
_Label_3344:
	push	r0
	sub	r1,1,r1
	bne	_Label_3344
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1123		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1123
!	jmp	_Label_1122
_Label_1122:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1124 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1124  sizeInBytes=4
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
_Label_1123:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1127 == _P_Kernel_currentThread then goto _Label_1126		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1126
!	jmp	_Label_1125
_Label_1125:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1128 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
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
_Label_1126:
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
!   _temp_1129 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1130
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1130
	jmp	_Label_1131
_Label_1130:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1132 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
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
_Label_1131:
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
	.word	_Label_1133
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1134
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1135
	.word	-12
	.word	4
	.word	_Label_1136
	.word	-16
	.word	4
	.word	_Label_1137
	.word	-20
	.word	4
	.word	_Label_1138
	.word	-24
	.word	4
	.word	_Label_1139
	.word	-28
	.word	4
	.word	_Label_1140
	.word	-32
	.word	4
	.word	0
_Label_1133:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1134:
	.ascii	"Pself\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1140:
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
_Label_3345:
	push	r0
	sub	r1,1,r1
	bne	_Label_3345
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1144 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1144 [0 ] into _temp_1145
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
!   Data Move: _temp_1143 = *_temp_1145  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1143 == 606348324 then goto _Label_1142		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1142
!	jmp	_Label_1141
_Label_1141:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1146 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1146  sizeInBytes=4
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
	jmp	_Label_1147
_Label_1142:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1151 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1151 [999 ] into _temp_1152
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
!   Data Move: _temp_1150 = *_temp_1152  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1150 == 606348324 then goto _Label_1149		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1149
!	jmp	_Label_1148
_Label_1148:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1153 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1153  sizeInBytes=4
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
_Label_1149:
! END IF...
_Label_1147:
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
	.word	_Label_1154
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1156
	.word	-12
	.word	4
	.word	_Label_1157
	.word	-16
	.word	4
	.word	_Label_1158
	.word	-20
	.word	4
	.word	_Label_1159
	.word	-24
	.word	4
	.word	_Label_1160
	.word	-28
	.word	4
	.word	_Label_1161
	.word	-32
	.word	4
	.word	_Label_1162
	.word	-36
	.word	4
	.word	_Label_1163
	.word	-40
	.word	4
	.word	0
_Label_1154:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1155:
	.ascii	"Pself\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1143\0"
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
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
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
!   _temp_1164 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1164  sizeInBytes=4
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
!   _temp_1165 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1167 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1167  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1168 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1168  sizeInBytes=4
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
!   _temp_1173 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1174 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1173  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1169:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1174 then goto _Label_1172		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1172
_Label_1170:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1175 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1175  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1176 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1177 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1179 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1179 [i ] into _temp_1180
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
!   Data Move: _temp_1178 = *_temp_1180  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1181 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1181  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1183 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1183 [i ] into _temp_1184
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
!   Data Move: _temp_1182 = *_temp_1184  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1185 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1171:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1169
! END FOR
_Label_1172:
! CALL STATEMENT...
!   _temp_1186 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_1187 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1187  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1188 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_1190 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1190 [0 ] into _temp_1191
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
!   _temp_1189 = _temp_1191		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1188  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1189  sizeInBytes=4
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
	be	_Label_1194
	cmp	r1,2
	be	_Label_1195
	cmp	r1,3
	be	_Label_1196
	cmp	r1,4
	be	_Label_1197
	cmp	r1,5
	be	_Label_1198
	jmp	_Label_1192
! CASE 1...
_Label_1194:
! CALL STATEMENT...
!   _temp_1199 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1193
! CASE 2...
_Label_1195:
! CALL STATEMENT...
!   _temp_1200 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1193
! CASE 3...
_Label_1196:
! CALL STATEMENT...
!   _temp_1201 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1201  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1193
! CASE 4...
_Label_1197:
! CALL STATEMENT...
!   _temp_1202 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1202  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1193
! CASE 5...
_Label_1198:
! CALL STATEMENT...
!   _temp_1203 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1203  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1193
! DEFAULT CASE...
_Label_1192:
! CALL STATEMENT...
!   _temp_1204 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
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
_Label_1193:
! CALL STATEMENT...
!   _temp_1205 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
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
!   _temp_1206 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
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
!   _temp_1211 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1212 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1211  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1207:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1212 then goto _Label_1210		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1210
_Label_1208:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1213 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1213  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1214 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1215 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1215  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1217 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1217 [i ] into _temp_1218
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
!   Data Move: _temp_1216 = *_temp_1218  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1216  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1219 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1219  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1221 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1221 [i ] into _temp_1222
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
!   Data Move: _temp_1220 = *_temp_1222  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1223 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1223  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1209:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1207
! END FOR
_Label_1210:
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
	.word	_Label_1224
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1225
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1226
	.word	-12
	.word	4
	.word	_Label_1227
	.word	-16
	.word	4
	.word	_Label_1228
	.word	-20
	.word	4
	.word	_Label_1229
	.word	-24
	.word	4
	.word	_Label_1230
	.word	-28
	.word	4
	.word	_Label_1231
	.word	-32
	.word	4
	.word	_Label_1232
	.word	-36
	.word	4
	.word	_Label_1233
	.word	-40
	.word	4
	.word	_Label_1234
	.word	-44
	.word	4
	.word	_Label_1235
	.word	-48
	.word	4
	.word	_Label_1236
	.word	-52
	.word	4
	.word	_Label_1237
	.word	-56
	.word	4
	.word	_Label_1238
	.word	-60
	.word	4
	.word	_Label_1239
	.word	-64
	.word	4
	.word	_Label_1240
	.word	-68
	.word	4
	.word	_Label_1241
	.word	-72
	.word	4
	.word	_Label_1242
	.word	-76
	.word	4
	.word	_Label_1243
	.word	-80
	.word	4
	.word	_Label_1244
	.word	-84
	.word	4
	.word	_Label_1245
	.word	-88
	.word	4
	.word	_Label_1246
	.word	-92
	.word	4
	.word	_Label_1247
	.word	-96
	.word	4
	.word	_Label_1248
	.word	-100
	.word	4
	.word	_Label_1249
	.word	-104
	.word	4
	.word	_Label_1250
	.word	-108
	.word	4
	.word	_Label_1251
	.word	-112
	.word	4
	.word	_Label_1252
	.word	-116
	.word	4
	.word	_Label_1253
	.word	-120
	.word	4
	.word	_Label_1254
	.word	-124
	.word	4
	.word	_Label_1255
	.word	-128
	.word	4
	.word	_Label_1256
	.word	-132
	.word	4
	.word	_Label_1257
	.word	-136
	.word	4
	.word	_Label_1258
	.word	-140
	.word	4
	.word	_Label_1259
	.word	-144
	.word	4
	.word	_Label_1260
	.word	-148
	.word	4
	.word	_Label_1261
	.word	-152
	.word	4
	.word	_Label_1262
	.word	-156
	.word	4
	.word	_Label_1263
	.word	-160
	.word	4
	.word	_Label_1264
	.word	-164
	.word	4
	.word	_Label_1265
	.word	-168
	.word	4
	.word	_Label_1266
	.word	-172
	.word	4
	.word	_Label_1267
	.word	-176
	.word	4
	.word	_Label_1268
	.word	-180
	.word	4
	.word	_Label_1269
	.word	-184
	.word	4
	.word	_Label_1270
	.word	-188
	.word	4
	.word	_Label_1271
	.word	-192
	.word	4
	.word	_Label_1272
	.word	-196
	.word	4
	.word	0
_Label_1224:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1225:
	.ascii	"Pself\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1222\0"
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
	.ascii	"_temp_1218\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1271:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1272:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1273
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1273:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1274
	.word	_sourceFileName
	.word	193		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1274:
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
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1275 = _StringConst_82
	set	_StringConst_82,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
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
!   _temp_1277 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1279 = &_temp_1278
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1279 = _temp_1279 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1281 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_3348:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3348
!   _temp_1281 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1283:
!   Data Move: *_temp_1279 = _temp_1281  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_3349:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3349
!   _temp_1279 = _temp_1279 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1280 = _temp_1280 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1280) then goto _Label_1283
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1283
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1284 = &_temp_1278
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3350
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3350:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1277 = *_temp_1284  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3351:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3351
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1285 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-188]
!   _temp_1286 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1286 [0 ] into _temp_1287
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
!   Prepare Argument: offset=12  value=_temp_1285  sizeInBytes=4
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
!   _temp_1288 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-176]
!   _temp_1289 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1289 [1 ] into _temp_1290
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
!   Prepare Argument: offset=12  value=_temp_1288  sizeInBytes=4
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
!   _temp_1291 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-164]
!   _temp_1292 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1292 [2 ] into _temp_1293
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
!   Prepare Argument: offset=12  value=_temp_1291  sizeInBytes=4
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
!   _temp_1294 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-152]
!   _temp_1295 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1295 [3 ] into _temp_1296
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
!   Prepare Argument: offset=12  value=_temp_1294  sizeInBytes=4
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
!   _temp_1297 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-140]
!   _temp_1298 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1298 [4 ] into _temp_1299
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
!   Prepare Argument: offset=12  value=_temp_1297  sizeInBytes=4
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
!   _temp_1300 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-128]
!   _temp_1301 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1301 [5 ] into _temp_1302
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
!   Prepare Argument: offset=12  value=_temp_1300  sizeInBytes=4
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
!   _temp_1303 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-116]
!   _temp_1304 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1304 [6 ] into _temp_1305
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
!   Prepare Argument: offset=12  value=_temp_1303  sizeInBytes=4
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
!   _temp_1306 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-104]
!   _temp_1307 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1307 [7 ] into _temp_1308
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
!   Prepare Argument: offset=12  value=_temp_1306  sizeInBytes=4
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
!   _temp_1309 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-92]
!   _temp_1310 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1310 [8 ] into _temp_1311
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
!   Prepare Argument: offset=12  value=_temp_1309  sizeInBytes=4
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
!   _temp_1312 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-80]
!   _temp_1313 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1313 [9 ] into _temp_1314
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
!   Prepare Argument: offset=12  value=_temp_1312  sizeInBytes=4
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
!   _temp_1319 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1320 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1319  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1315:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1320 then goto _Label_1318		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1318
_Label_1316:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1321 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1321 [index ] into _temp_1322
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
!   _temp_1323 = _temp_1322 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1323 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1325 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1325 [index ] into _temp_1326
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
!   _temp_1324 = _temp_1326		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1327 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1324  sizeInBytes=4
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
_Label_1317:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1315
! END FOR
_Label_1318:
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
!   _temp_1329 = &threadManagerLock
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
!   _temp_1331 = &aThreadBecameFree
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
!   _temp_1333 = &leadThread
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
	.word	_Label_1334
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1335
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1336
	.word	-12
	.word	4
	.word	_Label_1337
	.word	-16
	.word	4
	.word	_Label_1338
	.word	-20
	.word	4
	.word	_Label_1339
	.word	-24
	.word	4
	.word	_Label_1340
	.word	-28
	.word	4
	.word	_Label_1341
	.word	-32
	.word	4
	.word	_Label_1342
	.word	-36
	.word	4
	.word	_Label_1343
	.word	-40
	.word	4
	.word	_Label_1344
	.word	-44
	.word	4
	.word	_Label_1345
	.word	-48
	.word	4
	.word	_Label_1346
	.word	-52
	.word	4
	.word	_Label_1347
	.word	-56
	.word	4
	.word	_Label_1348
	.word	-60
	.word	4
	.word	_Label_1349
	.word	-64
	.word	4
	.word	_Label_1350
	.word	-68
	.word	4
	.word	_Label_1351
	.word	-72
	.word	4
	.word	_Label_1352
	.word	-76
	.word	4
	.word	_Label_1353
	.word	-80
	.word	4
	.word	_Label_1354
	.word	-84
	.word	4
	.word	_Label_1355
	.word	-88
	.word	4
	.word	_Label_1356
	.word	-92
	.word	4
	.word	_Label_1357
	.word	-96
	.word	4
	.word	_Label_1358
	.word	-100
	.word	4
	.word	_Label_1359
	.word	-104
	.word	4
	.word	_Label_1360
	.word	-108
	.word	4
	.word	_Label_1361
	.word	-112
	.word	4
	.word	_Label_1362
	.word	-116
	.word	4
	.word	_Label_1363
	.word	-120
	.word	4
	.word	_Label_1364
	.word	-124
	.word	4
	.word	_Label_1365
	.word	-128
	.word	4
	.word	_Label_1366
	.word	-132
	.word	4
	.word	_Label_1367
	.word	-136
	.word	4
	.word	_Label_1368
	.word	-140
	.word	4
	.word	_Label_1369
	.word	-144
	.word	4
	.word	_Label_1370
	.word	-148
	.word	4
	.word	_Label_1371
	.word	-152
	.word	4
	.word	_Label_1372
	.word	-156
	.word	4
	.word	_Label_1373
	.word	-160
	.word	4
	.word	_Label_1374
	.word	-164
	.word	4
	.word	_Label_1375
	.word	-168
	.word	4
	.word	_Label_1376
	.word	-172
	.word	4
	.word	_Label_1377
	.word	-176
	.word	4
	.word	_Label_1378
	.word	-180
	.word	4
	.word	_Label_1379
	.word	-184
	.word	4
	.word	_Label_1380
	.word	-188
	.word	4
	.word	_Label_1381
	.word	-192
	.word	4
	.word	_Label_1382
	.word	-196
	.word	4
	.word	_Label_1383
	.word	-4360
	.word	4164
	.word	_Label_1384
	.word	-4364
	.word	4
	.word	_Label_1385
	.word	-4368
	.word	4
	.word	_Label_1386
	.word	-46012
	.word	41644
	.word	_Label_1387
	.word	-46016
	.word	4
	.word	_Label_1388
	.word	-46020
	.word	4
	.word	_Label_1389
	.word	-46024
	.word	4
	.word	_Label_1390
	.word	-46028
	.word	4
	.word	0
_Label_1334:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1335:
	.ascii	"Pself\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1390:
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
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
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
!   _temp_1391 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
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
!   _temp_1396 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1397 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1396  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1392:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1397 then goto _Label_1395		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1395
_Label_1393:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1398 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1398  sizeInBytes=4
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
!   _temp_1399 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1399  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1401 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1401 [i ] into _temp_1402
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
!   _temp_1400 = _temp_1402		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1400  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1394:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1392
! END FOR
_Label_1395:
! CALL STATEMENT...
!   _temp_1403 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1403  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1404 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1405 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1404  sizeInBytes=4
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
	.word	_Label_1406
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1407
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1408
	.word	-12
	.word	4
	.word	_Label_1409
	.word	-16
	.word	4
	.word	_Label_1410
	.word	-20
	.word	4
	.word	_Label_1411
	.word	-24
	.word	4
	.word	_Label_1412
	.word	-28
	.word	4
	.word	_Label_1413
	.word	-32
	.word	4
	.word	_Label_1414
	.word	-36
	.word	4
	.word	_Label_1415
	.word	-40
	.word	4
	.word	_Label_1416
	.word	-44
	.word	4
	.word	_Label_1417
	.word	-48
	.word	4
	.word	_Label_1418
	.word	-52
	.word	4
	.word	_Label_1419
	.word	-56
	.word	4
	.word	_Label_1420
	.word	-60
	.word	4
	.word	0
_Label_1406:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1407:
	.ascii	"Pself\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1419:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1420:
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
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1421 = &threadManagerLock
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
	mov	768,r13		! source line 768
	mov	"\0\0WH",r10
_Label_1422:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1425 = &freeList
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
!   if result==true then goto _Label_1423 else goto _Label_1424
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1424
	jmp	_Label_1423
_Label_1423:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1426 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_1427 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1426  sizeInBytes=4
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
	jmp	_Label_1422
_Label_1424:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1428 = &freeList
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
	mov	773,r13		! source line 773
	mov	"\0\0AS",r10
!   if intIsZero (threadToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1429 = threadToReturn + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1429 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1430 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1431 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1430  sizeInBytes=4
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
	mov	775,r13		! source line 775
	mov	"\0\0SE",r10
!   _temp_1432 = &threadManagerLock
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
	mov	776,r13		! source line 776
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
	.word	_Label_1433
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1435
	.word	-12
	.word	4
	.word	_Label_1436
	.word	-16
	.word	4
	.word	_Label_1437
	.word	-20
	.word	4
	.word	_Label_1438
	.word	-24
	.word	4
	.word	_Label_1439
	.word	-28
	.word	4
	.word	_Label_1440
	.word	-32
	.word	4
	.word	_Label_1441
	.word	-36
	.word	4
	.word	_Label_1442
	.word	-40
	.word	4
	.word	_Label_1443
	.word	-44
	.word	4
	.word	_Label_1444
	.word	-48
	.word	4
	.word	0
_Label_1433:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1434:
	.ascii	"Pself\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1444:
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
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
	mov	782,r13		! source line 782
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1445 = &threadManagerLock
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
	mov	790,r13		! source line 790
	mov	"\0\0IF",r10
!   if th == 0 then goto _Label_1447		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1447
!	jmp	_Label_1446
_Label_1446:
! THEN...
	mov	791,r13		! source line 791
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1448 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1448 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
!   _temp_1449 = &freeList
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
	mov	793,r13		! source line 793
	mov	"\0\0SE",r10
!   _temp_1450 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1451 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1450  sizeInBytes=4
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
	jmp	_Label_1452
_Label_1447:
! ELSE...
	mov	795,r13		! source line 795
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1453 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1453  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	795,r13		! source line 795
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1452:
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1454 = &threadManagerLock
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
	mov	797,r13		! source line 797
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
	.word	_Label_1455
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1456
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1457
	.word	12
	.word	4
	.word	_Label_1458
	.word	-12
	.word	4
	.word	_Label_1459
	.word	-16
	.word	4
	.word	_Label_1460
	.word	-20
	.word	4
	.word	_Label_1461
	.word	-24
	.word	4
	.word	_Label_1462
	.word	-28
	.word	4
	.word	_Label_1463
	.word	-32
	.word	4
	.word	_Label_1464
	.word	-36
	.word	4
	.word	0
_Label_1455:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1456:
	.ascii	"Pself\0"
	.align
_Label_1457:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1445\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1465
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1465:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1466
	.word	_sourceFileName
	.word	215		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1466:
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	810,r13		! source line 810
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3356:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3356
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1468 = &addrSpace
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
	mov	817,r13		! source line 817
	mov	"\0\0AS",r10
!   _temp_1469 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1471 = &_temp_1470
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1471 = _temp_1471 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1473:
!   Data Move: *_temp_1471 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1471 = _temp_1471 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1472 = _temp_1472 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1472) then goto _Label_1473
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1473
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1474 = &_temp_1470
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3357
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3357:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1469 = *_temp_1474  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3358:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3358
! RETURN STATEMENT...
	mov	817,r13		! source line 817
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
	.word	_Label_1475
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1476
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1477
	.word	-12
	.word	4
	.word	_Label_1478
	.word	-16
	.word	4
	.word	_Label_1479
	.word	-20
	.word	4
	.word	_Label_1480
	.word	-64
	.word	44
	.word	_Label_1481
	.word	-68
	.word	4
	.word	_Label_1482
	.word	-72
	.word	4
	.word	_Label_1483
	.word	-76
	.word	4
	.word	0
_Label_1475:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1476:
	.ascii	"Pself\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1467\0"
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	824,r13		! source line 824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1484) then goto _runtimeErrorNullPointer
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
	mov	830,r13		! source line 830
	mov	"\0\0SE",r10
!   _temp_1485 = &addrSpace
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
!   _temp_1486 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1486  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	832,r13		! source line 832
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	842,r13		! source line 842
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
	.word	_Label_1487
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1488
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1489
	.word	-12
	.word	4
	.word	_Label_1490
	.word	-16
	.word	4
	.word	_Label_1491
	.word	-20
	.word	4
	.word	0
_Label_1487:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1488:
	.ascii	"Pself\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1484\0"
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
	mov	847,r13		! source line 847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1492 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1494 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1494  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	853,r13		! source line 853
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1495 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1497		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1497
!	jmp	_Label_1496
_Label_1496:
! THEN...
	mov	857,r13		! source line 857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1498 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1498  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1499
_Label_1497:
! ELSE...
	mov	858,r13		! source line 858
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1501		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1501
!	jmp	_Label_1500
_Label_1500:
! THEN...
	mov	859,r13		! source line 859
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1502 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1503
_Label_1501:
! ELSE...
	mov	860,r13		! source line 860
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1505		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1505
!	jmp	_Label_1504
_Label_1504:
! THEN...
	mov	861,r13		! source line 861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1506 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1507
_Label_1505:
! ELSE...
	mov	863,r13		! source line 863
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1508 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	863,r13		! source line 863
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1507:
! END IF...
_Label_1503:
! END IF...
_Label_1499:
! CALL STATEMENT...
!   _temp_1509 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	865,r13		! source line 865
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1510 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	869,r13		! source line 869
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
	.word	_Label_1511
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	_Label_1519
	.word	-36
	.word	4
	.word	_Label_1520
	.word	-40
	.word	4
	.word	_Label_1521
	.word	-44
	.word	4
	.word	_Label_1522
	.word	-48
	.word	4
	.word	0
_Label_1511:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
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
	.ascii	"_temp_1509\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1523
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
_Label_1523:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1524
	.word	_sourceFileName
	.word	235		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1524:
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
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	880,r13		! source line 880
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
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
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1526 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1936]
!   NEW ARRAY Constructor...
!   _temp_1528 = &_temp_1527
	add	r14,-1932,r1
	store	r1,[r14+-248]
!   _temp_1528 = _temp_1528 + 4
	load	[r14+-248],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1530 = zeros  (sizeInBytes=168)
	add	r14,-240,r4
	mov	42,r3
_Label_3362:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3362
!   _temp_1530 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-240]
	mov	10,r1
	store	r1,[r14+-244]
_Label_1532:
!   Data Move: *_temp_1528 = _temp_1530  (sizeInBytes=168)
	add	r14,-240,r5
	load	[r14+-248],r4
	mov	42,r3
_Label_3363:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3363
!   _temp_1528 = _temp_1528 + 168
	load	[r14+-248],r1
	add	r1,168,r1
	store	r1,[r14+-248]
!   _temp_1529 = _temp_1529 + -1
	load	[r14+-244],r1
	add	r1,-1,r1
	store	r1,[r14+-244]
!   if intNotZero (_temp_1529) then goto _Label_1532
	load	[r14+-244],r1
	cmp	r1,r0
	bne	_Label_1532
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1932]
!   _temp_1533 = &_temp_1527
	add	r14,-1932,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1936],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3364
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3364:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1526 = *_temp_1533  (sizeInBytes=1684)
	load	[r14+-68],r5
	load	[r14+-1936],r4
	mov	421,r3
_Label_3365:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3365
! FOR STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1538 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1539 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1538  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1944]
_Label_1534:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1539 then goto _Label_1537		
	load	[r14+-1944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1537
_Label_1535:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1540 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1540 [index ] into _temp_1541
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
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1543 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1543 [index ] into _temp_1544
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
!   _temp_1542 = _temp_1544		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1545 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1542  sizeInBytes=4
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
_Label_1536:
!   index = index + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_1534
! END FOR
_Label_1537:
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
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
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1547 = &processManagerLock
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
	mov	907,r13		! source line 907
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
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1549 = &aProcessBecameFree
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
	mov	909,r13		! source line 909
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
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_1551 = &aProcessDied
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
	.word	_Label_1552
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_1553
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1554
	.word	-12
	.word	4
	.word	_Label_1555
	.word	-16
	.word	4
	.word	_Label_1556
	.word	-20
	.word	4
	.word	_Label_1557
	.word	-24
	.word	4
	.word	_Label_1558
	.word	-28
	.word	4
	.word	_Label_1559
	.word	-32
	.word	4
	.word	_Label_1560
	.word	-36
	.word	4
	.word	_Label_1561
	.word	-40
	.word	4
	.word	_Label_1562
	.word	-44
	.word	4
	.word	_Label_1563
	.word	-48
	.word	4
	.word	_Label_1564
	.word	-52
	.word	4
	.word	_Label_1565
	.word	-56
	.word	4
	.word	_Label_1566
	.word	-60
	.word	4
	.word	_Label_1567
	.word	-64
	.word	4
	.word	_Label_1568
	.word	-68
	.word	4
	.word	_Label_1569
	.word	-72
	.word	4
	.word	_Label_1570
	.word	-240
	.word	168
	.word	_Label_1571
	.word	-244
	.word	4
	.word	_Label_1572
	.word	-248
	.word	4
	.word	_Label_1573
	.word	-1932
	.word	1684
	.word	_Label_1574
	.word	-1936
	.word	4
	.word	_Label_1575
	.word	-1940
	.word	4
	.word	_Label_1576
	.word	-1944
	.word	4
	.word	0
_Label_1552:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1553:
	.ascii	"Pself\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1576:
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
	mov	916,r13		! source line 916
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1577 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1577  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	924,r13		! source line 924
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1582 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1583 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1582  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1578:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1583 then goto _Label_1581		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1581
_Label_1579:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1584 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	926,r13		! source line 926
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1585 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1586 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1586 [i ] into _temp_1587
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
_Label_1580:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1578
! END FOR
_Label_1581:
! CALL STATEMENT...
!   _temp_1588 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1588  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1589 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1590 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1589  sizeInBytes=4
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
	mov	933,r13		! source line 933
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	934,r13		! source line 934
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	934,r13		! source line 934
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
	.word	_Label_1591
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1593
	.word	-12
	.word	4
	.word	_Label_1594
	.word	-16
	.word	4
	.word	_Label_1595
	.word	-20
	.word	4
	.word	_Label_1596
	.word	-24
	.word	4
	.word	_Label_1597
	.word	-28
	.word	4
	.word	_Label_1598
	.word	-32
	.word	4
	.word	_Label_1599
	.word	-36
	.word	4
	.word	_Label_1600
	.word	-40
	.word	4
	.word	_Label_1601
	.word	-44
	.word	4
	.word	_Label_1602
	.word	-48
	.word	4
	.word	_Label_1603
	.word	-52
	.word	4
	.word	_Label_1604
	.word	-56
	.word	4
	.word	0
_Label_1591:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1592:
	.ascii	"Pself\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1604:
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
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
	mov	939,r13		! source line 939
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1605 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1605  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	949,r13		! source line 949
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1611 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1610  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1611 then goto _Label_1609		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1609
_Label_1607:
	mov	949,r13		! source line 949
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1612 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1612  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0SE",r10
!   _temp_1613 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1613 [i ] into _temp_1614
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
_Label_1608:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1606
! END FOR
_Label_1609:
! CALL STATEMENT...
!   _temp_1615 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1615  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	954,r13		! source line 954
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0SE",r10
!   _temp_1616 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1617 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1616  sizeInBytes=4
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
	mov	956,r13		! source line 956
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	957,r13		! source line 957
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	957,r13		! source line 957
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	957,r13		! source line 957
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
	.word	_Label_1618
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1620
	.word	-12
	.word	4
	.word	_Label_1621
	.word	-16
	.word	4
	.word	_Label_1622
	.word	-20
	.word	4
	.word	_Label_1623
	.word	-24
	.word	4
	.word	_Label_1624
	.word	-28
	.word	4
	.word	_Label_1625
	.word	-32
	.word	4
	.word	_Label_1626
	.word	-36
	.word	4
	.word	_Label_1627
	.word	-40
	.word	4
	.word	_Label_1628
	.word	-44
	.word	4
	.word	_Label_1629
	.word	-48
	.word	4
	.word	_Label_1630
	.word	-52
	.word	4
	.word	0
_Label_1618:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1619:
	.ascii	"Pself\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1629:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1630:
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	962,r13		! source line 962
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1631 = &processManagerLock
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
	mov	973,r13		! source line 973
	mov	"\0\0WH",r10
_Label_1632:
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1635 = &freeList
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
!   if result==true then goto _Label_1633 else goto _Label_1634
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1634
	jmp	_Label_1633
_Label_1633:
	mov	973,r13		! source line 973
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0SE",r10
!   _temp_1636 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_1637 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1636  sizeInBytes=4
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
	jmp	_Label_1632
_Label_1634:
! ASSIGNMENT STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0AS",r10
	mov	977,r13		! source line 977
	mov	"\0\0SE",r10
!   _temp_1638 = &freeList
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
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   if intIsZero (processToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1639 = processToReturn + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1639 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	979,r13		! source line 979
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
	mov	980,r13		! source line 980
	mov	"\0\0AS",r10
!   if intIsZero (processToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1640 = processToReturn + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1640 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1641 = &processManagerLock
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
	mov	983,r13		! source line 983
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
	.word	_Label_1642
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1644
	.word	-12
	.word	4
	.word	_Label_1645
	.word	-16
	.word	4
	.word	_Label_1646
	.word	-20
	.word	4
	.word	_Label_1647
	.word	-24
	.word	4
	.word	_Label_1648
	.word	-28
	.word	4
	.word	_Label_1649
	.word	-32
	.word	4
	.word	_Label_1650
	.word	-36
	.word	4
	.word	_Label_1651
	.word	-40
	.word	4
	.word	_Label_1652
	.word	-44
	.word	4
	.word	0
_Label_1642:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1643:
	.ascii	"Pself\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1637\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1652:
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	990,r13		! source line 990
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1653 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1653  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	998,r13		! source line 998
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! SEND STATEMENT...
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1654 = &processManagerLock
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
	mov	1000,r13		! source line 1000
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1655 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1655 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_1656 = &freeList
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
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1657 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1658 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1657  sizeInBytes=4
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
	mov	1003,r13		! source line 1003
	mov	"\0\0SE",r10
!   _temp_1659 = &processManagerLock
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
	mov	1003,r13		! source line 1003
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
	.word	_Label_1660
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1661
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1662
	.word	12
	.word	4
	.word	_Label_1663
	.word	-12
	.word	4
	.word	_Label_1664
	.word	-16
	.word	4
	.word	_Label_1665
	.word	-20
	.word	4
	.word	_Label_1666
	.word	-24
	.word	4
	.word	_Label_1667
	.word	-28
	.word	4
	.word	_Label_1668
	.word	-32
	.word	4
	.word	_Label_1669
	.word	-36
	.word	4
	.word	0
_Label_1660:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1661:
	.ascii	"Pself\0"
	.align
_Label_1662:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1663:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1664:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1653\0"
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	1009,r13		! source line 1009
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1670 = &processManagerLock
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
	mov	1034,r13		! source line 1034
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1675 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1676 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1675  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-152]
_Label_1671:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1676 then goto _Label_1674		
	load	[r14+-152],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1674
_Label_1672:
	mov	1034,r13		! source line 1034
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0AS",r10
!   _temp_1677 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1677 [i ] into _temp_1678
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
!   child = _temp_1678		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1683 = child + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1682 = *_temp_1683  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1685 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1684 = *_temp_1685  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_1682 != _temp_1684 then goto _Label_1680		(int)
	load	[r14+-128],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_1680
!	jmp	_Label_1681
_Label_1681:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1687 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1686 = *_temp_1687  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1686 != 2 then goto _Label_1680		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1680
!	jmp	_Label_1679
_Label_1679:
! THEN...
	mov	1037,r13		! source line 1037
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0AS",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1688 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_1688 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1038,r13		! source line 1038
	mov	"\0\0SE",r10
!   _temp_1689 = &freeList
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
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1690 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-96]
!   _temp_1691 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_1690  sizeInBytes=4
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
_Label_1680:
!   Increment the FOR-LOOP index variable and jump back
_Label_1673:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_1671
! END FOR
_Label_1674:
! ASSIGNMENT STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
!   parent = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-160]
! FOR STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1696 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1697 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1696  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-152]
_Label_1692:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1697 then goto _Label_1695		
	load	[r14+-152],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1695
_Label_1693:
	mov	1045,r13		! source line 1045
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0IF",r10
!   _temp_1701 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1701 [i ] into _temp_1702
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
!   _temp_1703 = _temp_1702 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1700 = *_temp_1703  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1705 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1704 = *_temp_1705  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1700 != _temp_1704 then goto _Label_1699		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_1699
!	jmp	_Label_1698
_Label_1698:
! THEN...
	mov	1047,r13		! source line 1047
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   _temp_1706 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1706 [i ] into _temp_1707
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
!   parent = _temp_1707		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-160]
! END IF...
_Label_1699:
!   Increment the FOR-LOOP index variable and jump back
_Label_1694:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_1692
! END FOR
_Label_1695:
! IF STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0IF",r10
!   if parent == 0 then goto _Label_1709		(int)
	load	[r14+-160],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1709
!	jmp	_Label_1710
_Label_1710:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1712 = parent + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1711 = *_temp_1712  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1711 != 1 then goto _Label_1709		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1709
!	jmp	_Label_1708
_Label_1708:
! THEN...
	mov	1054,r13		! source line 1054
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1713 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1713 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_1714 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_1715 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1714  sizeInBytes=4
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
	jmp	_Label_1716
_Label_1709:
! ELSE...
	mov	1057,r13		! source line 1057
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1717 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1717 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0SE",r10
!   _temp_1718 = &freeList
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
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1719 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1720 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1719  sizeInBytes=4
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
_Label_1716:
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   _temp_1721 = &processManagerLock
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
	mov	1063,r13		! source line 1063
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
	.word	_Label_1722
	.word	8		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_1723
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1724
	.word	12
	.word	4
	.word	_Label_1725
	.word	-12
	.word	4
	.word	_Label_1726
	.word	-16
	.word	4
	.word	_Label_1727
	.word	-20
	.word	4
	.word	_Label_1728
	.word	-24
	.word	4
	.word	_Label_1729
	.word	-28
	.word	4
	.word	_Label_1730
	.word	-32
	.word	4
	.word	_Label_1731
	.word	-36
	.word	4
	.word	_Label_1732
	.word	-40
	.word	4
	.word	_Label_1733
	.word	-44
	.word	4
	.word	_Label_1734
	.word	-48
	.word	4
	.word	_Label_1735
	.word	-52
	.word	4
	.word	_Label_1736
	.word	-56
	.word	4
	.word	_Label_1737
	.word	-60
	.word	4
	.word	_Label_1738
	.word	-64
	.word	4
	.word	_Label_1739
	.word	-68
	.word	4
	.word	_Label_1740
	.word	-72
	.word	4
	.word	_Label_1741
	.word	-76
	.word	4
	.word	_Label_1742
	.word	-80
	.word	4
	.word	_Label_1743
	.word	-84
	.word	4
	.word	_Label_1744
	.word	-88
	.word	4
	.word	_Label_1745
	.word	-92
	.word	4
	.word	_Label_1746
	.word	-96
	.word	4
	.word	_Label_1747
	.word	-100
	.word	4
	.word	_Label_1748
	.word	-104
	.word	4
	.word	_Label_1749
	.word	-108
	.word	4
	.word	_Label_1750
	.word	-112
	.word	4
	.word	_Label_1751
	.word	-116
	.word	4
	.word	_Label_1752
	.word	-120
	.word	4
	.word	_Label_1753
	.word	-124
	.word	4
	.word	_Label_1754
	.word	-128
	.word	4
	.word	_Label_1755
	.word	-132
	.word	4
	.word	_Label_1756
	.word	-136
	.word	4
	.word	_Label_1757
	.word	-140
	.word	4
	.word	_Label_1758
	.word	-144
	.word	4
	.word	_Label_1759
	.word	-148
	.word	4
	.word	_Label_1760
	.word	-152
	.word	4
	.word	_Label_1761
	.word	-156
	.word	4
	.word	_Label_1762
	.word	-160
	.word	4
	.word	0
_Label_1722:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1723:
	.ascii	"Pself\0"
	.align
_Label_1724:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1760:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1761:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_1762:
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
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	1067,r13		! source line 1067
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0SE",r10
!   _temp_1763 = &processManagerLock
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
	mov	1077,r13		! source line 1077
	mov	"\0\0WH",r10
_Label_1764:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1768 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1767 = *_temp_1768  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1767 == 2 then goto _Label_1766		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1766
!	jmp	_Label_1765
_Label_1765:
	mov	1077,r13		! source line 1077
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0SE",r10
!   _temp_1769 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_1770 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1769  sizeInBytes=4
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
	jmp	_Label_1764
_Label_1766:
! ASSIGNMENT STATEMENT...
	mov	1082,r13		! source line 1082
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1771 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatusToReturn = *_temp_1771  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1086,r13		! source line 1086
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1772 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1772 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1087,r13		! source line 1087
	mov	"\0\0SE",r10
!   _temp_1773 = &freeList
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
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1774 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1775 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1774  sizeInBytes=4
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
	mov	1091,r13		! source line 1091
	mov	"\0\0SE",r10
!   _temp_1776 = &processManagerLock
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
	mov	1094,r13		! source line 1094
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
	.word	_Label_1777
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1778
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1779
	.word	12
	.word	4
	.word	_Label_1780
	.word	-12
	.word	4
	.word	_Label_1781
	.word	-16
	.word	4
	.word	_Label_1782
	.word	-20
	.word	4
	.word	_Label_1783
	.word	-24
	.word	4
	.word	_Label_1784
	.word	-28
	.word	4
	.word	_Label_1785
	.word	-32
	.word	4
	.word	_Label_1786
	.word	-36
	.word	4
	.word	_Label_1787
	.word	-40
	.word	4
	.word	_Label_1788
	.word	-44
	.word	4
	.word	_Label_1789
	.word	-48
	.word	4
	.word	_Label_1790
	.word	-52
	.word	4
	.word	_Label_1791
	.word	-56
	.word	4
	.word	0
_Label_1777:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1778:
	.ascii	"Pself\0"
	.align
_Label_1779:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"exitStatusToReturn\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1792
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1792:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1793
	.word	_sourceFileName
	.word	258		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1793:
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	1209,r13		! source line 1209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1794 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1794  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1216,r13		! source line 1216
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
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
!   _temp_1796 = &framesInUse
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
	mov	1218,r13		! source line 1218
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1219,r13		! source line 1219
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
	mov	1220,r13		! source line 1220
	mov	"\0\0SE",r10
!   _temp_1798 = &frameManagerLock
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
	mov	1221,r13		! source line 1221
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
	mov	1222,r13		! source line 1222
	mov	"\0\0SE",r10
!   _temp_1800 = &newFramesAvailable
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
	mov	1228,r13		! source line 1228
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1805 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1806 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1805  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1801:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1806 then goto _Label_1804		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1804
_Label_1802:
	mov	1228,r13		! source line 1228
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1809 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1809) then goto _Label_1808
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1808
!	jmp	_Label_1807
_Label_1807:
! THEN...
	mov	1232,r13		! source line 1232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1810 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1810  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1232,r13		! source line 1232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1808:
!   Increment the FOR-LOOP index variable and jump back
_Label_1803:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1801
! END FOR
_Label_1804:
! RETURN STATEMENT...
	mov	1228,r13		! source line 1228
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
	.word	_Label_1811
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1812
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	0
_Label_1811:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1812:
	.ascii	"Pself\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1806\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1824:
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	1239,r13		! source line 1239
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1243,r13		! source line 1243
	mov	"\0\0SE",r10
!   _temp_1825 = &frameManagerLock
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
!   _temp_1826 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1826  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1827 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1827  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1828 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1828  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0SE",r10
!   _temp_1829 = &framesInUse
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
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
!   _temp_1830 = &frameManagerLock
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
	mov	1248,r13		! source line 1248
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
	.word	_Label_1831
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1833
	.word	-12
	.word	4
	.word	_Label_1834
	.word	-16
	.word	4
	.word	_Label_1835
	.word	-20
	.word	4
	.word	_Label_1836
	.word	-24
	.word	4
	.word	_Label_1837
	.word	-28
	.word	4
	.word	_Label_1838
	.word	-32
	.word	4
	.word	0
_Label_1831:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1832:
	.ascii	"Pself\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1825\0"
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1253,r13		! source line 1253
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
!   _temp_1839 = &frameManagerLock
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
	mov	1264,r13		! source line 1264
	mov	"\0\0WH",r10
_Label_1840:
!   if numberFreeFrames >= 1 then goto _Label_1842		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1842
!	jmp	_Label_1841
_Label_1841:
	mov	1264,r13		! source line 1264
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0SE",r10
!   _temp_1843 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1844 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1843  sizeInBytes=4
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
	jmp	_Label_1840
_Label_1842:
! ASSIGNMENT STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0AS",r10
	mov	1269,r13		! source line 1269
	mov	"\0\0SE",r10
!   _temp_1845 = &framesInUse
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
	mov	1270,r13		! source line 1270
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
	mov	1273,r13		! source line 1273
	mov	"\0\0SE",r10
!   _temp_1846 = &frameManagerLock
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
	mov	1276,r13		! source line 1276
	mov	"\0\0AS",r10
!   _temp_1847 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1847		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1278,r13		! source line 1278
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
	.word	_Label_1848
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1850
	.word	-12
	.word	4
	.word	_Label_1851
	.word	-16
	.word	4
	.word	_Label_1852
	.word	-20
	.word	4
	.word	_Label_1853
	.word	-24
	.word	4
	.word	_Label_1854
	.word	-28
	.word	4
	.word	_Label_1855
	.word	-32
	.word	4
	.word	_Label_1856
	.word	-36
	.word	4
	.word	_Label_1857
	.word	-40
	.word	4
	.word	0
_Label_1848:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1849:
	.ascii	"Pself\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1846\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1854:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1855:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1856:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1857:
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
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	1283,r13		! source line 1283
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0SE",r10
!   _temp_1858 = &frameManagerLock
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
	mov	1295,r13		! source line 1295
	mov	"\0\0WH",r10
_Label_1859:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1861		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1861
!	jmp	_Label_1860
_Label_1860:
	mov	1295,r13		! source line 1295
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1296,r13		! source line 1296
	mov	"\0\0SE",r10
!   _temp_1862 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1863 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1862  sizeInBytes=4
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
	jmp	_Label_1859
_Label_1861:
! FOR STATEMENT...
	mov	1302,r13		! source line 1302
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1868 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1869 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1868  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1864:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1869 then goto _Label_1867		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1867
_Label_1865:
	mov	1302,r13		! source line 1302
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1303,r13		! source line 1303
	mov	"\0\0AS",r10
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_1870 = &framesInUse
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
	mov	1304,r13		! source line 1304
	mov	"\0\0AS",r10
!   _temp_1871 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_1871		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1305,r13		! source line 1305
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
_Label_1866:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1864
! END FOR
_Label_1867:
! ASSIGNMENT STATEMENT...
	mov	1309,r13		! source line 1309
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
	mov	1312,r13		! source line 1312
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1872 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1875 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1874 = *_temp_1875  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1873 = _temp_1874 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1872 = _temp_1873  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0SE",r10
!   _temp_1876 = &frameManagerLock
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
	mov	1314,r13		! source line 1314
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
	.word	_Label_1877
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1878
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1879
	.word	12
	.word	4
	.word	_Label_1880
	.word	16
	.word	4
	.word	_Label_1881
	.word	-12
	.word	4
	.word	_Label_1882
	.word	-16
	.word	4
	.word	_Label_1883
	.word	-20
	.word	4
	.word	_Label_1884
	.word	-24
	.word	4
	.word	_Label_1885
	.word	-28
	.word	4
	.word	_Label_1886
	.word	-32
	.word	4
	.word	_Label_1887
	.word	-36
	.word	4
	.word	_Label_1888
	.word	-40
	.word	4
	.word	_Label_1889
	.word	-44
	.word	4
	.word	_Label_1890
	.word	-48
	.word	4
	.word	_Label_1891
	.word	-52
	.word	4
	.word	_Label_1892
	.word	-56
	.word	4
	.word	_Label_1893
	.word	-60
	.word	4
	.word	_Label_1894
	.word	-64
	.word	4
	.word	_Label_1895
	.word	-68
	.word	4
	.word	0
_Label_1877:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1878:
	.ascii	"Pself\0"
	.align
_Label_1879:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1876\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1885:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1893:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1894:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1895:
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1331,r13		! source line 1331
	mov	"\0\0SE",r10
!   _temp_1896 = &frameManagerLock
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
	mov	1332,r13		! source line 1332
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
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1897 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_1897  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1339,r13		! source line 1339
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1902 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1903 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1902  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1898:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1903 then goto _Label_1901		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1901
_Label_1899:
	mov	1339,r13		! source line 1339
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0AS",r10
	mov	1340,r13		! source line 1340
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
	mov	1341,r13		! source line 1341
	mov	"\0\0AS",r10
!   _temp_1904 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_1904 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0SE",r10
!   _temp_1905 = &framesInUse
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
	mov	1343,r13		! source line 1343
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
_Label_1900:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1898
! END FOR
_Label_1901:
! SEND STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0SE",r10
!   _temp_1906 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1907 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1906  sizeInBytes=4
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
	mov	1350,r13		! source line 1350
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1908 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1911 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1910 = *_temp_1911  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1909 = _temp_1910 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1908 = _temp_1909  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0SE",r10
!   _temp_1912 = &frameManagerLock
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
	mov	1352,r13		! source line 1352
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
	.word	_Label_1913
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1914
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1915
	.word	12
	.word	4
	.word	_Label_1916
	.word	-12
	.word	4
	.word	_Label_1917
	.word	-16
	.word	4
	.word	_Label_1918
	.word	-20
	.word	4
	.word	_Label_1919
	.word	-24
	.word	4
	.word	_Label_1920
	.word	-28
	.word	4
	.word	_Label_1921
	.word	-32
	.word	4
	.word	_Label_1922
	.word	-36
	.word	4
	.word	_Label_1923
	.word	-40
	.word	4
	.word	_Label_1924
	.word	-44
	.word	4
	.word	_Label_1925
	.word	-48
	.word	4
	.word	_Label_1926
	.word	-52
	.word	4
	.word	_Label_1927
	.word	-56
	.word	4
	.word	_Label_1928
	.word	-60
	.word	4
	.word	_Label_1929
	.word	-64
	.word	4
	.word	_Label_1930
	.word	-68
	.word	4
	.word	_Label_1931
	.word	-72
	.word	4
	.word	_Label_1932
	.word	-76
	.word	4
	.word	0
_Label_1913:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1914:
	.ascii	"Pself\0"
	.align
_Label_1915:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1906\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1929:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1930:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_1931:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1932:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1933
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
_Label_1933:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1934
	.word	_sourceFileName
	.word	277		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1934:
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	1363,r13		! source line 1363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0AS",r10
!   _temp_1935 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1937 = &_temp_1936
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1937 = _temp_1937 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1939:
!   Data Move: *_temp_1937 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1937 = _temp_1937 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1938 = _temp_1938 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1938) then goto _Label_1939
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1939
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1940 = &_temp_1936
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3378
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3378:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1935 = *_temp_1940  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3379:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3379
! RETURN STATEMENT...
	mov	1368,r13		! source line 1368
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
	.word	_Label_1941
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1942
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1943
	.word	-12
	.word	4
	.word	_Label_1944
	.word	-16
	.word	4
	.word	_Label_1945
	.word	-20
	.word	4
	.word	_Label_1946
	.word	-104
	.word	84
	.word	_Label_1947
	.word	-108
	.word	4
	.word	0
_Label_1941:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1942:
	.ascii	"Pself\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1935\0"
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	1373,r13		! source line 1373
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1948 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1948  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1378,r13		! source line 1378
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1949 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1949  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1379,r13		! source line 1379
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1954 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1955 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1954  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1950:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1955 then goto _Label_1953		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1953
_Label_1951:
	mov	1380,r13		! source line 1380
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1956 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1956  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1381,r13		! source line 1381
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1958 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1958 [i ] into _temp_1959
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
!   _temp_1957 = _temp_1959		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1957  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1960 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1960  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1383,r13		! source line 1383
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1962 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1962 [i ] into _temp_1963
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
!   Data Move: _temp_1961 = *_temp_1963  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1961  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1964 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1964  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1385,r13		! source line 1385
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1965 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1965  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1966 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1966  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1387,r13		! source line 1387
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1968) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1967  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1967  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1969 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1389,r13		! source line 1389
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0IF",r10
	mov	1390,r13		! source line 1390
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1973) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1972  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1972) then goto _Label_1971
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1971
!	jmp	_Label_1970
_Label_1970:
! THEN...
	mov	1391,r13		! source line 1391
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1975) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1974  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1391,r13		! source line 1391
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1976
_Label_1971:
! ELSE...
	mov	1393,r13		! source line 1393
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1977 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1977  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1976:
! CALL STATEMENT...
!   _temp_1978 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1395,r13		! source line 1395
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0IF",r10
	mov	1396,r13		! source line 1396
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1981) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1979 else goto _Label_1980
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1980
	jmp	_Label_1979
_Label_1979:
! THEN...
	mov	1397,r13		! source line 1397
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1982 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1982  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1983
_Label_1980:
! ELSE...
	mov	1399,r13		! source line 1399
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1984 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1984  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1983:
! CALL STATEMENT...
!   _temp_1985 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1985  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1401,r13		! source line 1401
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1402,r13		! source line 1402
	mov	"\0\0IF",r10
	mov	1402,r13		! source line 1402
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1988) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1986 else goto _Label_1987
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1987
	jmp	_Label_1986
_Label_1986:
! THEN...
	mov	1403,r13		! source line 1403
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1989 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1989  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1403,r13		! source line 1403
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1990
_Label_1987:
! ELSE...
	mov	1405,r13		! source line 1405
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1991 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1991  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1405,r13		! source line 1405
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1990:
! CALL STATEMENT...
!   _temp_1992 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1992  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1407,r13		! source line 1407
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0IF",r10
	mov	1408,r13		! source line 1408
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1995) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1993 else goto _Label_1994
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1994
	jmp	_Label_1993
_Label_1993:
! THEN...
	mov	1409,r13		! source line 1409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1996 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1996  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1409,r13		! source line 1409
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1997
_Label_1994:
! ELSE...
	mov	1411,r13		! source line 1411
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1998 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1998  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1411,r13		! source line 1411
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1997:
! CALL STATEMENT...
!   _temp_1999 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1999  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1413,r13		! source line 1413
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0IF",r10
	mov	1414,r13		! source line 1414
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2002) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2000 else goto _Label_2001
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2001
	jmp	_Label_2000
_Label_2000:
! THEN...
	mov	1415,r13		! source line 1415
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2003 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2003  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1415,r13		! source line 1415
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2004
_Label_2001:
! ELSE...
	mov	1417,r13		! source line 1417
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2005 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1417,r13		! source line 1417
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2004:
! CALL STATEMENT...
!   Call the function
	mov	1419,r13		! source line 1419
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1952:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1950
! END FOR
_Label_1953:
! RETURN STATEMENT...
	mov	1380,r13		! source line 1380
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
	.word	_Label_2006
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2007
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2008
	.word	-12
	.word	4
	.word	_Label_2009
	.word	-16
	.word	4
	.word	_Label_2010
	.word	-20
	.word	4
	.word	_Label_2011
	.word	-24
	.word	4
	.word	_Label_2012
	.word	-28
	.word	4
	.word	_Label_2013
	.word	-32
	.word	4
	.word	_Label_2014
	.word	-36
	.word	4
	.word	_Label_2015
	.word	-40
	.word	4
	.word	_Label_2016
	.word	-44
	.word	4
	.word	_Label_2017
	.word	-48
	.word	4
	.word	_Label_2018
	.word	-52
	.word	4
	.word	_Label_2019
	.word	-56
	.word	4
	.word	_Label_2020
	.word	-60
	.word	4
	.word	_Label_2021
	.word	-64
	.word	4
	.word	_Label_2022
	.word	-68
	.word	4
	.word	_Label_2023
	.word	-72
	.word	4
	.word	_Label_2024
	.word	-76
	.word	4
	.word	_Label_2025
	.word	-80
	.word	4
	.word	_Label_2026
	.word	-84
	.word	4
	.word	_Label_2027
	.word	-88
	.word	4
	.word	_Label_2028
	.word	-92
	.word	4
	.word	_Label_2029
	.word	-96
	.word	4
	.word	_Label_2030
	.word	-100
	.word	4
	.word	_Label_2031
	.word	-104
	.word	4
	.word	_Label_2032
	.word	-108
	.word	4
	.word	_Label_2033
	.word	-112
	.word	4
	.word	_Label_2034
	.word	-116
	.word	4
	.word	_Label_2035
	.word	-120
	.word	4
	.word	_Label_2036
	.word	-124
	.word	4
	.word	_Label_2037
	.word	-128
	.word	4
	.word	_Label_2038
	.word	-132
	.word	4
	.word	_Label_2039
	.word	-136
	.word	4
	.word	_Label_2040
	.word	-140
	.word	4
	.word	_Label_2041
	.word	-144
	.word	4
	.word	_Label_2042
	.word	-148
	.word	4
	.word	_Label_2043
	.word	-152
	.word	4
	.word	_Label_2044
	.word	-156
	.word	4
	.word	_Label_2045
	.word	-160
	.word	4
	.word	_Label_2046
	.word	-164
	.word	4
	.word	_Label_2047
	.word	-168
	.word	4
	.word	0
_Label_2006:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2007:
	.ascii	"Pself\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_1981\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_2047:
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	1425,r13		! source line 1425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0RE",r10
!   _temp_2050 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2050 [entry ] into _temp_2051
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
!   Data Move: _temp_2049 = *_temp_2051  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2048 = _temp_2049 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2048  (sizeInBytes=4)
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
	.word	_Label_2052
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2054
	.word	12
	.word	4
	.word	_Label_2055
	.word	-12
	.word	4
	.word	_Label_2056
	.word	-16
	.word	4
	.word	_Label_2057
	.word	-20
	.word	4
	.word	_Label_2058
	.word	-24
	.word	4
	.word	0
_Label_2052:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2053:
	.ascii	"Pself\0"
	.align
_Label_2054:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2048\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	1435,r13		! source line 1435
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0RE",r10
!   _temp_2061 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2061 [entry ] into _temp_2062
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
!   Data Move: _temp_2060 = *_temp_2062  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2059 = _temp_2060 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2059  (sizeInBytes=4)
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
	.word	_Label_2063
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2065
	.word	12
	.word	4
	.word	_Label_2066
	.word	-12
	.word	4
	.word	_Label_2067
	.word	-16
	.word	4
	.word	_Label_2068
	.word	-20
	.word	4
	.word	_Label_2069
	.word	-24
	.word	4
	.word	0
_Label_2063:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2064:
	.ascii	"Pself\0"
	.align
_Label_2065:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2059\0"
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	1444,r13		! source line 1444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0AS",r10
!   _temp_2070 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2070 [entry ] into _temp_2071
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
!   _temp_2075 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2075 [entry ] into _temp_2076
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
!   Data Move: _temp_2074 = *_temp_2076  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2073 = _temp_2074 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2072 = _temp_2073 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2071 = _temp_2072  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1449,r13		! source line 1449
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
	.word	_Label_2077
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2078
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2079
	.word	12
	.word	4
	.word	_Label_2080
	.word	16
	.word	4
	.word	_Label_2081
	.word	-12
	.word	4
	.word	_Label_2082
	.word	-16
	.word	4
	.word	_Label_2083
	.word	-20
	.word	4
	.word	_Label_2084
	.word	-24
	.word	4
	.word	_Label_2085
	.word	-28
	.word	4
	.word	_Label_2086
	.word	-32
	.word	4
	.word	_Label_2087
	.word	-36
	.word	4
	.word	0
_Label_2077:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2078:
	.ascii	"Pself\0"
	.align
_Label_2079:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2080:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2070\0"
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	1454,r13		! source line 1454
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0RE",r10
!   _temp_2091 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2091 [entry ] into _temp_2092
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
!   Data Move: _temp_2090 = *_temp_2092  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2089 = _temp_2090 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2089) then goto _Label_2093
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2093
!   _temp_2088 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2094
_Label_2093:
!   _temp_2088 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2094:
!   ReturnResult: _temp_2088  (sizeInBytes=1)
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
	.word	_Label_2095
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2096
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2097
	.word	12
	.word	4
	.word	_Label_2098
	.word	-16
	.word	4
	.word	_Label_2099
	.word	-20
	.word	4
	.word	_Label_2100
	.word	-24
	.word	4
	.word	_Label_2101
	.word	-28
	.word	4
	.word	_Label_2102
	.word	-9
	.word	1
	.word	0
_Label_2095:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2096:
	.ascii	"Pself\0"
	.align
_Label_2097:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2102:
	.byte	'C'
	.ascii	"_temp_2088\0"
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	1463,r13		! source line 1463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0RE",r10
!   _temp_2106 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2106 [entry ] into _temp_2107
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
!   Data Move: _temp_2105 = *_temp_2107  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2104 = _temp_2105 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2104) then goto _Label_2108
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2108
!   _temp_2103 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2109
_Label_2108:
!   _temp_2103 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2109:
!   ReturnResult: _temp_2103  (sizeInBytes=1)
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
	.word	_Label_2110
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2112
	.word	12
	.word	4
	.word	_Label_2113
	.word	-16
	.word	4
	.word	_Label_2114
	.word	-20
	.word	4
	.word	_Label_2115
	.word	-24
	.word	4
	.word	_Label_2116
	.word	-28
	.word	4
	.word	_Label_2117
	.word	-9
	.word	1
	.word	0
_Label_2110:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2111:
	.ascii	"Pself\0"
	.align
_Label_2112:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2113:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2114:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2105\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
_Label_2117:
	.byte	'C'
	.ascii	"_temp_2103\0"
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	1472,r13		! source line 1472
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
!   _temp_2121 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2121 [entry ] into _temp_2122
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
!   Data Move: _temp_2120 = *_temp_2122  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2119 = _temp_2120 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2119) then goto _Label_2123
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2123
!   _temp_2118 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2124
_Label_2123:
!   _temp_2118 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2124:
!   ReturnResult: _temp_2118  (sizeInBytes=1)
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
	.word	_Label_2125
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2127
	.word	12
	.word	4
	.word	_Label_2128
	.word	-16
	.word	4
	.word	_Label_2129
	.word	-20
	.word	4
	.word	_Label_2130
	.word	-24
	.word	4
	.word	_Label_2131
	.word	-28
	.word	4
	.word	_Label_2132
	.word	-9
	.word	1
	.word	0
_Label_2125:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2126:
	.ascii	"Pself\0"
	.align
_Label_2127:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2132:
	.byte	'C'
	.ascii	"_temp_2118\0"
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	1481,r13		! source line 1481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   _temp_2136 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2136 [entry ] into _temp_2137
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
!   Data Move: _temp_2135 = *_temp_2137  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2134 = _temp_2135 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2134) then goto _Label_2138
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2138
!   _temp_2133 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2139
_Label_2138:
!   _temp_2133 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2139:
!   ReturnResult: _temp_2133  (sizeInBytes=1)
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
	.word	_Label_2140
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2142
	.word	12
	.word	4
	.word	_Label_2143
	.word	-16
	.word	4
	.word	_Label_2144
	.word	-20
	.word	4
	.word	_Label_2145
	.word	-24
	.word	4
	.word	_Label_2146
	.word	-28
	.word	4
	.word	_Label_2147
	.word	-9
	.word	1
	.word	0
_Label_2140:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
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
	.ascii	"_temp_2137\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2134\0"
	.align
_Label_2147:
	.byte	'C'
	.ascii	"_temp_2133\0"
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	1490,r13		! source line 1490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   _temp_2148 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2148 [entry ] into _temp_2149
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
!   _temp_2152 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2152 [entry ] into _temp_2153
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
!   Data Move: _temp_2151 = *_temp_2153  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2150 = _temp_2151 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2149 = _temp_2150  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1494,r13		! source line 1494
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
	.word	_Label_2154
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2156
	.word	12
	.word	4
	.word	_Label_2157
	.word	-12
	.word	4
	.word	_Label_2158
	.word	-16
	.word	4
	.word	_Label_2159
	.word	-20
	.word	4
	.word	_Label_2160
	.word	-24
	.word	4
	.word	_Label_2161
	.word	-28
	.word	4
	.word	_Label_2162
	.word	-32
	.word	4
	.word	0
_Label_2154:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2155:
	.ascii	"Pself\0"
	.align
_Label_2156:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2148\0"
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	1499,r13		! source line 1499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   _temp_2163 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2163 [entry ] into _temp_2164
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
!   _temp_2167 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2167 [entry ] into _temp_2168
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
!   Data Move: _temp_2166 = *_temp_2168  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2165 = _temp_2166 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2164 = _temp_2165  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1503,r13		! source line 1503
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
	.word	_Label_2169
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2171
	.word	12
	.word	4
	.word	_Label_2172
	.word	-12
	.word	4
	.word	_Label_2173
	.word	-16
	.word	4
	.word	_Label_2174
	.word	-20
	.word	4
	.word	_Label_2175
	.word	-24
	.word	4
	.word	_Label_2176
	.word	-28
	.word	4
	.word	_Label_2177
	.word	-32
	.word	4
	.word	0
_Label_2169:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2170:
	.ascii	"Pself\0"
	.align
_Label_2171:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2163\0"
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	1508,r13		! source line 1508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   _temp_2178 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2178 [entry ] into _temp_2179
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
!   _temp_2182 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2182 [entry ] into _temp_2183
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
!   Data Move: _temp_2181 = *_temp_2183  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2180 = _temp_2181 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2179 = _temp_2180  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1512,r13		! source line 1512
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
	.word	_Label_2184
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2185
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2186
	.word	12
	.word	4
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
	.word	0
_Label_2184:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2185:
	.ascii	"Pself\0"
	.align
_Label_2186:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2178\0"
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
	mov	1517,r13		! source line 1517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   _temp_2193 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2193 [entry ] into _temp_2194
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
!   _temp_2197 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2197 [entry ] into _temp_2198
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
!   Data Move: _temp_2196 = *_temp_2198  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2195 = _temp_2196 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2194 = _temp_2195  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1521,r13		! source line 1521
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
	.word	_Label_2199
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2200
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2201
	.word	12
	.word	4
	.word	_Label_2202
	.word	-12
	.word	4
	.word	_Label_2203
	.word	-16
	.word	4
	.word	_Label_2204
	.word	-20
	.word	4
	.word	_Label_2205
	.word	-24
	.word	4
	.word	_Label_2206
	.word	-28
	.word	4
	.word	_Label_2207
	.word	-32
	.word	4
	.word	0
_Label_2199:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2200:
	.ascii	"Pself\0"
	.align
_Label_2201:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2193\0"
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
	mov	1526,r13		! source line 1526
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0AS",r10
!   _temp_2208 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2208 [entry ] into _temp_2209
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
!   _temp_2212 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2212 [entry ] into _temp_2213
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
!   Data Move: _temp_2211 = *_temp_2213  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2210 = _temp_2211 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2209 = _temp_2210  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1530,r13		! source line 1530
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
	.word	_Label_2214
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2215
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2216
	.word	12
	.word	4
	.word	_Label_2217
	.word	-12
	.word	4
	.word	_Label_2218
	.word	-16
	.word	4
	.word	_Label_2219
	.word	-20
	.word	4
	.word	_Label_2220
	.word	-24
	.word	4
	.word	_Label_2221
	.word	-28
	.word	4
	.word	_Label_2222
	.word	-32
	.word	4
	.word	0
_Label_2214:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2215:
	.ascii	"Pself\0"
	.align
_Label_2216:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2208\0"
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
	mov	1535,r13		! source line 1535
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   _temp_2223 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2223 [entry ] into _temp_2224
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
!   _temp_2227 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2227 [entry ] into _temp_2228
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
!   Data Move: _temp_2226 = *_temp_2228  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2225 = _temp_2226 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2224 = _temp_2225  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1539,r13		! source line 1539
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
	.word	_Label_2229
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2230
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2231
	.word	12
	.word	4
	.word	_Label_2232
	.word	-12
	.word	4
	.word	_Label_2233
	.word	-16
	.word	4
	.word	_Label_2234
	.word	-20
	.word	4
	.word	_Label_2235
	.word	-24
	.word	4
	.word	_Label_2236
	.word	-28
	.word	4
	.word	_Label_2237
	.word	-32
	.word	4
	.word	0
_Label_2229:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2230:
	.ascii	"Pself\0"
	.align
_Label_2231:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2223\0"
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
	mov	1544,r13		! source line 1544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0AS",r10
!   _temp_2238 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2238 [entry ] into _temp_2239
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
!   _temp_2242 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2242 [entry ] into _temp_2243
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
!   Data Move: _temp_2241 = *_temp_2243  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2240 = _temp_2241 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2239 = _temp_2240  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1548,r13		! source line 1548
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
	.word	_Label_2244
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2245
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2246
	.word	12
	.word	4
	.word	_Label_2247
	.word	-12
	.word	4
	.word	_Label_2248
	.word	-16
	.word	4
	.word	_Label_2249
	.word	-20
	.word	4
	.word	_Label_2250
	.word	-24
	.word	4
	.word	_Label_2251
	.word	-28
	.word	4
	.word	_Label_2252
	.word	-32
	.word	4
	.word	0
_Label_2244:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2245:
	.ascii	"Pself\0"
	.align
_Label_2246:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2238\0"
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
_Label_3395:
	push	r0
	sub	r1,1,r1
	bne	_Label_3395
	mov	1553,r13		! source line 1553
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1557,r13		! source line 1557
	mov	"\0\0AS",r10
!   _temp_2253 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2253 [entry ] into _temp_2254
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
!   _temp_2257 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2257 [entry ] into _temp_2258
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
!   Data Move: _temp_2256 = *_temp_2258  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2255 = _temp_2256 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2254 = _temp_2255  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1557,r13		! source line 1557
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
	.word	_Label_2259
	.word	8		! total size of parameters
	.word	24		! frame size = 24
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
	.word	0
_Label_2259:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2260:
	.ascii	"Pself\0"
	.align
_Label_2261:
	.byte	'I'
	.ascii	"entry\0"
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
_Label_3396:
	push	r0
	sub	r1,1,r1
	bne	_Label_3396
	mov	1562,r13		! source line 1562
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2269 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2269 [0 ] into _temp_2270
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
!   _temp_2268 = _temp_2270		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2271 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2268  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2271  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1568,r13		! source line 1568
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1568,r13		! source line 1568
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
	.word	_Label_2272
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2274
	.word	-12
	.word	4
	.word	_Label_2275
	.word	-16
	.word	4
	.word	_Label_2276
	.word	-20
	.word	4
	.word	_Label_2277
	.word	-24
	.word	4
	.word	0
_Label_2272:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2273:
	.ascii	"Pself\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2268\0"
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
_Label_3397:
	push	r0
	sub	r1,1,r1
	bne	_Label_3397
	mov	1573,r13		! source line 1573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2278
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2278
	jmp	_Label_2279
_Label_2278:
! THEN...
	mov	1589,r13		! source line 1589
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2280
_Label_2279:
! ELSE...
	mov	1590,r13		! source line 1590
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2282		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2282
!	jmp	_Label_2281
_Label_2281:
! THEN...
	mov	1591,r13		! source line 1591
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2282:
! END IF...
_Label_2280:
! ASSIGNMENT STATEMENT...
	mov	1593,r13		! source line 1593
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
	mov	1594,r13		! source line 1594
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
	mov	1597,r13		! source line 1597
	mov	"\0\0WH",r10
_Label_2283:
!	jmp	_Label_2284
_Label_2284:
	mov	1597,r13		! source line 1597
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2287		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2287
!	jmp	_Label_2286
_Label_2286:
! THEN...
	mov	1599,r13		! source line 1599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2288 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2288  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1599,r13		! source line 1599
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1600,r13		! source line 1600
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2287:
! IF STATEMENT...
	mov	1602,r13		! source line 1602
	mov	"\0\0IF",r10
	mov	1602,r13		! source line 1602
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2292) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2291  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2291 then goto _Label_2290 else goto _Label_2289
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2289
	jmp	_Label_2290
_Label_2289:
! THEN...
	mov	1603,r13		! source line 1603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2293 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2293  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1603,r13		! source line 1603
	mov	"\0\0CE",r10
	call	print
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
_Label_2290:
! ASSIGNMENT STATEMENT...
	mov	1606,r13		! source line 1606
	mov	"\0\0AS",r10
	mov	1606,r13		! source line 1606
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2295) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2294  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2294 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0WH",r10
_Label_2296:
!   if offset >= 8192 then goto _Label_2298		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2298
!	jmp	_Label_2297
_Label_2297:
	mov	1608,r13		! source line 1608
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2299 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2299  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2301		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2301
!	jmp	_Label_2300
_Label_2300:
! THEN...
	mov	1617,r13		! source line 1617
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2301:
! END WHILE...
	jmp	_Label_2296
_Label_2298:
! ASSIGNMENT STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2283
_Label_2285:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2302
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2303
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2304
	.word	12
	.word	4
	.word	_Label_2305
	.word	16
	.word	4
	.word	_Label_2306
	.word	20
	.word	4
	.word	_Label_2307
	.word	-9
	.word	1
	.word	_Label_2308
	.word	-16
	.word	4
	.word	_Label_2309
	.word	-20
	.word	4
	.word	_Label_2310
	.word	-24
	.word	4
	.word	_Label_2311
	.word	-28
	.word	4
	.word	_Label_2312
	.word	-10
	.word	1
	.word	_Label_2313
	.word	-32
	.word	4
	.word	_Label_2314
	.word	-36
	.word	4
	.word	_Label_2315
	.word	-40
	.word	4
	.word	_Label_2316
	.word	-44
	.word	4
	.word	_Label_2317
	.word	-48
	.word	4
	.word	0
_Label_2302:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2303:
	.ascii	"Pself\0"
	.align
_Label_2304:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2305:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2306:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2307:
	.byte	'C'
	.ascii	"_temp_2299\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2312:
	.byte	'C'
	.ascii	"_temp_2291\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2314:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2315:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2316:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2317:
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
_Label_3398:
	push	r0
	sub	r1,1,r1
	bne	_Label_3398
	mov	1627,r13		! source line 1627
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2318
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2318
	jmp	_Label_2319
_Label_2318:
! THEN...
	mov	1639,r13		! source line 1639
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2320
_Label_2319:
! ELSE...
	mov	1640,r13		! source line 1640
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2322		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2322
!	jmp	_Label_2321
_Label_2321:
! THEN...
	mov	1641,r13		! source line 1641
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2322:
! END IF...
_Label_2320:
! ASSIGNMENT STATEMENT...
	mov	1643,r13		! source line 1643
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
	mov	1644,r13		! source line 1644
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
	mov	1645,r13		! source line 1645
	mov	"\0\0WH",r10
_Label_2323:
!	jmp	_Label_2324
_Label_2324:
	mov	1645,r13		! source line 1645
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2329		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2329
	jmp	_Label_2326
_Label_2329:
	mov	1647,r13		! source line 1647
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2331) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2330  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2330 then goto _Label_2328 else goto _Label_2326
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2326
	jmp	_Label_2328
_Label_2328:
	mov	1648,r13		! source line 1648
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2333) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2332  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2332 then goto _Label_2327 else goto _Label_2326
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2326
	jmp	_Label_2327
_Label_2326:
! THEN...
	mov	1649,r13		! source line 1649
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2327:
! ASSIGNMENT STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0AS",r10
	mov	1651,r13		! source line 1651
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2335) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2334  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2334 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0WH",r10
_Label_2336:
!   if offset >= 8192 then goto _Label_2338		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2338
!	jmp	_Label_2337
_Label_2337:
	mov	1652,r13		! source line 1652
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2339 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2339  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2341		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2341
!	jmp	_Label_2340
_Label_2340:
! THEN...
	mov	1659,r13		! source line 1659
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2341:
! END WHILE...
	jmp	_Label_2336
_Label_2338:
! ASSIGNMENT STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2323
_Label_2325:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2342
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2343
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2344
	.word	12
	.word	4
	.word	_Label_2345
	.word	16
	.word	4
	.word	_Label_2346
	.word	20
	.word	4
	.word	_Label_2347
	.word	-9
	.word	1
	.word	_Label_2348
	.word	-16
	.word	4
	.word	_Label_2349
	.word	-20
	.word	4
	.word	_Label_2350
	.word	-24
	.word	4
	.word	_Label_2351
	.word	-10
	.word	1
	.word	_Label_2352
	.word	-28
	.word	4
	.word	_Label_2353
	.word	-11
	.word	1
	.word	_Label_2354
	.word	-32
	.word	4
	.word	_Label_2355
	.word	-36
	.word	4
	.word	_Label_2356
	.word	-40
	.word	4
	.word	_Label_2357
	.word	-44
	.word	4
	.word	0
_Label_2342:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2343:
	.ascii	"Pself\0"
	.align
_Label_2344:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2345:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2346:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2347:
	.byte	'C'
	.ascii	"_temp_2339\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2351:
	.byte	'C'
	.ascii	"_temp_2332\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2353:
	.byte	'C'
	.ascii	"_temp_2330\0"
	.align
_Label_2354:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2355:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2356:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2357:
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
	mov	1669,r13		! source line 1669
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0IF",r10
	mov	1693,r13		! source line 1693
	mov	"\0\0SE",r10
!   _temp_2361 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2362) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2361  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2360  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2360 >= 4 then goto _Label_2359		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2359
!	jmp	_Label_2358
_Label_2358:
! THEN...
	mov	1696,r13		! source line 1696
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2359:
! IF STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2364		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2364
!	jmp	_Label_2363
_Label_2363:
! THEN...
	mov	1701,r13		! source line 1701
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2364:
! ASSIGNMENT STATEMENT...
	mov	1704,r13		! source line 1704
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
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
	mov	1706,r13		! source line 1706
	mov	"\0\0SE",r10
!   _temp_2367 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2366 = _temp_2367 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2368 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2369) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2366  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2368  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2365  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2365  (sizeInBytes=4)
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
	.word	_Label_2370
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2371
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2372
	.word	12
	.word	4
	.word	_Label_2373
	.word	16
	.word	4
	.word	_Label_2374
	.word	20
	.word	4
	.word	_Label_2375
	.word	-12
	.word	4
	.word	_Label_2376
	.word	-16
	.word	4
	.word	_Label_2377
	.word	-20
	.word	4
	.word	_Label_2378
	.word	-24
	.word	4
	.word	_Label_2379
	.word	-28
	.word	4
	.word	_Label_2380
	.word	-32
	.word	4
	.word	_Label_2381
	.word	-36
	.word	4
	.word	_Label_2382
	.word	-40
	.word	4
	.word	_Label_2383
	.word	-44
	.word	4
	.word	0
_Label_2370:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2371:
	.ascii	"Pself\0"
	.align
_Label_2372:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2373:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2374:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2383:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2384
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2384:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2385
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2385:
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	2280,r13		! source line 2280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2386 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2386  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2281,r13		! source line 2281
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2288,r13		! source line 2288
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
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   _temp_2388 = &semUsedInSynchMethods
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
	mov	2290,r13		! source line 2290
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
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_2390 = &diskBusy
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
	mov	2291,r13		! source line 2291
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
	.word	_Label_2391
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2393
	.word	-12
	.word	4
	.word	_Label_2394
	.word	-16
	.word	4
	.word	_Label_2395
	.word	-20
	.word	4
	.word	_Label_2396
	.word	-24
	.word	4
	.word	_Label_2397
	.word	-28
	.word	4
	.word	0
_Label_2391:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2392:
	.ascii	"Pself\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2386\0"
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	2296,r13		! source line 2296
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   _temp_2398 = &diskBusy
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
	mov	2310,r13		! source line 2310
	mov	"\0\0WH",r10
_Label_2399:
!	jmp	_Label_2400
_Label_2400:
	mov	2310,r13		! source line 2310
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0SE",r10
!   _temp_2402 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2403) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2402  sizeInBytes=4
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
	mov	2314,r13		! source line 2314
	mov	"\0\0SE",r10
!   _temp_2404 = &semUsedInSynchMethods
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
	mov	2317,r13		! source line 2317
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2413 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2407
	cmp	r1,2
	be	_Label_2408
	cmp	r1,3
	be	_Label_2409
	cmp	r1,4
	be	_Label_2410
	cmp	r1,5
	be	_Label_2411
	cmp	r1,6
	be	_Label_2412
	jmp	_Label_2405
! CASE 1...
_Label_2407:
! SEND STATEMENT...
	mov	2319,r13		! source line 2319
	mov	"\0\0SE",r10
!   _temp_2414 = &diskBusy
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
	mov	2320,r13		! source line 2320
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2408:
! CALL STATEMENT...
!   _temp_2415 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2415  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2322,r13		! source line 2322
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2409:
! CALL STATEMENT...
!   _temp_2416 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2416  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2324,r13		! source line 2324
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2410:
! CALL STATEMENT...
!   _temp_2417 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2417  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2326,r13		! source line 2326
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2411:
! BREAK STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0BR",r10
	jmp	_Label_2406
! CASE 6...
_Label_2412:
! CALL STATEMENT...
!   _temp_2418 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2332,r13		! source line 2332
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2405:
! CALL STATEMENT...
!   _temp_2419 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2334,r13		! source line 2334
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2406:
! END WHILE...
	jmp	_Label_2399
_Label_2401:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2420
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2422
	.word	12
	.word	4
	.word	_Label_2423
	.word	16
	.word	4
	.word	_Label_2424
	.word	20
	.word	4
	.word	_Label_2425
	.word	-12
	.word	4
	.word	_Label_2426
	.word	-16
	.word	4
	.word	_Label_2427
	.word	-20
	.word	4
	.word	_Label_2428
	.word	-24
	.word	4
	.word	_Label_2429
	.word	-28
	.word	4
	.word	_Label_2430
	.word	-32
	.word	4
	.word	_Label_2431
	.word	-36
	.word	4
	.word	_Label_2432
	.word	-40
	.word	4
	.word	_Label_2433
	.word	-44
	.word	4
	.word	_Label_2434
	.word	-48
	.word	4
	.word	_Label_2435
	.word	-52
	.word	4
	.word	0
_Label_2420:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2421:
	.ascii	"Pself\0"
	.align
_Label_2422:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2423:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2424:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2415\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2398\0"
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
	mov	2343,r13		! source line 2343
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
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
	mov	2362,r13		! source line 2362
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
	mov	2363,r13		! source line 2363
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
	mov	2364,r13		! source line 2364
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
	mov	2364,r13		! source line 2364
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
	.word	_Label_2436
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2438
	.word	12
	.word	4
	.word	_Label_2439
	.word	16
	.word	4
	.word	_Label_2440
	.word	20
	.word	4
	.word	_Label_2441
	.word	24
	.word	4
	.word	0
_Label_2436:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2437:
	.ascii	"Pself\0"
	.align
_Label_2438:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2439:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2440:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2441:
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	2369,r13		! source line 2369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_2442 = &diskBusy
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
	mov	2382,r13		! source line 2382
	mov	"\0\0WH",r10
_Label_2443:
!	jmp	_Label_2444
_Label_2444:
	mov	2382,r13		! source line 2382
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0SE",r10
!   _temp_2446 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2447) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2446  sizeInBytes=4
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
	mov	2385,r13		! source line 2385
	mov	"\0\0SE",r10
!   _temp_2448 = &semUsedInSynchMethods
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
	mov	2388,r13		! source line 2388
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2457 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2451
	cmp	r1,2
	be	_Label_2452
	cmp	r1,3
	be	_Label_2453
	cmp	r1,4
	be	_Label_2454
	cmp	r1,5
	be	_Label_2455
	cmp	r1,6
	be	_Label_2456
	jmp	_Label_2449
! CASE 1...
_Label_2451:
! SEND STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0SE",r10
!   _temp_2458 = &diskBusy
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
	mov	2391,r13		! source line 2391
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2452:
! CALL STATEMENT...
!   _temp_2459 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2459  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2393,r13		! source line 2393
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2453:
! CALL STATEMENT...
!   _temp_2460 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2460  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2395,r13		! source line 2395
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2454:
! CALL STATEMENT...
!   _temp_2461 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2461  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2397,r13		! source line 2397
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2455:
! BREAK STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0BR",r10
	jmp	_Label_2450
! CASE 6...
_Label_2456:
! CALL STATEMENT...
!   _temp_2462 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2462  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2403,r13		! source line 2403
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2449:
! CALL STATEMENT...
!   _temp_2463 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2463  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2405,r13		! source line 2405
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2450:
! END WHILE...
	jmp	_Label_2443
_Label_2445:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2464
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2466
	.word	12
	.word	4
	.word	_Label_2467
	.word	16
	.word	4
	.word	_Label_2468
	.word	20
	.word	4
	.word	_Label_2469
	.word	-12
	.word	4
	.word	_Label_2470
	.word	-16
	.word	4
	.word	_Label_2471
	.word	-20
	.word	4
	.word	_Label_2472
	.word	-24
	.word	4
	.word	_Label_2473
	.word	-28
	.word	4
	.word	_Label_2474
	.word	-32
	.word	4
	.word	_Label_2475
	.word	-36
	.word	4
	.word	_Label_2476
	.word	-40
	.word	4
	.word	_Label_2477
	.word	-44
	.word	4
	.word	_Label_2478
	.word	-48
	.word	4
	.word	_Label_2479
	.word	-52
	.word	4
	.word	0
_Label_2464:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2465:
	.ascii	"Pself\0"
	.align
_Label_2466:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2467:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2468:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2442\0"
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
	mov	2414,r13		! source line 2414
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2429,r13		! source line 2429
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2431,r13		! source line 2431
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
	mov	2432,r13		! source line 2432
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
	mov	2433,r13		! source line 2433
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
	mov	2434,r13		! source line 2434
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
	mov	2434,r13		! source line 2434
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
	.word	_Label_2480
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2482
	.word	12
	.word	4
	.word	_Label_2483
	.word	16
	.word	4
	.word	_Label_2484
	.word	20
	.word	4
	.word	_Label_2485
	.word	24
	.word	4
	.word	0
_Label_2480:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2481:
	.ascii	"Pself\0"
	.align
_Label_2482:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2483:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2484:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2485:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2486
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
_Label_2486:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2487
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2487:
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	2445,r13		! source line 2445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2488 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2488  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2452,r13		! source line 2452
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2453,r13		! source line 2453
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
	mov	2454,r13		! source line 2454
	mov	"\0\0SE",r10
!   _temp_2490 = &fileManagerLock
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
	mov	2457,r13		! source line 2457
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
	mov	2458,r13		! source line 2458
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
	mov	2459,r13		! source line 2459
	mov	"\0\0SE",r10
!   _temp_2493 = &anFCBBecameFree
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
	mov	2460,r13		! source line 2460
	mov	"\0\0AS",r10
!   _temp_2494 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2496 = &_temp_2495
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2496 = _temp_2496 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2498 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3404:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3404
!   _temp_2498 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2500:
!   Data Move: *_temp_2496 = _temp_2498  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3405:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3405
!   _temp_2496 = _temp_2496 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2497 = _temp_2497 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2497) then goto _Label_2500
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2500
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2501 = &_temp_2495
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3406
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3406:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2494 = *_temp_2501  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3407:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3407
! FOR STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2506 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2507 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2506  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2502:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2507 then goto _Label_2505		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2505
_Label_2503:
	mov	2462,r13		! source line 2462
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0AS",r10
!   _temp_2508 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2508 [i ] into _temp_2509
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
!   _temp_2510 = _temp_2509 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2510 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0SE",r10
!   _temp_2511 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2511 [i ] into _temp_2512
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
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_2514 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2514 [i ] into _temp_2515
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
!   _temp_2513 = _temp_2515		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2516 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2513  sizeInBytes=4
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
_Label_2504:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2502
! END FOR
_Label_2505:
! ASSIGNMENT STATEMENT...
	mov	2469,r13		! source line 2469
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
	mov	2470,r13		! source line 2470
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
	mov	2471,r13		! source line 2471
	mov	"\0\0SE",r10
!   _temp_2519 = &anOpenFileBecameFree
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
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   _temp_2520 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2522 = &_temp_2521
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2522 = _temp_2522 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2524 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3408:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3408
!   _temp_2524 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2526:
!   Data Move: *_temp_2522 = _temp_2524  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3409:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3409
!   _temp_2522 = _temp_2522 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2523 = _temp_2523 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2523) then goto _Label_2526
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2526
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2527 = &_temp_2521
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3410
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3410:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2520 = *_temp_2527  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3411:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3411
! FOR STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2532 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2533 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2532  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2528:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2533 then goto _Label_2531		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2531
_Label_2529:
	mov	2474,r13		! source line 2474
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   _temp_2534 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2534 [i ] into _temp_2535
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
!   _temp_2536 = _temp_2535 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2536 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0SE",r10
!   _temp_2538 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2538 [i ] into _temp_2539
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
!   _temp_2537 = _temp_2539		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2540 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2537  sizeInBytes=4
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
_Label_2530:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2528
! END FOR
_Label_2531:
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3412:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3412
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   _temp_2542 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2543 = _temp_2542 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2543 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
	mov	2486,r13		! source line 2486
	mov	"\0\0SE",r10
!   _temp_2544 = &_P_Kernel_frameManager
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
	mov	2487,r13		! source line 2487
	mov	"\0\0SE",r10
!   _temp_2545 = &_P_Kernel_diskDriver
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
	mov	2487,r13		! source line 2487
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
	.word	_Label_2546
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2547
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_2554
	.word	-36
	.word	4
	.word	_Label_2555
	.word	-40
	.word	4
	.word	_Label_2556
	.word	-44
	.word	4
	.word	_Label_2557
	.word	-48
	.word	4
	.word	_Label_2558
	.word	-52
	.word	4
	.word	_Label_2559
	.word	-56
	.word	4
	.word	_Label_2560
	.word	-60
	.word	4
	.word	_Label_2561
	.word	-64
	.word	4
	.word	_Label_2562
	.word	-68
	.word	4
	.word	_Label_2563
	.word	-72
	.word	4
	.word	_Label_2564
	.word	-100
	.word	28
	.word	_Label_2565
	.word	-104
	.word	4
	.word	_Label_2566
	.word	-108
	.word	4
	.word	_Label_2567
	.word	-392
	.word	284
	.word	_Label_2568
	.word	-396
	.word	4
	.word	_Label_2569
	.word	-400
	.word	4
	.word	_Label_2570
	.word	-404
	.word	4
	.word	_Label_2571
	.word	-408
	.word	4
	.word	_Label_2572
	.word	-412
	.word	4
	.word	_Label_2573
	.word	-416
	.word	4
	.word	_Label_2574
	.word	-420
	.word	4
	.word	_Label_2575
	.word	-424
	.word	4
	.word	_Label_2576
	.word	-428
	.word	4
	.word	_Label_2577
	.word	-432
	.word	4
	.word	_Label_2578
	.word	-436
	.word	4
	.word	_Label_2579
	.word	-440
	.word	4
	.word	_Label_2580
	.word	-444
	.word	4
	.word	_Label_2581
	.word	-448
	.word	4
	.word	_Label_2582
	.word	-452
	.word	4
	.word	_Label_2583
	.word	-456
	.word	4
	.word	_Label_2584
	.word	-460
	.word	4
	.word	_Label_2585
	.word	-500
	.word	40
	.word	_Label_2586
	.word	-504
	.word	4
	.word	_Label_2587
	.word	-508
	.word	4
	.word	_Label_2588
	.word	-912
	.word	404
	.word	_Label_2589
	.word	-916
	.word	4
	.word	_Label_2590
	.word	-920
	.word	4
	.word	_Label_2591
	.word	-924
	.word	4
	.word	_Label_2592
	.word	-928
	.word	4
	.word	_Label_2593
	.word	-932
	.word	4
	.word	_Label_2594
	.word	-936
	.word	4
	.word	_Label_2595
	.word	-940
	.word	4
	.word	_Label_2596
	.word	-944
	.word	4
	.word	0
_Label_2546:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2547:
	.ascii	"Pself\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2543\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2596:
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
_Label_3413:
	push	r0
	sub	r1,1,r1
	bne	_Label_3413
	mov	2494,r13		! source line 2494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0SE",r10
!   _temp_2597 = &fileManagerLock
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
!   _temp_2598 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2598  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2497,r13		! source line 2497
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2603 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2604 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2603  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2599:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2604 then goto _Label_2602		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2602
_Label_2600:
	mov	2498,r13		! source line 2498
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2605 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2605  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2499,r13		! source line 2499
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2500,r13		! source line 2500
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2606 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2501,r13		! source line 2501
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
!   _temp_2607 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2607 [i ] into _temp_2608
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
_Label_2601:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2599
! END FOR
_Label_2602:
! CALL STATEMENT...
!   _temp_2609 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2609  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2504,r13		! source line 2504
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2505,r13		! source line 2505
	mov	"\0\0SE",r10
!   _temp_2610 = _function_196_printFCB
	set	_function_196_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2611 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2610  sizeInBytes=4
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
	mov	2506,r13		! source line 2506
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2612 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2612  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2507,r13		! source line 2507
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2617 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2618 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2617  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2613:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2618 then goto _Label_2616		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2616
_Label_2614:
	mov	2508,r13		! source line 2508
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2619 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2619  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2509,r13		! source line 2509
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2510,r13		! source line 2510
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2620 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2620  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2511,r13		! source line 2511
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2622 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2622 [i ] into _temp_2623
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
!   _temp_2621 = _temp_2623		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2621  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2512,r13		! source line 2512
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2624 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2624  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2514,r13		! source line 2514
	mov	"\0\0SE",r10
!   _temp_2625 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2625 [i ] into _temp_2626
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
_Label_2615:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2613
! END FOR
_Label_2616:
! CALL STATEMENT...
!   _temp_2627 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2627  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2516,r13		! source line 2516
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0SE",r10
!   _temp_2628 = _function_195_printOpen
	set	_function_195_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2629 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2628  sizeInBytes=4
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
	mov	2518,r13		! source line 2518
	mov	"\0\0SE",r10
!   _temp_2630 = &fileManagerLock
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
	mov	2518,r13		! source line 2518
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
	.word	_Label_2631
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2632
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2633
	.word	-12
	.word	4
	.word	_Label_2634
	.word	-16
	.word	4
	.word	_Label_2635
	.word	-20
	.word	4
	.word	_Label_2636
	.word	-24
	.word	4
	.word	_Label_2637
	.word	-28
	.word	4
	.word	_Label_2638
	.word	-32
	.word	4
	.word	_Label_2639
	.word	-36
	.word	4
	.word	_Label_2640
	.word	-40
	.word	4
	.word	_Label_2641
	.word	-44
	.word	4
	.word	_Label_2642
	.word	-48
	.word	4
	.word	_Label_2643
	.word	-52
	.word	4
	.word	_Label_2644
	.word	-56
	.word	4
	.word	_Label_2645
	.word	-60
	.word	4
	.word	_Label_2646
	.word	-64
	.word	4
	.word	_Label_2647
	.word	-68
	.word	4
	.word	_Label_2648
	.word	-72
	.word	4
	.word	_Label_2649
	.word	-76
	.word	4
	.word	_Label_2650
	.word	-80
	.word	4
	.word	_Label_2651
	.word	-84
	.word	4
	.word	_Label_2652
	.word	-88
	.word	4
	.word	_Label_2653
	.word	-92
	.word	4
	.word	_Label_2654
	.word	-96
	.word	4
	.word	_Label_2655
	.word	-100
	.word	4
	.word	_Label_2656
	.word	-104
	.word	4
	.word	_Label_2657
	.word	-108
	.word	4
	.word	_Label_2658
	.word	-112
	.word	4
	.word	_Label_2659
	.word	-116
	.word	4
	.word	0
_Label_2631:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2632:
	.ascii	"Pself\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2659:
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
_Label_3414:
	push	r0
	sub	r1,1,r1
	bne	_Label_3414
	mov	2523,r13		! source line 2523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_2660 = &_P_Kernel_fileManager
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
	mov	2540,r13		! source line 2540
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2661
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2661
	jmp	_Label_2662
_Label_2661:
! THEN...
	mov	2541,r13		! source line 2541
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2662:
! SEND STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
!   _temp_2663 = &fileManagerLock
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
	mov	2546,r13		! source line 2546
	mov	"\0\0WH",r10
_Label_2664:
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
!   _temp_2667 = &openFileFreeList
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
!   if result==true then goto _Label_2665 else goto _Label_2666
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2666
	jmp	_Label_2665
_Label_2665:
	mov	2546,r13		! source line 2546
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0SE",r10
!   _temp_2668 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2669 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2668  sizeInBytes=4
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
	jmp	_Label_2664
_Label_2666:
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0AS",r10
	mov	2549,r13		! source line 2549
	mov	"\0\0SE",r10
!   _temp_2670 = &openFileFreeList
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
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2671 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2671 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2672 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2672 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2673 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2673 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0SE",r10
!   _temp_2674 = &fileManagerLock
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
	mov	2559,r13		! source line 2559
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
	.word	_Label_2675
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2677
	.word	12
	.word	4
	.word	_Label_2678
	.word	-12
	.word	4
	.word	_Label_2679
	.word	-16
	.word	4
	.word	_Label_2680
	.word	-20
	.word	4
	.word	_Label_2681
	.word	-24
	.word	4
	.word	_Label_2682
	.word	-28
	.word	4
	.word	_Label_2683
	.word	-32
	.word	4
	.word	_Label_2684
	.word	-36
	.word	4
	.word	_Label_2685
	.word	-40
	.word	4
	.word	_Label_2686
	.word	-44
	.word	4
	.word	_Label_2687
	.word	-48
	.word	4
	.word	_Label_2688
	.word	-52
	.word	4
	.word	_Label_2689
	.word	-56
	.word	4
	.word	0
_Label_2675:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2676:
	.ascii	"Pself\0"
	.align
_Label_2677:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2687:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2688:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2689:
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
_Label_3415:
	push	r0
	sub	r1,1,r1
	bne	_Label_3415
	mov	2564,r13		! source line 2564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
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
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2691		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2691
!	jmp	_Label_2690
_Label_2690:
! THEN...
	mov	2595,r13		! source line 2595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2692 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2692  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2595,r13		! source line 2595
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2691:
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
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
	mov	2600,r13		! source line 2600
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
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
	mov	2602,r13		! source line 2602
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0WH",r10
_Label_2693:
!   if numFiles <= 0 then goto _Label_2695		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2695
!	jmp	_Label_2694
_Label_2694:
	mov	2605,r13		! source line 2605
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2696 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2696  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2606,r13		! source line 2606
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2697 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2697  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2608,r13		! source line 2608
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2698 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2698  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2610,r13		! source line 2610
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2611,r13		! source line 2611
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2702 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2702 then goto _Label_2700		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2700
!	jmp	_Label_2701
_Label_2701:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2704
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
!   _temp_2703 = _temp_2704		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2703  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2613,r13		! source line 2613
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2699 else goto _Label_2700
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2700
	jmp	_Label_2699
_Label_2699:
! THEN...
	mov	2614,r13		! source line 2614
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0BR",r10
	jmp	_Label_2695
! END IF...
_Label_2700:
! ASSIGNMENT STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2693
_Label_2695:
! IF STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2706		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2706
!	jmp	_Label_2705
_Label_2705:
! THEN...
	mov	2622,r13		! source line 2622
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2706:
! SEND STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0SE",r10
!   _temp_2707 = &fileManagerLock
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
	mov	2627,r13		! source line 2627
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2712 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2713 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2712  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2708:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2713 then goto _Label_2711		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2711
_Label_2709:
	mov	2627,r13		! source line 2627
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0AS",r10
!   _temp_2714 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2714 [i ] into _temp_2715
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
!   fcb = _temp_2715		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2719 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2718 = *_temp_2719  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2718 != start then goto _Label_2717		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2717
!	jmp	_Label_2716
_Label_2716:
! THEN...
	mov	2630,r13		! source line 2630
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2723 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2722 = *_temp_2723  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2721 = _temp_2722 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2720 = _temp_2721  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0SE",r10
!   _temp_2724 = &fileManagerLock
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
	mov	2632,r13		! source line 2632
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2717:
!   Increment the FOR-LOOP index variable and jump back
_Label_2710:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2708
! END FOR
_Label_2711:
! WHILE STATEMENT...
	mov	2637,r13		! source line 2637
	mov	"\0\0WH",r10
_Label_2725:
	mov	2637,r13		! source line 2637
	mov	"\0\0SE",r10
!   _temp_2728 = &fcbFreeList
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
!   if result==true then goto _Label_2726 else goto _Label_2727
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2727
	jmp	_Label_2726
_Label_2726:
	mov	2637,r13		! source line 2637
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2638,r13		! source line 2638
	mov	"\0\0SE",r10
!   _temp_2729 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2730 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2729  sizeInBytes=4
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
	jmp	_Label_2725
_Label_2727:
! ASSIGNMENT STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0AS",r10
	mov	2640,r13		! source line 2640
	mov	"\0\0SE",r10
!   _temp_2731 = &fcbFreeList
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
	mov	2643,r13		! source line 2643
	mov	"\0\0SE",r10
!   _temp_2732 = &fileManagerLock
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
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2733 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2733 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2647,r13		! source line 2647
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2734 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2734 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2648,r13		! source line 2648
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2735 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2735 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2649,r13		! source line 2649
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2739 = *_temp_2740  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2739 < 0 then goto _Label_2738		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2738
	jmp	_Label_2736
_Label_2738:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2741 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2741 ) then goto _Label_2737		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2737
!	jmp	_Label_2736
_Label_2736:
! THEN...
	mov	2650,r13		! source line 2650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2742 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2742  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2650,r13		! source line 2650
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2737:
! RETURN STATEMENT...
	mov	2652,r13		! source line 2652
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
	.word	_Label_2743
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2745
	.word	12
	.word	4
	.word	_Label_2746
	.word	-12
	.word	4
	.word	_Label_2747
	.word	-16
	.word	4
	.word	_Label_2748
	.word	-20
	.word	4
	.word	_Label_2749
	.word	-24
	.word	4
	.word	_Label_2750
	.word	-28
	.word	4
	.word	_Label_2751
	.word	-32
	.word	4
	.word	_Label_2752
	.word	-36
	.word	4
	.word	_Label_2753
	.word	-40
	.word	4
	.word	_Label_2754
	.word	-44
	.word	4
	.word	_Label_2755
	.word	-48
	.word	4
	.word	_Label_2756
	.word	-52
	.word	4
	.word	_Label_2757
	.word	-56
	.word	4
	.word	_Label_2758
	.word	-60
	.word	4
	.word	_Label_2759
	.word	-64
	.word	4
	.word	_Label_2760
	.word	-68
	.word	4
	.word	_Label_2761
	.word	-72
	.word	4
	.word	_Label_2762
	.word	-76
	.word	4
	.word	_Label_2763
	.word	-80
	.word	4
	.word	_Label_2764
	.word	-84
	.word	4
	.word	_Label_2765
	.word	-88
	.word	4
	.word	_Label_2766
	.word	-92
	.word	4
	.word	_Label_2767
	.word	-96
	.word	4
	.word	_Label_2768
	.word	-100
	.word	4
	.word	_Label_2769
	.word	-104
	.word	4
	.word	_Label_2770
	.word	-108
	.word	4
	.word	_Label_2771
	.word	-112
	.word	4
	.word	_Label_2772
	.word	-116
	.word	4
	.word	_Label_2773
	.word	-120
	.word	4
	.word	_Label_2774
	.word	-124
	.word	4
	.word	_Label_2775
	.word	-128
	.word	4
	.word	_Label_2776
	.word	-132
	.word	4
	.word	_Label_2777
	.word	-136
	.word	4
	.word	_Label_2778
	.word	-140
	.word	4
	.word	_Label_2779
	.word	-144
	.word	4
	.word	_Label_2780
	.word	-148
	.word	4
	.word	_Label_2781
	.word	-152
	.word	4
	.word	_Label_2782
	.word	-156
	.word	4
	.word	_Label_2783
	.word	-160
	.word	4
	.word	0
_Label_2743:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2744:
	.ascii	"Pself\0"
	.align
_Label_2745:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2733\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2698\0"
	.align
_Label_2774:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2775:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2777:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2778:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2779:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2780:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2781:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2782:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2783:
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	2665,r13		! source line 2665
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0IF",r10
!   _temp_2786 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2786 then goto _Label_2785		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2785
!	jmp	_Label_2784
_Label_2784:
! THEN...
	mov	2668,r13		! source line 2668
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2668,r13		! source line 2668
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2785:
! SEND STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0SE",r10
!   _temp_2787 = &fileManagerLock
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
	mov	2671,r13		! source line 2671
	mov	"\0\0SE",r10
!   _temp_2788 = &_P_Kernel_fileManager
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
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2789 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2789  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2790 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2793 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2792 = *_temp_2793  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2791 = _temp_2792 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2790 = _temp_2791  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2797 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2796 = *_temp_2797  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2796 > 0 then goto _Label_2795		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2795
!	jmp	_Label_2794
_Label_2794:
! THEN...
	mov	2675,r13		! source line 2675
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0SE",r10
!   _temp_2798 = &openFileFreeList
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
	mov	2676,r13		! source line 2676
	mov	"\0\0SE",r10
!   _temp_2799 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2800 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2799  sizeInBytes=4
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
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2801 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2804 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2803 = *_temp_2804  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2802 = _temp_2803 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2801 = _temp_2802  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2808 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2807 = *_temp_2808  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2807 > 0 then goto _Label_2806		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2806
!	jmp	_Label_2805
_Label_2805:
! THEN...
	mov	2679,r13		! source line 2679
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
!   _temp_2809 = &fcbFreeList
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
	mov	2680,r13		! source line 2680
	mov	"\0\0SE",r10
!   _temp_2810 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2811 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2810  sizeInBytes=4
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
_Label_2806:
! END IF...
_Label_2795:
! SEND STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
!   _temp_2812 = &fileManagerLock
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
	mov	2683,r13		! source line 2683
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
	.word	_Label_2813
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2814
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2815
	.word	12
	.word	4
	.word	_Label_2816
	.word	-12
	.word	4
	.word	_Label_2817
	.word	-16
	.word	4
	.word	_Label_2818
	.word	-20
	.word	4
	.word	_Label_2819
	.word	-24
	.word	4
	.word	_Label_2820
	.word	-28
	.word	4
	.word	_Label_2821
	.word	-32
	.word	4
	.word	_Label_2822
	.word	-36
	.word	4
	.word	_Label_2823
	.word	-40
	.word	4
	.word	_Label_2824
	.word	-44
	.word	4
	.word	_Label_2825
	.word	-48
	.word	4
	.word	_Label_2826
	.word	-52
	.word	4
	.word	_Label_2827
	.word	-56
	.word	4
	.word	_Label_2828
	.word	-60
	.word	4
	.word	_Label_2829
	.word	-64
	.word	4
	.word	_Label_2830
	.word	-68
	.word	4
	.word	_Label_2831
	.word	-72
	.word	4
	.word	_Label_2832
	.word	-76
	.word	4
	.word	_Label_2833
	.word	-80
	.word	4
	.word	_Label_2834
	.word	-84
	.word	4
	.word	_Label_2835
	.word	-88
	.word	4
	.word	_Label_2836
	.word	-92
	.word	4
	.word	_Label_2837
	.word	-96
	.word	4
	.word	_Label_2838
	.word	-100
	.word	4
	.word	_Label_2839
	.word	-104
	.word	4
	.word	0
_Label_2813:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2814:
	.ascii	"Pself\0"
	.align
_Label_2815:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2810\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2807\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2803\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2838:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2839:
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	2688,r13		! source line 2688
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2843 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2842 = *_temp_2843  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2842) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2844 = _temp_2842 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2844 ) then goto _Label_2841		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2841
!	jmp	_Label_2840
_Label_2840:
! THEN...
	mov	2694,r13		! source line 2694
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2694,r13		! source line 2694
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2849 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2848 = *_temp_2849  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2848) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2850 = _temp_2848 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2847 = *_temp_2850  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2847 >= 0 then goto _Label_2846		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2846
!	jmp	_Label_2845
_Label_2845:
! THEN...
	mov	2695,r13		! source line 2695
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2851 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2851  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2695,r13		! source line 2695
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2846:
! ASSIGNMENT STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2853 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2852 = *_temp_2853  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2852) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2854 = _temp_2852 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2854 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2698,r13		! source line 2698
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2858 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2857 = *_temp_2858  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2857) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2859 = _temp_2857 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2856 = *_temp_2859  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2862 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2861 = *_temp_2862  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2861) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2863 = _temp_2861 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2860 = *_temp_2863  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2855 = _temp_2856 + _temp_2860		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2866 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2865 = *_temp_2866  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2865) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2867 = _temp_2865 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2864 = *_temp_2867  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2868 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2855  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2864  sizeInBytes=4
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
_Label_2841:
! RETURN STATEMENT...
	mov	2693,r13		! source line 2693
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
	.word	_Label_2869
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2870
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2871
	.word	12
	.word	4
	.word	_Label_2872
	.word	-12
	.word	4
	.word	_Label_2873
	.word	-16
	.word	4
	.word	_Label_2874
	.word	-20
	.word	4
	.word	_Label_2875
	.word	-24
	.word	4
	.word	_Label_2876
	.word	-28
	.word	4
	.word	_Label_2877
	.word	-32
	.word	4
	.word	_Label_2878
	.word	-36
	.word	4
	.word	_Label_2879
	.word	-40
	.word	4
	.word	_Label_2880
	.word	-44
	.word	4
	.word	_Label_2881
	.word	-48
	.word	4
	.word	_Label_2882
	.word	-52
	.word	4
	.word	_Label_2883
	.word	-56
	.word	4
	.word	_Label_2884
	.word	-60
	.word	4
	.word	_Label_2885
	.word	-64
	.word	4
	.word	_Label_2886
	.word	-68
	.word	4
	.word	_Label_2887
	.word	-72
	.word	4
	.word	_Label_2888
	.word	-76
	.word	4
	.word	_Label_2889
	.word	-80
	.word	4
	.word	_Label_2890
	.word	-84
	.word	4
	.word	_Label_2891
	.word	-88
	.word	4
	.word	_Label_2892
	.word	-92
	.word	4
	.word	_Label_2893
	.word	-96
	.word	4
	.word	_Label_2894
	.word	-100
	.word	4
	.word	_Label_2895
	.word	-104
	.word	4
	.word	_Label_2896
	.word	-108
	.word	4
	.word	0
_Label_2869:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2870:
	.ascii	"Pself\0"
	.align
_Label_2871:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2886:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2896:
	.byte	'?'
	.ascii	"_temp_2842\0"
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
	mov	2707,r13		! source line 2707
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
!   _temp_2897 = &fileManagerLock
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
	mov	2723,r13		! source line 2723
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2903		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2903
!   _temp_2902 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2904
_Label_2903:
!   _temp_2902 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2904:
!   if _temp_2902 then goto _Label_2901 else goto _Label_2898
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2898
	jmp	_Label_2901
_Label_2901:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2907 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2906 = *_temp_2907  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2906 == 0 then goto _Label_2908		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2908
!   _temp_2905 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2909
_Label_2908:
!   _temp_2905 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2909:
!   if _temp_2905 then goto _Label_2900 else goto _Label_2898
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2898
	jmp	_Label_2900
_Label_2900:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2912 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2911 = *_temp_2912  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2911) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2913 = _temp_2911 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2910 = *_temp_2913  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2910 >= 0 then goto _Label_2899		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2899
!	jmp	_Label_2898
_Label_2898:
! THEN...
	mov	2724,r13		! source line 2724
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2914 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2914  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2724,r13		! source line 2724
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2899:
! ASSIGNMENT STATEMENT...
	mov	2726,r13		! source line 2726
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2915 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2915  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0WH",r10
_Label_2916:
!   if numBytes <= 0 then goto _Label_2918		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2918
!	jmp	_Label_2917
_Label_2917:
	mov	2727,r13		! source line 2727
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
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
	mov	2737,r13		! source line 2737
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
	mov	2741,r13		! source line 2741
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2922 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2921 = *_temp_2922  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2921 == sector then goto _Label_2920		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2920
!	jmp	_Label_2919
_Label_2919:
! THEN...
	mov	2742,r13		! source line 2742
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2923) then goto _runtimeErrorNullPointer
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
	mov	2744,r13		! source line 2744
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2926 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2925 = *_temp_2926  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2924 = sector + _temp_2925		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2928 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2927 = *_temp_2928  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2929 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2924  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2927  sizeInBytes=4
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
	mov	2747,r13		! source line 2747
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2930 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2930 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2931 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2931 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2920:
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2933 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2932 = *_temp_2933  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2932 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0AS",r10
!   _temp_2934 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2934  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2751,r13		! source line 2751
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
	mov	2755,r13		! source line 2755
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2916
_Label_2918:
! SEND STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0SE",r10
!   _temp_2935 = &fileManagerLock
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
	mov	2766,r13		! source line 2766
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
	.word	_Label_2936
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2938
	.word	12
	.word	4
	.word	_Label_2939
	.word	16
	.word	4
	.word	_Label_2940
	.word	20
	.word	4
	.word	_Label_2941
	.word	24
	.word	4
	.word	_Label_2942
	.word	-16
	.word	4
	.word	_Label_2943
	.word	-20
	.word	4
	.word	_Label_2944
	.word	-24
	.word	4
	.word	_Label_2945
	.word	-28
	.word	4
	.word	_Label_2946
	.word	-32
	.word	4
	.word	_Label_2947
	.word	-36
	.word	4
	.word	_Label_2948
	.word	-40
	.word	4
	.word	_Label_2949
	.word	-44
	.word	4
	.word	_Label_2950
	.word	-48
	.word	4
	.word	_Label_2951
	.word	-52
	.word	4
	.word	_Label_2952
	.word	-56
	.word	4
	.word	_Label_2953
	.word	-60
	.word	4
	.word	_Label_2954
	.word	-64
	.word	4
	.word	_Label_2955
	.word	-68
	.word	4
	.word	_Label_2956
	.word	-72
	.word	4
	.word	_Label_2957
	.word	-76
	.word	4
	.word	_Label_2958
	.word	-80
	.word	4
	.word	_Label_2959
	.word	-84
	.word	4
	.word	_Label_2960
	.word	-88
	.word	4
	.word	_Label_2961
	.word	-92
	.word	4
	.word	_Label_2962
	.word	-96
	.word	4
	.word	_Label_2963
	.word	-100
	.word	4
	.word	_Label_2964
	.word	-104
	.word	4
	.word	_Label_2965
	.word	-9
	.word	1
	.word	_Label_2966
	.word	-10
	.word	1
	.word	_Label_2967
	.word	-108
	.word	4
	.word	_Label_2968
	.word	-112
	.word	4
	.word	_Label_2969
	.word	-116
	.word	4
	.word	_Label_2970
	.word	-120
	.word	4
	.word	_Label_2971
	.word	-124
	.word	4
	.word	_Label_2972
	.word	-128
	.word	4
	.word	0
_Label_2936:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2937:
	.ascii	"Pself\0"
	.align
_Label_2938:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2939:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2940:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2941:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2965:
	.byte	'C'
	.ascii	"_temp_2905\0"
	.align
_Label_2966:
	.byte	'C'
	.ascii	"_temp_2902\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2968:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2969:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2970:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2971:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2972:
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
_Label_3419:
	push	r0
	sub	r1,1,r1
	bne	_Label_3419
	mov	2771,r13		! source line 2771
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0SE",r10
!   _temp_2973 = &fileManagerLock
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
	mov	2788,r13		! source line 2788
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2979		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2979
!   _temp_2978 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2980
_Label_2979:
!   _temp_2978 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2980:
!   if _temp_2978 then goto _Label_2977 else goto _Label_2974
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2974
	jmp	_Label_2977
_Label_2977:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2983 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2982 = *_temp_2983  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2982 == 0 then goto _Label_2984		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2984
!   _temp_2981 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2985
_Label_2984:
!   _temp_2981 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2985:
!   if _temp_2981 then goto _Label_2976 else goto _Label_2974
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2974
	jmp	_Label_2976
_Label_2976:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2988 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2987 = *_temp_2988  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2987) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2989 = _temp_2987 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2986 = *_temp_2989  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2986 >= 0 then goto _Label_2975		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2975
!	jmp	_Label_2974
_Label_2974:
! THEN...
	mov	2789,r13		! source line 2789
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2990 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2990  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2789,r13		! source line 2789
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2975:
! ASSIGNMENT STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2991 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2991  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0WH",r10
_Label_2992:
!   if numBytes <= 0 then goto _Label_2994		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2994
!	jmp	_Label_2993
_Label_2993:
	mov	2792,r13		! source line 2792
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2801,r13		! source line 2801
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
	mov	2802,r13		! source line 2802
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
	mov	2806,r13		! source line 2806
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2998 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2997 = *_temp_2998  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2997 == sector then goto _Label_2996		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2996
!	jmp	_Label_2995
_Label_2995:
! THEN...
	mov	2808,r13		! source line 2808
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2999) then goto _runtimeErrorNullPointer
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
_Label_2996:
! ASSIGNMENT STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3001 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3000 = *_temp_3001  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3000 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   _temp_3002 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3002  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3006 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3005 = *_temp_3006  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3005 != sector then goto _Label_3004		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3004
!	jmp	_Label_3003
_Label_3003:
	jmp	_Label_3007
_Label_3004:
! ELSE...
	mov	2814,r13		! source line 2814
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3010
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3010
	jmp	_Label_3009
_Label_3010:
!   if bytesToMove != 8192 then goto _Label_3009		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3009
!	jmp	_Label_3008
_Label_3008:
	jmp	_Label_3011
_Label_3009:
! ELSE...
	mov	2818,r13		! source line 2818
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3014 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3013 = *_temp_3014  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3012 = sector + _temp_3013		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3016 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3015 = *_temp_3016  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3017 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3012  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3015  sizeInBytes=4
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
_Label_3011:
! END IF...
_Label_3007:
! ASSIGNMENT STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3018 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3018 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3019 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3019 = 1  (sizeInBytes=1)
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
	mov	2827,r13		! source line 2827
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2992
_Label_2994:
! SEND STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0SE",r10
!   _temp_3020 = &fileManagerLock
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
	mov	2839,r13		! source line 2839
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
	.word	_Label_3021
	.word	20		! total size of parameters
	.word	144		! frame size = 144
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
	.word	24
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
	.word	_Label_3037
	.word	-56
	.word	4
	.word	_Label_3038
	.word	-60
	.word	4
	.word	_Label_3039
	.word	-64
	.word	4
	.word	_Label_3040
	.word	-68
	.word	4
	.word	_Label_3041
	.word	-72
	.word	4
	.word	_Label_3042
	.word	-76
	.word	4
	.word	_Label_3043
	.word	-80
	.word	4
	.word	_Label_3044
	.word	-84
	.word	4
	.word	_Label_3045
	.word	-88
	.word	4
	.word	_Label_3046
	.word	-92
	.word	4
	.word	_Label_3047
	.word	-96
	.word	4
	.word	_Label_3048
	.word	-100
	.word	4
	.word	_Label_3049
	.word	-104
	.word	4
	.word	_Label_3050
	.word	-108
	.word	4
	.word	_Label_3051
	.word	-112
	.word	4
	.word	_Label_3052
	.word	-9
	.word	1
	.word	_Label_3053
	.word	-10
	.word	1
	.word	_Label_3054
	.word	-116
	.word	4
	.word	_Label_3055
	.word	-120
	.word	4
	.word	_Label_3056
	.word	-124
	.word	4
	.word	_Label_3057
	.word	-128
	.word	4
	.word	_Label_3058
	.word	-132
	.word	4
	.word	_Label_3059
	.word	-136
	.word	4
	.word	0
_Label_3021:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3022:
	.ascii	"Pself\0"
	.align
_Label_3023:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3024:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3025:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3026:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_3020\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_3019\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_3018\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_3017\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_3016\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_3015\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_3014\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_3013\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_3012\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_2998\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_2997\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3052:
	.byte	'C'
	.ascii	"_temp_2981\0"
	.align
_Label_3053:
	.byte	'C'
	.ascii	"_temp_2978\0"
	.align
_Label_3054:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3055:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3056:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3057:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3058:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3059:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3060
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3060:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3061
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3061:
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
_Label_3420:
	push	r0
	sub	r1,1,r1
	bne	_Label_3420
	mov	2875,r13		! source line 2875
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0AS",r10
	mov	2877,r13		! source line 2877
	mov	"\0\0SE",r10
!   _temp_3062 = &_P_Kernel_frameManager
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
	mov	2878,r13		! source line 2878
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2880,r13		! source line 2880
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
	.word	_Label_3063
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3065
	.word	-12
	.word	4
	.word	0
_Label_3063:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3064:
	.ascii	"Pself\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3062\0"
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
_Label_3421:
	push	r0
	sub	r1,1,r1
	bne	_Label_3421
	mov	2885,r13		! source line 2885
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3066 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3066  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2886,r13		! source line 2886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2887,r13		! source line 2887
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3067 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3067  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2888,r13		! source line 2888
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3068 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3068  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2890,r13		! source line 2890
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3069 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3069  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2892,r13		! source line 2892
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2893,r13		! source line 2893
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3070 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3070  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2894,r13		! source line 2894
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2895,r13		! source line 2895
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3071 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3071  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2896,r13		! source line 2896
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2897,r13		! source line 2897
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2898,r13		! source line 2898
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2898,r13		! source line 2898
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
	.word	_Label_3072
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3073
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3074
	.word	-12
	.word	4
	.word	_Label_3075
	.word	-16
	.word	4
	.word	_Label_3076
	.word	-20
	.word	4
	.word	_Label_3077
	.word	-24
	.word	4
	.word	_Label_3078
	.word	-28
	.word	4
	.word	_Label_3079
	.word	-32
	.word	4
	.word	0
_Label_3072:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3073:
	.ascii	"Pself\0"
	.align
_Label_3074:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3075:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3076:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3068\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3067\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3066\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3080
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3080:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3081
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3081:
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
_Label_3422:
	push	r0
	sub	r1,1,r1
	bne	_Label_3422
	mov	2909,r13		! source line 2909
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3082 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3082  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2910,r13		! source line 2910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2911,r13		! source line 2911
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3083 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3083  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3085		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3085
!	jmp	_Label_3084
_Label_3084:
! THEN...
	mov	2914,r13		! source line 2914
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2914,r13		! source line 2914
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
	jmp	_Label_3086
_Label_3085:
! ELSE...
	mov	2916,r13		! source line 2916
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3087 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3087  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2916,r13		! source line 2916
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3086:
! RETURN STATEMENT...
	mov	2913,r13		! source line 2913
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
	.word	_Label_3088
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3089
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3090
	.word	-12
	.word	4
	.word	_Label_3091
	.word	-16
	.word	4
	.word	_Label_3092
	.word	-20
	.word	4
	.word	0
_Label_3088:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3089:
	.ascii	"Pself\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3087\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3082\0"
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
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
	mov	2922,r13		! source line 2922
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0SE",r10
!   _temp_3093 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3094 = _temp_3093 + 4
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
	mov	2933,r13		! source line 2933
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2934,r13		! source line 2934
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
	mov	2935,r13		! source line 2935
	mov	"\0\0SE",r10
!   _temp_3095 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3096 = _temp_3095 + 4
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
	mov	2936,r13		! source line 2936
	mov	"\0\0RE",r10
	mov	2936,r13		! source line 2936
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3099 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3098  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3097  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3097  (sizeInBytes=1)
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
	.word	_Label_3100
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3101
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3102
	.word	12
	.word	4
	.word	_Label_3103
	.word	16
	.word	4
	.word	_Label_3104
	.word	-16
	.word	4
	.word	_Label_3105
	.word	-20
	.word	4
	.word	_Label_3106
	.word	-9
	.word	1
	.word	_Label_3107
	.word	-24
	.word	4
	.word	_Label_3108
	.word	-28
	.word	4
	.word	_Label_3109
	.word	-32
	.word	4
	.word	_Label_3110
	.word	-36
	.word	4
	.word	_Label_3111
	.word	-40
	.word	4
	.word	0
_Label_3100:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3101:
	.ascii	"Pself\0"
	.align
_Label_3102:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3103:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3099\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3098\0"
	.align
_Label_3106:
	.byte	'C'
	.ascii	"_temp_3097\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3096\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3095\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3094\0"
	.align
_Label_3110:
	.byte	'?'
	.ascii	"_temp_3093\0"
	.align
_Label_3111:
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
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
	mov	2941,r13		! source line 2941
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0IF",r10
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
!   _temp_3115 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3116) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3115  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3114  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3114 then goto _Label_3113 else goto _Label_3112
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3112
	jmp	_Label_3113
_Label_3112:
! THEN...
	mov	2947,r13		! source line 2947
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3117 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3117  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2947,r13		! source line 2947
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3113:
! RETURN STATEMENT...
	mov	2949,r13		! source line 2949
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
	.word	_Label_3118
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3119
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3120
	.word	-16
	.word	4
	.word	_Label_3121
	.word	-20
	.word	4
	.word	_Label_3122
	.word	-24
	.word	4
	.word	_Label_3123
	.word	-9
	.word	1
	.word	_Label_3124
	.word	-28
	.word	4
	.word	0
_Label_3118:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3119:
	.ascii	"Pself\0"
	.align
_Label_3120:
	.byte	'?'
	.ascii	"_temp_3117\0"
	.align
_Label_3121:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3123:
	.byte	'C'
	.ascii	"_temp_3114\0"
	.align
_Label_3124:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	2954,r13		! source line 2954
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2980,r13		! source line 2980
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3128 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3127 = *_temp_3128  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3127) then goto _Label_3126
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3126
!	jmp	_Label_3125
_Label_3125:
! THEN...
	mov	2981,r13		! source line 2981
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3129 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3129  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2981,r13		! source line 2981
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3126:
! IF STATEMENT...
	mov	2985,r13		! source line 2985
	mov	"\0\0IF",r10
	mov	2985,r13		! source line 2985
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3133) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3132  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3132 == 1112300152 then goto _Label_3131		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3131
!	jmp	_Label_3130
_Label_3130:
! THEN...
	mov	2986,r13		! source line 2986
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3134 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3134  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2987,r13		! source line 2987
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3131:
! ASSIGNMENT STATEMENT...
	mov	2991,r13		! source line 2991
	mov	"\0\0AS",r10
	mov	2991,r13		! source line 2991
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3135) then goto _runtimeErrorNullPointer
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
	mov	2992,r13		! source line 2992
	mov	"\0\0AS",r10
	mov	2992,r13		! source line 2992
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3136) then goto _runtimeErrorNullPointer
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
	mov	2993,r13		! source line 2993
	mov	"\0\0AS",r10
	mov	2993,r13		! source line 2993
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3137) then goto _runtimeErrorNullPointer
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
	mov	2994,r13		! source line 2994
	mov	"\0\0AS",r10
	mov	2994,r13		! source line 2994
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3138) then goto _runtimeErrorNullPointer
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
	mov	2995,r13		! source line 2995
	mov	"\0\0AS",r10
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3139) then goto _runtimeErrorNullPointer
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
	mov	2996,r13		! source line 2996
	mov	"\0\0AS",r10
	mov	2996,r13		! source line 2996
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3140) then goto _runtimeErrorNullPointer
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
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
!   _temp_3143 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3143) then goto _Label_3142
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3142
!	jmp	_Label_3141
_Label_3141:
! THEN...
	mov	3000,r13		! source line 3000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3144 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	3000,r13		! source line 3000
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3001,r13		! source line 3001
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3142:
! ASSIGNMENT STATEMENT...
	mov	3003,r13		! source line 3003
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
	mov	3007,r13		! source line 3007
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3146
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3146
!	jmp	_Label_3145
_Label_3145:
! THEN...
	mov	3008,r13		! source line 3008
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3147 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3147  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3008,r13		! source line 3008
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3146:
! IF STATEMENT...
	mov	3013,r13		! source line 3013
	mov	"\0\0IF",r10
!   _temp_3150 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3150) then goto _Label_3149
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3149
!	jmp	_Label_3148
_Label_3148:
! THEN...
	mov	3014,r13		! source line 3014
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3151 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3151  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3014,r13		! source line 3014
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3015,r13		! source line 3015
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3149:
! IF STATEMENT...
	mov	3017,r13		! source line 3017
	mov	"\0\0IF",r10
!   _temp_3154 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3154 then goto _Label_3153		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3153
!	jmp	_Label_3152
_Label_3152:
! THEN...
	mov	3018,r13		! source line 3018
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3155 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3155  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3018,r13		! source line 3018
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3153:
! ASSIGNMENT STATEMENT...
	mov	3021,r13		! source line 3021
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
	mov	3024,r13		! source line 3024
	mov	"\0\0IF",r10
!   _temp_3158 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3158) then goto _Label_3157
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3157
!	jmp	_Label_3156
_Label_3156:
! THEN...
	mov	3025,r13		! source line 3025
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3159 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3159  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3025,r13		! source line 3025
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3026,r13		! source line 3026
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3157:
! IF STATEMENT...
	mov	3028,r13		! source line 3028
	mov	"\0\0IF",r10
!   _temp_3162 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3162 then goto _Label_3161		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3161
!	jmp	_Label_3160
_Label_3160:
! THEN...
	mov	3029,r13		! source line 3029
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3163 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3163  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3029,r13		! source line 3029
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3161:
! ASSIGNMENT STATEMENT...
	mov	3032,r13		! source line 3032
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
	mov	3035,r13		! source line 3035
	mov	"\0\0AS",r10
!   _temp_3166 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3165 = _temp_3166 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3164 = _temp_3165 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3164 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3050,r13		! source line 3050
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3168		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3168
!	jmp	_Label_3167
_Label_3167:
! THEN...
	mov	3051,r13		! source line 3051
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3169 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3169  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3051,r13		! source line 3051
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3170 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3170  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3052,r13		! source line 3052
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3171 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3171  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3053,r13		! source line 3053
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3054,r13		! source line 3054
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3168:
! SEND STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0SE",r10
!   _temp_3172 = &_P_Kernel_frameManager
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
	mov	3062,r13		! source line 3062
	mov	"\0\0IF",r10
	mov	3062,r13		! source line 3062
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3176) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3175  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3175 == 707406378 then goto _Label_3174		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3174
!	jmp	_Label_3173
_Label_3173:
! THEN...
	mov	3063,r13		! source line 3063
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3177 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3177  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3063,r13		! source line 3063
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0SE",r10
!   _temp_3178 = &_P_Kernel_frameManager
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
	mov	3065,r13		! source line 3065
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3174:
! ASSIGNMENT STATEMENT...
	mov	3069,r13		! source line 3069
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
	mov	3070,r13		! source line 3070
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3183 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3184 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3183  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3179:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3184 then goto _Label_3182		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3182
_Label_3180:
	mov	3070,r13		! source line 3070
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3071,r13		! source line 3071
	mov	"\0\0AS",r10
	mov	3071,r13		! source line 3071
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
	mov	3074,r13		! source line 3074
	mov	"\0\0IF",r10
	mov	3074,r13		! source line 3074
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3188) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3187  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3187 then goto _Label_3186 else goto _Label_3185
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3185
	jmp	_Label_3186
_Label_3185:
! THEN...
	mov	3075,r13		! source line 3075
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3189 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3189  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3075,r13		! source line 3075
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
!   _temp_3190 = &_P_Kernel_frameManager
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
_Label_3186:
! SEND STATEMENT...
	mov	3079,r13		! source line 3079
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
	mov	3080,r13		! source line 3080
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3181:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3179
! END FOR
_Label_3182:
! IF STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0IF",r10
	mov	3084,r13		! source line 3084
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3194) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3193  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3193 == 707406378 then goto _Label_3192		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3192
!	jmp	_Label_3191
_Label_3191:
! THEN...
	mov	3085,r13		! source line 3085
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3195 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3195  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3085,r13		! source line 3085
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3086,r13		! source line 3086
	mov	"\0\0SE",r10
!   _temp_3196 = &_P_Kernel_frameManager
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
	mov	3087,r13		! source line 3087
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3192:
! FOR STATEMENT...
	mov	3091,r13		! source line 3091
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3201 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3202 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3201  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3197:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3202 then goto _Label_3200		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3200
_Label_3198:
	mov	3091,r13		! source line 3091
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0AS",r10
	mov	3092,r13		! source line 3092
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
	mov	3095,r13		! source line 3095
	mov	"\0\0IF",r10
	mov	3095,r13		! source line 3095
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3206) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3205  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3205 then goto _Label_3204 else goto _Label_3203
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3203
	jmp	_Label_3204
_Label_3203:
! THEN...
	mov	3096,r13		! source line 3096
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3207 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3207  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3096,r13		! source line 3096
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3097,r13		! source line 3097
	mov	"\0\0SE",r10
!   _temp_3208 = &_P_Kernel_frameManager
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
	mov	3098,r13		! source line 3098
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3204:
! ASSIGNMENT STATEMENT...
	mov	3100,r13		! source line 3100
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3199:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3197
! END FOR
_Label_3200:
! IF STATEMENT...
	mov	3104,r13		! source line 3104
	mov	"\0\0IF",r10
	mov	3104,r13		! source line 3104
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3212) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3211  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3211 == 707406378 then goto _Label_3210		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3210
!	jmp	_Label_3209
_Label_3209:
! THEN...
	mov	3105,r13		! source line 3105
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3213 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3213  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3105,r13		! source line 3105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0SE",r10
!   _temp_3214 = &_P_Kernel_frameManager
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
	mov	3107,r13		! source line 3107
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3210:
! ASSIGNMENT STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0AS",r10
	mov	3111,r13		! source line 3111
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
	mov	3115,r13		! source line 3115
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3118,r13		! source line 3118
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
	.word	_Label_3215
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3216
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3217
	.word	12
	.word	4
	.word	_Label_3218
	.word	-16
	.word	4
	.word	_Label_3219
	.word	-20
	.word	4
	.word	_Label_3220
	.word	-24
	.word	4
	.word	_Label_3221
	.word	-28
	.word	4
	.word	_Label_3222
	.word	-32
	.word	4
	.word	_Label_3223
	.word	-36
	.word	4
	.word	_Label_3224
	.word	-40
	.word	4
	.word	_Label_3225
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_3236
	.word	-80
	.word	4
	.word	_Label_3237
	.word	-84
	.word	4
	.word	_Label_3238
	.word	-88
	.word	4
	.word	_Label_3239
	.word	-92
	.word	4
	.word	_Label_3240
	.word	-96
	.word	4
	.word	_Label_3241
	.word	-100
	.word	4
	.word	_Label_3242
	.word	-104
	.word	4
	.word	_Label_3243
	.word	-108
	.word	4
	.word	_Label_3244
	.word	-112
	.word	4
	.word	_Label_3245
	.word	-116
	.word	4
	.word	_Label_3246
	.word	-120
	.word	4
	.word	_Label_3247
	.word	-124
	.word	4
	.word	_Label_3248
	.word	-128
	.word	4
	.word	_Label_3249
	.word	-132
	.word	4
	.word	_Label_3250
	.word	-136
	.word	4
	.word	_Label_3251
	.word	-140
	.word	4
	.word	_Label_3252
	.word	-144
	.word	4
	.word	_Label_3253
	.word	-148
	.word	4
	.word	_Label_3254
	.word	-152
	.word	4
	.word	_Label_3255
	.word	-156
	.word	4
	.word	_Label_3256
	.word	-160
	.word	4
	.word	_Label_3257
	.word	-164
	.word	4
	.word	_Label_3258
	.word	-168
	.word	4
	.word	_Label_3259
	.word	-172
	.word	4
	.word	_Label_3260
	.word	-176
	.word	4
	.word	_Label_3261
	.word	-180
	.word	4
	.word	_Label_3262
	.word	-184
	.word	4
	.word	_Label_3263
	.word	-188
	.word	4
	.word	_Label_3264
	.word	-192
	.word	4
	.word	_Label_3265
	.word	-196
	.word	4
	.word	_Label_3266
	.word	-200
	.word	4
	.word	_Label_3267
	.word	-204
	.word	4
	.word	_Label_3268
	.word	-208
	.word	4
	.word	_Label_3269
	.word	-212
	.word	4
	.word	_Label_3270
	.word	-216
	.word	4
	.word	_Label_3271
	.word	-220
	.word	4
	.word	_Label_3272
	.word	-224
	.word	4
	.word	_Label_3273
	.word	-228
	.word	4
	.word	_Label_3274
	.word	-232
	.word	4
	.word	_Label_3275
	.word	-236
	.word	4
	.word	_Label_3276
	.word	-240
	.word	4
	.word	_Label_3277
	.word	-244
	.word	4
	.word	_Label_3278
	.word	-248
	.word	4
	.word	_Label_3279
	.word	-252
	.word	4
	.word	_Label_3280
	.word	-256
	.word	4
	.word	_Label_3281
	.word	-260
	.word	4
	.word	_Label_3282
	.word	-264
	.word	4
	.word	_Label_3283
	.word	-268
	.word	4
	.word	0
_Label_3215:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3216:
	.ascii	"Pself\0"
	.align
_Label_3217:
	.byte	'P'
	.ascii	"addrSpace\0"
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
	.ascii	"_temp_3208\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3206\0"
	.align
_Label_3225:
	.byte	'C'
	.ascii	"_temp_3205\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3202\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3235:
	.byte	'C'
	.ascii	"_temp_3187\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3178\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3169\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3166\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3154\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3147\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3259:
	.byte	'?'
	.ascii	"_temp_3143\0"
	.align
_Label_3260:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3261:
	.byte	'?'
	.ascii	"_temp_3139\0"
	.align
_Label_3262:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3263:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3264:
	.byte	'?'
	.ascii	"_temp_3136\0"
	.align
_Label_3265:
	.byte	'?'
	.ascii	"_temp_3135\0"
	.align
_Label_3266:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3267:
	.byte	'?'
	.ascii	"_temp_3133\0"
	.align
_Label_3268:
	.byte	'?'
	.ascii	"_temp_3132\0"
	.align
_Label_3269:
	.byte	'?'
	.ascii	"_temp_3129\0"
	.align
_Label_3270:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3271:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3272:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3273:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3274:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3275:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3276:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3277:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3278:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3279:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3280:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3281:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3282:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3283:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
