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
_Label_3271:
	push	r0
	sub	r1,1,r1
	bne	_Label_3271
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
_Label_3272:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3272
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
_Label_3273:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3273
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
_Label_3274:
	push	r0
	sub	r1,1,r1
	bne	_Label_3274
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
_Label_3275:
	push	r0
	sub	r1,1,r1
	bne	_Label_3275
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
_Label_3276:
	push	r0
	sub	r1,1,r1
	bne	_Label_3276
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
_Label_3277:
	push	r0
	sub	r1,1,r1
	bne	_Label_3277
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
_Label_3278:
	push	r0
	sub	r1,1,r1
	bne	_Label_3278
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
_Label_3279:
	push	r0
	sub	r1,1,r1
	bne	_Label_3279
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
_Label_3280:
	push	r0
	sub	r1,1,r1
	bne	_Label_3280
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
_Label_3281:
	push	r0
	sub	r1,1,r1
	bne	_Label_3281
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
_Label_3282:
	push	r0
	sub	r1,1,r1
	bne	_Label_3282
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
	mov	15,r1
_Label_3283:
	push	r0
	sub	r1,1,r1
	bne	_Label_3283
	mov	1114,r13		! source line 1114
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1125,r13		! source line 1125
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
	mov	1128,r13		! source line 1128
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1131,r13		! source line 1131
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
	mov	1132,r13		! source line 1132
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
	mov	1133,r13		! source line 1133
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
	mov	1134,r13		! source line 1134
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
	mov	1139,r13		! source line 1139
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1142,r13		! source line 1142
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
	mov	1143,r13		! source line 1143
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
	mov	1146,r13		! source line 1146
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! RETURN STATEMENT...
	mov	1146,r13		! source line 1146
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
_Label_3284:
	push	r0
	sub	r1,1,r1
	bne	_Label_3284
	mov	1151,r13		! source line 1151
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
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
	mov	1156,r13		! source line 1156
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
	mov	1157,r13		! source line 1157
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
	mov	1157,r13		! source line 1157
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
_Label_3285:
	push	r0
	sub	r1,1,r1
	bne	_Label_3285
	mov	1163,r13		! source line 1163
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
	mov	1181,r13		! source line 1181
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
	mov	1182,r13		! source line 1182
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
	mov	1183,r13		! source line 1183
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
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
	mov	1186,r13		! source line 1186
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
	mov	1188,r13		! source line 1188
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_431
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_431
	jmp	_Label_432
_Label_431:
! THEN...
	mov	1189,r13		! source line 1189
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1189,r13		! source line 1189
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_432:
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
	mov	1195,r13		! source line 1195
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
	mov	1196,r13		! source line 1196
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
	mov	1200,r13		! source line 1200
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
	mov	1201,r13		! source line 1201
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
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1202,r13		! source line 1202
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
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
	mov	1204,r13		! source line 1204
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
	mov	1205,r13		! source line 1205
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1205,r13		! source line 1205
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
_Label_3286:
	push	r0
	sub	r1,1,r1
	bne	_Label_3286
	mov	1720,r13		! source line 1720
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1732,r13		! source line 1732
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
	mov	1733,r13		! source line 1733
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
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
_Label_3287:
	push	r0
	sub	r1,1,r1
	bne	_Label_3287
	mov	1737,r13		! source line 1737
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1749,r13		! source line 1749
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1751,r13		! source line 1751
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
	mov	1752,r13		! source line 1752
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1752,r13		! source line 1752
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
	mov	1751,r13		! source line 1751
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
	mov	1759,r13		! source line 1759
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
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
_Label_3288:
	push	r0
	sub	r1,1,r1
	bne	_Label_3288
	mov	1773,r13		! source line 1773
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1779,r13		! source line 1779
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
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
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
_Label_3289:
	push	r0
	sub	r1,1,r1
	bne	_Label_3289
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
!   _temp_490 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
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
_Label_3290:
	push	r0
	sub	r1,1,r1
	bne	_Label_3290
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
!   _temp_493 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
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
_Label_3291:
	push	r0
	sub	r1,1,r1
	bne	_Label_3291
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
!   _temp_496 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
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
_Label_3292:
	push	r0
	sub	r1,1,r1
	bne	_Label_3292
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
!   _temp_499 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
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
_Label_3293:
	push	r0
	sub	r1,1,r1
	bne	_Label_3293
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
!   _temp_502 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
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
_Label_3294:
	push	r0
	sub	r1,1,r1
	bne	_Label_3294
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
!   _temp_505 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
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
_Label_3295:
	push	r0
	sub	r1,1,r1
	bne	_Label_3295
	mov	1857,r13		! source line 1857
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
	mov	1862,r13		! source line 1862
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1863,r13		! source line 1863
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
	mov	1864,r13		! source line 1864
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1867,r13		! source line 1867
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
	mov	1868,r13		! source line 1868
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1868,r13		! source line 1868
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
	mov	1870,r13		! source line 1870
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_517 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1870,r13		! source line 1870
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_516:
! SEND STATEMENT...
	mov	1872,r13		! source line 1872
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
	mov	1878,r13		! source line 1878
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
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
_Label_3296:
	push	r0
	sub	r1,1,r1
	bne	_Label_3296
	mov	1883,r13		! source line 1883
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1904,r13		! source line 1904
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3297
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_527
_Label_3297:
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
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   Call the function
	mov	1906,r13		! source line 1906
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
	mov	1908,r13		! source line 1908
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1909,r13		! source line 1909
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
	mov	1911,r13		! source line 1911
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
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
	mov	1913,r13		! source line 1913
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1913,r13		! source line 1913
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
	mov	1915,r13		! source line 1915
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
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
	mov	1918,r13		! source line 1918
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
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
	mov	1920,r13		! source line 1920
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
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
	mov	1922,r13		! source line 1922
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
	mov	1922,r13		! source line 1922
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
	mov	1924,r13		! source line 1924
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
	mov	1924,r13		! source line 1924
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
	mov	1926,r13		! source line 1926
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1926,r13		! source line 1926
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
	mov	1928,r13		! source line 1928
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1929,r13		! source line 1929
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
	mov	1931,r13		! source line 1931
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1932,r13		! source line 1932
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
	mov	1934,r13		! source line 1934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1936,r13		! source line 1936
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
	mov	1937,r13		! source line 1937
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_528:
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
_Label_3298:
	push	r0
	sub	r1,1,r1
	bne	_Label_3298
	mov	1944,r13		! source line 1944
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1946,r13		! source line 1946
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
_Label_3299:
	push	r0
	sub	r1,1,r1
	bne	_Label_3299
	mov	1951,r13		! source line 1951
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
	mov	1953,r13		! source line 1953
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1953,r13		! source line 1953
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
_Label_3300:
	push	r0
	sub	r1,1,r1
	bne	_Label_3300
	mov	1957,r13		! source line 1957
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1961,r13		! source line 1961
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
	mov	1961,r13		! source line 1961
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
	mov	49,r1
_Label_3301:
	push	r0
	sub	r1,1,r1
	bne	_Label_3301
	mov	1967,r13		! source line 1967
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1982,r13		! source line 1982
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-184]
! ASSIGNMENT STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0AS",r10
	mov	1986,r13		! source line 1986
	mov	"\0\0SE",r10
!   _temp_574 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-168]
!   Send message GetANewProcess
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=newPCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-172]
! ASSIGNMENT STATEMENT...
	mov	1987,r13		! source line 1987
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
	store	r1,[r14+-164]
!   Data Move: oldPCB = *_temp_575  (sizeInBytes=4)
	load	[r14+-164],r1
	load	[r1],r1
	store	r1,[r14+-176]
! ASSIGNMENT STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0AS",r10
	mov	1988,r13		! source line 1988
	mov	"\0\0SE",r10
!   _temp_576 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-160]
!   Send message GetANewThread
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=newThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-180]
! ASSIGNMENT STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = newPCB + 16
	load	[r14+-172],r1
	add	r1,16,r1
	store	r1,[r14+-156]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = oldPCB + 12
	load	[r14+-176],r1
	add	r1,12,r1
	store	r1,[r14+-148]
!   Data Move: _temp_578 = *_temp_579  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-152]
!   Data Move: *_temp_577 = _temp_578  (sizeInBytes=4)
	load	[r14+-152],r1
	load	[r14+-156],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1993,r13		! source line 1993
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_580 = newThread + 72
	load	[r14+-180],r1
	add	r1,72,r1
	store	r1,[r14+-144]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_582 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-136]
!   Data Move: _temp_581 = *_temp_582  (sizeInBytes=4)
	load	[r14+-136],r1
	load	[r1],r1
	store	r1,[r14+-140]
!   Data Move: *_temp_580 = _temp_581  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1994,r13		! source line 1994
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_583 = newThread + 76
	load	[r14+-180],r1
	add	r1,76,r1
	store	r1,[r14+-132]
!   Data Move: *_temp_583 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-132],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1995,r13		! source line 1995
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_584 = newThread + 4160
	load	[r14+-180],r1
	add	r1,4160,r1
	store	r1,[r14+-128]
!   Data Move: *_temp_584 = newPCB  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r14+-128],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1996,r13		! source line 1996
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_585 = newPCB + 24
	load	[r14+-172],r1
	add	r1,24,r1
	store	r1,[r14+-124]
!   Data Move: *_temp_585 = newThread  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r14+-124],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_587 = newThread + 4096
	load	[r14+-180],r1
	add	r1,4096,r1
	store	r1,[r14+-116]
!   Move address of _temp_587 [0 ] into _temp_588
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
!   _temp_586 = _temp_588		(4 bytes)
	load	[r14+-112],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CE",r10
	call	SaveUserRegs
! ASSIGNMENT STATEMENT...
	mov	2006,r13		! source line 2006
	mov	"\0\0AS",r10
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_589 = newThread + 68
	load	[r14+-180],r1
	add	r1,68,r1
	store	r1,[r14+-108]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_591 = newThread + 88
	load	[r14+-180],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_591 [999 ] into _temp_592
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
!   _temp_590 = _temp_592		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Data Move: *_temp_589 = _temp_590  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2009,r13		! source line 2009
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = newPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_593 = _temp_594		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = oldPCB + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_597 = _temp_596 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_595 = *_temp_597  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_598 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_593  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_595  sizeInBytes=4
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
	mov	2012,r13		! source line 2012
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_603 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = oldPCB + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_607 = _temp_606 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Data Move: _temp_605 = *_temp_607  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_604 = _temp_605 - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_603  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-188]
_Label_599:
!   Perform the FOR-LOOP termination test
!   if i > _temp_604 then goto _Label_602		
	load	[r14+-188],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_602
_Label_600:
	mov	2012,r13		! source line 2012
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0IF",r10
	mov	2013,r13		! source line 2013
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_610 = oldPCB + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_608 else goto _Label_609
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_609
	jmp	_Label_608
_Label_608:
! THEN...
	mov	2014,r13		! source line 2014
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2014,r13		! source line 2014
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_611 = newPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message SetWritable
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,48,r2
	call	r2
	jmp	_Label_612
_Label_609:
! ELSE...
	mov	2016,r13		! source line 2016
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2016,r13		! source line 2016
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_613 = newPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
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
_Label_612:
! CALL STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_615 = newPCB + 32
	load	[r14+-172],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_614  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
	mov	2019,r13		! source line 2019
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_617 = oldPCB + 32
	load	[r14+-176],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_616  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_614  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_616  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	MemoryCopy
!   Increment the FOR-LOOP index variable and jump back
_Label_601:
!   i = i + 1
	load	[r14+-188],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-188]
	jmp	_Label_599
! END FOR
_Label_602:
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CE",r10
	call	GetOldUserPCFromSystemStack
!   Retrieve Result: targetName=oldUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-192]
! SEND STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0SE",r10
!   _temp_618 = _function_198_ResumeChildAfterFork
	set	_function_198_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_618  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=oldUserPC  sizeInBytes=4
	load	[r14+-192],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0RE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_620 = newPCB + 12
	load	[r14+-172],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_619 = *_temp_620  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_619  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_621
	.word	0		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_622
	.word	-12
	.word	4
	.word	_Label_623
	.word	-16
	.word	4
	.word	_Label_624
	.word	-20
	.word	4
	.word	_Label_625
	.word	-24
	.word	4
	.word	_Label_626
	.word	-28
	.word	4
	.word	_Label_627
	.word	-32
	.word	4
	.word	_Label_628
	.word	-36
	.word	4
	.word	_Label_629
	.word	-40
	.word	4
	.word	_Label_630
	.word	-44
	.word	4
	.word	_Label_631
	.word	-48
	.word	4
	.word	_Label_632
	.word	-52
	.word	4
	.word	_Label_633
	.word	-56
	.word	4
	.word	_Label_634
	.word	-60
	.word	4
	.word	_Label_635
	.word	-64
	.word	4
	.word	_Label_636
	.word	-68
	.word	4
	.word	_Label_637
	.word	-72
	.word	4
	.word	_Label_638
	.word	-76
	.word	4
	.word	_Label_639
	.word	-80
	.word	4
	.word	_Label_640
	.word	-84
	.word	4
	.word	_Label_641
	.word	-88
	.word	4
	.word	_Label_642
	.word	-92
	.word	4
	.word	_Label_643
	.word	-96
	.word	4
	.word	_Label_644
	.word	-100
	.word	4
	.word	_Label_645
	.word	-104
	.word	4
	.word	_Label_646
	.word	-108
	.word	4
	.word	_Label_647
	.word	-112
	.word	4
	.word	_Label_648
	.word	-116
	.word	4
	.word	_Label_649
	.word	-120
	.word	4
	.word	_Label_650
	.word	-124
	.word	4
	.word	_Label_651
	.word	-128
	.word	4
	.word	_Label_652
	.word	-132
	.word	4
	.word	_Label_653
	.word	-136
	.word	4
	.word	_Label_654
	.word	-140
	.word	4
	.word	_Label_655
	.word	-144
	.word	4
	.word	_Label_656
	.word	-148
	.word	4
	.word	_Label_657
	.word	-152
	.word	4
	.word	_Label_658
	.word	-156
	.word	4
	.word	_Label_659
	.word	-160
	.word	4
	.word	_Label_660
	.word	-164
	.word	4
	.word	_Label_661
	.word	-168
	.word	4
	.word	_Label_662
	.word	-172
	.word	4
	.word	_Label_663
	.word	-176
	.word	4
	.word	_Label_664
	.word	-180
	.word	4
	.word	_Label_665
	.word	-184
	.word	4
	.word	_Label_666
	.word	-188
	.word	4
	.word	_Label_667
	.word	-192
	.word	4
	.word	0
_Label_621:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_662:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_663:
	.byte	'P'
	.ascii	"oldPCB\0"
	.align
_Label_664:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_666:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_667:
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
_Label_3302:
	push	r0
	sub	r1,1,r1
	bne	_Label_3302
	mov	2034,r13		! source line 2034
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_668 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: parent = *_temp_668  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
! FOR STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_673 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_674 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_673  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-72]
_Label_669:
!   Perform the FOR-LOOP termination test
!   if i > _temp_674 then goto _Label_672		
	load	[r14+-72],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_672
_Label_670:
	mov	2053,r13		! source line 2053
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   _temp_675 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_676 = _temp_675 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_676 [i ] into _temp_677
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
!   child = _temp_677		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2055,r13		! source line 2055
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_683 = child + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Data Move: _temp_682 = *_temp_683  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_682 != processID then goto _Label_679		(int)
	load	[r14+-44],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_679
!	jmp	_Label_681
_Label_681:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = child + 16
	load	[r14+-76],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_684 = *_temp_685  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_687 = parent + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: _temp_686 = *_temp_687  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_684 != _temp_686 then goto _Label_679		(int)
	load	[r14+-36],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bne	_Label_679
!	jmp	_Label_680
_Label_680:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_689 = child + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: _temp_688 = *_temp_689  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if _temp_688 == 3 then goto _Label_679		(int)
	load	[r14+-20],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_679
!	jmp	_Label_678
_Label_678:
! THEN...
	mov	2057,r13		! source line 2057
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0AS",r10
	mov	2057,r13		! source line 2057
	mov	"\0\0SE",r10
!   _temp_690 = &_P_Kernel_processManager
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
	mov	2058,r13		! source line 2058
	mov	"\0\0RE",r10
!   ReturnResult: childsExitStatus  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_679:
!   Increment the FOR-LOOP index variable and jump back
_Label_671:
!   i = i + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_669
! END FOR
_Label_672:
! RETURN STATEMENT...
	mov	2062,r13		! source line 2062
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
	.word	_Label_691
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_692
	.word	8
	.word	4
	.word	_Label_693
	.word	-12
	.word	4
	.word	_Label_694
	.word	-16
	.word	4
	.word	_Label_695
	.word	-20
	.word	4
	.word	_Label_696
	.word	-24
	.word	4
	.word	_Label_697
	.word	-28
	.word	4
	.word	_Label_698
	.word	-32
	.word	4
	.word	_Label_699
	.word	-36
	.word	4
	.word	_Label_700
	.word	-40
	.word	4
	.word	_Label_701
	.word	-44
	.word	4
	.word	_Label_702
	.word	-48
	.word	4
	.word	_Label_703
	.word	-52
	.word	4
	.word	_Label_704
	.word	-56
	.word	4
	.word	_Label_705
	.word	-60
	.word	4
	.word	_Label_706
	.word	-64
	.word	4
	.word	_Label_707
	.word	-68
	.word	4
	.word	_Label_708
	.word	-72
	.word	4
	.word	_Label_709
	.word	-76
	.word	4
	.word	_Label_710
	.word	-80
	.word	4
	.word	_Label_711
	.word	-84
	.word	4
	.word	0
_Label_691:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_692:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_708:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_709:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_710:
	.byte	'P'
	.ascii	"parent\0"
	.align
_Label_711:
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
_Label_3303:
	push	r0
	sub	r1,1,r1
	bne	_Label_3303
	mov	2066,r13		! source line 2066
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-196,r4
	mov	23,r3
_Label_3304:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3304
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-196]
! SEND STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0SE",r10
!   _temp_713 = &newAddrSpace
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
	mov	2091,r13		! source line 2091
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_714 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: ptrToPCB = *_temp_714  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2094,r13		! source line 2094
	mov	"\0\0AS",r10
	mov	2094,r13		! source line 2094
	mov	"\0\0SE",r10
!   _temp_715 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-88]
!   _temp_716 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_717 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_715  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_716  sizeInBytes=4
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
	mov	2095,r13		! source line 2095
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_719		(int)
	load	[r14+-232],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_719
!	jmp	_Label_718
_Label_718:
! THEN...
	mov	2096,r13		! source line 2096
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_719:
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
	mov	2100,r13		! source line 2100
	mov	"\0\0SE",r10
!   _temp_720 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-76]
!   _temp_721 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_720  sizeInBytes=4
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
	mov	2101,r13		! source line 2101
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile2) then goto _Label_722
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_722
	jmp	_Label_723
_Label_722:
! THEN...
	mov	2102,r13		! source line 2102
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_723:
! ASSIGNMENT STATEMENT...
	mov	2111,r13		! source line 2111
	mov	"\0\0AS",r10
	mov	2111,r13		! source line 2111
	mov	"\0\0SE",r10
!   _temp_724 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-68]
!   if intIsZero (ptrOpenFile2) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_724  sizeInBytes=4
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
	mov	2112,r13		! source line 2112
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_726		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_726
!	jmp	_Label_725
_Label_725:
! THEN...
	mov	2113,r13		! source line 2113
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2113,r13		! source line 2113
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_726:
! ASSIGNMENT STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_727 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_727 = newAddrSpace  (sizeInBytes=92)
	add	r14,-196,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3305:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3305
! SEND STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0SE",r10
!   _temp_728 = &_P_Kernel_fileManager
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
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_731 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_730 = *_temp_731  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_730) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_732 = _temp_730 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_729 = _temp_732		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_733 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_729  sizeInBytes=4
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
	mov	2121,r13		! source line 2121
	mov	"\0\0AS",r10
!   _temp_735 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-32]
!   _temp_736 = _temp_735 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_734 = *_temp_736  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_734 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_737 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_737 [999 ] into _temp_738
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
!   ptrInitSystemStackTop = _temp_738		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2123,r13		! source line 2123
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2124,r13		! source line 2124
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_739 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_740 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-240],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_740  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2125,r13		! source line 2125
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2126,r13		! source line 2126
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
	.word	_Label_741
	.word	4		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_742
	.word	8
	.word	4
	.word	_Label_743
	.word	-12
	.word	4
	.word	_Label_744
	.word	-16
	.word	4
	.word	_Label_745
	.word	-20
	.word	4
	.word	_Label_746
	.word	-24
	.word	4
	.word	_Label_747
	.word	-28
	.word	4
	.word	_Label_748
	.word	-32
	.word	4
	.word	_Label_749
	.word	-36
	.word	4
	.word	_Label_750
	.word	-40
	.word	4
	.word	_Label_751
	.word	-44
	.word	4
	.word	_Label_752
	.word	-48
	.word	4
	.word	_Label_753
	.word	-52
	.word	4
	.word	_Label_754
	.word	-56
	.word	4
	.word	_Label_755
	.word	-60
	.word	4
	.word	_Label_756
	.word	-64
	.word	4
	.word	_Label_757
	.word	-68
	.word	4
	.word	_Label_758
	.word	-72
	.word	4
	.word	_Label_759
	.word	-76
	.word	4
	.word	_Label_760
	.word	-80
	.word	4
	.word	_Label_761
	.word	-84
	.word	4
	.word	_Label_762
	.word	-88
	.word	4
	.word	_Label_763
	.word	-92
	.word	4
	.word	_Label_764
	.word	-96
	.word	4
	.word	_Label_765
	.word	-100
	.word	4
	.word	_Label_766
	.word	-104
	.word	4
	.word	_Label_767
	.word	-196
	.word	92
	.word	_Label_768
	.word	-220
	.word	24
	.word	_Label_769
	.word	-224
	.word	4
	.word	_Label_770
	.word	-228
	.word	4
	.word	_Label_771
	.word	-232
	.word	4
	.word	_Label_772
	.word	-236
	.word	4
	.word	_Label_773
	.word	-240
	.word	4
	.word	_Label_774
	.word	-244
	.word	4
	.word	0
_Label_741:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_742:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_745:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_766:
	.byte	'P'
	.ascii	"ptrOpenFile2\0"
	.align
_Label_767:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_768:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_769:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_770:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_771:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_772:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_773:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_774:
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
_Label_3306:
	push	r0
	sub	r1,1,r1
	bne	_Label_3306
	mov	2129,r13		! source line 2129
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
	mov	2134,r13		! source line 2134
	mov	"\0\0SE",r10
!   _temp_775 = &stringStorage
	add	r14,-56,r1
	store	r1,[r14+-32]
!   _temp_776 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_778 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_777 = *_temp_778  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_777) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_779 = _temp_777 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_775  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_776  sizeInBytes=4
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
	mov	2137,r13		! source line 2137
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_781		(int)
	load	[r14+-60],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_781
!	jmp	_Label_780
_Label_780:
! THEN...
	mov	2138,r13		! source line 2138
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_782 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2138,r13		! source line 2138
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_781:
! RETURN STATEMENT...
	mov	2145,r13		! source line 2145
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
	.word	_Label_783
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_784
	.word	8
	.word	4
	.word	_Label_785
	.word	-12
	.word	4
	.word	_Label_786
	.word	-16
	.word	4
	.word	_Label_787
	.word	-20
	.word	4
	.word	_Label_788
	.word	-24
	.word	4
	.word	_Label_789
	.word	-28
	.word	4
	.word	_Label_790
	.word	-32
	.word	4
	.word	_Label_791
	.word	-56
	.word	24
	.word	_Label_792
	.word	-60
	.word	4
	.word	0
_Label_783:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_784:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_791:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_792:
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
_Label_3307:
	push	r0
	sub	r1,1,r1
	bne	_Label_3307
	mov	2148,r13		! source line 2148
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
	mov	2153,r13		! source line 2153
	mov	"\0\0SE",r10
!   _temp_793 = &stringStorage
	add	r14,-60,r1
	store	r1,[r14+-36]
!   _temp_794 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_796 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_795 = *_temp_796  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_795) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_797 = _temp_795 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_793  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_794  sizeInBytes=4
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
	mov	2156,r13		! source line 2156
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_799		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_799
!	jmp	_Label_798
_Label_798:
! THEN...
	mov	2157,r13		! source line 2157
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_800 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2157,r13		! source line 2157
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_799:
! CALL STATEMENT...
!   _temp_801 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_801  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2163,r13		! source line 2163
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2165,r13		! source line 2165
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
	.word	_Label_802
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_803
	.word	8
	.word	4
	.word	_Label_804
	.word	-12
	.word	4
	.word	_Label_805
	.word	-16
	.word	4
	.word	_Label_806
	.word	-20
	.word	4
	.word	_Label_807
	.word	-24
	.word	4
	.word	_Label_808
	.word	-28
	.word	4
	.word	_Label_809
	.word	-32
	.word	4
	.word	_Label_810
	.word	-36
	.word	4
	.word	_Label_811
	.word	-60
	.word	24
	.word	_Label_812
	.word	-64
	.word	4
	.word	0
_Label_802:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_803:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_811:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_812:
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
	mov	2168,r13		! source line 2168
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2178,r13		! source line 2178
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
	.word	_Label_813
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_814
	.word	8
	.word	4
	.word	_Label_815
	.word	12
	.word	4
	.word	_Label_816
	.word	16
	.word	4
	.word	0
_Label_813:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_814:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_815:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_816:
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
	mov	2181,r13		! source line 2181
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2191,r13		! source line 2191
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
	.word	_Label_817
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_818
	.word	8
	.word	4
	.word	_Label_819
	.word	12
	.word	4
	.word	_Label_820
	.word	16
	.word	4
	.word	0
_Label_817:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_818:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_819:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_820:
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
	mov	2194,r13		! source line 2194
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2202,r13		! source line 2202
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
	.word	_Label_821
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_822
	.word	8
	.word	4
	.word	_Label_823
	.word	12
	.word	4
	.word	0
_Label_821:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_822:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_823:
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
	mov	2205,r13		! source line 2205
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2205,r13		! source line 2205
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
	.word	_Label_824
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_825
	.word	8
	.word	4
	.word	0
_Label_824:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_825:
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
_Label_3308:
	push	r0
	sub	r1,1,r1
	bne	_Label_3308
	mov	2213,r13		! source line 2213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2215,r13		! source line 2215
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2215,r13		! source line 2215
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
	.word	_Label_826
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_827
	.word	8
	.word	4
	.word	0
_Label_826:
	.ascii	"printString\0"
	.align
_Label_827:
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
_Label_3309:
	push	r0
	sub	r1,1,r1
	bne	_Label_3309
	mov	2219,r13		! source line 2219
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2231,r13		! source line 2231
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_829 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_828 = *_temp_829  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_828) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_830 = _temp_828 + 32
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
!   _temp_832 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_832 [0 ] into _temp_833
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
!   _temp_831 = _temp_833		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2236,r13		! source line 2236
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_834 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_834 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_835 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_835 [999 ] into _temp_836
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
!   initSystemStackTop = _temp_836		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2244,r13		! source line 2244
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_837 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_837 [14 ] into _temp_838
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
!   Data Move: initUserStackTop = *_temp_838  (sizeInBytes=4)
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
	mov	2245,r13		! source line 2245
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2245,r13		! source line 2245
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
	.word	_Label_839
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_840
	.word	8
	.word	4
	.word	_Label_841
	.word	-12
	.word	4
	.word	_Label_842
	.word	-16
	.word	4
	.word	_Label_843
	.word	-20
	.word	4
	.word	_Label_844
	.word	-24
	.word	4
	.word	_Label_845
	.word	-28
	.word	4
	.word	_Label_846
	.word	-32
	.word	4
	.word	_Label_847
	.word	-36
	.word	4
	.word	_Label_848
	.word	-40
	.word	4
	.word	_Label_849
	.word	-44
	.word	4
	.word	_Label_850
	.word	-48
	.word	4
	.word	_Label_851
	.word	-52
	.word	4
	.word	_Label_852
	.word	-56
	.word	4
	.word	_Label_853
	.word	-60
	.word	4
	.word	_Label_854
	.word	-64
	.word	4
	.word	0
_Label_839:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_840:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_852:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_853:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_854:
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
_Label_3310:
	push	r0
	sub	r1,1,r1
	bne	_Label_3310
	mov	2836,r13		! source line 2836
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_855 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_855  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0AS",r10
!   _temp_856 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_856) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_858 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_858) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_857 = *_temp_858  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_856 = _temp_857  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0AS",r10
!   _temp_859 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_859) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_861 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_861) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_860 = *_temp_861  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_859 = _temp_860  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   _temp_862 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_862) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_864 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_864) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_863 = *_temp_864  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_862 = _temp_863  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2843,r13		! source line 2843
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
	.word	_Label_865
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_866
	.word	8
	.word	4
	.word	_Label_867
	.word	12
	.word	4
	.word	_Label_868
	.word	-16
	.word	4
	.word	_Label_869
	.word	-9
	.word	1
	.word	_Label_870
	.word	-20
	.word	4
	.word	_Label_871
	.word	-24
	.word	4
	.word	_Label_872
	.word	-10
	.word	1
	.word	_Label_873
	.word	-28
	.word	4
	.word	_Label_874
	.word	-32
	.word	4
	.word	_Label_875
	.word	-11
	.word	1
	.word	_Label_876
	.word	-36
	.word	4
	.word	_Label_877
	.word	-12
	.word	1
	.word	_Label_878
	.word	-40
	.word	4
	.word	_Label_879
	.word	-44
	.word	4
	.word	0
_Label_865:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_866:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_867:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_869:
	.byte	'C'
	.ascii	"_temp_863\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_872:
	.byte	'C'
	.ascii	"_temp_860\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_875:
	.byte	'C'
	.ascii	"_temp_857\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_877:
	.byte	'C'
	.ascii	"_temp_855\0"
	.align
_Label_878:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_879:
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
_Label_3311:
	push	r0
	sub	r1,1,r1
	bne	_Label_3311
	mov	2846,r13		! source line 2846
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_881 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_880 = *_temp_881  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_880  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2848,r13		! source line 2848
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2848,r13		! source line 2848
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
	.word	_Label_882
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_883
	.word	8
	.word	4
	.word	_Label_884
	.word	-12
	.word	4
	.word	_Label_885
	.word	-16
	.word	4
	.word	0
_Label_882:
	.ascii	"printFCB\0"
	.align
_Label_883:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_880\0"
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
_Label_3312:
	push	r0
	sub	r1,1,r1
	bne	_Label_3312
	mov	2851,r13		! source line 2851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_886 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_886  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2852,r13		! source line 2852
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_887 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2853,r13		! source line 2853
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_888 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_888  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2854,r13		! source line 2854
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2855,r13		! source line 2855
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
	mov	2855,r13		! source line 2855
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
	.word	_Label_889
	.word	4		! total size of parameters
	.word	16		! frame size = 16
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
	.word	0
_Label_889:
	.ascii	"printOpen\0"
	.align
_Label_890:
	.byte	'P'
	.ascii	"open\0"
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
	.ascii	"_temp_886\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_894
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_894:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_895
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_895:
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
_Label_3313:
	push	r0
	sub	r1,1,r1
	bne	_Label_3313
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_897		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_897
!	jmp	_Label_896
_Label_896:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_898 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_898  sizeInBytes=4
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
_Label_897:
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
	.word	_Label_900
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_902
	.word	12
	.word	4
	.word	_Label_903
	.word	-12
	.word	4
	.word	_Label_904
	.word	-16
	.word	4
	.word	0
_Label_900:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_901:
	.ascii	"Pself\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_898\0"
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
_Label_3314:
	push	r0
	sub	r1,1,r1
	bne	_Label_3314
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
!   if count != 2147483647 then goto _Label_906		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_906
!	jmp	_Label_905
_Label_905:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_907 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
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
_Label_906:
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
!   if count > 0 then goto _Label_909		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_909
!	jmp	_Label_908
_Label_908:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_910 = &waitingThreads
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
!   _temp_911 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_911 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_912 = &_P_Kernel_readyList
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
_Label_909:
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
	.word	_Label_913
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_914
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_915
	.word	-12
	.word	4
	.word	_Label_916
	.word	-16
	.word	4
	.word	_Label_917
	.word	-20
	.word	4
	.word	_Label_918
	.word	-24
	.word	4
	.word	_Label_919
	.word	-28
	.word	4
	.word	_Label_920
	.word	-32
	.word	4
	.word	0
_Label_913:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_914:
	.ascii	"Pself\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_919:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_920:
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
_Label_3315:
	push	r0
	sub	r1,1,r1
	bne	_Label_3315
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
!   if count != -2147483648 then goto _Label_922		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_922
!	jmp	_Label_921
_Label_921:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_923 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_923  sizeInBytes=4
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
_Label_922:
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
!   if count >= 0 then goto _Label_925		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_925
!	jmp	_Label_924
_Label_924:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_926 = &waitingThreads
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
_Label_925:
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
	.word	_Label_927
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_929
	.word	-12
	.word	4
	.word	_Label_930
	.word	-16
	.word	4
	.word	_Label_931
	.word	-20
	.word	4
	.word	0
_Label_927:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_928:
	.ascii	"Pself\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_931:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_932
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_932:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_933
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_933:
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
_Label_3316:
	push	r0
	sub	r1,1,r1
	bne	_Label_3316
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
	.word	_Label_935
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_937
	.word	-12
	.word	4
	.word	0
_Label_935:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_936:
	.ascii	"Pself\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_934\0"
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
_Label_3317:
	push	r0
	sub	r1,1,r1
	bne	_Label_3317
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_939		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_939
!	jmp	_Label_938
_Label_938:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_940 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_940  sizeInBytes=4
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
_Label_939:
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
!   if heldBy == 0 then goto _Label_944		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_944
!   _temp_943 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_945
_Label_944:
!   _temp_943 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_945:
!   if _temp_943 then goto _Label_942 else goto _Label_941
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_941
	jmp	_Label_942
_Label_941:
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
	jmp	_Label_946
_Label_942:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_947 = &waitingThreads
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
_Label_946:
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
	.word	_Label_948
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_949
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_950
	.word	-16
	.word	4
	.word	_Label_951
	.word	-9
	.word	1
	.word	_Label_952
	.word	-20
	.word	4
	.word	_Label_953
	.word	-24
	.word	4
	.word	0
_Label_948:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_949:
	.ascii	"Pself\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_951:
	.byte	'C'
	.ascii	"_temp_943\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_940\0"
	.align
_Label_953:
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
_Label_3318:
	push	r0
	sub	r1,1,r1
	bne	_Label_3318
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_955		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_955
!	jmp	_Label_954
_Label_954:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_956 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
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
_Label_955:
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
!   _temp_957 = &waitingThreads
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
!   if t == 0 then goto _Label_959		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_959
!	jmp	_Label_958
_Label_958:
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
!   _temp_960 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_960 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_961 = &_P_Kernel_readyList
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
	jmp	_Label_962
_Label_959:
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
_Label_962:
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
	.word	_Label_963
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_964
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_965
	.word	-12
	.word	4
	.word	_Label_966
	.word	-16
	.word	4
	.word	_Label_967
	.word	-20
	.word	4
	.word	_Label_968
	.word	-24
	.word	4
	.word	_Label_969
	.word	-28
	.word	4
	.word	_Label_970
	.word	-32
	.word	4
	.word	0
_Label_963:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_964:
	.ascii	"Pself\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_969:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_970:
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
_Label_3319:
	push	r0
	sub	r1,1,r1
	bne	_Label_3319
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_973		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_973
!	jmp	_Label_972
_Label_972:
!   _temp_971 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_974
_Label_973:
!   _temp_971 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_974:
!   ReturnResult: _temp_971  (sizeInBytes=1)
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
	.word	_Label_975
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_977
	.word	-9
	.word	1
	.word	0
_Label_975:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_976:
	.ascii	"Pself\0"
	.align
_Label_977:
	.byte	'C'
	.ascii	"_temp_971\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_978
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_978:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_979
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_979:
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
_Label_3320:
	push	r0
	sub	r1,1,r1
	bne	_Label_3320
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
	.word	_Label_981
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_983
	.word	-12
	.word	4
	.word	0
_Label_981:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_982:
	.ascii	"Pself\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_980\0"
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
_Label_3321:
	push	r0
	sub	r1,1,r1
	bne	_Label_3321
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
!   Retrieve Result: targetName=_temp_986  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_986 then goto _Label_985 else goto _Label_984
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_984
	jmp	_Label_985
_Label_984:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_987 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
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
_Label_985:
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
!   _temp_988 = &waitingThreads
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
	.word	_Label_989
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_990
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_991
	.word	12
	.word	4
	.word	_Label_992
	.word	-16
	.word	4
	.word	_Label_993
	.word	-20
	.word	4
	.word	_Label_994
	.word	-9
	.word	1
	.word	_Label_995
	.word	-24
	.word	4
	.word	0
_Label_989:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_990:
	.ascii	"Pself\0"
	.align
_Label_991:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_994:
	.byte	'C'
	.ascii	"_temp_986\0"
	.align
_Label_995:
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
_Label_3322:
	push	r0
	sub	r1,1,r1
	bne	_Label_3322
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
!   Retrieve Result: targetName=_temp_998  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_998 then goto _Label_997 else goto _Label_996
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_996
	jmp	_Label_997
_Label_996:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_999 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
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
_Label_997:
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
!   _temp_1000 = &waitingThreads
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
!   if t == 0 then goto _Label_1002		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1002
!	jmp	_Label_1001
_Label_1001:
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
!   _temp_1003 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1003 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_1004 = &_P_Kernel_readyList
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
_Label_1002:
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
	.word	_Label_1005
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1007
	.word	12
	.word	4
	.word	_Label_1008
	.word	-16
	.word	4
	.word	_Label_1009
	.word	-20
	.word	4
	.word	_Label_1010
	.word	-24
	.word	4
	.word	_Label_1011
	.word	-28
	.word	4
	.word	_Label_1012
	.word	-9
	.word	1
	.word	_Label_1013
	.word	-32
	.word	4
	.word	_Label_1014
	.word	-36
	.word	4
	.word	0
_Label_1005:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1006:
	.ascii	"Pself\0"
	.align
_Label_1007:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1012:
	.byte	'C'
	.ascii	"_temp_998\0"
	.align
_Label_1013:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1014:
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
_Label_3323:
	push	r0
	sub	r1,1,r1
	bne	_Label_3323
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
!   Retrieve Result: targetName=_temp_1017  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1017 then goto _Label_1016 else goto _Label_1015
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1015
	jmp	_Label_1016
_Label_1015:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1018 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1018  sizeInBytes=4
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
_Label_1016:
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
_Label_1019:
!	jmp	_Label_1020
_Label_1020:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_1022 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1023
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1023
	jmp	_Label_1024
_Label_1023:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_1021
! END IF...
_Label_1024:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1025 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1025 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_1026 = &_P_Kernel_readyList
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
	jmp	_Label_1019
_Label_1021:
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
	.word	_Label_1027
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1028
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1029
	.word	12
	.word	4
	.word	_Label_1030
	.word	-16
	.word	4
	.word	_Label_1031
	.word	-20
	.word	4
	.word	_Label_1032
	.word	-24
	.word	4
	.word	_Label_1033
	.word	-28
	.word	4
	.word	_Label_1034
	.word	-9
	.word	1
	.word	_Label_1035
	.word	-32
	.word	4
	.word	_Label_1036
	.word	-36
	.word	4
	.word	0
_Label_1027:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1028:
	.ascii	"Pself\0"
	.align
_Label_1029:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1034:
	.byte	'C'
	.ascii	"_temp_1017\0"
	.align
_Label_1035:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1036:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1037
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
_Label_1037:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1038
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1038:
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
_Label_3324:
	push	r0
	sub	r1,1,r1
	bne	_Label_3324
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
!   _temp_1039 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1039) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1039 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1040 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1040 [0 ] into _temp_1041
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
!   Data Move: *_temp_1041 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1042 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1042 [999 ] into _temp_1043
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
!   Data Move: *_temp_1043 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1044 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1044 [999 ] into _temp_1045
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
!   stackTop = _temp_1045		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1046 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1048 = &_temp_1047
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1048 = _temp_1048 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1050:
!   Data Move: *_temp_1048 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1048 = _temp_1048 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1049 = _temp_1049 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1049) then goto _Label_1050
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1050
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1051 = &_temp_1047
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3325
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3325:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1046 = *_temp_1051  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3326:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3326
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
!   _temp_1052 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1054 = &_temp_1053
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1054 = _temp_1054 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1056:
!   Data Move: *_temp_1054 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1054 = _temp_1054 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1055 = _temp_1055 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1055) then goto _Label_1056
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1056
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1057 = &_temp_1053
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3327
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3327:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1052 = *_temp_1057  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3328:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3328
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
	.word	_Label_1058
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1059
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1060
	.word	12
	.word	4
	.word	_Label_1061
	.word	-12
	.word	4
	.word	_Label_1062
	.word	-16
	.word	4
	.word	_Label_1063
	.word	-20
	.word	4
	.word	_Label_1064
	.word	-84
	.word	64
	.word	_Label_1065
	.word	-88
	.word	4
	.word	_Label_1066
	.word	-92
	.word	4
	.word	_Label_1067
	.word	-96
	.word	4
	.word	_Label_1068
	.word	-100
	.word	4
	.word	_Label_1069
	.word	-156
	.word	56
	.word	_Label_1070
	.word	-160
	.word	4
	.word	_Label_1071
	.word	-164
	.word	4
	.word	_Label_1072
	.word	-168
	.word	4
	.word	_Label_1073
	.word	-172
	.word	4
	.word	_Label_1074
	.word	-176
	.word	4
	.word	_Label_1075
	.word	-180
	.word	4
	.word	_Label_1076
	.word	-184
	.word	4
	.word	_Label_1077
	.word	-188
	.word	4
	.word	0
_Label_1058:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1059:
	.ascii	"Pself\0"
	.align
_Label_1060:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1039\0"
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
_Label_3329:
	push	r0
	sub	r1,1,r1
	bne	_Label_3329
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
!   _temp_1078 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1078  (sizeInBytes=4)
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
!   _temp_1080 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1079  sizeInBytes=4
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
	.word	_Label_1081
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1083
	.word	12
	.word	4
	.word	_Label_1084
	.word	16
	.word	4
	.word	_Label_1085
	.word	-12
	.word	4
	.word	_Label_1086
	.word	-16
	.word	4
	.word	_Label_1087
	.word	-20
	.word	4
	.word	_Label_1088
	.word	-24
	.word	4
	.word	_Label_1089
	.word	-28
	.word	4
	.word	0
_Label_1081:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1082:
	.ascii	"Pself\0"
	.align
_Label_1083:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1084:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1085:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1086:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1087:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1088:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1089:
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
_Label_3330:
	push	r0
	sub	r1,1,r1
	bne	_Label_3330
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1092 == _P_Kernel_currentThread then goto _Label_1091		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1091
!	jmp	_Label_1090
_Label_1090:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1093 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
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
_Label_1091:
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
!   _temp_1094 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1096		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1096
!	jmp	_Label_1095
_Label_1095:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1098		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1098
!	jmp	_Label_1097
_Label_1097:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1099 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
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
_Label_1098:
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
!   _temp_1101 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1100  sizeInBytes=4
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
_Label_1096:
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
	.word	_Label_1102
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1103
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1104
	.word	-12
	.word	4
	.word	_Label_1105
	.word	-16
	.word	4
	.word	_Label_1106
	.word	-20
	.word	4
	.word	_Label_1107
	.word	-24
	.word	4
	.word	_Label_1108
	.word	-28
	.word	4
	.word	_Label_1109
	.word	-32
	.word	4
	.word	_Label_1110
	.word	-36
	.word	4
	.word	_Label_1111
	.word	-40
	.word	4
	.word	_Label_1112
	.word	-44
	.word	4
	.word	0
_Label_1102:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1103:
	.ascii	"Pself\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1110:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1111:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1112:
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
_Label_3331:
	push	r0
	sub	r1,1,r1
	bne	_Label_3331
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1114		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1114
!	jmp	_Label_1113
_Label_1113:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1115 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1115  sizeInBytes=4
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
_Label_1114:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1118 == _P_Kernel_currentThread then goto _Label_1117		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1117
!	jmp	_Label_1116
_Label_1116:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1119 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1119  sizeInBytes=4
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
_Label_1117:
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
!   _temp_1120 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1121
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1121
	jmp	_Label_1122
_Label_1121:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1123 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
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
_Label_1122:
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
	.word	_Label_1124
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1125
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1126
	.word	-12
	.word	4
	.word	_Label_1127
	.word	-16
	.word	4
	.word	_Label_1128
	.word	-20
	.word	4
	.word	_Label_1129
	.word	-24
	.word	4
	.word	_Label_1130
	.word	-28
	.word	4
	.word	_Label_1131
	.word	-32
	.word	4
	.word	0
_Label_1124:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1125:
	.ascii	"Pself\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1131:
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
_Label_3332:
	push	r0
	sub	r1,1,r1
	bne	_Label_3332
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1135 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1135 [0 ] into _temp_1136
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
!   Data Move: _temp_1134 = *_temp_1136  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1134 == 606348324 then goto _Label_1133		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1133
!	jmp	_Label_1132
_Label_1132:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1137 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
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
	jmp	_Label_1138
_Label_1133:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1142 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1142 [999 ] into _temp_1143
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
!   Data Move: _temp_1141 = *_temp_1143  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1141 == 606348324 then goto _Label_1140		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1140
!	jmp	_Label_1139
_Label_1139:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1144 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
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
_Label_1140:
! END IF...
_Label_1138:
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
	.word	_Label_1145
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1147
	.word	-12
	.word	4
	.word	_Label_1148
	.word	-16
	.word	4
	.word	_Label_1149
	.word	-20
	.word	4
	.word	_Label_1150
	.word	-24
	.word	4
	.word	_Label_1151
	.word	-28
	.word	4
	.word	_Label_1152
	.word	-32
	.word	4
	.word	_Label_1153
	.word	-36
	.word	4
	.word	_Label_1154
	.word	-40
	.word	4
	.word	0
_Label_1145:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1146:
	.ascii	"Pself\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1134\0"
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
_Label_3333:
	push	r0
	sub	r1,1,r1
	bne	_Label_3333
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
!   _temp_1155 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1155  sizeInBytes=4
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
!   _temp_1156 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1156  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1157  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1158 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1159 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1159  sizeInBytes=4
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
!   _temp_1164 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1165 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1164  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1160:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1165 then goto _Label_1163		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1163
_Label_1161:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1166 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1167 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1167  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1168 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1168  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1170 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1170 [i ] into _temp_1171
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
!   Data Move: _temp_1169 = *_temp_1171  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1169  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1172 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1172  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1174 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1174 [i ] into _temp_1175
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
!   Data Move: _temp_1173 = *_temp_1175  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1173  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1176 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1162:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1160
! END FOR
_Label_1163:
! CALL STATEMENT...
!   _temp_1177 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_1178 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1178  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1179 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_1181 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1181 [0 ] into _temp_1182
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
!   _temp_1180 = _temp_1182		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1180  sizeInBytes=4
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
	be	_Label_1185
	cmp	r1,2
	be	_Label_1186
	cmp	r1,3
	be	_Label_1187
	cmp	r1,4
	be	_Label_1188
	cmp	r1,5
	be	_Label_1189
	jmp	_Label_1183
! CASE 1...
_Label_1185:
! CALL STATEMENT...
!   _temp_1190 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1190  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1184
! CASE 2...
_Label_1186:
! CALL STATEMENT...
!   _temp_1191 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1191  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1184
! CASE 3...
_Label_1187:
! CALL STATEMENT...
!   _temp_1192 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1192  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1184
! CASE 4...
_Label_1188:
! CALL STATEMENT...
!   _temp_1193 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1184
! CASE 5...
_Label_1189:
! CALL STATEMENT...
!   _temp_1194 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1194  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1184
! DEFAULT CASE...
_Label_1183:
! CALL STATEMENT...
!   _temp_1195 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1195  sizeInBytes=4
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
_Label_1184:
! CALL STATEMENT...
!   _temp_1196 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1196  sizeInBytes=4
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
!   _temp_1197 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
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
!   _temp_1202 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1203 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1202  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1198:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1203 then goto _Label_1201		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1201
_Label_1199:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1204 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1204  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1205 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1205  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1206 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1206  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1208 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1208 [i ] into _temp_1209
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
!   Data Move: _temp_1207 = *_temp_1209  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1207  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1210 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1210  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1212 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1212 [i ] into _temp_1213
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
!   Data Move: _temp_1211 = *_temp_1213  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1211  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1214 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1200:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1198
! END FOR
_Label_1201:
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
	.word	_Label_1215
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1216
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1217
	.word	-12
	.word	4
	.word	_Label_1218
	.word	-16
	.word	4
	.word	_Label_1219
	.word	-20
	.word	4
	.word	_Label_1220
	.word	-24
	.word	4
	.word	_Label_1221
	.word	-28
	.word	4
	.word	_Label_1222
	.word	-32
	.word	4
	.word	_Label_1223
	.word	-36
	.word	4
	.word	_Label_1224
	.word	-40
	.word	4
	.word	_Label_1225
	.word	-44
	.word	4
	.word	_Label_1226
	.word	-48
	.word	4
	.word	_Label_1227
	.word	-52
	.word	4
	.word	_Label_1228
	.word	-56
	.word	4
	.word	_Label_1229
	.word	-60
	.word	4
	.word	_Label_1230
	.word	-64
	.word	4
	.word	_Label_1231
	.word	-68
	.word	4
	.word	_Label_1232
	.word	-72
	.word	4
	.word	_Label_1233
	.word	-76
	.word	4
	.word	_Label_1234
	.word	-80
	.word	4
	.word	_Label_1235
	.word	-84
	.word	4
	.word	_Label_1236
	.word	-88
	.word	4
	.word	_Label_1237
	.word	-92
	.word	4
	.word	_Label_1238
	.word	-96
	.word	4
	.word	_Label_1239
	.word	-100
	.word	4
	.word	_Label_1240
	.word	-104
	.word	4
	.word	_Label_1241
	.word	-108
	.word	4
	.word	_Label_1242
	.word	-112
	.word	4
	.word	_Label_1243
	.word	-116
	.word	4
	.word	_Label_1244
	.word	-120
	.word	4
	.word	_Label_1245
	.word	-124
	.word	4
	.word	_Label_1246
	.word	-128
	.word	4
	.word	_Label_1247
	.word	-132
	.word	4
	.word	_Label_1248
	.word	-136
	.word	4
	.word	_Label_1249
	.word	-140
	.word	4
	.word	_Label_1250
	.word	-144
	.word	4
	.word	_Label_1251
	.word	-148
	.word	4
	.word	_Label_1252
	.word	-152
	.word	4
	.word	_Label_1253
	.word	-156
	.word	4
	.word	_Label_1254
	.word	-160
	.word	4
	.word	_Label_1255
	.word	-164
	.word	4
	.word	_Label_1256
	.word	-168
	.word	4
	.word	_Label_1257
	.word	-172
	.word	4
	.word	_Label_1258
	.word	-176
	.word	4
	.word	_Label_1259
	.word	-180
	.word	4
	.word	_Label_1260
	.word	-184
	.word	4
	.word	_Label_1261
	.word	-188
	.word	4
	.word	_Label_1262
	.word	-192
	.word	4
	.word	_Label_1263
	.word	-196
	.word	4
	.word	0
_Label_1215:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1216:
	.ascii	"Pself\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1262:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1263:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1264
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1264:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1265
	.word	_sourceFileName
	.word	193		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1265:
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
_Label_3334:
	push	r0
	sub	r1,1,r1
	bne	_Label_3334
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1266 = _StringConst_82
	set	_StringConst_82,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1266  sizeInBytes=4
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
!   _temp_1268 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1270 = &_temp_1269
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1270 = _temp_1270 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1272 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_3335:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3335
!   _temp_1272 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1274:
!   Data Move: *_temp_1270 = _temp_1272  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_3336:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3336
!   _temp_1270 = _temp_1270 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1271 = _temp_1271 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1271) then goto _Label_1274
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1274
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1275 = &_temp_1269
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3337
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3337:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1268 = *_temp_1275  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3338:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3338
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1276 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-188]
!   _temp_1277 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1277 [0 ] into _temp_1278
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
!   Prepare Argument: offset=12  value=_temp_1276  sizeInBytes=4
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
!   _temp_1279 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-176]
!   _temp_1280 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1280 [1 ] into _temp_1281
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
!   Prepare Argument: offset=12  value=_temp_1279  sizeInBytes=4
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
!   _temp_1282 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-164]
!   _temp_1283 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1283 [2 ] into _temp_1284
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
!   Prepare Argument: offset=12  value=_temp_1282  sizeInBytes=4
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
!   _temp_1285 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-152]
!   _temp_1286 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1286 [3 ] into _temp_1287
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
!   Prepare Argument: offset=12  value=_temp_1285  sizeInBytes=4
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
!   _temp_1288 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-140]
!   _temp_1289 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1289 [4 ] into _temp_1290
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
!   Prepare Argument: offset=12  value=_temp_1288  sizeInBytes=4
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
!   _temp_1291 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-128]
!   _temp_1292 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1292 [5 ] into _temp_1293
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
!   Prepare Argument: offset=12  value=_temp_1291  sizeInBytes=4
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
!   _temp_1294 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-116]
!   _temp_1295 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1295 [6 ] into _temp_1296
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
!   Prepare Argument: offset=12  value=_temp_1294  sizeInBytes=4
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
!   _temp_1297 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-104]
!   _temp_1298 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1298 [7 ] into _temp_1299
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
!   Prepare Argument: offset=12  value=_temp_1297  sizeInBytes=4
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
!   _temp_1300 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-92]
!   _temp_1301 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1301 [8 ] into _temp_1302
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
!   Prepare Argument: offset=12  value=_temp_1300  sizeInBytes=4
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
!   _temp_1303 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-80]
!   _temp_1304 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1304 [9 ] into _temp_1305
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
!   Prepare Argument: offset=12  value=_temp_1303  sizeInBytes=4
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
!   _temp_1310 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1311 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1310  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1306:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1311 then goto _Label_1309		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1309
_Label_1307:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1312 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1312 [index ] into _temp_1313
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
!   _temp_1314 = _temp_1313 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1314 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1316 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1316 [index ] into _temp_1317
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
!   _temp_1315 = _temp_1317		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1318 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1315  sizeInBytes=4
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
_Label_1308:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1306
! END FOR
_Label_1309:
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
!   _temp_1320 = &threadManagerLock
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
!   _temp_1322 = &aThreadBecameFree
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
!   _temp_1324 = &leadThread
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
	.word	_Label_1325
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1326
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1327
	.word	-12
	.word	4
	.word	_Label_1328
	.word	-16
	.word	4
	.word	_Label_1329
	.word	-20
	.word	4
	.word	_Label_1330
	.word	-24
	.word	4
	.word	_Label_1331
	.word	-28
	.word	4
	.word	_Label_1332
	.word	-32
	.word	4
	.word	_Label_1333
	.word	-36
	.word	4
	.word	_Label_1334
	.word	-40
	.word	4
	.word	_Label_1335
	.word	-44
	.word	4
	.word	_Label_1336
	.word	-48
	.word	4
	.word	_Label_1337
	.word	-52
	.word	4
	.word	_Label_1338
	.word	-56
	.word	4
	.word	_Label_1339
	.word	-60
	.word	4
	.word	_Label_1340
	.word	-64
	.word	4
	.word	_Label_1341
	.word	-68
	.word	4
	.word	_Label_1342
	.word	-72
	.word	4
	.word	_Label_1343
	.word	-76
	.word	4
	.word	_Label_1344
	.word	-80
	.word	4
	.word	_Label_1345
	.word	-84
	.word	4
	.word	_Label_1346
	.word	-88
	.word	4
	.word	_Label_1347
	.word	-92
	.word	4
	.word	_Label_1348
	.word	-96
	.word	4
	.word	_Label_1349
	.word	-100
	.word	4
	.word	_Label_1350
	.word	-104
	.word	4
	.word	_Label_1351
	.word	-108
	.word	4
	.word	_Label_1352
	.word	-112
	.word	4
	.word	_Label_1353
	.word	-116
	.word	4
	.word	_Label_1354
	.word	-120
	.word	4
	.word	_Label_1355
	.word	-124
	.word	4
	.word	_Label_1356
	.word	-128
	.word	4
	.word	_Label_1357
	.word	-132
	.word	4
	.word	_Label_1358
	.word	-136
	.word	4
	.word	_Label_1359
	.word	-140
	.word	4
	.word	_Label_1360
	.word	-144
	.word	4
	.word	_Label_1361
	.word	-148
	.word	4
	.word	_Label_1362
	.word	-152
	.word	4
	.word	_Label_1363
	.word	-156
	.word	4
	.word	_Label_1364
	.word	-160
	.word	4
	.word	_Label_1365
	.word	-164
	.word	4
	.word	_Label_1366
	.word	-168
	.word	4
	.word	_Label_1367
	.word	-172
	.word	4
	.word	_Label_1368
	.word	-176
	.word	4
	.word	_Label_1369
	.word	-180
	.word	4
	.word	_Label_1370
	.word	-184
	.word	4
	.word	_Label_1371
	.word	-188
	.word	4
	.word	_Label_1372
	.word	-192
	.word	4
	.word	_Label_1373
	.word	-196
	.word	4
	.word	_Label_1374
	.word	-4360
	.word	4164
	.word	_Label_1375
	.word	-4364
	.word	4
	.word	_Label_1376
	.word	-4368
	.word	4
	.word	_Label_1377
	.word	-46012
	.word	41644
	.word	_Label_1378
	.word	-46016
	.word	4
	.word	_Label_1379
	.word	-46020
	.word	4
	.word	_Label_1380
	.word	-46024
	.word	4
	.word	_Label_1381
	.word	-46028
	.word	4
	.word	0
_Label_1325:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1326:
	.ascii	"Pself\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1290\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1289\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1288\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1381:
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
_Label_3339:
	push	r0
	sub	r1,1,r1
	bne	_Label_3339
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
!   _temp_1382 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1382  sizeInBytes=4
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
!   _temp_1387 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1388 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1387  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1383:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1388 then goto _Label_1386		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1386
_Label_1384:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1389 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
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
!   _temp_1390 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1392 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1392 [i ] into _temp_1393
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
!   _temp_1391 = _temp_1393		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1385:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1383
! END FOR
_Label_1386:
! CALL STATEMENT...
!   _temp_1394 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1394  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1395 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1396 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1395  sizeInBytes=4
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
	.word	_Label_1397
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1398
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1399
	.word	-12
	.word	4
	.word	_Label_1400
	.word	-16
	.word	4
	.word	_Label_1401
	.word	-20
	.word	4
	.word	_Label_1402
	.word	-24
	.word	4
	.word	_Label_1403
	.word	-28
	.word	4
	.word	_Label_1404
	.word	-32
	.word	4
	.word	_Label_1405
	.word	-36
	.word	4
	.word	_Label_1406
	.word	-40
	.word	4
	.word	_Label_1407
	.word	-44
	.word	4
	.word	_Label_1408
	.word	-48
	.word	4
	.word	_Label_1409
	.word	-52
	.word	4
	.word	_Label_1410
	.word	-56
	.word	4
	.word	_Label_1411
	.word	-60
	.word	4
	.word	0
_Label_1397:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1398:
	.ascii	"Pself\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1410:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1411:
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
_Label_3340:
	push	r0
	sub	r1,1,r1
	bne	_Label_3340
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1412 = &threadManagerLock
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
_Label_1413:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1416 = &freeList
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
!   if result==true then goto _Label_1414 else goto _Label_1415
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1415
	jmp	_Label_1414
_Label_1414:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1417 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   _temp_1418 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1417  sizeInBytes=4
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
	jmp	_Label_1413
_Label_1415:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1419 = &freeList
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
!   _temp_1420 = threadToReturn + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1420 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1421 = &threadManagerLock
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
	.word	_Label_1422
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1423
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1424
	.word	-12
	.word	4
	.word	_Label_1425
	.word	-16
	.word	4
	.word	_Label_1426
	.word	-20
	.word	4
	.word	_Label_1427
	.word	-24
	.word	4
	.word	_Label_1428
	.word	-28
	.word	4
	.word	_Label_1429
	.word	-32
	.word	4
	.word	_Label_1430
	.word	-36
	.word	4
	.word	_Label_1431
	.word	-40
	.word	4
	.word	0
_Label_1422:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1423:
	.ascii	"Pself\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1431:
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
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1432 = &threadManagerLock
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
!   if th == 0 then goto _Label_1434		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1434
!	jmp	_Label_1433
_Label_1433:
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
!   _temp_1435 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1435 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1436 = &freeList
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
!   _temp_1437 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1438 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1437  sizeInBytes=4
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
	jmp	_Label_1439
_Label_1434:
! ELSE...
	mov	794,r13		! source line 794
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1440 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1440  sizeInBytes=4
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
_Label_1439:
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1441 = &threadManagerLock
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
	.word	_Label_1442
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1443
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1444
	.word	12
	.word	4
	.word	_Label_1445
	.word	-12
	.word	4
	.word	_Label_1446
	.word	-16
	.word	4
	.word	_Label_1447
	.word	-20
	.word	4
	.word	_Label_1448
	.word	-24
	.word	4
	.word	_Label_1449
	.word	-28
	.word	4
	.word	_Label_1450
	.word	-32
	.word	4
	.word	_Label_1451
	.word	-36
	.word	4
	.word	0
_Label_1442:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1443:
	.ascii	"Pself\0"
	.align
_Label_1444:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1440\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1452
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1452:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1453
	.word	_sourceFileName
	.word	215		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1453:
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
_Label_3342:
	push	r0
	sub	r1,1,r1
	bne	_Label_3342
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
_Label_3343:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3343
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_1455 = &addrSpace
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
!   _temp_1456 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1458 = &_temp_1457
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1458 = _temp_1458 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1460:
!   Data Move: *_temp_1458 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1458 = _temp_1458 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1459 = _temp_1459 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1459) then goto _Label_1460
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1460
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1461 = &_temp_1457
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3344
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3344:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1456 = *_temp_1461  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3345:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3345
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
	.word	_Label_1462
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1463
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1464
	.word	-12
	.word	4
	.word	_Label_1465
	.word	-16
	.word	4
	.word	_Label_1466
	.word	-20
	.word	4
	.word	_Label_1467
	.word	-64
	.word	44
	.word	_Label_1468
	.word	-68
	.word	4
	.word	_Label_1469
	.word	-72
	.word	4
	.word	_Label_1470
	.word	-76
	.word	4
	.word	0
_Label_1462:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1463:
	.ascii	"Pself\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1454\0"
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
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1471) then goto _runtimeErrorNullPointer
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
!   _temp_1472 = &addrSpace
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
!   _temp_1473 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1473  sizeInBytes=4
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
	.word	_Label_1474
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1476
	.word	-12
	.word	4
	.word	_Label_1477
	.word	-16
	.word	4
	.word	_Label_1478
	.word	-20
	.word	4
	.word	0
_Label_1474:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1475:
	.ascii	"Pself\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1471\0"
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
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1479 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1480  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1481 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1481  sizeInBytes=4
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
!   _temp_1482 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1482  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1484		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1484
!	jmp	_Label_1483
_Label_1483:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1485 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1485  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1486
_Label_1484:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1488		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1488
!	jmp	_Label_1487
_Label_1487:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1489 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1490
_Label_1488:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1492		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1492
!	jmp	_Label_1491
_Label_1491:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1493 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1493  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1494
_Label_1492:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1495 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1495  sizeInBytes=4
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
_Label_1494:
! END IF...
_Label_1490:
! END IF...
_Label_1486:
! CALL STATEMENT...
!   _temp_1496 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
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
!   _temp_1497 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1497  sizeInBytes=4
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
	.word	_Label_1498
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	0
_Label_1498:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
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
	.ascii	"_temp_1493\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1510
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
_Label_1510:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1511
	.word	_sourceFileName
	.word	235		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1511:
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
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
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
!   _temp_1513 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1936]
!   NEW ARRAY Constructor...
!   _temp_1515 = &_temp_1514
	add	r14,-1932,r1
	store	r1,[r14+-248]
!   _temp_1515 = _temp_1515 + 4
	load	[r14+-248],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1517 = zeros  (sizeInBytes=168)
	add	r14,-240,r4
	mov	42,r3
_Label_3349:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3349
!   _temp_1517 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-240]
	mov	10,r1
	store	r1,[r14+-244]
_Label_1519:
!   Data Move: *_temp_1515 = _temp_1517  (sizeInBytes=168)
	add	r14,-240,r5
	load	[r14+-248],r4
	mov	42,r3
_Label_3350:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3350
!   _temp_1515 = _temp_1515 + 168
	load	[r14+-248],r1
	add	r1,168,r1
	store	r1,[r14+-248]
!   _temp_1516 = _temp_1516 + -1
	load	[r14+-244],r1
	add	r1,-1,r1
	store	r1,[r14+-244]
!   if intNotZero (_temp_1516) then goto _Label_1519
	load	[r14+-244],r1
	cmp	r1,r0
	bne	_Label_1519
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1932]
!   _temp_1520 = &_temp_1514
	add	r14,-1932,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1936],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3351
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3351:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1513 = *_temp_1520  (sizeInBytes=1684)
	load	[r14+-68],r5
	load	[r14+-1936],r4
	mov	421,r3
_Label_3352:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3352
! FOR STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1525 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1526 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1525  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1944]
_Label_1521:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1526 then goto _Label_1524		
	load	[r14+-1944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1524
_Label_1522:
	mov	898,r13		! source line 898
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1527 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1527 [index ] into _temp_1528
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
!   _temp_1530 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1530 [index ] into _temp_1531
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
!   _temp_1529 = _temp_1531		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1532 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1529  sizeInBytes=4
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
_Label_1523:
!   index = index + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_1521
! END FOR
_Label_1524:
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
!   _temp_1534 = &processManagerLock
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
!   _temp_1536 = &aProcessBecameFree
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
!   _temp_1538 = &aProcessDied
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
	.word	_Label_1539
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_1540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1541
	.word	-12
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
	.word	-32
	.word	4
	.word	_Label_1547
	.word	-36
	.word	4
	.word	_Label_1548
	.word	-40
	.word	4
	.word	_Label_1549
	.word	-44
	.word	4
	.word	_Label_1550
	.word	-48
	.word	4
	.word	_Label_1551
	.word	-52
	.word	4
	.word	_Label_1552
	.word	-56
	.word	4
	.word	_Label_1553
	.word	-60
	.word	4
	.word	_Label_1554
	.word	-64
	.word	4
	.word	_Label_1555
	.word	-68
	.word	4
	.word	_Label_1556
	.word	-72
	.word	4
	.word	_Label_1557
	.word	-240
	.word	168
	.word	_Label_1558
	.word	-244
	.word	4
	.word	_Label_1559
	.word	-248
	.word	4
	.word	_Label_1560
	.word	-1932
	.word	1684
	.word	_Label_1561
	.word	-1936
	.word	4
	.word	_Label_1562
	.word	-1940
	.word	4
	.word	_Label_1563
	.word	-1944
	.word	4
	.word	0
_Label_1539:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1540:
	.ascii	"Pself\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1563:
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
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
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
!   _temp_1564 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1564  sizeInBytes=4
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
!   _temp_1569 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1570 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1569  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1565:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1570 then goto _Label_1568		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1568
_Label_1566:
	mov	924,r13		! source line 924
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1571 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1571  sizeInBytes=4
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
!   _temp_1572 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1572  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1573 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1573 [i ] into _temp_1574
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
_Label_1567:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1565
! END FOR
_Label_1568:
! CALL STATEMENT...
!   _temp_1575 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1575  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1576 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1577 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1576  sizeInBytes=4
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
	.word	_Label_1578
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1580
	.word	-12
	.word	4
	.word	_Label_1581
	.word	-16
	.word	4
	.word	_Label_1582
	.word	-20
	.word	4
	.word	_Label_1583
	.word	-24
	.word	4
	.word	_Label_1584
	.word	-28
	.word	4
	.word	_Label_1585
	.word	-32
	.word	4
	.word	_Label_1586
	.word	-36
	.word	4
	.word	_Label_1587
	.word	-40
	.word	4
	.word	_Label_1588
	.word	-44
	.word	4
	.word	_Label_1589
	.word	-48
	.word	4
	.word	_Label_1590
	.word	-52
	.word	4
	.word	_Label_1591
	.word	-56
	.word	4
	.word	0
_Label_1578:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1579:
	.ascii	"Pself\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1590:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1591:
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
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
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
!   _temp_1592 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1592  sizeInBytes=4
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
!   _temp_1597 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1598 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1597  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1593:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1598 then goto _Label_1596		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1596
_Label_1594:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1599 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1599  sizeInBytes=4
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
!   _temp_1600 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1600 [i ] into _temp_1601
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
_Label_1595:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1593
! END FOR
_Label_1596:
! CALL STATEMENT...
!   _temp_1602 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1602  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1603 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1604 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1603  sizeInBytes=4
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
	.word	_Label_1605
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1607
	.word	-12
	.word	4
	.word	_Label_1608
	.word	-16
	.word	4
	.word	_Label_1609
	.word	-20
	.word	4
	.word	_Label_1610
	.word	-24
	.word	4
	.word	_Label_1611
	.word	-28
	.word	4
	.word	_Label_1612
	.word	-32
	.word	4
	.word	_Label_1613
	.word	-36
	.word	4
	.word	_Label_1614
	.word	-40
	.word	4
	.word	_Label_1615
	.word	-44
	.word	4
	.word	_Label_1616
	.word	-48
	.word	4
	.word	_Label_1617
	.word	-52
	.word	4
	.word	0
_Label_1605:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1606:
	.ascii	"Pself\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1616:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1617:
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1618 = &processManagerLock
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
_Label_1619:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1622 = &freeList
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
!   if result==true then goto _Label_1620 else goto _Label_1621
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1621
	jmp	_Label_1620
_Label_1620:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1623 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_1624 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1623  sizeInBytes=4
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
	jmp	_Label_1619
_Label_1621:
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
!   _temp_1625 = &freeList
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
!   _temp_1626 = processToReturn + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1626 = 1  (sizeInBytes=4)
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
!   _temp_1627 = processToReturn + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1627 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1628 = &processManagerLock
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
	.word	_Label_1629
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1630
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1637
	.word	-36
	.word	4
	.word	_Label_1638
	.word	-40
	.word	4
	.word	_Label_1639
	.word	-44
	.word	4
	.word	0
_Label_1629:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1630:
	.ascii	"Pself\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1639:
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
	mov	991,r13		! source line 991
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1640 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1640  sizeInBytes=4
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
!   _temp_1641 = &processManagerLock
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
!   _temp_1642 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1642 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1643 = &freeList
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
!   _temp_1644 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1645 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1644  sizeInBytes=4
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
!   _temp_1646 = &processManagerLock
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
	.word	_Label_1647
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1649
	.word	12
	.word	4
	.word	_Label_1650
	.word	-12
	.word	4
	.word	_Label_1651
	.word	-16
	.word	4
	.word	_Label_1652
	.word	-20
	.word	4
	.word	_Label_1653
	.word	-24
	.word	4
	.word	_Label_1654
	.word	-28
	.word	4
	.word	_Label_1655
	.word	-32
	.word	4
	.word	_Label_1656
	.word	-36
	.word	4
	.word	0
_Label_1647:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1648:
	.ascii	"Pself\0"
	.align
_Label_1649:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1640\0"
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
	mov	1010,r13		! source line 1010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1657 = &processManagerLock
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
!   _temp_1662 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1663 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1662  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-152]
_Label_1658:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1663 then goto _Label_1661		
	load	[r14+-152],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1661
_Label_1659:
	mov	1035,r13		! source line 1035
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   _temp_1664 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1664 [i ] into _temp_1665
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
!   child = _temp_1665		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1670 = child + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1669 = *_temp_1670  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1672 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1671 = *_temp_1672  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_1669 != _temp_1671 then goto _Label_1667		(int)
	load	[r14+-128],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_1667
!	jmp	_Label_1668
_Label_1668:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1674 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1673 = *_temp_1674  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1673 != 2 then goto _Label_1667		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1667
!	jmp	_Label_1666
_Label_1666:
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
!   _temp_1675 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_1675 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1676 = &freeList
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
!   _temp_1677 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-96]
!   _temp_1678 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_1677  sizeInBytes=4
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
_Label_1667:
!   Increment the FOR-LOOP index variable and jump back
_Label_1660:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_1658
! END FOR
_Label_1661:
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
!   _temp_1683 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1684 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1683  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-152]
_Label_1679:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1684 then goto _Label_1682		
	load	[r14+-152],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1682
_Label_1680:
	mov	1046,r13		! source line 1046
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
!   _temp_1688 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1688 [i ] into _temp_1689
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
!   _temp_1690 = _temp_1689 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1687 = *_temp_1690  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1692 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1691 = *_temp_1692  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1687 != _temp_1691 then goto _Label_1686		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_1686
!	jmp	_Label_1685
_Label_1685:
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   _temp_1693 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1693 [i ] into _temp_1694
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
!   parent = _temp_1694		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-160]
! END IF...
_Label_1686:
!   Increment the FOR-LOOP index variable and jump back
_Label_1681:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_1679
! END FOR
_Label_1682:
! IF STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0IF",r10
!   if parent == 0 then goto _Label_1696		(int)
	load	[r14+-160],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1696
!	jmp	_Label_1697
_Label_1697:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1699 = parent + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1698 = *_temp_1699  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1698 != 1 then goto _Label_1696		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1696
!	jmp	_Label_1695
_Label_1695:
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
!   _temp_1700 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1700 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1701 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_1702 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1701  sizeInBytes=4
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
	jmp	_Label_1703
_Label_1696:
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
!   _temp_1704 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1704 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1705 = &freeList
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
!   _temp_1706 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1707 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1706  sizeInBytes=4
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
_Label_1703:
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1708 = &processManagerLock
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
	.word	_Label_1709
	.word	8		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_1710
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1711
	.word	12
	.word	4
	.word	_Label_1712
	.word	-12
	.word	4
	.word	_Label_1713
	.word	-16
	.word	4
	.word	_Label_1714
	.word	-20
	.word	4
	.word	_Label_1715
	.word	-24
	.word	4
	.word	_Label_1716
	.word	-28
	.word	4
	.word	_Label_1717
	.word	-32
	.word	4
	.word	_Label_1718
	.word	-36
	.word	4
	.word	_Label_1719
	.word	-40
	.word	4
	.word	_Label_1720
	.word	-44
	.word	4
	.word	_Label_1721
	.word	-48
	.word	4
	.word	_Label_1722
	.word	-52
	.word	4
	.word	_Label_1723
	.word	-56
	.word	4
	.word	_Label_1724
	.word	-60
	.word	4
	.word	_Label_1725
	.word	-64
	.word	4
	.word	_Label_1726
	.word	-68
	.word	4
	.word	_Label_1727
	.word	-72
	.word	4
	.word	_Label_1728
	.word	-76
	.word	4
	.word	_Label_1729
	.word	-80
	.word	4
	.word	_Label_1730
	.word	-84
	.word	4
	.word	_Label_1731
	.word	-88
	.word	4
	.word	_Label_1732
	.word	-92
	.word	4
	.word	_Label_1733
	.word	-96
	.word	4
	.word	_Label_1734
	.word	-100
	.word	4
	.word	_Label_1735
	.word	-104
	.word	4
	.word	_Label_1736
	.word	-108
	.word	4
	.word	_Label_1737
	.word	-112
	.word	4
	.word	_Label_1738
	.word	-116
	.word	4
	.word	_Label_1739
	.word	-120
	.word	4
	.word	_Label_1740
	.word	-124
	.word	4
	.word	_Label_1741
	.word	-128
	.word	4
	.word	_Label_1742
	.word	-132
	.word	4
	.word	_Label_1743
	.word	-136
	.word	4
	.word	_Label_1744
	.word	-140
	.word	4
	.word	_Label_1745
	.word	-144
	.word	4
	.word	_Label_1746
	.word	-148
	.word	4
	.word	_Label_1747
	.word	-152
	.word	4
	.word	_Label_1748
	.word	-156
	.word	4
	.word	_Label_1749
	.word	-160
	.word	4
	.word	0
_Label_1709:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1710:
	.ascii	"Pself\0"
	.align
_Label_1711:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1747:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1748:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_1749:
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
	mov	1068,r13		! source line 1068
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_1750 = &processManagerLock
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
_Label_1751:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1755 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1754 = *_temp_1755  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1754 == 2 then goto _Label_1753		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1753
!	jmp	_Label_1752
_Label_1752:
	mov	1078,r13		! source line 1078
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1756 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_1757 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1756  sizeInBytes=4
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
	jmp	_Label_1751
_Label_1753:
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1758 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatusToReturn = *_temp_1758  (sizeInBytes=4)
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
!   _temp_1759 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1759 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1760 = &freeList
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
!   _temp_1761 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1762 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1761  sizeInBytes=4
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
!   _temp_1763 = &processManagerLock
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
	.word	_Label_1764
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1766
	.word	12
	.word	4
	.word	_Label_1767
	.word	-12
	.word	4
	.word	_Label_1768
	.word	-16
	.word	4
	.word	_Label_1769
	.word	-20
	.word	4
	.word	_Label_1770
	.word	-24
	.word	4
	.word	_Label_1771
	.word	-28
	.word	4
	.word	_Label_1772
	.word	-32
	.word	4
	.word	_Label_1773
	.word	-36
	.word	4
	.word	_Label_1774
	.word	-40
	.word	4
	.word	_Label_1775
	.word	-44
	.word	4
	.word	_Label_1776
	.word	-48
	.word	4
	.word	_Label_1777
	.word	-52
	.word	4
	.word	_Label_1778
	.word	-56
	.word	4
	.word	0
_Label_1764:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1765:
	.ascii	"Pself\0"
	.align
_Label_1766:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1778:
	.byte	'I'
	.ascii	"exitStatusToReturn\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1779
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1779:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1780
	.word	_sourceFileName
	.word	258		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1780:
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
	mov	1214,r13		! source line 1214
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1781 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1781  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1220,r13		! source line 1220
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
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
	mov	1222,r13		! source line 1222
	mov	"\0\0SE",r10
!   _temp_1783 = &framesInUse
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
	mov	1223,r13		! source line 1223
	mov	"\0\0AS",r10
!   numberFreeFrames = 512		(4 bytes)
	mov	512,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1224,r13		! source line 1224
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
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
!   _temp_1785 = &frameManagerLock
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
	mov	1226,r13		! source line 1226
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
	mov	1227,r13		! source line 1227
	mov	"\0\0SE",r10
!   _temp_1787 = &newFramesAvailable
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
	mov	1233,r13		! source line 1233
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1792 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1793 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1792  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1788:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1793 then goto _Label_1791		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1791
_Label_1789:
	mov	1233,r13		! source line 1233
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1796 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1796) then goto _Label_1795
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1795
!	jmp	_Label_1794
_Label_1794:
! THEN...
	mov	1237,r13		! source line 1237
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1797 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1797  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1237,r13		! source line 1237
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1795:
!   Increment the FOR-LOOP index variable and jump back
_Label_1790:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1788
! END FOR
_Label_1791:
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
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
	.word	_Label_1798
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1799
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1800
	.word	-12
	.word	4
	.word	_Label_1801
	.word	-16
	.word	4
	.word	_Label_1802
	.word	-20
	.word	4
	.word	_Label_1803
	.word	-24
	.word	4
	.word	_Label_1804
	.word	-28
	.word	4
	.word	_Label_1805
	.word	-32
	.word	4
	.word	_Label_1806
	.word	-36
	.word	4
	.word	_Label_1807
	.word	-40
	.word	4
	.word	_Label_1808
	.word	-44
	.word	4
	.word	_Label_1809
	.word	-48
	.word	4
	.word	_Label_1810
	.word	-52
	.word	4
	.word	_Label_1811
	.word	-56
	.word	4
	.word	0
_Label_1798:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1799:
	.ascii	"Pself\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1787\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1786\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1811:
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
	mov	1244,r13		! source line 1244
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
!   _temp_1812 = &frameManagerLock
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
!   _temp_1813 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1813  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1814 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1814  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1250,r13		! source line 1250
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1815 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1815  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0SE",r10
!   _temp_1816 = &framesInUse
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
	mov	1253,r13		! source line 1253
	mov	"\0\0SE",r10
!   _temp_1817 = &frameManagerLock
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
	mov	1253,r13		! source line 1253
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
	.word	_Label_1818
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1819
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1820
	.word	-12
	.word	4
	.word	_Label_1821
	.word	-16
	.word	4
	.word	_Label_1822
	.word	-20
	.word	4
	.word	_Label_1823
	.word	-24
	.word	4
	.word	_Label_1824
	.word	-28
	.word	4
	.word	_Label_1825
	.word	-32
	.word	4
	.word	0
_Label_1818:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1819:
	.ascii	"Pself\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1817\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1816\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1815\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1812\0"
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
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1266,r13		! source line 1266
	mov	"\0\0SE",r10
!   _temp_1826 = &frameManagerLock
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
	mov	1269,r13		! source line 1269
	mov	"\0\0WH",r10
_Label_1827:
!   if numberFreeFrames >= 1 then goto _Label_1829		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1829
!	jmp	_Label_1828
_Label_1828:
	mov	1269,r13		! source line 1269
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1270,r13		! source line 1270
	mov	"\0\0SE",r10
!   _temp_1830 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1831 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1830  sizeInBytes=4
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
	jmp	_Label_1827
_Label_1829:
! ASSIGNMENT STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0AS",r10
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
!   _temp_1832 = &framesInUse
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
	mov	1275,r13		! source line 1275
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
	mov	1278,r13		! source line 1278
	mov	"\0\0SE",r10
!   _temp_1833 = &frameManagerLock
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
	mov	1281,r13		! source line 1281
	mov	"\0\0AS",r10
!   _temp_1834 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1834		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1283,r13		! source line 1283
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
	.word	_Label_1835
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1836
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1837
	.word	-12
	.word	4
	.word	_Label_1838
	.word	-16
	.word	4
	.word	_Label_1839
	.word	-20
	.word	4
	.word	_Label_1840
	.word	-24
	.word	4
	.word	_Label_1841
	.word	-28
	.word	4
	.word	_Label_1842
	.word	-32
	.word	4
	.word	_Label_1843
	.word	-36
	.word	4
	.word	_Label_1844
	.word	-40
	.word	4
	.word	0
_Label_1835:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1836:
	.ascii	"Pself\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1843:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1844:
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
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
	mov	1288,r13		! source line 1288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
!   _temp_1845 = &frameManagerLock
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
	mov	1300,r13		! source line 1300
	mov	"\0\0WH",r10
_Label_1846:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1848		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1848
!	jmp	_Label_1847
_Label_1847:
	mov	1300,r13		! source line 1300
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1301,r13		! source line 1301
	mov	"\0\0SE",r10
!   _temp_1849 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1850 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1849  sizeInBytes=4
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
	jmp	_Label_1846
_Label_1848:
! FOR STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1855 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1856 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1855  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1851:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1856 then goto _Label_1854		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1854
_Label_1852:
	mov	1307,r13		! source line 1307
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0AS",r10
	mov	1308,r13		! source line 1308
	mov	"\0\0SE",r10
!   _temp_1857 = &framesInUse
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
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   _temp_1858 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_1858		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1310,r13		! source line 1310
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
_Label_1853:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1851
! END FOR
_Label_1854:
! ASSIGNMENT STATEMENT...
	mov	1314,r13		! source line 1314
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
	mov	1317,r13		! source line 1317
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1859 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1862 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1861 = *_temp_1862  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1860 = _temp_1861 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1859 = _temp_1860  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0SE",r10
!   _temp_1863 = &frameManagerLock
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
	mov	1319,r13		! source line 1319
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
	.word	_Label_1864
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1865
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1866
	.word	12
	.word	4
	.word	_Label_1867
	.word	16
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
	.word	_Label_1880
	.word	-60
	.word	4
	.word	_Label_1881
	.word	-64
	.word	4
	.word	_Label_1882
	.word	-68
	.word	4
	.word	0
_Label_1864:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1865:
	.ascii	"Pself\0"
	.align
_Label_1866:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1867:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1869:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1861\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1860\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1875:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1876:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1845\0"
	.align
_Label_1880:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1881:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1882:
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
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
	mov	1325,r13		! source line 1325
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0SE",r10
!   _temp_1883 = &frameManagerLock
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
	mov	1337,r13		! source line 1337
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
	mov	1339,r13		! source line 1339
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1884 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_1884  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1889 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1890 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1889  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1885:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1890 then goto _Label_1888		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1888
_Label_1886:
	mov	1344,r13		! source line 1344
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
	mov	1345,r13		! source line 1345
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
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   _temp_1891 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_1891 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1347,r13		! source line 1347
	mov	"\0\0SE",r10
!   _temp_1892 = &framesInUse
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
	mov	1348,r13		! source line 1348
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
_Label_1887:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1885
! END FOR
_Label_1888:
! SEND STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0SE",r10
!   _temp_1893 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1894 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1893  sizeInBytes=4
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
	mov	1355,r13		! source line 1355
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1895 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1898 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1897 = *_temp_1898  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1896 = _temp_1897 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1895 = _temp_1896  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0SE",r10
!   _temp_1899 = &frameManagerLock
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
	mov	1357,r13		! source line 1357
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
	.word	_Label_1900
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1902
	.word	12
	.word	4
	.word	_Label_1903
	.word	-12
	.word	4
	.word	_Label_1904
	.word	-16
	.word	4
	.word	_Label_1905
	.word	-20
	.word	4
	.word	_Label_1906
	.word	-24
	.word	4
	.word	_Label_1907
	.word	-28
	.word	4
	.word	_Label_1908
	.word	-32
	.word	4
	.word	_Label_1909
	.word	-36
	.word	4
	.word	_Label_1910
	.word	-40
	.word	4
	.word	_Label_1911
	.word	-44
	.word	4
	.word	_Label_1912
	.word	-48
	.word	4
	.word	_Label_1913
	.word	-52
	.word	4
	.word	_Label_1914
	.word	-56
	.word	4
	.word	_Label_1915
	.word	-60
	.word	4
	.word	_Label_1916
	.word	-64
	.word	4
	.word	_Label_1917
	.word	-68
	.word	4
	.word	_Label_1918
	.word	-72
	.word	4
	.word	_Label_1919
	.word	-76
	.word	4
	.word	0
_Label_1900:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1901:
	.ascii	"Pself\0"
	.align
_Label_1902:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1905:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1891\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1916:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1917:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_1918:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1919:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1920
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
_Label_1920:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1921
	.word	_sourceFileName
	.word	277		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1921:
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
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
	mov	1368,r13		! source line 1368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0AS",r10
!   _temp_1922 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1924 = &_temp_1923
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1924 = _temp_1924 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1926:
!   Data Move: *_temp_1924 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1924 = _temp_1924 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1925 = _temp_1925 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1925) then goto _Label_1926
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1926
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1927 = &_temp_1923
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3365
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3365:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1922 = *_temp_1927  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3366:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3366
! RETURN STATEMENT...
	mov	1373,r13		! source line 1373
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
	.word	_Label_1928
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1929
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1930
	.word	-12
	.word	4
	.word	_Label_1931
	.word	-16
	.word	4
	.word	_Label_1932
	.word	-20
	.word	4
	.word	_Label_1933
	.word	-104
	.word	84
	.word	_Label_1934
	.word	-108
	.word	4
	.word	0
_Label_1928:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1929:
	.ascii	"Pself\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1931:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1932:
	.byte	'?'
	.ascii	"_temp_1924\0"
	.align
_Label_1933:
	.byte	'?'
	.ascii	"_temp_1923\0"
	.align
_Label_1934:
	.byte	'?'
	.ascii	"_temp_1922\0"
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
_Label_3367:
	push	r0
	sub	r1,1,r1
	bne	_Label_3367
	mov	1378,r13		! source line 1378
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1935 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1935  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1383,r13		! source line 1383
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1936 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1936  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1941 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1942 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1941  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1937:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1942 then goto _Label_1940		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1940
_Label_1938:
	mov	1385,r13		! source line 1385
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1943 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1943  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1945 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1945 [i ] into _temp_1946
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
!   _temp_1944 = _temp_1946		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1944  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1387,r13		! source line 1387
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1947 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1947  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1949 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1949 [i ] into _temp_1950
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
!   Data Move: _temp_1948 = *_temp_1950  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1948  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1389,r13		! source line 1389
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1951 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1951  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1952 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1952  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1391,r13		! source line 1391
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1953 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1953  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1393,r13		! source line 1393
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1955) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1954  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1954  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1956 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1956  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0IF",r10
	mov	1395,r13		! source line 1395
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1960) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1959  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1959) then goto _Label_1958
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1958
!	jmp	_Label_1957
_Label_1957:
! THEN...
	mov	1396,r13		! source line 1396
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1962) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1961  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1961  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1963
_Label_1958:
! ELSE...
	mov	1398,r13		! source line 1398
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1964 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1964  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1963:
! CALL STATEMENT...
!   _temp_1965 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1965  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1401,r13		! source line 1401
	mov	"\0\0IF",r10
	mov	1401,r13		! source line 1401
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1968) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1966 else goto _Label_1967
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1967
	jmp	_Label_1966
_Label_1966:
! THEN...
	mov	1402,r13		! source line 1402
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1969 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1969  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1402,r13		! source line 1402
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1970
_Label_1967:
! ELSE...
	mov	1404,r13		! source line 1404
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1971 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1971  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1404,r13		! source line 1404
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1970:
! CALL STATEMENT...
!   _temp_1972 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1972  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0IF",r10
	mov	1407,r13		! source line 1407
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1975) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1973 else goto _Label_1974
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1974
	jmp	_Label_1973
_Label_1973:
! THEN...
	mov	1408,r13		! source line 1408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1976 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1976  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1977
_Label_1974:
! ELSE...
	mov	1410,r13		! source line 1410
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1978 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1978  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1410,r13		! source line 1410
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1977:
! CALL STATEMENT...
!   _temp_1979 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1979  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0IF",r10
	mov	1413,r13		! source line 1413
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1982) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1980 else goto _Label_1981
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1981
	jmp	_Label_1980
_Label_1980:
! THEN...
	mov	1414,r13		! source line 1414
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1983 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1983  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1984
_Label_1981:
! ELSE...
	mov	1416,r13		! source line 1416
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1985 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1985  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1416,r13		! source line 1416
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1984:
! CALL STATEMENT...
!   _temp_1986 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1986  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1419,r13		! source line 1419
	mov	"\0\0IF",r10
	mov	1419,r13		! source line 1419
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1989) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1987 else goto _Label_1988
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1988
	jmp	_Label_1987
_Label_1987:
! THEN...
	mov	1420,r13		! source line 1420
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1990 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1990  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1991
_Label_1988:
! ELSE...
	mov	1422,r13		! source line 1422
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1992 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1992  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1422,r13		! source line 1422
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1991:
! CALL STATEMENT...
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1939:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1937
! END FOR
_Label_1940:
! RETURN STATEMENT...
	mov	1385,r13		! source line 1385
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
	.word	_Label_1993
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1995
	.word	-12
	.word	4
	.word	_Label_1996
	.word	-16
	.word	4
	.word	_Label_1997
	.word	-20
	.word	4
	.word	_Label_1998
	.word	-24
	.word	4
	.word	_Label_1999
	.word	-28
	.word	4
	.word	_Label_2000
	.word	-32
	.word	4
	.word	_Label_2001
	.word	-36
	.word	4
	.word	_Label_2002
	.word	-40
	.word	4
	.word	_Label_2003
	.word	-44
	.word	4
	.word	_Label_2004
	.word	-48
	.word	4
	.word	_Label_2005
	.word	-52
	.word	4
	.word	_Label_2006
	.word	-56
	.word	4
	.word	_Label_2007
	.word	-60
	.word	4
	.word	_Label_2008
	.word	-64
	.word	4
	.word	_Label_2009
	.word	-68
	.word	4
	.word	_Label_2010
	.word	-72
	.word	4
	.word	_Label_2011
	.word	-76
	.word	4
	.word	_Label_2012
	.word	-80
	.word	4
	.word	_Label_2013
	.word	-84
	.word	4
	.word	_Label_2014
	.word	-88
	.word	4
	.word	_Label_2015
	.word	-92
	.word	4
	.word	_Label_2016
	.word	-96
	.word	4
	.word	_Label_2017
	.word	-100
	.word	4
	.word	_Label_2018
	.word	-104
	.word	4
	.word	_Label_2019
	.word	-108
	.word	4
	.word	_Label_2020
	.word	-112
	.word	4
	.word	_Label_2021
	.word	-116
	.word	4
	.word	_Label_2022
	.word	-120
	.word	4
	.word	_Label_2023
	.word	-124
	.word	4
	.word	_Label_2024
	.word	-128
	.word	4
	.word	_Label_2025
	.word	-132
	.word	4
	.word	_Label_2026
	.word	-136
	.word	4
	.word	_Label_2027
	.word	-140
	.word	4
	.word	_Label_2028
	.word	-144
	.word	4
	.word	_Label_2029
	.word	-148
	.word	4
	.word	_Label_2030
	.word	-152
	.word	4
	.word	_Label_2031
	.word	-156
	.word	4
	.word	_Label_2032
	.word	-160
	.word	4
	.word	_Label_2033
	.word	-164
	.word	4
	.word	_Label_2034
	.word	-168
	.word	4
	.word	0
_Label_1993:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1994:
	.ascii	"Pself\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_2018:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_1951\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_1936\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_2034:
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
	mov	1430,r13		! source line 1430
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0RE",r10
!   _temp_2037 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2037 [entry ] into _temp_2038
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
!   Data Move: _temp_2036 = *_temp_2038  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2035 = _temp_2036 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2035  (sizeInBytes=4)
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
	.word	_Label_2039
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2041
	.word	12
	.word	4
	.word	_Label_2042
	.word	-12
	.word	4
	.word	_Label_2043
	.word	-16
	.word	4
	.word	_Label_2044
	.word	-20
	.word	4
	.word	_Label_2045
	.word	-24
	.word	4
	.word	0
_Label_2039:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2040:
	.ascii	"Pself\0"
	.align
_Label_2041:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2035\0"
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   _temp_2048 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2048 [entry ] into _temp_2049
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
!   Data Move: _temp_2047 = *_temp_2049  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2046 = _temp_2047 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2046  (sizeInBytes=4)
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
	.word	_Label_2050
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2052
	.word	12
	.word	4
	.word	_Label_2053
	.word	-12
	.word	4
	.word	_Label_2054
	.word	-16
	.word	4
	.word	_Label_2055
	.word	-20
	.word	4
	.word	_Label_2056
	.word	-24
	.word	4
	.word	0
_Label_2050:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2051:
	.ascii	"Pself\0"
	.align
_Label_2052:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2053:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2046\0"
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
	mov	1449,r13		! source line 1449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   _temp_2057 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2057 [entry ] into _temp_2058
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
!   _temp_2062 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2062 [entry ] into _temp_2063
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
!   Data Move: _temp_2061 = *_temp_2063  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2060 = _temp_2061 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2059 = _temp_2060 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2058 = _temp_2059  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
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
	.word	_Label_2064
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2066
	.word	12
	.word	4
	.word	_Label_2067
	.word	16
	.word	4
	.word	_Label_2068
	.word	-12
	.word	4
	.word	_Label_2069
	.word	-16
	.word	4
	.word	_Label_2070
	.word	-20
	.word	4
	.word	_Label_2071
	.word	-24
	.word	4
	.word	_Label_2072
	.word	-28
	.word	4
	.word	_Label_2073
	.word	-32
	.word	4
	.word	_Label_2074
	.word	-36
	.word	4
	.word	0
_Label_2064:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2065:
	.ascii	"Pself\0"
	.align
_Label_2066:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2067:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2061\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2058\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2057\0"
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
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
	mov	1459,r13		! source line 1459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0RE",r10
!   _temp_2078 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2078 [entry ] into _temp_2079
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
!   Data Move: _temp_2077 = *_temp_2079  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2076 = _temp_2077 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2076) then goto _Label_2080
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2080
!   _temp_2075 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2081
_Label_2080:
!   _temp_2075 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2081:
!   ReturnResult: _temp_2075  (sizeInBytes=1)
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
	.word	_Label_2082
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2083
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2084
	.word	12
	.word	4
	.word	_Label_2085
	.word	-16
	.word	4
	.word	_Label_2086
	.word	-20
	.word	4
	.word	_Label_2087
	.word	-24
	.word	4
	.word	_Label_2088
	.word	-28
	.word	4
	.word	_Label_2089
	.word	-9
	.word	1
	.word	0
_Label_2082:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2083:
	.ascii	"Pself\0"
	.align
_Label_2084:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2089:
	.byte	'C'
	.ascii	"_temp_2075\0"
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
	mov	1468,r13		! source line 1468
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0RE",r10
!   _temp_2093 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2093 [entry ] into _temp_2094
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
!   Data Move: _temp_2092 = *_temp_2094  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2091 = _temp_2092 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2091) then goto _Label_2095
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2095
!   _temp_2090 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2096
_Label_2095:
!   _temp_2090 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2096:
!   ReturnResult: _temp_2090  (sizeInBytes=1)
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
	.word	_Label_2097
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2099
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2097:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2098:
	.ascii	"Pself\0"
	.align
_Label_2099:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2090\0"
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	1477,r13		! source line 1477
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0RE",r10
!   _temp_2108 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2108 [entry ] into _temp_2109
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
!   Data Move: _temp_2107 = *_temp_2109  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2106 = _temp_2107 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2106) then goto _Label_2110
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2110
!   _temp_2105 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2111
_Label_2110:
!   _temp_2105 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2111:
!   ReturnResult: _temp_2105  (sizeInBytes=1)
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
	.word	_Label_2112
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2113
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2114
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2112:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2113:
	.ascii	"Pself\0"
	.align
_Label_2114:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2106\0"
	.align
_Label_2119:
	.byte	'C'
	.ascii	"_temp_2105\0"
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
_Label_3374:
	push	r0
	sub	r1,1,r1
	bne	_Label_3374
	mov	1486,r13		! source line 1486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0RE",r10
!   _temp_2123 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2123 [entry ] into _temp_2124
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
!   Data Move: _temp_2122 = *_temp_2124  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2121 = _temp_2122 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2121) then goto _Label_2125
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2125
!   _temp_2120 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2126
_Label_2125:
!   _temp_2120 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2126:
!   ReturnResult: _temp_2120  (sizeInBytes=1)
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
	.word	_Label_2127
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2128
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2129
	.word	12
	.word	4
	.word	_Label_2130
	.word	-16
	.word	4
	.word	_Label_2131
	.word	-20
	.word	4
	.word	_Label_2132
	.word	-24
	.word	4
	.word	_Label_2133
	.word	-28
	.word	4
	.word	_Label_2134
	.word	-9
	.word	1
	.word	0
_Label_2127:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2128:
	.ascii	"Pself\0"
	.align
_Label_2129:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2134:
	.byte	'C'
	.ascii	"_temp_2120\0"
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
_Label_3375:
	push	r0
	sub	r1,1,r1
	bne	_Label_3375
	mov	1495,r13		! source line 1495
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   _temp_2135 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2135 [entry ] into _temp_2136
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
!   _temp_2139 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2139 [entry ] into _temp_2140
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
!   Data Move: _temp_2138 = *_temp_2140  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2137 = _temp_2138 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2136 = _temp_2137  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
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
	.word	_Label_2141
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2143
	.word	12
	.word	4
	.word	_Label_2144
	.word	-12
	.word	4
	.word	_Label_2145
	.word	-16
	.word	4
	.word	_Label_2146
	.word	-20
	.word	4
	.word	_Label_2147
	.word	-24
	.word	4
	.word	_Label_2148
	.word	-28
	.word	4
	.word	_Label_2149
	.word	-32
	.word	4
	.word	0
_Label_2141:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2142:
	.ascii	"Pself\0"
	.align
_Label_2143:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2135\0"
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	1504,r13		! source line 1504
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   _temp_2150 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2150 [entry ] into _temp_2151
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
!   _temp_2154 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2154 [entry ] into _temp_2155
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
!   Data Move: _temp_2153 = *_temp_2155  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2152 = _temp_2153 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2151 = _temp_2152  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1508,r13		! source line 1508
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
	.word	_Label_2156
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2157
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2158
	.word	12
	.word	4
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
	.word	0
_Label_2156:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2157:
	.ascii	"Pself\0"
	.align
_Label_2158:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2163:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2164:
	.byte	'?'
	.ascii	"_temp_2150\0"
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
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	1513,r13		! source line 1513
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0AS",r10
!   _temp_2165 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2165 [entry ] into _temp_2166
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
!   _temp_2169 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2169 [entry ] into _temp_2170
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
!   Data Move: _temp_2168 = *_temp_2170  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2167 = _temp_2168 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2166 = _temp_2167  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1517,r13		! source line 1517
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
	.word	_Label_2171
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2172
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2173
	.word	12
	.word	4
	.word	_Label_2174
	.word	-12
	.word	4
	.word	_Label_2175
	.word	-16
	.word	4
	.word	_Label_2176
	.word	-20
	.word	4
	.word	_Label_2177
	.word	-24
	.word	4
	.word	_Label_2178
	.word	-28
	.word	4
	.word	_Label_2179
	.word	-32
	.word	4
	.word	0
_Label_2171:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2172:
	.ascii	"Pself\0"
	.align
_Label_2173:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2165\0"
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	1522,r13		! source line 1522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0AS",r10
!   _temp_2180 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2180 [entry ] into _temp_2181
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
!   _temp_2184 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2184 [entry ] into _temp_2185
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
!   Data Move: _temp_2183 = *_temp_2185  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2182 = _temp_2183 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2181 = _temp_2182  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1526,r13		! source line 1526
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
	.word	_Label_2186
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2187
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2188
	.word	12
	.word	4
	.word	_Label_2189
	.word	-12
	.word	4
	.word	_Label_2190
	.word	-16
	.word	4
	.word	_Label_2191
	.word	-20
	.word	4
	.word	_Label_2192
	.word	-24
	.word	4
	.word	_Label_2193
	.word	-28
	.word	4
	.word	_Label_2194
	.word	-32
	.word	4
	.word	0
_Label_2186:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2187:
	.ascii	"Pself\0"
	.align
_Label_2188:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2180\0"
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	1531,r13		! source line 1531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
!   _temp_2195 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2195 [entry ] into _temp_2196
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
!   _temp_2199 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2199 [entry ] into _temp_2200
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
!   Data Move: _temp_2198 = *_temp_2200  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2197 = _temp_2198 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2196 = _temp_2197  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1535,r13		! source line 1535
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
	.word	_Label_2201
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2202
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2203
	.word	12
	.word	4
	.word	_Label_2204
	.word	-12
	.word	4
	.word	_Label_2205
	.word	-16
	.word	4
	.word	_Label_2206
	.word	-20
	.word	4
	.word	_Label_2207
	.word	-24
	.word	4
	.word	_Label_2208
	.word	-28
	.word	4
	.word	_Label_2209
	.word	-32
	.word	4
	.word	0
_Label_2201:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2202:
	.ascii	"Pself\0"
	.align
_Label_2203:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2204:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2195\0"
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	1540,r13		! source line 1540
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0AS",r10
!   _temp_2210 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2210 [entry ] into _temp_2211
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
!   _temp_2214 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2214 [entry ] into _temp_2215
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
!   Data Move: _temp_2213 = *_temp_2215  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2212 = _temp_2213 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2211 = _temp_2212  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1544,r13		! source line 1544
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
	.word	_Label_2216
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2217
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2218
	.word	12
	.word	4
	.word	_Label_2219
	.word	-12
	.word	4
	.word	_Label_2220
	.word	-16
	.word	4
	.word	_Label_2221
	.word	-20
	.word	4
	.word	_Label_2222
	.word	-24
	.word	4
	.word	_Label_2223
	.word	-28
	.word	4
	.word	_Label_2224
	.word	-32
	.word	4
	.word	0
_Label_2216:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2217:
	.ascii	"Pself\0"
	.align
_Label_2218:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2210\0"
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	1549,r13		! source line 1549
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0AS",r10
!   _temp_2225 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2225 [entry ] into _temp_2226
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
!   _temp_2229 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2229 [entry ] into _temp_2230
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
!   Data Move: _temp_2228 = *_temp_2230  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2227 = _temp_2228 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2226 = _temp_2227  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1553,r13		! source line 1553
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
	.word	_Label_2231
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2232
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2233
	.word	12
	.word	4
	.word	_Label_2234
	.word	-12
	.word	4
	.word	_Label_2235
	.word	-16
	.word	4
	.word	_Label_2236
	.word	-20
	.word	4
	.word	_Label_2237
	.word	-24
	.word	4
	.word	_Label_2238
	.word	-28
	.word	4
	.word	_Label_2239
	.word	-32
	.word	4
	.word	0
_Label_2231:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2232:
	.ascii	"Pself\0"
	.align
_Label_2233:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2225\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	1558,r13		! source line 1558
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1562,r13		! source line 1562
	mov	"\0\0AS",r10
!   _temp_2240 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2240 [entry ] into _temp_2241
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
!   _temp_2244 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2244 [entry ] into _temp_2245
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
!   Data Move: _temp_2243 = *_temp_2245  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2242 = _temp_2243 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2241 = _temp_2242  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1562,r13		! source line 1562
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
	.word	_Label_2246
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2247
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2248
	.word	12
	.word	4
	.word	_Label_2249
	.word	-12
	.word	4
	.word	_Label_2250
	.word	-16
	.word	4
	.word	_Label_2251
	.word	-20
	.word	4
	.word	_Label_2252
	.word	-24
	.word	4
	.word	_Label_2253
	.word	-28
	.word	4
	.word	_Label_2254
	.word	-32
	.word	4
	.word	0
_Label_2246:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2247:
	.ascii	"Pself\0"
	.align
_Label_2248:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2240\0"
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	1567,r13		! source line 1567
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2256 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2256 [0 ] into _temp_2257
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
!   _temp_2255 = _temp_2257		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2258 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2255  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2258  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1573,r13		! source line 1573
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1573,r13		! source line 1573
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
	.word	_Label_2259
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2260
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2261
	.word	-12
	.word	4
	.word	_Label_2262
	.word	-16
	.word	4
	.word	_Label_2263
	.word	-20
	.word	4
	.word	_Label_2264
	.word	-24
	.word	4
	.word	0
_Label_2259:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2260:
	.ascii	"Pself\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2255\0"
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
	mov	1578,r13		! source line 1578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2265
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2265
	jmp	_Label_2266
_Label_2265:
! THEN...
	mov	1594,r13		! source line 1594
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2267
_Label_2266:
! ELSE...
	mov	1595,r13		! source line 1595
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2269		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2269
!	jmp	_Label_2268
_Label_2268:
! THEN...
	mov	1596,r13		! source line 1596
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1596,r13		! source line 1596
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2269:
! END IF...
_Label_2267:
! ASSIGNMENT STATEMENT...
	mov	1598,r13		! source line 1598
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
	mov	1599,r13		! source line 1599
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
	mov	1602,r13		! source line 1602
	mov	"\0\0WH",r10
_Label_2270:
!	jmp	_Label_2271
_Label_2271:
	mov	1602,r13		! source line 1602
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2274		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2274
!	jmp	_Label_2273
_Label_2273:
! THEN...
	mov	1604,r13		! source line 1604
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2275 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2275  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1604,r13		! source line 1604
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2274:
! IF STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0IF",r10
	mov	1607,r13		! source line 1607
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2279) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2278  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2278 then goto _Label_2277 else goto _Label_2276
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2276
	jmp	_Label_2277
_Label_2276:
! THEN...
	mov	1608,r13		! source line 1608
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2280 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1608,r13		! source line 1608
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2277:
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
	mov	1611,r13		! source line 1611
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2282) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2281  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2281 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0WH",r10
_Label_2283:
!   if offset >= 8192 then goto _Label_2285		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2285
!	jmp	_Label_2284
_Label_2284:
	mov	1613,r13		! source line 1613
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2286 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2286  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1619,r13		! source line 1619
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2288		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2288
!	jmp	_Label_2287
_Label_2287:
! THEN...
	mov	1622,r13		! source line 1622
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2288:
! END WHILE...
	jmp	_Label_2283
_Label_2285:
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2270
_Label_2272:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2289
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2290
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2291
	.word	12
	.word	4
	.word	_Label_2292
	.word	16
	.word	4
	.word	_Label_2293
	.word	20
	.word	4
	.word	_Label_2294
	.word	-9
	.word	1
	.word	_Label_2295
	.word	-16
	.word	4
	.word	_Label_2296
	.word	-20
	.word	4
	.word	_Label_2297
	.word	-24
	.word	4
	.word	_Label_2298
	.word	-28
	.word	4
	.word	_Label_2299
	.word	-10
	.word	1
	.word	_Label_2300
	.word	-32
	.word	4
	.word	_Label_2301
	.word	-36
	.word	4
	.word	_Label_2302
	.word	-40
	.word	4
	.word	_Label_2303
	.word	-44
	.word	4
	.word	_Label_2304
	.word	-48
	.word	4
	.word	0
_Label_2289:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2290:
	.ascii	"Pself\0"
	.align
_Label_2291:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2292:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2293:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2294:
	.byte	'C'
	.ascii	"_temp_2286\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2299:
	.byte	'C'
	.ascii	"_temp_2278\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2301:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2302:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2303:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2304:
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
	mov	1632,r13		! source line 1632
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1643,r13		! source line 1643
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2305
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2305
	jmp	_Label_2306
_Label_2305:
! THEN...
	mov	1644,r13		! source line 1644
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2307
_Label_2306:
! ELSE...
	mov	1645,r13		! source line 1645
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1645,r13		! source line 1645
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2309		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2309
!	jmp	_Label_2308
_Label_2308:
! THEN...
	mov	1646,r13		! source line 1646
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2309:
! END IF...
_Label_2307:
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
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
	mov	1649,r13		! source line 1649
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
	mov	1650,r13		! source line 1650
	mov	"\0\0WH",r10
_Label_2310:
!	jmp	_Label_2311
_Label_2311:
	mov	1650,r13		! source line 1650
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1651,r13		! source line 1651
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2316		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2316
	jmp	_Label_2313
_Label_2316:
	mov	1652,r13		! source line 1652
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2318) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2317  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2317 then goto _Label_2315 else goto _Label_2313
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2313
	jmp	_Label_2315
_Label_2315:
	mov	1653,r13		! source line 1653
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2320) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2319  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2319 then goto _Label_2314 else goto _Label_2313
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2313
	jmp	_Label_2314
_Label_2313:
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
_Label_2314:
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
	mov	1656,r13		! source line 1656
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2322) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2321  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2321 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0WH",r10
_Label_2323:
!   if offset >= 8192 then goto _Label_2325		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2325
!	jmp	_Label_2324
_Label_2324:
	mov	1657,r13		! source line 1657
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2326 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2326  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2328		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2328
!	jmp	_Label_2327
_Label_2327:
! THEN...
	mov	1664,r13		! source line 1664
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2328:
! END WHILE...
	jmp	_Label_2323
_Label_2325:
! ASSIGNMENT STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1668,r13		! source line 1668
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2310
_Label_2312:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2329
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2330
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2331
	.word	12
	.word	4
	.word	_Label_2332
	.word	16
	.word	4
	.word	_Label_2333
	.word	20
	.word	4
	.word	_Label_2334
	.word	-9
	.word	1
	.word	_Label_2335
	.word	-16
	.word	4
	.word	_Label_2336
	.word	-20
	.word	4
	.word	_Label_2337
	.word	-24
	.word	4
	.word	_Label_2338
	.word	-10
	.word	1
	.word	_Label_2339
	.word	-28
	.word	4
	.word	_Label_2340
	.word	-11
	.word	1
	.word	_Label_2341
	.word	-32
	.word	4
	.word	_Label_2342
	.word	-36
	.word	4
	.word	_Label_2343
	.word	-40
	.word	4
	.word	_Label_2344
	.word	-44
	.word	4
	.word	0
_Label_2329:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2330:
	.ascii	"Pself\0"
	.align
_Label_2331:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2332:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2333:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2334:
	.byte	'C'
	.ascii	"_temp_2326\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2338:
	.byte	'C'
	.ascii	"_temp_2319\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2340:
	.byte	'C'
	.ascii	"_temp_2317\0"
	.align
_Label_2341:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2342:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2343:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2344:
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
	mov	1674,r13		! source line 1674
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0IF",r10
	mov	1698,r13		! source line 1698
	mov	"\0\0SE",r10
!   _temp_2348 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2349) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2348  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2347  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2347 >= 4 then goto _Label_2346		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2346
!	jmp	_Label_2345
_Label_2345:
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
_Label_2346:
! IF STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2351		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2351
!	jmp	_Label_2350
_Label_2350:
! THEN...
	mov	1706,r13		! source line 1706
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2351:
! ASSIGNMENT STATEMENT...
	mov	1709,r13		! source line 1709
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
	mov	1711,r13		! source line 1711
	mov	"\0\0RE",r10
	mov	1711,r13		! source line 1711
	mov	"\0\0SE",r10
!   _temp_2354 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2353 = _temp_2354 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2355 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2356) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2353  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2355  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2352  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2352  (sizeInBytes=4)
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
	.word	_Label_2357
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2358
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2359
	.word	12
	.word	4
	.word	_Label_2360
	.word	16
	.word	4
	.word	_Label_2361
	.word	20
	.word	4
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
	.word	_Label_2366
	.word	-28
	.word	4
	.word	_Label_2367
	.word	-32
	.word	4
	.word	_Label_2368
	.word	-36
	.word	4
	.word	_Label_2369
	.word	-40
	.word	4
	.word	_Label_2370
	.word	-44
	.word	4
	.word	0
_Label_2357:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2358:
	.ascii	"Pself\0"
	.align
_Label_2359:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2360:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2361:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2370:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2371
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2371:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2372
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2372:
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	2272,r13		! source line 2272
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2373 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2373  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2273,r13		! source line 2273
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
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
	mov	2281,r13		! source line 2281
	mov	"\0\0SE",r10
!   _temp_2375 = &semUsedInSynchMethods
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
	mov	2282,r13		! source line 2282
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
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2377 = &diskBusy
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
	mov	2283,r13		! source line 2283
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
	.word	_Label_2378
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2379
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2380
	.word	-12
	.word	4
	.word	_Label_2381
	.word	-16
	.word	4
	.word	_Label_2382
	.word	-20
	.word	4
	.word	_Label_2383
	.word	-24
	.word	4
	.word	_Label_2384
	.word	-28
	.word	4
	.word	0
_Label_2378:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2379:
	.ascii	"Pself\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2381:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2373\0"
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	2288,r13		! source line 2288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0SE",r10
!   _temp_2385 = &diskBusy
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
	mov	2302,r13		! source line 2302
	mov	"\0\0WH",r10
_Label_2386:
!	jmp	_Label_2387
_Label_2387:
	mov	2302,r13		! source line 2302
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2389 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2390) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2389  sizeInBytes=4
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
	mov	2306,r13		! source line 2306
	mov	"\0\0SE",r10
!   _temp_2391 = &semUsedInSynchMethods
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
	mov	2309,r13		! source line 2309
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2400 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2394
	cmp	r1,2
	be	_Label_2395
	cmp	r1,3
	be	_Label_2396
	cmp	r1,4
	be	_Label_2397
	cmp	r1,5
	be	_Label_2398
	cmp	r1,6
	be	_Label_2399
	jmp	_Label_2392
! CASE 1...
_Label_2394:
! SEND STATEMENT...
	mov	2311,r13		! source line 2311
	mov	"\0\0SE",r10
!   _temp_2401 = &diskBusy
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
	mov	2312,r13		! source line 2312
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2395:
! CALL STATEMENT...
!   _temp_2402 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2402  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2314,r13		! source line 2314
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2396:
! CALL STATEMENT...
!   _temp_2403 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2403  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2316,r13		! source line 2316
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2397:
! CALL STATEMENT...
!   _temp_2404 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2404  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2318,r13		! source line 2318
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2398:
! BREAK STATEMENT...
	mov	2322,r13		! source line 2322
	mov	"\0\0BR",r10
	jmp	_Label_2393
! CASE 6...
_Label_2399:
! CALL STATEMENT...
!   _temp_2405 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2405  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2324,r13		! source line 2324
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2392:
! CALL STATEMENT...
!   _temp_2406 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2406  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2326,r13		! source line 2326
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2393:
! END WHILE...
	jmp	_Label_2386
_Label_2388:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2407
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2408
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2409
	.word	12
	.word	4
	.word	_Label_2410
	.word	16
	.word	4
	.word	_Label_2411
	.word	20
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
	.word	_Label_2416
	.word	-28
	.word	4
	.word	_Label_2417
	.word	-32
	.word	4
	.word	_Label_2418
	.word	-36
	.word	4
	.word	_Label_2419
	.word	-40
	.word	4
	.word	_Label_2420
	.word	-44
	.word	4
	.word	_Label_2421
	.word	-48
	.word	4
	.word	_Label_2422
	.word	-52
	.word	4
	.word	0
_Label_2407:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2408:
	.ascii	"Pself\0"
	.align
_Label_2409:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2410:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2385\0"
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
	mov	2335,r13		! source line 2335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2353,r13		! source line 2353
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
	mov	2354,r13		! source line 2354
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
	mov	2355,r13		! source line 2355
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
	mov	2356,r13		! source line 2356
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
	mov	2356,r13		! source line 2356
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
	.word	_Label_2423
	.word	20		! total size of parameters
	.word	0		! frame size = 0
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
	.word	20
	.word	4
	.word	_Label_2428
	.word	24
	.word	4
	.word	0
_Label_2423:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2424:
	.ascii	"Pself\0"
	.align
_Label_2425:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2426:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2427:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2428:
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	2361,r13		! source line 2361
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   _temp_2429 = &diskBusy
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
	mov	2374,r13		! source line 2374
	mov	"\0\0WH",r10
_Label_2430:
!	jmp	_Label_2431
_Label_2431:
	mov	2374,r13		! source line 2374
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_2433 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2434) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2433  sizeInBytes=4
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
	mov	2377,r13		! source line 2377
	mov	"\0\0SE",r10
!   _temp_2435 = &semUsedInSynchMethods
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
	mov	2380,r13		! source line 2380
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2444 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2438
	cmp	r1,2
	be	_Label_2439
	cmp	r1,3
	be	_Label_2440
	cmp	r1,4
	be	_Label_2441
	cmp	r1,5
	be	_Label_2442
	cmp	r1,6
	be	_Label_2443
	jmp	_Label_2436
! CASE 1...
_Label_2438:
! SEND STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0SE",r10
!   _temp_2445 = &diskBusy
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
	mov	2383,r13		! source line 2383
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2439:
! CALL STATEMENT...
!   _temp_2446 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2446  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2385,r13		! source line 2385
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2440:
! CALL STATEMENT...
!   _temp_2447 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2447  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2387,r13		! source line 2387
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2441:
! CALL STATEMENT...
!   _temp_2448 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2448  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2389,r13		! source line 2389
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2442:
! BREAK STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0BR",r10
	jmp	_Label_2437
! CASE 6...
_Label_2443:
! CALL STATEMENT...
!   _temp_2449 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2449  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2395,r13		! source line 2395
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2436:
! CALL STATEMENT...
!   _temp_2450 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2450  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2397,r13		! source line 2397
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2437:
! END WHILE...
	jmp	_Label_2430
_Label_2432:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2451
	.word	16		! total size of parameters
	.word	64		! frame size = 64
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
	.word	20
	.word	4
	.word	_Label_2456
	.word	-12
	.word	4
	.word	_Label_2457
	.word	-16
	.word	4
	.word	_Label_2458
	.word	-20
	.word	4
	.word	_Label_2459
	.word	-24
	.word	4
	.word	_Label_2460
	.word	-28
	.word	4
	.word	_Label_2461
	.word	-32
	.word	4
	.word	_Label_2462
	.word	-36
	.word	4
	.word	_Label_2463
	.word	-40
	.word	4
	.word	_Label_2464
	.word	-44
	.word	4
	.word	_Label_2465
	.word	-48
	.word	4
	.word	_Label_2466
	.word	-52
	.word	4
	.word	0
_Label_2451:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2452:
	.ascii	"Pself\0"
	.align
_Label_2453:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2454:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2455:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2433\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2429\0"
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
	mov	2406,r13		! source line 2406
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
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
	mov	2424,r13		! source line 2424
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
	mov	2425,r13		! source line 2425
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
	mov	2426,r13		! source line 2426
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
	mov	2426,r13		! source line 2426
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
	.word	_Label_2467
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2468
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2469
	.word	12
	.word	4
	.word	_Label_2470
	.word	16
	.word	4
	.word	_Label_2471
	.word	20
	.word	4
	.word	_Label_2472
	.word	24
	.word	4
	.word	0
_Label_2467:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2468:
	.ascii	"Pself\0"
	.align
_Label_2469:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2470:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2471:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2472:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2473
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
_Label_2473:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2474
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2474:
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
	mov	2437,r13		! source line 2437
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2475 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2475  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2444,r13		! source line 2444
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
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
	mov	2446,r13		! source line 2446
	mov	"\0\0SE",r10
!   _temp_2477 = &fileManagerLock
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
	mov	2449,r13		! source line 2449
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
	mov	2450,r13		! source line 2450
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
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2480 = &anFCBBecameFree
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
	mov	2452,r13		! source line 2452
	mov	"\0\0AS",r10
!   _temp_2481 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2483 = &_temp_2482
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2483 = _temp_2483 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2485 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3391:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3391
!   _temp_2485 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2487:
!   Data Move: *_temp_2483 = _temp_2485  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3392:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3392
!   _temp_2483 = _temp_2483 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2484 = _temp_2484 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2484) then goto _Label_2487
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2487
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2488 = &_temp_2482
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3393
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3393:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2481 = *_temp_2488  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3394:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3394
! FOR STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2493 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2494 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2493  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2489:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2494 then goto _Label_2492		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2492
_Label_2490:
	mov	2454,r13		! source line 2454
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0AS",r10
!   _temp_2495 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2495 [i ] into _temp_2496
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
!   _temp_2497 = _temp_2496 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2497 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2456,r13		! source line 2456
	mov	"\0\0SE",r10
!   _temp_2498 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2498 [i ] into _temp_2499
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
	mov	2457,r13		! source line 2457
	mov	"\0\0SE",r10
!   _temp_2501 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2501 [i ] into _temp_2502
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
!   _temp_2500 = _temp_2502		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2503 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2500  sizeInBytes=4
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
_Label_2491:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2489
! END FOR
_Label_2492:
! ASSIGNMENT STATEMENT...
	mov	2461,r13		! source line 2461
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
	mov	2462,r13		! source line 2462
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
	mov	2463,r13		! source line 2463
	mov	"\0\0SE",r10
!   _temp_2506 = &anOpenFileBecameFree
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
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   _temp_2507 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2509 = &_temp_2508
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2509 = _temp_2509 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2511 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3395:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3395
!   _temp_2511 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2513:
!   Data Move: *_temp_2509 = _temp_2511  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3396:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3396
!   _temp_2509 = _temp_2509 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2510 = _temp_2510 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2510) then goto _Label_2513
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2513
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2514 = &_temp_2508
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3397
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3397:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2507 = *_temp_2514  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3398:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3398
! FOR STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2519 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2520 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2519  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2515:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2520 then goto _Label_2518		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2518
_Label_2516:
	mov	2466,r13		! source line 2466
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0AS",r10
!   _temp_2521 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2521 [i ] into _temp_2522
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
!   _temp_2523 = _temp_2522 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2523 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_2525 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2525 [i ] into _temp_2526
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
!   _temp_2524 = _temp_2526		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2527 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2524  sizeInBytes=4
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
_Label_2517:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2515
! END FOR
_Label_2518:
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3399:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3399
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0AS",r10
!   _temp_2529 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2530 = _temp_2529 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2530 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0AS",r10
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_2531 = &_P_Kernel_frameManager
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
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_2532 = &_P_Kernel_diskDriver
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
	mov	2479,r13		! source line 2479
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
	.word	_Label_2533
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2534
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2535
	.word	-12
	.word	4
	.word	_Label_2536
	.word	-16
	.word	4
	.word	_Label_2537
	.word	-20
	.word	4
	.word	_Label_2538
	.word	-24
	.word	4
	.word	_Label_2539
	.word	-28
	.word	4
	.word	_Label_2540
	.word	-32
	.word	4
	.word	_Label_2541
	.word	-36
	.word	4
	.word	_Label_2542
	.word	-40
	.word	4
	.word	_Label_2543
	.word	-44
	.word	4
	.word	_Label_2544
	.word	-48
	.word	4
	.word	_Label_2545
	.word	-52
	.word	4
	.word	_Label_2546
	.word	-56
	.word	4
	.word	_Label_2547
	.word	-60
	.word	4
	.word	_Label_2548
	.word	-64
	.word	4
	.word	_Label_2549
	.word	-68
	.word	4
	.word	_Label_2550
	.word	-72
	.word	4
	.word	_Label_2551
	.word	-100
	.word	28
	.word	_Label_2552
	.word	-104
	.word	4
	.word	_Label_2553
	.word	-108
	.word	4
	.word	_Label_2554
	.word	-392
	.word	284
	.word	_Label_2555
	.word	-396
	.word	4
	.word	_Label_2556
	.word	-400
	.word	4
	.word	_Label_2557
	.word	-404
	.word	4
	.word	_Label_2558
	.word	-408
	.word	4
	.word	_Label_2559
	.word	-412
	.word	4
	.word	_Label_2560
	.word	-416
	.word	4
	.word	_Label_2561
	.word	-420
	.word	4
	.word	_Label_2562
	.word	-424
	.word	4
	.word	_Label_2563
	.word	-428
	.word	4
	.word	_Label_2564
	.word	-432
	.word	4
	.word	_Label_2565
	.word	-436
	.word	4
	.word	_Label_2566
	.word	-440
	.word	4
	.word	_Label_2567
	.word	-444
	.word	4
	.word	_Label_2568
	.word	-448
	.word	4
	.word	_Label_2569
	.word	-452
	.word	4
	.word	_Label_2570
	.word	-456
	.word	4
	.word	_Label_2571
	.word	-460
	.word	4
	.word	_Label_2572
	.word	-500
	.word	40
	.word	_Label_2573
	.word	-504
	.word	4
	.word	_Label_2574
	.word	-508
	.word	4
	.word	_Label_2575
	.word	-912
	.word	404
	.word	_Label_2576
	.word	-916
	.word	4
	.word	_Label_2577
	.word	-920
	.word	4
	.word	_Label_2578
	.word	-924
	.word	4
	.word	_Label_2579
	.word	-928
	.word	4
	.word	_Label_2580
	.word	-932
	.word	4
	.word	_Label_2581
	.word	-936
	.word	4
	.word	_Label_2582
	.word	-940
	.word	4
	.word	_Label_2583
	.word	-944
	.word	4
	.word	0
_Label_2533:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2534:
	.ascii	"Pself\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2561:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2562:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2563:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2564:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2485\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2583:
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	2486,r13		! source line 2486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0SE",r10
!   _temp_2584 = &fileManagerLock
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
!   _temp_2585 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2585  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2489,r13		! source line 2489
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2590 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2591 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2590  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2586:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2591 then goto _Label_2589		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2589
_Label_2587:
	mov	2490,r13		! source line 2490
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2592 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2592  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2491,r13		! source line 2491
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2492,r13		! source line 2492
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2593 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2593  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2493,r13		! source line 2493
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0SE",r10
!   _temp_2594 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2594 [i ] into _temp_2595
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
_Label_2588:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2586
! END FOR
_Label_2589:
! CALL STATEMENT...
!   _temp_2596 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2596  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2496,r13		! source line 2496
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2497,r13		! source line 2497
	mov	"\0\0SE",r10
!   _temp_2597 = _function_196_printFCB
	set	_function_196_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2598 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2597  sizeInBytes=4
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
	mov	2498,r13		! source line 2498
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2599 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2599  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2499,r13		! source line 2499
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2604 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2605 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2604  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2600:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2605 then goto _Label_2603		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2603
_Label_2601:
	mov	2500,r13		! source line 2500
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2606 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2606  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2501,r13		! source line 2501
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2502,r13		! source line 2502
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2607 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2607  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2503,r13		! source line 2503
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2609 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2609 [i ] into _temp_2610
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
!   _temp_2608 = _temp_2610		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2608  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2504,r13		! source line 2504
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2611 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2611  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2505,r13		! source line 2505
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2506,r13		! source line 2506
	mov	"\0\0SE",r10
!   _temp_2612 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2612 [i ] into _temp_2613
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
_Label_2602:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2600
! END FOR
_Label_2603:
! CALL STATEMENT...
!   _temp_2614 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2614  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2508,r13		! source line 2508
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   _temp_2615 = _function_195_printOpen
	set	_function_195_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2616 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2615  sizeInBytes=4
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
	mov	2510,r13		! source line 2510
	mov	"\0\0SE",r10
!   _temp_2617 = &fileManagerLock
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
	mov	2510,r13		! source line 2510
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
	.word	_Label_2618
	.word	4		! total size of parameters
	.word	116		! frame size = 116
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
	.word	_Label_2624
	.word	-28
	.word	4
	.word	_Label_2625
	.word	-32
	.word	4
	.word	_Label_2626
	.word	-36
	.word	4
	.word	_Label_2627
	.word	-40
	.word	4
	.word	_Label_2628
	.word	-44
	.word	4
	.word	_Label_2629
	.word	-48
	.word	4
	.word	_Label_2630
	.word	-52
	.word	4
	.word	_Label_2631
	.word	-56
	.word	4
	.word	_Label_2632
	.word	-60
	.word	4
	.word	_Label_2633
	.word	-64
	.word	4
	.word	_Label_2634
	.word	-68
	.word	4
	.word	_Label_2635
	.word	-72
	.word	4
	.word	_Label_2636
	.word	-76
	.word	4
	.word	_Label_2637
	.word	-80
	.word	4
	.word	_Label_2638
	.word	-84
	.word	4
	.word	_Label_2639
	.word	-88
	.word	4
	.word	_Label_2640
	.word	-92
	.word	4
	.word	_Label_2641
	.word	-96
	.word	4
	.word	_Label_2642
	.word	-100
	.word	4
	.word	_Label_2643
	.word	-104
	.word	4
	.word	_Label_2644
	.word	-108
	.word	4
	.word	_Label_2645
	.word	-112
	.word	4
	.word	_Label_2646
	.word	-116
	.word	4
	.word	0
_Label_2618:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
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
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2646:
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	2515,r13		! source line 2515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
	mov	2531,r13		! source line 2531
	mov	"\0\0SE",r10
!   _temp_2647 = &_P_Kernel_fileManager
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
	mov	2532,r13		! source line 2532
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2648
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2648
	jmp	_Label_2649
_Label_2648:
! THEN...
	mov	2533,r13		! source line 2533
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2649:
! SEND STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
!   _temp_2650 = &fileManagerLock
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
	mov	2538,r13		! source line 2538
	mov	"\0\0WH",r10
_Label_2651:
	mov	2538,r13		! source line 2538
	mov	"\0\0SE",r10
!   _temp_2654 = &openFileFreeList
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
!   if result==true then goto _Label_2652 else goto _Label_2653
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2653
	jmp	_Label_2652
_Label_2652:
	mov	2538,r13		! source line 2538
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   _temp_2655 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2656 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2655  sizeInBytes=4
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
	jmp	_Label_2651
_Label_2653:
! ASSIGNMENT STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0AS",r10
	mov	2541,r13		! source line 2541
	mov	"\0\0SE",r10
!   _temp_2657 = &openFileFreeList
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
	mov	2544,r13		! source line 2544
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2658 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2658 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2659 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2659 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2660 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2660 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   _temp_2661 = &fileManagerLock
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
	mov	2551,r13		! source line 2551
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
	.word	_Label_2662
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2663
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2664
	.word	12
	.word	4
	.word	_Label_2665
	.word	-12
	.word	4
	.word	_Label_2666
	.word	-16
	.word	4
	.word	_Label_2667
	.word	-20
	.word	4
	.word	_Label_2668
	.word	-24
	.word	4
	.word	_Label_2669
	.word	-28
	.word	4
	.word	_Label_2670
	.word	-32
	.word	4
	.word	_Label_2671
	.word	-36
	.word	4
	.word	_Label_2672
	.word	-40
	.word	4
	.word	_Label_2673
	.word	-44
	.word	4
	.word	_Label_2674
	.word	-48
	.word	4
	.word	_Label_2675
	.word	-52
	.word	4
	.word	_Label_2676
	.word	-56
	.word	4
	.word	0
_Label_2662:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2663:
	.ascii	"Pself\0"
	.align
_Label_2664:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2675:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2676:
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	2556,r13		! source line 2556
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
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
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2678		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2678
!	jmp	_Label_2677
_Label_2677:
! THEN...
	mov	2587,r13		! source line 2587
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2679 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2679  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2587,r13		! source line 2587
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2678:
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
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
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
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
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0WH",r10
_Label_2680:
!   if numFiles <= 0 then goto _Label_2682		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2682
!	jmp	_Label_2681
_Label_2681:
	mov	2597,r13		! source line 2597
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2683 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2683  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2598,r13		! source line 2598
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2684 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2684  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2600,r13		! source line 2600
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2685 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2685  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2602,r13		! source line 2602
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2689 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2689 then goto _Label_2687		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2687
!	jmp	_Label_2688
_Label_2688:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2691
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
!   _temp_2690 = _temp_2691		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2690  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2605,r13		! source line 2605
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2686 else goto _Label_2687
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2687
	jmp	_Label_2686
_Label_2686:
! THEN...
	mov	2606,r13		! source line 2606
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0BR",r10
	jmp	_Label_2682
! END IF...
_Label_2687:
! ASSIGNMENT STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2680
_Label_2682:
! IF STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2693		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2693
!	jmp	_Label_2692
_Label_2692:
! THEN...
	mov	2614,r13		! source line 2614
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2693:
! SEND STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0SE",r10
!   _temp_2694 = &fileManagerLock
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
	mov	2619,r13		! source line 2619
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2699 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2700 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2699  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2695:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2700 then goto _Label_2698		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2698
_Label_2696:
	mov	2619,r13		! source line 2619
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0AS",r10
!   _temp_2701 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2701 [i ] into _temp_2702
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
!   fcb = _temp_2702		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2706 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2705 = *_temp_2706  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2705 != start then goto _Label_2704		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2704
!	jmp	_Label_2703
_Label_2703:
! THEN...
	mov	2622,r13		! source line 2622
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2707 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2710 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2709 = *_temp_2710  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2708 = _temp_2709 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2707 = _temp_2708  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0SE",r10
!   _temp_2711 = &fileManagerLock
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
	mov	2624,r13		! source line 2624
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2704:
!   Increment the FOR-LOOP index variable and jump back
_Label_2697:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2695
! END FOR
_Label_2698:
! WHILE STATEMENT...
	mov	2629,r13		! source line 2629
	mov	"\0\0WH",r10
_Label_2712:
	mov	2629,r13		! source line 2629
	mov	"\0\0SE",r10
!   _temp_2715 = &fcbFreeList
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
!   if result==true then goto _Label_2713 else goto _Label_2714
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2714
	jmp	_Label_2713
_Label_2713:
	mov	2629,r13		! source line 2629
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0SE",r10
!   _temp_2716 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2717 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2716  sizeInBytes=4
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
	jmp	_Label_2712
_Label_2714:
! ASSIGNMENT STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0AS",r10
	mov	2632,r13		! source line 2632
	mov	"\0\0SE",r10
!   _temp_2718 = &fcbFreeList
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
	mov	2635,r13		! source line 2635
	mov	"\0\0SE",r10
!   _temp_2719 = &fileManagerLock
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
	mov	2638,r13		! source line 2638
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2720 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2721 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2721 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2640,r13		! source line 2640
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2722 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2722 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2727 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2726 = *_temp_2727  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2726 < 0 then goto _Label_2725		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2725
	jmp	_Label_2723
_Label_2725:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2728 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2728 ) then goto _Label_2724		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2724
!	jmp	_Label_2723
_Label_2723:
! THEN...
	mov	2642,r13		! source line 2642
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2729 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2729  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2642,r13		! source line 2642
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2724:
! RETURN STATEMENT...
	mov	2644,r13		! source line 2644
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
	.word	_Label_2730
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2731
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2732
	.word	12
	.word	4
	.word	_Label_2733
	.word	-12
	.word	4
	.word	_Label_2734
	.word	-16
	.word	4
	.word	_Label_2735
	.word	-20
	.word	4
	.word	_Label_2736
	.word	-24
	.word	4
	.word	_Label_2737
	.word	-28
	.word	4
	.word	_Label_2738
	.word	-32
	.word	4
	.word	_Label_2739
	.word	-36
	.word	4
	.word	_Label_2740
	.word	-40
	.word	4
	.word	_Label_2741
	.word	-44
	.word	4
	.word	_Label_2742
	.word	-48
	.word	4
	.word	_Label_2743
	.word	-52
	.word	4
	.word	_Label_2744
	.word	-56
	.word	4
	.word	_Label_2745
	.word	-60
	.word	4
	.word	_Label_2746
	.word	-64
	.word	4
	.word	_Label_2747
	.word	-68
	.word	4
	.word	_Label_2748
	.word	-72
	.word	4
	.word	_Label_2749
	.word	-76
	.word	4
	.word	_Label_2750
	.word	-80
	.word	4
	.word	_Label_2751
	.word	-84
	.word	4
	.word	_Label_2752
	.word	-88
	.word	4
	.word	_Label_2753
	.word	-92
	.word	4
	.word	_Label_2754
	.word	-96
	.word	4
	.word	_Label_2755
	.word	-100
	.word	4
	.word	_Label_2756
	.word	-104
	.word	4
	.word	_Label_2757
	.word	-108
	.word	4
	.word	_Label_2758
	.word	-112
	.word	4
	.word	_Label_2759
	.word	-116
	.word	4
	.word	_Label_2760
	.word	-120
	.word	4
	.word	_Label_2761
	.word	-124
	.word	4
	.word	_Label_2762
	.word	-128
	.word	4
	.word	_Label_2763
	.word	-132
	.word	4
	.word	_Label_2764
	.word	-136
	.word	4
	.word	_Label_2765
	.word	-140
	.word	4
	.word	_Label_2766
	.word	-144
	.word	4
	.word	_Label_2767
	.word	-148
	.word	4
	.word	_Label_2768
	.word	-152
	.word	4
	.word	_Label_2769
	.word	-156
	.word	4
	.word	_Label_2770
	.word	-160
	.word	4
	.word	0
_Label_2730:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2731:
	.ascii	"Pself\0"
	.align
_Label_2732:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2716\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2700\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2699\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2764:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2765:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2766:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2767:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2768:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2769:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2770:
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
	mov	2657,r13		! source line 2657
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2659,r13		! source line 2659
	mov	"\0\0IF",r10
!   _temp_2773 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2773 then goto _Label_2772		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2772
!	jmp	_Label_2771
_Label_2771:
! THEN...
	mov	2660,r13		! source line 2660
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2772:
! SEND STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0SE",r10
!   _temp_2774 = &fileManagerLock
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
	mov	2663,r13		! source line 2663
	mov	"\0\0SE",r10
!   _temp_2775 = &_P_Kernel_fileManager
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
	mov	2664,r13		! source line 2664
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2776 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2776  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2665,r13		! source line 2665
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2777 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2780 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2779 = *_temp_2780  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2778 = _temp_2779 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2777 = _temp_2778  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2784 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2783 = *_temp_2784  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2783 > 0 then goto _Label_2782		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2782
!	jmp	_Label_2781
_Label_2781:
! THEN...
	mov	2667,r13		! source line 2667
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0SE",r10
!   _temp_2785 = &openFileFreeList
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
	mov	2668,r13		! source line 2668
	mov	"\0\0SE",r10
!   _temp_2786 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2787 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2786  sizeInBytes=4
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
	mov	2669,r13		! source line 2669
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2788 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2791 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2790 = *_temp_2791  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2789 = _temp_2790 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2788 = _temp_2789  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2795 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2794 = *_temp_2795  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2794 > 0 then goto _Label_2793		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2793
!	jmp	_Label_2792
_Label_2792:
! THEN...
	mov	2671,r13		! source line 2671
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0SE",r10
!   _temp_2796 = &fcbFreeList
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
	mov	2672,r13		! source line 2672
	mov	"\0\0SE",r10
!   _temp_2797 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2798 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2797  sizeInBytes=4
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
_Label_2793:
! END IF...
_Label_2782:
! SEND STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0SE",r10
!   _temp_2799 = &fileManagerLock
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
	mov	2675,r13		! source line 2675
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
	.word	_Label_2800
	.word	8		! total size of parameters
	.word	104		! frame size = 104
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
	.word	_Label_2809
	.word	-36
	.word	4
	.word	_Label_2810
	.word	-40
	.word	4
	.word	_Label_2811
	.word	-44
	.word	4
	.word	_Label_2812
	.word	-48
	.word	4
	.word	_Label_2813
	.word	-52
	.word	4
	.word	_Label_2814
	.word	-56
	.word	4
	.word	_Label_2815
	.word	-60
	.word	4
	.word	_Label_2816
	.word	-64
	.word	4
	.word	_Label_2817
	.word	-68
	.word	4
	.word	_Label_2818
	.word	-72
	.word	4
	.word	_Label_2819
	.word	-76
	.word	4
	.word	_Label_2820
	.word	-80
	.word	4
	.word	_Label_2821
	.word	-84
	.word	4
	.word	_Label_2822
	.word	-88
	.word	4
	.word	_Label_2823
	.word	-92
	.word	4
	.word	_Label_2824
	.word	-96
	.word	4
	.word	_Label_2825
	.word	-100
	.word	4
	.word	_Label_2826
	.word	-104
	.word	4
	.word	0
_Label_2800:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2801:
	.ascii	"Pself\0"
	.align
_Label_2802:
	.byte	'P'
	.ascii	"open\0"
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
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2783\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2826:
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	2680,r13		! source line 2680
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2830 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2829 = *_temp_2830  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2829) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2831 = _temp_2829 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2831 ) then goto _Label_2828		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2828
!	jmp	_Label_2827
_Label_2827:
! THEN...
	mov	2686,r13		! source line 2686
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2836 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2835 = *_temp_2836  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2835) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2837 = _temp_2835 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2834 = *_temp_2837  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2834 >= 0 then goto _Label_2833		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2833
!	jmp	_Label_2832
_Label_2832:
! THEN...
	mov	2687,r13		! source line 2687
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2838 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2838  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2687,r13		! source line 2687
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2833:
! ASSIGNMENT STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2840 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2839 = *_temp_2840  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2839) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2841 = _temp_2839 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2841 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2845 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2844 = *_temp_2845  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2844) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2846 = _temp_2844 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2843 = *_temp_2846  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2849 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2848 = *_temp_2849  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2848) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2850 = _temp_2848 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2847 = *_temp_2850  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2842 = _temp_2843 + _temp_2847		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2853 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2852 = *_temp_2853  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2852) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2854 = _temp_2852 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2851 = *_temp_2854  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2855 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2842  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2851  sizeInBytes=4
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
_Label_2828:
! RETURN STATEMENT...
	mov	2685,r13		! source line 2685
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
	.word	_Label_2856
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2857
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2858
	.word	12
	.word	4
	.word	_Label_2859
	.word	-12
	.word	4
	.word	_Label_2860
	.word	-16
	.word	4
	.word	_Label_2861
	.word	-20
	.word	4
	.word	_Label_2862
	.word	-24
	.word	4
	.word	_Label_2863
	.word	-28
	.word	4
	.word	_Label_2864
	.word	-32
	.word	4
	.word	_Label_2865
	.word	-36
	.word	4
	.word	_Label_2866
	.word	-40
	.word	4
	.word	_Label_2867
	.word	-44
	.word	4
	.word	_Label_2868
	.word	-48
	.word	4
	.word	_Label_2869
	.word	-52
	.word	4
	.word	_Label_2870
	.word	-56
	.word	4
	.word	_Label_2871
	.word	-60
	.word	4
	.word	_Label_2872
	.word	-64
	.word	4
	.word	_Label_2873
	.word	-68
	.word	4
	.word	_Label_2874
	.word	-72
	.word	4
	.word	_Label_2875
	.word	-76
	.word	4
	.word	_Label_2876
	.word	-80
	.word	4
	.word	_Label_2877
	.word	-84
	.word	4
	.word	_Label_2878
	.word	-88
	.word	4
	.word	_Label_2879
	.word	-92
	.word	4
	.word	_Label_2880
	.word	-96
	.word	4
	.word	_Label_2881
	.word	-100
	.word	4
	.word	_Label_2882
	.word	-104
	.word	4
	.word	_Label_2883
	.word	-108
	.word	4
	.word	0
_Label_2856:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2857:
	.ascii	"Pself\0"
	.align
_Label_2858:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2860:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2861:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2864:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2829\0"
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
_Label_3405:
	push	r0
	sub	r1,1,r1
	bne	_Label_3405
	mov	2699,r13		! source line 2699
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2714,r13		! source line 2714
	mov	"\0\0SE",r10
!   _temp_2884 = &fileManagerLock
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
	mov	2715,r13		! source line 2715
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2890		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2890
!   _temp_2889 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2891
_Label_2890:
!   _temp_2889 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2891:
!   if _temp_2889 then goto _Label_2888 else goto _Label_2885
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2885
	jmp	_Label_2888
_Label_2888:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2894 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2893 = *_temp_2894  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2893 == 0 then goto _Label_2895		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2895
!   _temp_2892 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2896
_Label_2895:
!   _temp_2892 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2896:
!   if _temp_2892 then goto _Label_2887 else goto _Label_2885
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2885
	jmp	_Label_2887
_Label_2887:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2899 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2898 = *_temp_2899  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2898) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2900 = _temp_2898 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2897 = *_temp_2900  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2897 >= 0 then goto _Label_2886		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2886
!	jmp	_Label_2885
_Label_2885:
! THEN...
	mov	2716,r13		! source line 2716
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2901 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2716,r13		! source line 2716
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2886:
! ASSIGNMENT STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2902 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2902  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2719,r13		! source line 2719
	mov	"\0\0WH",r10
_Label_2903:
!   if numBytes <= 0 then goto _Label_2905		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2905
!	jmp	_Label_2904
_Label_2904:
	mov	2719,r13		! source line 2719
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
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
	mov	2729,r13		! source line 2729
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
	mov	2733,r13		! source line 2733
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2909 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2908 = *_temp_2909  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2908 == sector then goto _Label_2907		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2907
!	jmp	_Label_2906
_Label_2906:
! THEN...
	mov	2734,r13		! source line 2734
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2910) then goto _runtimeErrorNullPointer
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
	mov	2736,r13		! source line 2736
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2913 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2912 = *_temp_2913  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2911 = sector + _temp_2912		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2915 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2914 = *_temp_2915  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2916 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2911  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2914  sizeInBytes=4
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
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2917 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2917 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2918 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2918 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2907:
! ASSIGNMENT STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2920 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2919 = *_temp_2920  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2919 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0AS",r10
!   _temp_2921 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2921  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2743,r13		! source line 2743
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
	mov	2747,r13		! source line 2747
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2903
_Label_2905:
! SEND STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0SE",r10
!   _temp_2922 = &fileManagerLock
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
	mov	2758,r13		! source line 2758
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
	.word	_Label_2923
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2924
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2925
	.word	12
	.word	4
	.word	_Label_2926
	.word	16
	.word	4
	.word	_Label_2927
	.word	20
	.word	4
	.word	_Label_2928
	.word	24
	.word	4
	.word	_Label_2929
	.word	-16
	.word	4
	.word	_Label_2930
	.word	-20
	.word	4
	.word	_Label_2931
	.word	-24
	.word	4
	.word	_Label_2932
	.word	-28
	.word	4
	.word	_Label_2933
	.word	-32
	.word	4
	.word	_Label_2934
	.word	-36
	.word	4
	.word	_Label_2935
	.word	-40
	.word	4
	.word	_Label_2936
	.word	-44
	.word	4
	.word	_Label_2937
	.word	-48
	.word	4
	.word	_Label_2938
	.word	-52
	.word	4
	.word	_Label_2939
	.word	-56
	.word	4
	.word	_Label_2940
	.word	-60
	.word	4
	.word	_Label_2941
	.word	-64
	.word	4
	.word	_Label_2942
	.word	-68
	.word	4
	.word	_Label_2943
	.word	-72
	.word	4
	.word	_Label_2944
	.word	-76
	.word	4
	.word	_Label_2945
	.word	-80
	.word	4
	.word	_Label_2946
	.word	-84
	.word	4
	.word	_Label_2947
	.word	-88
	.word	4
	.word	_Label_2948
	.word	-92
	.word	4
	.word	_Label_2949
	.word	-96
	.word	4
	.word	_Label_2950
	.word	-100
	.word	4
	.word	_Label_2951
	.word	-104
	.word	4
	.word	_Label_2952
	.word	-9
	.word	1
	.word	_Label_2953
	.word	-10
	.word	1
	.word	_Label_2954
	.word	-108
	.word	4
	.word	_Label_2955
	.word	-112
	.word	4
	.word	_Label_2956
	.word	-116
	.word	4
	.word	_Label_2957
	.word	-120
	.word	4
	.word	_Label_2958
	.word	-124
	.word	4
	.word	_Label_2959
	.word	-128
	.word	4
	.word	0
_Label_2923:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2924:
	.ascii	"Pself\0"
	.align
_Label_2925:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2926:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2927:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2928:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2952:
	.byte	'C'
	.ascii	"_temp_2892\0"
	.align
_Label_2953:
	.byte	'C'
	.ascii	"_temp_2889\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2955:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2956:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2957:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2958:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2959:
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
_Label_3406:
	push	r0
	sub	r1,1,r1
	bne	_Label_3406
	mov	2763,r13		! source line 2763
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0SE",r10
!   _temp_2960 = &fileManagerLock
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
	mov	2780,r13		! source line 2780
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2966		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2966
!   _temp_2965 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2967
_Label_2966:
!   _temp_2965 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2967:
!   if _temp_2965 then goto _Label_2964 else goto _Label_2961
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2961
	jmp	_Label_2964
_Label_2964:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2970 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2969 = *_temp_2970  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2969 == 0 then goto _Label_2971		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2971
!   _temp_2968 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2972
_Label_2971:
!   _temp_2968 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2972:
!   if _temp_2968 then goto _Label_2963 else goto _Label_2961
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2961
	jmp	_Label_2963
_Label_2963:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2975 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2974 = *_temp_2975  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2974) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2976 = _temp_2974 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2973 = *_temp_2976  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2973 >= 0 then goto _Label_2962		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2962
!	jmp	_Label_2961
_Label_2961:
! THEN...
	mov	2781,r13		! source line 2781
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2977 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2977  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2781,r13		! source line 2781
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2962:
! ASSIGNMENT STATEMENT...
	mov	2783,r13		! source line 2783
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2978 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2978  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2784,r13		! source line 2784
	mov	"\0\0WH",r10
_Label_2979:
!   if numBytes <= 0 then goto _Label_2981		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2981
!	jmp	_Label_2980
_Label_2980:
	mov	2784,r13		! source line 2784
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2793,r13		! source line 2793
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
	mov	2794,r13		! source line 2794
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
	mov	2798,r13		! source line 2798
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2985 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2984 = *_temp_2985  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2984 == sector then goto _Label_2983		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2983
!	jmp	_Label_2982
_Label_2982:
! THEN...
	mov	2800,r13		! source line 2800
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2986) then goto _runtimeErrorNullPointer
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
_Label_2983:
! ASSIGNMENT STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2988 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2987 = *_temp_2988  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2987 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0AS",r10
!   _temp_2989 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2989  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2803,r13		! source line 2803
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2993 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2992 = *_temp_2993  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2992 != sector then goto _Label_2991		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2991
!	jmp	_Label_2990
_Label_2990:
	jmp	_Label_2994
_Label_2991:
! ELSE...
	mov	2806,r13		! source line 2806
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2997
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2997
	jmp	_Label_2996
_Label_2997:
!   if bytesToMove != 8192 then goto _Label_2996		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2996
!	jmp	_Label_2995
_Label_2995:
	jmp	_Label_2998
_Label_2996:
! ELSE...
	mov	2810,r13		! source line 2810
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3001 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3000 = *_temp_3001  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2999 = sector + _temp_3000		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3003 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3002 = *_temp_3003  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3004 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2999  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3002  sizeInBytes=4
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
_Label_2998:
! END IF...
_Label_2994:
! ASSIGNMENT STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3005 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3005 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3006 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3006 = 1  (sizeInBytes=1)
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
	mov	2819,r13		! source line 2819
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2979
_Label_2981:
! SEND STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0SE",r10
!   _temp_3007 = &fileManagerLock
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
	mov	2831,r13		! source line 2831
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
	.word	_Label_3008
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3010
	.word	12
	.word	4
	.word	_Label_3011
	.word	16
	.word	4
	.word	_Label_3012
	.word	20
	.word	4
	.word	_Label_3013
	.word	24
	.word	4
	.word	_Label_3014
	.word	-16
	.word	4
	.word	_Label_3015
	.word	-20
	.word	4
	.word	_Label_3016
	.word	-24
	.word	4
	.word	_Label_3017
	.word	-28
	.word	4
	.word	_Label_3018
	.word	-32
	.word	4
	.word	_Label_3019
	.word	-36
	.word	4
	.word	_Label_3020
	.word	-40
	.word	4
	.word	_Label_3021
	.word	-44
	.word	4
	.word	_Label_3022
	.word	-48
	.word	4
	.word	_Label_3023
	.word	-52
	.word	4
	.word	_Label_3024
	.word	-56
	.word	4
	.word	_Label_3025
	.word	-60
	.word	4
	.word	_Label_3026
	.word	-64
	.word	4
	.word	_Label_3027
	.word	-68
	.word	4
	.word	_Label_3028
	.word	-72
	.word	4
	.word	_Label_3029
	.word	-76
	.word	4
	.word	_Label_3030
	.word	-80
	.word	4
	.word	_Label_3031
	.word	-84
	.word	4
	.word	_Label_3032
	.word	-88
	.word	4
	.word	_Label_3033
	.word	-92
	.word	4
	.word	_Label_3034
	.word	-96
	.word	4
	.word	_Label_3035
	.word	-100
	.word	4
	.word	_Label_3036
	.word	-104
	.word	4
	.word	_Label_3037
	.word	-108
	.word	4
	.word	_Label_3038
	.word	-112
	.word	4
	.word	_Label_3039
	.word	-9
	.word	1
	.word	_Label_3040
	.word	-10
	.word	1
	.word	_Label_3041
	.word	-116
	.word	4
	.word	_Label_3042
	.word	-120
	.word	4
	.word	_Label_3043
	.word	-124
	.word	4
	.word	_Label_3044
	.word	-128
	.word	4
	.word	_Label_3045
	.word	-132
	.word	4
	.word	_Label_3046
	.word	-136
	.word	4
	.word	0
_Label_3008:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3009:
	.ascii	"Pself\0"
	.align
_Label_3010:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3011:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3012:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3013:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_3007\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_3006\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_3005\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_3004\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_3003\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_3002\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_3001\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_3000\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2999\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_2977\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3039:
	.byte	'C'
	.ascii	"_temp_2968\0"
	.align
_Label_3040:
	.byte	'C'
	.ascii	"_temp_2965\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_3042:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3043:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3044:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3045:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3046:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3047
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3047:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3048
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3048:
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
_Label_3407:
	push	r0
	sub	r1,1,r1
	bne	_Label_3407
	mov	2867,r13		! source line 2867
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0AS",r10
	mov	2869,r13		! source line 2869
	mov	"\0\0SE",r10
!   _temp_3049 = &_P_Kernel_frameManager
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
	mov	2870,r13		! source line 2870
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2872,r13		! source line 2872
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
	.word	_Label_3050
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3051
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3052
	.word	-12
	.word	4
	.word	0
_Label_3050:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3051:
	.ascii	"Pself\0"
	.align
_Label_3052:
	.byte	'?'
	.ascii	"_temp_3049\0"
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
_Label_3408:
	push	r0
	sub	r1,1,r1
	bne	_Label_3408
	mov	2877,r13		! source line 2877
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3053 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3053  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2878,r13		! source line 2878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2879,r13		! source line 2879
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3054 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3054  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2881,r13		! source line 2881
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3055 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3055  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2882,r13		! source line 2882
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2883,r13		! source line 2883
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3056 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3056  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2884,r13		! source line 2884
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2885,r13		! source line 2885
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3057 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3057  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2886,r13		! source line 2886
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2887,r13		! source line 2887
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3058 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3058  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2888,r13		! source line 2888
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2889,r13		! source line 2889
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2890,r13		! source line 2890
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2890,r13		! source line 2890
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
	.word	_Label_3059
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3060
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3061
	.word	-12
	.word	4
	.word	_Label_3062
	.word	-16
	.word	4
	.word	_Label_3063
	.word	-20
	.word	4
	.word	_Label_3064
	.word	-24
	.word	4
	.word	_Label_3065
	.word	-28
	.word	4
	.word	_Label_3066
	.word	-32
	.word	4
	.word	0
_Label_3059:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3060:
	.ascii	"Pself\0"
	.align
_Label_3061:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3062:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3063:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3064:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3065:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3066:
	.byte	'?'
	.ascii	"_temp_3053\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3067
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3067:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3068
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3068:
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
	mov	2901,r13		! source line 2901
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3069 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3069  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2903,r13		! source line 2903
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3070 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3070  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2904,r13		! source line 2904
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2905,r13		! source line 2905
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3072		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3072
!	jmp	_Label_3071
_Label_3071:
! THEN...
	mov	2906,r13		! source line 2906
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2906,r13		! source line 2906
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
	jmp	_Label_3073
_Label_3072:
! ELSE...
	mov	2908,r13		! source line 2908
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3074 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3074  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2908,r13		! source line 2908
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3073:
! RETURN STATEMENT...
	mov	2905,r13		! source line 2905
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
	.word	_Label_3075
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3077
	.word	-12
	.word	4
	.word	_Label_3078
	.word	-16
	.word	4
	.word	_Label_3079
	.word	-20
	.word	4
	.word	0
_Label_3075:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3076:
	.ascii	"Pself\0"
	.align
_Label_3077:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3078:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3079:
	.byte	'?'
	.ascii	"_temp_3069\0"
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	2914,r13		! source line 2914
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2924,r13		! source line 2924
	mov	"\0\0SE",r10
!   _temp_3080 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3081 = _temp_3080 + 4
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
	mov	2925,r13		! source line 2925
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2926,r13		! source line 2926
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
	mov	2927,r13		! source line 2927
	mov	"\0\0SE",r10
!   _temp_3082 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3083 = _temp_3082 + 4
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
	mov	2928,r13		! source line 2928
	mov	"\0\0RE",r10
	mov	2928,r13		! source line 2928
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3086 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3085  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3084  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3084  (sizeInBytes=1)
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
	.word	_Label_3087
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3088
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3089
	.word	12
	.word	4
	.word	_Label_3090
	.word	16
	.word	4
	.word	_Label_3091
	.word	-16
	.word	4
	.word	_Label_3092
	.word	-20
	.word	4
	.word	_Label_3093
	.word	-9
	.word	1
	.word	_Label_3094
	.word	-24
	.word	4
	.word	_Label_3095
	.word	-28
	.word	4
	.word	_Label_3096
	.word	-32
	.word	4
	.word	_Label_3097
	.word	-36
	.word	4
	.word	_Label_3098
	.word	-40
	.word	4
	.word	0
_Label_3087:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3088:
	.ascii	"Pself\0"
	.align
_Label_3089:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3090:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3086\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3085\0"
	.align
_Label_3093:
	.byte	'C'
	.ascii	"_temp_3084\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3083\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3082\0"
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	2933,r13		! source line 2933
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0IF",r10
	mov	2938,r13		! source line 2938
	mov	"\0\0SE",r10
!   _temp_3102 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3103) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3102  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3101  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3101 then goto _Label_3100 else goto _Label_3099
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3099
	jmp	_Label_3100
_Label_3099:
! THEN...
	mov	2939,r13		! source line 2939
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3104 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3104  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2939,r13		! source line 2939
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3100:
! RETURN STATEMENT...
	mov	2941,r13		! source line 2941
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
	.word	_Label_3105
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3107
	.word	-16
	.word	4
	.word	_Label_3108
	.word	-20
	.word	4
	.word	_Label_3109
	.word	-24
	.word	4
	.word	_Label_3110
	.word	-9
	.word	1
	.word	_Label_3111
	.word	-28
	.word	4
	.word	0
_Label_3105:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3106:
	.ascii	"Pself\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3104\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3103\0"
	.align
_Label_3109:
	.byte	'?'
	.ascii	"_temp_3102\0"
	.align
_Label_3110:
	.byte	'C'
	.ascii	"_temp_3101\0"
	.align
_Label_3111:
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
	mov	2946,r13		! source line 2946
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3115 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3114 = *_temp_3115  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3114) then goto _Label_3113
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3113
!	jmp	_Label_3112
_Label_3112:
! THEN...
	mov	2973,r13		! source line 2973
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3116 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3116  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2973,r13		! source line 2973
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3113:
! IF STATEMENT...
	mov	2977,r13		! source line 2977
	mov	"\0\0IF",r10
	mov	2977,r13		! source line 2977
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3120) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3119  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3119 == 1112300152 then goto _Label_3118		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3118
!	jmp	_Label_3117
_Label_3117:
! THEN...
	mov	2978,r13		! source line 2978
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3121 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3121  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2978,r13		! source line 2978
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2979,r13		! source line 2979
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3118:
! ASSIGNMENT STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0AS",r10
	mov	2983,r13		! source line 2983
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3122) then goto _runtimeErrorNullPointer
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
	mov	2984,r13		! source line 2984
	mov	"\0\0AS",r10
	mov	2984,r13		! source line 2984
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3123) then goto _runtimeErrorNullPointer
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
	mov	2985,r13		! source line 2985
	mov	"\0\0AS",r10
	mov	2985,r13		! source line 2985
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3124) then goto _runtimeErrorNullPointer
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
	mov	2986,r13		! source line 2986
	mov	"\0\0AS",r10
	mov	2986,r13		! source line 2986
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3125) then goto _runtimeErrorNullPointer
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
	mov	2987,r13		! source line 2987
	mov	"\0\0AS",r10
	mov	2987,r13		! source line 2987
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3126) then goto _runtimeErrorNullPointer
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
	mov	2988,r13		! source line 2988
	mov	"\0\0AS",r10
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3127) then goto _runtimeErrorNullPointer
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
	mov	2991,r13		! source line 2991
	mov	"\0\0IF",r10
!   _temp_3130 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3130) then goto _Label_3129
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3129
!	jmp	_Label_3128
_Label_3128:
! THEN...
	mov	2992,r13		! source line 2992
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3131 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3131  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2992,r13		! source line 2992
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3129:
! ASSIGNMENT STATEMENT...
	mov	2995,r13		! source line 2995
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
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3133
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3133
!	jmp	_Label_3132
_Label_3132:
! THEN...
	mov	3000,r13		! source line 3000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3134 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3134  sizeInBytes=4
	load	[r14+-164],r1
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
_Label_3133:
! IF STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0IF",r10
!   _temp_3137 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3137) then goto _Label_3136
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3136
!	jmp	_Label_3135
_Label_3135:
! THEN...
	mov	3006,r13		! source line 3006
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3138 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3138  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3006,r13		! source line 3006
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3007,r13		! source line 3007
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3136:
! IF STATEMENT...
	mov	3009,r13		! source line 3009
	mov	"\0\0IF",r10
!   _temp_3141 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3141 then goto _Label_3140		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3140
!	jmp	_Label_3139
_Label_3139:
! THEN...
	mov	3010,r13		! source line 3010
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3142 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3142  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3010,r13		! source line 3010
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3011,r13		! source line 3011
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3140:
! ASSIGNMENT STATEMENT...
	mov	3013,r13		! source line 3013
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
	mov	3016,r13		! source line 3016
	mov	"\0\0IF",r10
!   _temp_3145 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3145) then goto _Label_3144
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3144
!	jmp	_Label_3143
_Label_3143:
! THEN...
	mov	3017,r13		! source line 3017
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3146 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3146  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3017,r13		! source line 3017
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3018,r13		! source line 3018
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3144:
! IF STATEMENT...
	mov	3020,r13		! source line 3020
	mov	"\0\0IF",r10
!   _temp_3149 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3149 then goto _Label_3148		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3148
!	jmp	_Label_3147
_Label_3147:
! THEN...
	mov	3021,r13		! source line 3021
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3150 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3150  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3021,r13		! source line 3021
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3022,r13		! source line 3022
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3148:
! ASSIGNMENT STATEMENT...
	mov	3024,r13		! source line 3024
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
	mov	3027,r13		! source line 3027
	mov	"\0\0AS",r10
!   _temp_3153 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3152 = _temp_3153 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3151 = _temp_3152 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3151 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3155		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3155
!	jmp	_Label_3154
_Label_3154:
! THEN...
	mov	3043,r13		! source line 3043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3156 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3156  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3043,r13		! source line 3043
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3157 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3157  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3044,r13		! source line 3044
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3158 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3158  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3045,r13		! source line 3045
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3046,r13		! source line 3046
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3155:
! SEND STATEMENT...
	mov	3048,r13		! source line 3048
	mov	"\0\0SE",r10
!   _temp_3159 = &_P_Kernel_frameManager
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
	mov	3054,r13		! source line 3054
	mov	"\0\0IF",r10
	mov	3054,r13		! source line 3054
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3163) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3162  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3162 == 707406378 then goto _Label_3161		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3161
!	jmp	_Label_3160
_Label_3160:
! THEN...
	mov	3055,r13		! source line 3055
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3164 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3164  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3055,r13		! source line 3055
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3056,r13		! source line 3056
	mov	"\0\0SE",r10
!   _temp_3165 = &_P_Kernel_frameManager
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
	mov	3057,r13		! source line 3057
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
	mov	3061,r13		! source line 3061
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
	mov	3062,r13		! source line 3062
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3170 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3171 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3170  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3166:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3171 then goto _Label_3169		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3169
_Label_3167:
	mov	3062,r13		! source line 3062
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3063,r13		! source line 3063
	mov	"\0\0AS",r10
	mov	3063,r13		! source line 3063
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
	mov	3066,r13		! source line 3066
	mov	"\0\0IF",r10
	mov	3066,r13		! source line 3066
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3175) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3174  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3174 then goto _Label_3173 else goto _Label_3172
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3172
	jmp	_Label_3173
_Label_3172:
! THEN...
	mov	3067,r13		! source line 3067
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3176 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3176  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3067,r13		! source line 3067
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0SE",r10
!   _temp_3177 = &_P_Kernel_frameManager
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
	mov	3069,r13		! source line 3069
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3173:
! SEND STATEMENT...
	mov	3071,r13		! source line 3071
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
	mov	3072,r13		! source line 3072
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3168:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3166
! END FOR
_Label_3169:
! IF STATEMENT...
	mov	3076,r13		! source line 3076
	mov	"\0\0IF",r10
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3181) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3180  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3180 == 707406378 then goto _Label_3179		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3179
!	jmp	_Label_3178
_Label_3178:
! THEN...
	mov	3077,r13		! source line 3077
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3182 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3182  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3077,r13		! source line 3077
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
!   _temp_3183 = &_P_Kernel_frameManager
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
	mov	3079,r13		! source line 3079
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3179:
! FOR STATEMENT...
	mov	3083,r13		! source line 3083
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3188 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3189 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3188  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3184:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3189 then goto _Label_3187		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3187
_Label_3185:
	mov	3083,r13		! source line 3083
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3084,r13		! source line 3084
	mov	"\0\0AS",r10
	mov	3084,r13		! source line 3084
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
	mov	3087,r13		! source line 3087
	mov	"\0\0IF",r10
	mov	3087,r13		! source line 3087
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3193) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3192  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3192 then goto _Label_3191 else goto _Label_3190
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3190
	jmp	_Label_3191
_Label_3190:
! THEN...
	mov	3088,r13		! source line 3088
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3194 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3194  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3088,r13		! source line 3088
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3089,r13		! source line 3089
	mov	"\0\0SE",r10
!   _temp_3195 = &_P_Kernel_frameManager
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
	mov	3090,r13		! source line 3090
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3191:
! ASSIGNMENT STATEMENT...
	mov	3092,r13		! source line 3092
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3186:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3184
! END FOR
_Label_3187:
! IF STATEMENT...
	mov	3096,r13		! source line 3096
	mov	"\0\0IF",r10
	mov	3096,r13		! source line 3096
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3199) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3198  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3198 == 707406378 then goto _Label_3197		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3197
!	jmp	_Label_3196
_Label_3196:
! THEN...
	mov	3097,r13		! source line 3097
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3200 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3200  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3097,r13		! source line 3097
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3098,r13		! source line 3098
	mov	"\0\0SE",r10
!   _temp_3201 = &_P_Kernel_frameManager
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
	mov	3099,r13		! source line 3099
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3197:
! ASSIGNMENT STATEMENT...
	mov	3103,r13		! source line 3103
	mov	"\0\0AS",r10
	mov	3103,r13		! source line 3103
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
	mov	3107,r13		! source line 3107
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3110,r13		! source line 3110
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
	.word	_Label_3202
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3204
	.word	12
	.word	4
	.word	_Label_3205
	.word	-16
	.word	4
	.word	_Label_3206
	.word	-20
	.word	4
	.word	_Label_3207
	.word	-24
	.word	4
	.word	_Label_3208
	.word	-28
	.word	4
	.word	_Label_3209
	.word	-32
	.word	4
	.word	_Label_3210
	.word	-36
	.word	4
	.word	_Label_3211
	.word	-40
	.word	4
	.word	_Label_3212
	.word	-9
	.word	1
	.word	_Label_3213
	.word	-44
	.word	4
	.word	_Label_3214
	.word	-48
	.word	4
	.word	_Label_3215
	.word	-52
	.word	4
	.word	_Label_3216
	.word	-56
	.word	4
	.word	_Label_3217
	.word	-60
	.word	4
	.word	_Label_3218
	.word	-64
	.word	4
	.word	_Label_3219
	.word	-68
	.word	4
	.word	_Label_3220
	.word	-72
	.word	4
	.word	_Label_3221
	.word	-76
	.word	4
	.word	_Label_3222
	.word	-10
	.word	1
	.word	_Label_3223
	.word	-80
	.word	4
	.word	_Label_3224
	.word	-84
	.word	4
	.word	_Label_3225
	.word	-88
	.word	4
	.word	_Label_3226
	.word	-92
	.word	4
	.word	_Label_3227
	.word	-96
	.word	4
	.word	_Label_3228
	.word	-100
	.word	4
	.word	_Label_3229
	.word	-104
	.word	4
	.word	_Label_3230
	.word	-108
	.word	4
	.word	_Label_3231
	.word	-112
	.word	4
	.word	_Label_3232
	.word	-116
	.word	4
	.word	_Label_3233
	.word	-120
	.word	4
	.word	_Label_3234
	.word	-124
	.word	4
	.word	_Label_3235
	.word	-128
	.word	4
	.word	_Label_3236
	.word	-132
	.word	4
	.word	_Label_3237
	.word	-136
	.word	4
	.word	_Label_3238
	.word	-140
	.word	4
	.word	_Label_3239
	.word	-144
	.word	4
	.word	_Label_3240
	.word	-148
	.word	4
	.word	_Label_3241
	.word	-152
	.word	4
	.word	_Label_3242
	.word	-156
	.word	4
	.word	_Label_3243
	.word	-160
	.word	4
	.word	_Label_3244
	.word	-164
	.word	4
	.word	_Label_3245
	.word	-168
	.word	4
	.word	_Label_3246
	.word	-172
	.word	4
	.word	_Label_3247
	.word	-176
	.word	4
	.word	_Label_3248
	.word	-180
	.word	4
	.word	_Label_3249
	.word	-184
	.word	4
	.word	_Label_3250
	.word	-188
	.word	4
	.word	_Label_3251
	.word	-192
	.word	4
	.word	_Label_3252
	.word	-196
	.word	4
	.word	_Label_3253
	.word	-200
	.word	4
	.word	_Label_3254
	.word	-204
	.word	4
	.word	_Label_3255
	.word	-208
	.word	4
	.word	_Label_3256
	.word	-212
	.word	4
	.word	_Label_3257
	.word	-216
	.word	4
	.word	_Label_3258
	.word	-220
	.word	4
	.word	_Label_3259
	.word	-224
	.word	4
	.word	_Label_3260
	.word	-228
	.word	4
	.word	_Label_3261
	.word	-232
	.word	4
	.word	_Label_3262
	.word	-236
	.word	4
	.word	_Label_3263
	.word	-240
	.word	4
	.word	_Label_3264
	.word	-244
	.word	4
	.word	_Label_3265
	.word	-248
	.word	4
	.word	_Label_3266
	.word	-252
	.word	4
	.word	_Label_3267
	.word	-256
	.word	4
	.word	_Label_3268
	.word	-260
	.word	4
	.word	_Label_3269
	.word	-264
	.word	4
	.word	_Label_3270
	.word	-268
	.word	4
	.word	0
_Label_3202:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3203:
	.ascii	"Pself\0"
	.align
_Label_3204:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3205:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3206:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3207:
	.byte	'?'
	.ascii	"_temp_3199\0"
	.align
_Label_3208:
	.byte	'?'
	.ascii	"_temp_3198\0"
	.align
_Label_3209:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3210:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3211:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3212:
	.byte	'C'
	.ascii	"_temp_3192\0"
	.align
_Label_3213:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3214:
	.byte	'?'
	.ascii	"_temp_3188\0"
	.align
_Label_3215:
	.byte	'?'
	.ascii	"_temp_3183\0"
	.align
_Label_3216:
	.byte	'?'
	.ascii	"_temp_3182\0"
	.align
_Label_3217:
	.byte	'?'
	.ascii	"_temp_3181\0"
	.align
_Label_3218:
	.byte	'?'
	.ascii	"_temp_3180\0"
	.align
_Label_3219:
	.byte	'?'
	.ascii	"_temp_3177\0"
	.align
_Label_3220:
	.byte	'?'
	.ascii	"_temp_3176\0"
	.align
_Label_3221:
	.byte	'?'
	.ascii	"_temp_3175\0"
	.align
_Label_3222:
	.byte	'C'
	.ascii	"_temp_3174\0"
	.align
_Label_3223:
	.byte	'?'
	.ascii	"_temp_3171\0"
	.align
_Label_3224:
	.byte	'?'
	.ascii	"_temp_3170\0"
	.align
_Label_3225:
	.byte	'?'
	.ascii	"_temp_3165\0"
	.align
_Label_3226:
	.byte	'?'
	.ascii	"_temp_3164\0"
	.align
_Label_3227:
	.byte	'?'
	.ascii	"_temp_3163\0"
	.align
_Label_3228:
	.byte	'?'
	.ascii	"_temp_3162\0"
	.align
_Label_3229:
	.byte	'?'
	.ascii	"_temp_3159\0"
	.align
_Label_3230:
	.byte	'?'
	.ascii	"_temp_3158\0"
	.align
_Label_3231:
	.byte	'?'
	.ascii	"_temp_3157\0"
	.align
_Label_3232:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3233:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3234:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3235:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3236:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3237:
	.byte	'?'
	.ascii	"_temp_3149\0"
	.align
_Label_3238:
	.byte	'?'
	.ascii	"_temp_3146\0"
	.align
_Label_3239:
	.byte	'?'
	.ascii	"_temp_3145\0"
	.align
_Label_3240:
	.byte	'?'
	.ascii	"_temp_3142\0"
	.align
_Label_3241:
	.byte	'?'
	.ascii	"_temp_3141\0"
	.align
_Label_3242:
	.byte	'?'
	.ascii	"_temp_3138\0"
	.align
_Label_3243:
	.byte	'?'
	.ascii	"_temp_3137\0"
	.align
_Label_3244:
	.byte	'?'
	.ascii	"_temp_3134\0"
	.align
_Label_3245:
	.byte	'?'
	.ascii	"_temp_3131\0"
	.align
_Label_3246:
	.byte	'?'
	.ascii	"_temp_3130\0"
	.align
_Label_3247:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3248:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3249:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3250:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3251:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
_Label_3252:
	.byte	'?'
	.ascii	"_temp_3122\0"
	.align
_Label_3253:
	.byte	'?'
	.ascii	"_temp_3121\0"
	.align
_Label_3254:
	.byte	'?'
	.ascii	"_temp_3120\0"
	.align
_Label_3255:
	.byte	'?'
	.ascii	"_temp_3119\0"
	.align
_Label_3256:
	.byte	'?'
	.ascii	"_temp_3116\0"
	.align
_Label_3257:
	.byte	'?'
	.ascii	"_temp_3115\0"
	.align
_Label_3258:
	.byte	'?'
	.ascii	"_temp_3114\0"
	.align
_Label_3259:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3260:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3261:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3262:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3263:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3264:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3265:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3266:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3267:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3268:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3269:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3270:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
