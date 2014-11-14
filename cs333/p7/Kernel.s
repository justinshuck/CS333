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
_Label_3341:
	push	r0
	sub	r1,1,r1
	bne	_Label_3341
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
_Label_3342:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3342
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
_Label_3343:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3343
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
_Label_3344:
	push	r0
	sub	r1,1,r1
	bne	_Label_3344
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
_Label_3345:
	push	r0
	sub	r1,1,r1
	bne	_Label_3345
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
_Label_3346:
	push	r0
	sub	r1,1,r1
	bne	_Label_3346
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
_Label_3347:
	push	r0
	sub	r1,1,r1
	bne	_Label_3347
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
_Label_3348:
	push	r0
	sub	r1,1,r1
	bne	_Label_3348
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
_Label_3349:
	push	r0
	sub	r1,1,r1
	bne	_Label_3349
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
_Label_3350:
	push	r0
	sub	r1,1,r1
	bne	_Label_3350
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
_Label_3351:
	push	r0
	sub	r1,1,r1
	bne	_Label_3351
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
_Label_3352:
	push	r0
	sub	r1,1,r1
	bne	_Label_3352
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
_Label_3353:
	push	r0
	sub	r1,1,r1
	bne	_Label_3353
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
_Label_3354:
	push	r0
	sub	r1,1,r1
	bne	_Label_3354
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
_Label_3355:
	push	r0
	sub	r1,1,r1
	bne	_Label_3355
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
_Label_3356:
	push	r0
	sub	r1,1,r1
	bne	_Label_3356
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
_Label_3357:
	push	r0
	sub	r1,1,r1
	bne	_Label_3357
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
	.word	_Label_504
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_504:
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
_Label_3358:
	push	r0
	sub	r1,1,r1
	bne	_Label_3358
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
!   _temp_505 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
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
	.word	_Label_506
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_507
	.word	-12
	.word	4
	.word	0
_Label_506:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_505\0"
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
_Label_3359:
	push	r0
	sub	r1,1,r1
	bne	_Label_3359
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
!   _temp_508 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_508  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
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
	.word	_Label_509
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_510
	.word	-12
	.word	4
	.word	0
_Label_509:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_508\0"
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
_Label_3360:
	push	r0
	sub	r1,1,r1
	bne	_Label_3360
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
!   _temp_511 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
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
	.word	_Label_512
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_513
	.word	-12
	.word	4
	.word	0
_Label_512:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_511\0"
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
_Label_3361:
	push	r0
	sub	r1,1,r1
	bne	_Label_3361
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
!   _temp_514 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
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
	.word	_Label_515
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_516
	.word	-12
	.word	4
	.word	0
_Label_515:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_514\0"
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
_Label_3362:
	push	r0
	sub	r1,1,r1
	bne	_Label_3362
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
!   _temp_517 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
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
	.word	_Label_518
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_519
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_517\0"
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
_Label_3363:
	push	r0
	sub	r1,1,r1
	bne	_Label_3363
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
!   _temp_520 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
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
	.word	_Label_521
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_522
	.word	-12
	.word	4
	.word	0
_Label_521:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_520\0"
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
_Label_3364:
	push	r0
	sub	r1,1,r1
	bne	_Label_3364
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
!   _temp_523 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_523  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_function_200_ErrorInUserProcess
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
	.word	_Label_524
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_525
	.word	-12
	.word	4
	.word	0
_Label_524:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_523\0"
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
_Label_3365:
	push	r0
	sub	r1,1,r1
	bne	_Label_3365
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_526 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
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
!   _temp_527 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_527  sizeInBytes=4
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
!   _temp_531 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_530 = *_temp_531  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_530 == 0 then goto _Label_529		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_529
!	jmp	_Label_528
_Label_528:
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
!   _temp_533 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_532 = *_temp_533  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_532) then goto _runtimeErrorNullPointer
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
	jmp	_Label_534
_Label_529:
! ELSE...
	mov	1880,r13		! source line 1880
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_535 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1880,r13		! source line 1880
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_534:
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
_RoutineDescriptor__function_200_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_536
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_537
	.word	8
	.word	4
	.word	_Label_538
	.word	-12
	.word	4
	.word	_Label_539
	.word	-16
	.word	4
	.word	_Label_540
	.word	-20
	.word	4
	.word	_Label_541
	.word	-24
	.word	4
	.word	_Label_542
	.word	-28
	.word	4
	.word	_Label_543
	.word	-32
	.word	4
	.word	_Label_544
	.word	-36
	.word	4
	.word	0
_Label_536:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_537:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_526\0"
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
_Label_3366:
	push	r0
	sub	r1,1,r1
	bne	_Label_3366
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
	be	_Label_3367
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_545
_Label_3367:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_545
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_545
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_559,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_559:
	jmp	_Label_551	! 1:	
	jmp	_Label_558	! 2:	
	jmp	_Label_548	! 3:	
	jmp	_Label_547	! 4:	
	jmp	_Label_550	! 5:	
	jmp	_Label_549	! 6:	
	jmp	_Label_552	! 7:	
	jmp	_Label_553	! 8:	
	jmp	_Label_554	! 9:	
	jmp	_Label_555	! 10:	
	jmp	_Label_556	! 11:	
	jmp	_Label_557	! 12:	
! CASE 4...
_Label_547:
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_560  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_560  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_548:
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
_Label_549:
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
!   Retrieve Result: targetName=_temp_561  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_561  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_550:
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
!   Retrieve Result: targetName=_temp_562  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_562  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_551:
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
_Label_552:
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
!   Retrieve Result: targetName=_temp_563  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_563  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_553:
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
!   Retrieve Result: targetName=_temp_564  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_564  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_554:
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
!   Retrieve Result: targetName=_temp_565  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_565  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_555:
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
!   Retrieve Result: targetName=_temp_566  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_566  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_556:
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
!   Retrieve Result: targetName=_temp_567  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_567  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_557:
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
_Label_558:
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
_Label_545:
! CALL STATEMENT...
!   _temp_568 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
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
!   _temp_569 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
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
_Label_546:
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
	.word	_Label_570
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_571
	.word	8
	.word	4
	.word	_Label_572
	.word	12
	.word	4
	.word	_Label_573
	.word	16
	.word	4
	.word	_Label_574
	.word	20
	.word	4
	.word	_Label_575
	.word	24
	.word	4
	.word	_Label_576
	.word	-12
	.word	4
	.word	_Label_577
	.word	-16
	.word	4
	.word	_Label_578
	.word	-20
	.word	4
	.word	_Label_579
	.word	-24
	.word	4
	.word	_Label_580
	.word	-28
	.word	4
	.word	_Label_581
	.word	-32
	.word	4
	.word	_Label_582
	.word	-36
	.word	4
	.word	_Label_583
	.word	-40
	.word	4
	.word	_Label_584
	.word	-44
	.word	4
	.word	_Label_585
	.word	-48
	.word	4
	.word	0
_Label_570:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_573:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_574:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_575:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_560\0"
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
_Label_3368:
	push	r0
	sub	r1,1,r1
	bne	_Label_3368
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
	.word	_Label_586
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_587
	.word	8
	.word	4
	.word	0
_Label_586:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_587:
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
_Label_3369:
	push	r0
	sub	r1,1,r1
	bne	_Label_3369
	mov	1961,r13		! source line 1961
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_588 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
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
	.word	_Label_589
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_590
	.word	-12
	.word	4
	.word	0
_Label_589:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_588\0"
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
_Label_3370:
	push	r0
	sub	r1,1,r1
	bne	_Label_3370
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
	.word	_Label_591
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_591:
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
_Label_3371:
	push	r0
	sub	r1,1,r1
	bne	_Label_3371
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
!   _temp_592 = &_P_Kernel_processManager
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
!   _temp_593 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-256]
!   Data Move: oldPCB = *_temp_593  (sizeInBytes=4)
	load	[r14+-256],r1
	load	[r1],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0AS",r10
	mov	1998,r13		! source line 1998
	mov	"\0\0SE",r10
!   _temp_594 = &_P_Kernel_threadManager
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
!   _temp_595 = newPCB + 16
	load	[r14+-264],r1
	add	r1,16,r1
	store	r1,[r14+-248]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = oldPCB + 12
	load	[r14+-268],r1
	add	r1,12,r1
	store	r1,[r14+-240]
!   Data Move: _temp_596 = *_temp_597  (sizeInBytes=4)
	load	[r14+-240],r1
	load	[r1],r1
	store	r1,[r14+-244]
!   Data Move: *_temp_595 = _temp_596  (sizeInBytes=4)
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
!   _temp_598 = newThread + 72
	load	[r14+-272],r1
	add	r1,72,r1
	store	r1,[r14+-236]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-228]
!   Data Move: _temp_599 = *_temp_600  (sizeInBytes=4)
	load	[r14+-228],r1
	load	[r1],r1
	store	r1,[r14+-232]
!   Data Move: *_temp_598 = _temp_599  (sizeInBytes=4)
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
!   _temp_601 = newThread + 4160
	load	[r14+-272],r1
	add	r1,4160,r1
	store	r1,[r14+-224]
!   Data Move: *_temp_601 = newPCB  (sizeInBytes=4)
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
!   _temp_602 = newPCB + 24
	load	[r14+-264],r1
	add	r1,24,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_602 = newThread  (sizeInBytes=4)
	load	[r14+-272],r1
	load	[r14+-220],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = newThread + 4096
	load	[r14+-272],r1
	add	r1,4096,r1
	store	r1,[r14+-212]
!   Move address of _temp_604 [0 ] into _temp_605
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
!   _temp_603 = _temp_605		(4 bytes)
	load	[r14+-208],r1
	store	r1,[r14+-216]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
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
!   _temp_606 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-204]
!   _temp_607 = _temp_606 + 4
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
!   _temp_612 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-196]
!   Calculate and save the FOR-LOOP ending value
!   _temp_613 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-192]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_612  (sizeInBytes=4)
	load	[r14+-196],r1
	store	r1,[r14+-280]
_Label_608:
!   Perform the FOR-LOOP termination test
!   if i > _temp_613 then goto _Label_611		
	load	[r14+-280],r1
	load	[r14+-192],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_611
_Label_609:
	mov	2017,r13		! source line 2017
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2018,r13		! source line 2018
	mov	"\0\0AS",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-188]
!   Move address of _temp_614 [i ] into _temp_615
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
!   _temp_617 = oldPCB + 124
	load	[r14+-268],r1
	add	r1,124,r1
	store	r1,[r14+-176]
!   Move address of _temp_617 [i ] into _temp_618
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
!   Data Move: _temp_616 = *_temp_618  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Data Move: *_temp_615 = _temp_616  (sizeInBytes=4)
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
!   _temp_622 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-164]
!   Move address of _temp_622 [i ] into _temp_623
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
!   Data Move: _temp_621 = *_temp_623  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_621) then goto _Label_620
	load	[r14+-168],r1
	cmp	r1,r0
	be	_Label_620
!	jmp	_Label_619
_Label_619:
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
!   _temp_625 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-152]
!   Move address of _temp_625 [i ] into _temp_626
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
!   Data Move: _temp_624 = *_temp_626  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_624) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_627 = _temp_624 + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-144]
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = newPCB + 124
	load	[r14+-264],r1
	add	r1,124,r1
	store	r1,[r14+-128]
!   Move address of _temp_631 [i ] into _temp_632
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
!   Data Move: _temp_630 = *_temp_632  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_630) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_633 = _temp_630 + 24
	load	[r14+-132],r1
	add	r1,24,r1
	store	r1,[r14+-120]
!   Data Move: _temp_629 = *_temp_633  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   _temp_628 = _temp_629 + 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   Data Move: *_temp_627 = _temp_628  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! END IF...
_Label_620:
!   Increment the FOR-LOOP index variable and jump back
_Label_610:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_608
! END FOR
_Label_611:
! SEND STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0SE",r10
!   _temp_634 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-116]
!   _temp_635 = _temp_634 + 4
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
!   _temp_636 = newThread + 68
	load	[r14+-272],r1
	add	r1,68,r1
	store	r1,[r14+-108]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = newThread + 88
	load	[r14+-272],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_638 [999 ] into _temp_639
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
!   _temp_637 = _temp_639		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Data Move: *_temp_636 = _temp_637  (sizeInBytes=4)
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
!   _temp_641 = newPCB + 32
	load	[r14+-264],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   _temp_640 = _temp_641		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-92]
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_643 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   _temp_644 = _temp_643 + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_642 = *_temp_644  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_645 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_640  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_642  sizeInBytes=4
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
!   _temp_650 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = oldPCB + 32
	load	[r14+-268],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_654 = _temp_653 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Data Move: _temp_652 = *_temp_654  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   _temp_651 = _temp_652 - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_650  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-280]
_Label_646:
!   Perform the FOR-LOOP termination test
!   if i > _temp_651 then goto _Label_649		
	load	[r14+-280],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_649
_Label_647:
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
!   _temp_657 = oldPCB + 32
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
!   if result==true then goto _Label_655 else goto _Label_656
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_656
	jmp	_Label_655
_Label_655:
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
!   _temp_658 = newPCB + 32
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
	jmp	_Label_659
_Label_656:
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
!   _temp_660 = newPCB + 32
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
_Label_659:
! CALL STATEMENT...
	mov	2040,r13		! source line 2040
	mov	"\0\0SE",r10
!   if intIsZero (newPCB) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_662 = newPCB + 32
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
!   Retrieve Result: targetName=_temp_661  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
	mov	2041,r13		! source line 2041
	mov	"\0\0SE",r10
!   if intIsZero (oldPCB) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_664 = oldPCB + 32
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
!   Retrieve Result: targetName=_temp_663  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_663  sizeInBytes=4
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
_Label_648:
!   i = i + 1
	load	[r14+-280],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-280]
	jmp	_Label_646
! END FOR
_Label_649:
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
!   _temp_665 = _function_198_ResumeChildAfterFork
	set	_function_198_ResumeChildAfterFork,r1
	store	r1,[r14+-20]
!   if intIsZero (newThread) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_665  sizeInBytes=4
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
!   _temp_667 = newPCB + 12
	load	[r14+-264],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_666 = *_temp_667  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_666  (sizeInBytes=4)
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
	.word	_Label_668
	.word	0		! total size of parameters
	.word	288		! frame size = 288
	.word	_Label_669
	.word	-12
	.word	4
	.word	_Label_670
	.word	-16
	.word	4
	.word	_Label_671
	.word	-20
	.word	4
	.word	_Label_672
	.word	-24
	.word	4
	.word	_Label_673
	.word	-28
	.word	4
	.word	_Label_674
	.word	-32
	.word	4
	.word	_Label_675
	.word	-36
	.word	4
	.word	_Label_676
	.word	-40
	.word	4
	.word	_Label_677
	.word	-44
	.word	4
	.word	_Label_678
	.word	-48
	.word	4
	.word	_Label_679
	.word	-52
	.word	4
	.word	_Label_680
	.word	-56
	.word	4
	.word	_Label_681
	.word	-60
	.word	4
	.word	_Label_682
	.word	-64
	.word	4
	.word	_Label_683
	.word	-68
	.word	4
	.word	_Label_684
	.word	-72
	.word	4
	.word	_Label_685
	.word	-76
	.word	4
	.word	_Label_686
	.word	-80
	.word	4
	.word	_Label_687
	.word	-84
	.word	4
	.word	_Label_688
	.word	-88
	.word	4
	.word	_Label_689
	.word	-92
	.word	4
	.word	_Label_690
	.word	-96
	.word	4
	.word	_Label_691
	.word	-100
	.word	4
	.word	_Label_692
	.word	-104
	.word	4
	.word	_Label_693
	.word	-108
	.word	4
	.word	_Label_694
	.word	-112
	.word	4
	.word	_Label_695
	.word	-116
	.word	4
	.word	_Label_696
	.word	-120
	.word	4
	.word	_Label_697
	.word	-124
	.word	4
	.word	_Label_698
	.word	-128
	.word	4
	.word	_Label_699
	.word	-132
	.word	4
	.word	_Label_700
	.word	-136
	.word	4
	.word	_Label_701
	.word	-140
	.word	4
	.word	_Label_702
	.word	-144
	.word	4
	.word	_Label_703
	.word	-148
	.word	4
	.word	_Label_704
	.word	-152
	.word	4
	.word	_Label_705
	.word	-156
	.word	4
	.word	_Label_706
	.word	-160
	.word	4
	.word	_Label_707
	.word	-164
	.word	4
	.word	_Label_708
	.word	-168
	.word	4
	.word	_Label_709
	.word	-172
	.word	4
	.word	_Label_710
	.word	-176
	.word	4
	.word	_Label_711
	.word	-180
	.word	4
	.word	_Label_712
	.word	-184
	.word	4
	.word	_Label_713
	.word	-188
	.word	4
	.word	_Label_714
	.word	-192
	.word	4
	.word	_Label_715
	.word	-196
	.word	4
	.word	_Label_716
	.word	-200
	.word	4
	.word	_Label_717
	.word	-204
	.word	4
	.word	_Label_718
	.word	-208
	.word	4
	.word	_Label_719
	.word	-212
	.word	4
	.word	_Label_720
	.word	-216
	.word	4
	.word	_Label_721
	.word	-220
	.word	4
	.word	_Label_722
	.word	-224
	.word	4
	.word	_Label_723
	.word	-228
	.word	4
	.word	_Label_724
	.word	-232
	.word	4
	.word	_Label_725
	.word	-236
	.word	4
	.word	_Label_726
	.word	-240
	.word	4
	.word	_Label_727
	.word	-244
	.word	4
	.word	_Label_728
	.word	-248
	.word	4
	.word	_Label_729
	.word	-252
	.word	4
	.word	_Label_730
	.word	-256
	.word	4
	.word	_Label_731
	.word	-260
	.word	4
	.word	_Label_732
	.word	-264
	.word	4
	.word	_Label_733
	.word	-268
	.word	4
	.word	_Label_734
	.word	-272
	.word	4
	.word	_Label_735
	.word	-276
	.word	4
	.word	_Label_736
	.word	-280
	.word	4
	.word	_Label_737
	.word	-284
	.word	4
	.word	0
_Label_668:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_658\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_732:
	.byte	'P'
	.ascii	"newPCB\0"
	.align
_Label_733:
	.byte	'P'
	.ascii	"oldPCB\0"
	.align
_Label_734:
	.byte	'P'
	.ascii	"newThread\0"
	.align
_Label_735:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_736:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_737:
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
_Label_3372:
	push	r0
	sub	r1,1,r1
	bne	_Label_3372
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
!   _temp_738 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-68]
!   Data Move: parent = *_temp_738  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
! FOR STATEMENT...
	mov	2075,r13		! source line 2075
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_743 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_744 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_743  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-72]
_Label_739:
!   Perform the FOR-LOOP termination test
!   if i > _temp_744 then goto _Label_742		
	load	[r14+-72],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_742
_Label_740:
	mov	2075,r13		! source line 2075
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2076,r13		! source line 2076
	mov	"\0\0AS",r10
!   _temp_745 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   _temp_746 = _temp_745 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_746 [i ] into _temp_747
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
!   child = _temp_747		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_753 = child + 12
	load	[r14+-76],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Data Move: _temp_752 = *_temp_753  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if _temp_752 != processID then goto _Label_749		(int)
	load	[r14+-44],r1
	load	[r14+8],r2
	cmp	r1,r2
	bne	_Label_749
!	jmp	_Label_751
_Label_751:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_755 = child + 16
	load	[r14+-76],r1
	add	r1,16,r1
	store	r1,[r14+-32]
!   Data Move: _temp_754 = *_temp_755  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_757 = parent + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-24]
!   Data Move: _temp_756 = *_temp_757  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_754 != _temp_756 then goto _Label_749		(int)
	load	[r14+-36],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bne	_Label_749
!	jmp	_Label_750
_Label_750:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_759 = child + 20
	load	[r14+-76],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: _temp_758 = *_temp_759  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if _temp_758 == 3 then goto _Label_749		(int)
	load	[r14+-20],r1
	mov	3,r2
	cmp	r1,r2
	be	_Label_749
!	jmp	_Label_748
_Label_748:
! THEN...
	mov	2079,r13		! source line 2079
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
	mov	2079,r13		! source line 2079
	mov	"\0\0SE",r10
!   _temp_760 = &_P_Kernel_processManager
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
_Label_749:
!   Increment the FOR-LOOP index variable and jump back
_Label_741:
!   i = i + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_739
! END FOR
_Label_742:
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
	.word	_Label_761
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_762
	.word	8
	.word	4
	.word	_Label_763
	.word	-12
	.word	4
	.word	_Label_764
	.word	-16
	.word	4
	.word	_Label_765
	.word	-20
	.word	4
	.word	_Label_766
	.word	-24
	.word	4
	.word	_Label_767
	.word	-28
	.word	4
	.word	_Label_768
	.word	-32
	.word	4
	.word	_Label_769
	.word	-36
	.word	4
	.word	_Label_770
	.word	-40
	.word	4
	.word	_Label_771
	.word	-44
	.word	4
	.word	_Label_772
	.word	-48
	.word	4
	.word	_Label_773
	.word	-52
	.word	4
	.word	_Label_774
	.word	-56
	.word	4
	.word	_Label_775
	.word	-60
	.word	4
	.word	_Label_776
	.word	-64
	.word	4
	.word	_Label_777
	.word	-68
	.word	4
	.word	_Label_778
	.word	-72
	.word	4
	.word	_Label_779
	.word	-76
	.word	4
	.word	_Label_780
	.word	-80
	.word	4
	.word	_Label_781
	.word	-84
	.word	4
	.word	0
_Label_761:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_762:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_778:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_779:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_780:
	.byte	'P'
	.ascii	"parent\0"
	.align
_Label_781:
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
_Label_3373:
	push	r0
	sub	r1,1,r1
	bne	_Label_3373
	mov	2088,r13		! source line 2088
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-196,r4
	mov	23,r3
_Label_3374:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3374
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-196]
! SEND STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0SE",r10
!   _temp_783 = &newAddrSpace
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
!   _temp_784 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: ptrToPCB = *_temp_784  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2116,r13		! source line 2116
	mov	"\0\0AS",r10
	mov	2116,r13		! source line 2116
	mov	"\0\0SE",r10
!   _temp_785 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-88]
!   _temp_786 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_787 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_785  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_786  sizeInBytes=4
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
!   if numOfBytes >= 0 then goto _Label_789		(int)
	load	[r14+-232],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_789
!	jmp	_Label_788
_Label_788:
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
_Label_789:
! ASSIGNMENT STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0AS",r10
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_790 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-76]
!   _temp_791 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_790  sizeInBytes=4
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
!   if intIsZero (ptrOpenFile2) then goto _Label_792
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_792
	jmp	_Label_793
_Label_792:
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
_Label_793:
! ASSIGNMENT STATEMENT...
	mov	2133,r13		! source line 2133
	mov	"\0\0AS",r10
	mov	2133,r13		! source line 2133
	mov	"\0\0SE",r10
!   _temp_794 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-68]
!   if intIsZero (ptrOpenFile2) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_794  sizeInBytes=4
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
!   if initPC >= 0 then goto _Label_796		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_796
!	jmp	_Label_795
_Label_795:
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
_Label_796:
! ASSIGNMENT STATEMENT...
	mov	2140,r13		! source line 2140
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_797 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_797 = newAddrSpace  (sizeInBytes=92)
	add	r14,-196,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3375:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3375
! SEND STATEMENT...
	mov	2141,r13		! source line 2141
	mov	"\0\0SE",r10
!   _temp_798 = &_P_Kernel_fileManager
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
!   _temp_801 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_800 = *_temp_801  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_800) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_802 = _temp_800 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_799 = _temp_802		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_803 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_799  sizeInBytes=4
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
!   _temp_805 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-32]
!   _temp_806 = _temp_805 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_804 = *_temp_806  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_804 * 8192		(int)
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
!   _temp_807 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_807 [999 ] into _temp_808
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
!   ptrInitSystemStackTop = _temp_808		(4 bytes)
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
!   _temp_809 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_809 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_810 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-240],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_810  sizeInBytes=4
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
	.word	_Label_811
	.word	4		! total size of parameters
	.word	252		! frame size = 252
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
	.word	-40
	.word	4
	.word	_Label_821
	.word	-44
	.word	4
	.word	_Label_822
	.word	-48
	.word	4
	.word	_Label_823
	.word	-52
	.word	4
	.word	_Label_824
	.word	-56
	.word	4
	.word	_Label_825
	.word	-60
	.word	4
	.word	_Label_826
	.word	-64
	.word	4
	.word	_Label_827
	.word	-68
	.word	4
	.word	_Label_828
	.word	-72
	.word	4
	.word	_Label_829
	.word	-76
	.word	4
	.word	_Label_830
	.word	-80
	.word	4
	.word	_Label_831
	.word	-84
	.word	4
	.word	_Label_832
	.word	-88
	.word	4
	.word	_Label_833
	.word	-92
	.word	4
	.word	_Label_834
	.word	-96
	.word	4
	.word	_Label_835
	.word	-100
	.word	4
	.word	_Label_836
	.word	-104
	.word	4
	.word	_Label_837
	.word	-196
	.word	92
	.word	_Label_838
	.word	-220
	.word	24
	.word	_Label_839
	.word	-224
	.word	4
	.word	_Label_840
	.word	-228
	.word	4
	.word	_Label_841
	.word	-232
	.word	4
	.word	_Label_842
	.word	-236
	.word	4
	.word	_Label_843
	.word	-240
	.word	4
	.word	_Label_844
	.word	-244
	.word	4
	.word	0
_Label_811:
	.ascii	"Handle_Sys_Exec\0"
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
	.ascii	"_temp_808\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_804\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_794\0"
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
	.ascii	"_temp_787\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_836:
	.byte	'P'
	.ascii	"ptrOpenFile2\0"
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
_Label_3376:
	push	r0
	sub	r1,1,r1
	bne	_Label_3376
	mov	2151,r13		! source line 2151
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
	mov	2156,r13		! source line 2156
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
	mov	2159,r13		! source line 2159
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
	mov	2160,r13		! source line 2160
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_852 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_852  sizeInBytes=4
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
_Label_851:
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
	mov	18,r1
_Label_3377:
	push	r0
	sub	r1,1,r1
	bne	_Label_3377
	mov	2170,r13		! source line 2170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
	mov	2175,r13		! source line 2175
	mov	"\0\0SE",r10
!   _temp_863 = &stringStorage
	add	r14,-60,r1
	store	r1,[r14+-36]
!   _temp_864 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_866 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_865 = *_temp_866  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_865) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_867 = _temp_865 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_863  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_864  sizeInBytes=4
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
	mov	2178,r13		! source line 2178
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_869		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_869
!	jmp	_Label_868
_Label_868:
! THEN...
	mov	2179,r13		! source line 2179
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_870 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_870  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2179,r13		! source line 2179
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_869:
! CALL STATEMENT...
!   _temp_871 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2185,r13		! source line 2185
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2187,r13		! source line 2187
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
	.word	_Label_872
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_873
	.word	8
	.word	4
	.word	_Label_874
	.word	-12
	.word	4
	.word	_Label_875
	.word	-16
	.word	4
	.word	_Label_876
	.word	-20
	.word	4
	.word	_Label_877
	.word	-24
	.word	4
	.word	_Label_878
	.word	-28
	.word	4
	.word	_Label_879
	.word	-32
	.word	4
	.word	_Label_880
	.word	-36
	.word	4
	.word	_Label_881
	.word	-60
	.word	24
	.word	_Label_882
	.word	-64
	.word	4
	.word	0
_Label_872:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_873:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_881:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_882:
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
	mov	2190,r13		! source line 2190
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2200,r13		! source line 2200
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
	.word	_Label_883
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_884
	.word	8
	.word	4
	.word	_Label_885
	.word	12
	.word	4
	.word	_Label_886
	.word	16
	.word	4
	.word	0
_Label_883:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_885:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_886:
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
	mov	2203,r13		! source line 2203
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2213,r13		! source line 2213
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
	.word	_Label_887
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_888
	.word	8
	.word	4
	.word	_Label_889
	.word	12
	.word	4
	.word	_Label_890
	.word	16
	.word	4
	.word	0
_Label_887:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_888:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_889:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_890:
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
	mov	2216,r13		! source line 2216
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2224,r13		! source line 2224
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
	.word	_Label_891
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_892
	.word	8
	.word	4
	.word	_Label_893
	.word	12
	.word	4
	.word	0
_Label_891:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_892:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_893:
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
	mov	2227,r13		! source line 2227
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	2227,r13		! source line 2227
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
	.word	_Label_894
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_895
	.word	8
	.word	4
	.word	0
_Label_894:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_895:
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
_Label_3378:
	push	r0
	sub	r1,1,r1
	bne	_Label_3378
	mov	2235,r13		! source line 2235
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2237,r13		! source line 2237
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2237,r13		! source line 2237
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
	.word	_Label_896
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_897
	.word	8
	.word	4
	.word	0
_Label_896:
	.ascii	"printString\0"
	.align
_Label_897:
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
_Label_3379:
	push	r0
	sub	r1,1,r1
	bne	_Label_3379
	mov	2241,r13		! source line 2241
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2253,r13		! source line 2253
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=ignore  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_899 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_898 = *_temp_899  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_898) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_900 = _temp_898 + 32
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
!   _temp_902 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_902 [0 ] into _temp_903
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
!   _temp_901 = _temp_903		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_901  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	2258,r13		! source line 2258
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_904 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_904 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_905 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_905 [999 ] into _temp_906
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
!   initSystemStackTop = _temp_906		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_907 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-16]
!   Move address of _temp_907 [14 ] into _temp_908
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
!   Data Move: initUserStackTop = *_temp_908  (sizeInBytes=4)
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
	mov	2267,r13		! source line 2267
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2267,r13		! source line 2267
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
	.word	_Label_909
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_910
	.word	8
	.word	4
	.word	_Label_911
	.word	-12
	.word	4
	.word	_Label_912
	.word	-16
	.word	4
	.word	_Label_913
	.word	-20
	.word	4
	.word	_Label_914
	.word	-24
	.word	4
	.word	_Label_915
	.word	-28
	.word	4
	.word	_Label_916
	.word	-32
	.word	4
	.word	_Label_917
	.word	-36
	.word	4
	.word	_Label_918
	.word	-40
	.word	4
	.word	_Label_919
	.word	-44
	.word	4
	.word	_Label_920
	.word	-48
	.word	4
	.word	_Label_921
	.word	-52
	.word	4
	.word	_Label_922
	.word	-56
	.word	4
	.word	_Label_923
	.word	-60
	.word	4
	.word	_Label_924
	.word	-64
	.word	4
	.word	0
_Label_909:
	.ascii	"ResumeChildAfterFork\0"
	.align
_Label_910:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_911:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_922:
	.byte	'I'
	.ascii	"ignore\0"
	.align
_Label_923:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_924:
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
_Label_3380:
	push	r0
	sub	r1,1,r1
	bne	_Label_3380
	mov	2858,r13		! source line 2858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2861,r13		! source line 2861
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_925 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_925  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2863,r13		! source line 2863
	mov	"\0\0AS",r10
!   _temp_926 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_926) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_928 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_928) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_927 = *_temp_928  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_926 = _temp_927  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   _temp_929 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_929) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_931 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_931) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_930 = *_temp_931  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_929 = _temp_930  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0AS",r10
!   _temp_932 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_932) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_934 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_934) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_933 = *_temp_934  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_932 = _temp_933  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2865,r13		! source line 2865
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
	.word	_Label_935
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_936
	.word	8
	.word	4
	.word	_Label_937
	.word	12
	.word	4
	.word	_Label_938
	.word	-16
	.word	4
	.word	_Label_939
	.word	-9
	.word	1
	.word	_Label_940
	.word	-20
	.word	4
	.word	_Label_941
	.word	-24
	.word	4
	.word	_Label_942
	.word	-10
	.word	1
	.word	_Label_943
	.word	-28
	.word	4
	.word	_Label_944
	.word	-32
	.word	4
	.word	_Label_945
	.word	-11
	.word	1
	.word	_Label_946
	.word	-36
	.word	4
	.word	_Label_947
	.word	-12
	.word	1
	.word	_Label_948
	.word	-40
	.word	4
	.word	_Label_949
	.word	-44
	.word	4
	.word	0
_Label_935:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_936:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_937:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_939:
	.byte	'C'
	.ascii	"_temp_933\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_942:
	.byte	'C'
	.ascii	"_temp_930\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_945:
	.byte	'C'
	.ascii	"_temp_927\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_947:
	.byte	'C'
	.ascii	"_temp_925\0"
	.align
_Label_948:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_949:
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
_Label_3381:
	push	r0
	sub	r1,1,r1
	bne	_Label_3381
	mov	2868,r13		! source line 2868
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_951 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_950 = *_temp_951  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_950  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2869,r13		! source line 2869
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2870,r13		! source line 2870
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2870,r13		! source line 2870
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
	.word	_Label_952
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_953
	.word	8
	.word	4
	.word	_Label_954
	.word	-12
	.word	4
	.word	_Label_955
	.word	-16
	.word	4
	.word	0
_Label_952:
	.ascii	"printFCB\0"
	.align
_Label_953:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_950\0"
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
_Label_3382:
	push	r0
	sub	r1,1,r1
	bne	_Label_3382
	mov	2873,r13		! source line 2873
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_956 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_956  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2874,r13		! source line 2874
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_957 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_957  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2875,r13		! source line 2875
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_958 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_958  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2876,r13		! source line 2876
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2877,r13		! source line 2877
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
	mov	2877,r13		! source line 2877
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
	.word	_Label_959
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_960
	.word	8
	.word	4
	.word	_Label_961
	.word	-12
	.word	4
	.word	_Label_962
	.word	-16
	.word	4
	.word	_Label_963
	.word	-20
	.word	4
	.word	0
_Label_959:
	.ascii	"printOpen\0"
	.align
_Label_960:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_964
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_964:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_965
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_965:
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
_Label_3383:
	push	r0
	sub	r1,1,r1
	bne	_Label_3383
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_967		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_967
!	jmp	_Label_966
_Label_966:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_968 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_968  sizeInBytes=4
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
_Label_967:
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
	.word	_Label_970
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_972
	.word	12
	.word	4
	.word	_Label_973
	.word	-12
	.word	4
	.word	_Label_974
	.word	-16
	.word	4
	.word	0
_Label_970:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_971:
	.ascii	"Pself\0"
	.align
_Label_972:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_968\0"
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
_Label_3384:
	push	r0
	sub	r1,1,r1
	bne	_Label_3384
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
!   if count != 2147483647 then goto _Label_976		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_976
!	jmp	_Label_975
_Label_975:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_977 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_977  sizeInBytes=4
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
_Label_976:
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
!   if count > 0 then goto _Label_979		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_979
!	jmp	_Label_978
_Label_978:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_980 = &waitingThreads
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
!   _temp_981 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_981 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_982 = &_P_Kernel_readyList
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
_Label_979:
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
	.word	_Label_983
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_984
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_985
	.word	-12
	.word	4
	.word	_Label_986
	.word	-16
	.word	4
	.word	_Label_987
	.word	-20
	.word	4
	.word	_Label_988
	.word	-24
	.word	4
	.word	_Label_989
	.word	-28
	.word	4
	.word	_Label_990
	.word	-32
	.word	4
	.word	0
_Label_983:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_984:
	.ascii	"Pself\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_989:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_990:
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
_Label_3385:
	push	r0
	sub	r1,1,r1
	bne	_Label_3385
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
!   if count != -2147483648 then goto _Label_992		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_992
!	jmp	_Label_991
_Label_991:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_993 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_993  sizeInBytes=4
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
_Label_992:
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
!   if count >= 0 then goto _Label_995		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_995
!	jmp	_Label_994
_Label_994:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_996 = &waitingThreads
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
_Label_995:
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
	.word	_Label_997
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_998
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_999
	.word	-12
	.word	4
	.word	_Label_1000
	.word	-16
	.word	4
	.word	_Label_1001
	.word	-20
	.word	4
	.word	0
_Label_997:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_998:
	.ascii	"Pself\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_993\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_1002
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_1002:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1003
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_1003:
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
_Label_3386:
	push	r0
	sub	r1,1,r1
	bne	_Label_3386
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
	.word	_Label_1005
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1006
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1007
	.word	-12
	.word	4
	.word	0
_Label_1005:
	.ascii	"Mutex"
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
_Label_3387:
	push	r0
	sub	r1,1,r1
	bne	_Label_3387
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1009		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1009
!	jmp	_Label_1008
_Label_1008:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1010 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
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
_Label_1009:
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
!   if heldBy == 0 then goto _Label_1014		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1014
!   _temp_1013 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1015
_Label_1014:
!   _temp_1013 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1015:
!   if _temp_1013 then goto _Label_1012 else goto _Label_1011
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1011
	jmp	_Label_1012
_Label_1011:
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
	jmp	_Label_1016
_Label_1012:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_1017 = &waitingThreads
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
_Label_1016:
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
	.word	_Label_1018
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1019
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1020
	.word	-16
	.word	4
	.word	_Label_1021
	.word	-9
	.word	1
	.word	_Label_1022
	.word	-20
	.word	4
	.word	_Label_1023
	.word	-24
	.word	4
	.word	0
_Label_1018:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_1019:
	.ascii	"Pself\0"
	.align
_Label_1020:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1021:
	.byte	'C'
	.ascii	"_temp_1013\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1023:
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
_Label_3388:
	push	r0
	sub	r1,1,r1
	bne	_Label_3388
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_1025		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1025
!	jmp	_Label_1024
_Label_1024:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1026 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1026  sizeInBytes=4
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
_Label_1025:
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
!   _temp_1027 = &waitingThreads
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
!   if t == 0 then goto _Label_1029		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1029
!	jmp	_Label_1028
_Label_1028:
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
!   _temp_1030 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1030 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_1031 = &_P_Kernel_readyList
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
	jmp	_Label_1032
_Label_1029:
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
_Label_1032:
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
	.word	_Label_1033
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1034
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1035
	.word	-12
	.word	4
	.word	_Label_1036
	.word	-16
	.word	4
	.word	_Label_1037
	.word	-20
	.word	4
	.word	_Label_1038
	.word	-24
	.word	4
	.word	_Label_1039
	.word	-28
	.word	4
	.word	_Label_1040
	.word	-32
	.word	4
	.word	0
_Label_1033:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_1034:
	.ascii	"Pself\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1039:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1040:
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
_Label_3389:
	push	r0
	sub	r1,1,r1
	bne	_Label_3389
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_1043		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_1043
!	jmp	_Label_1042
_Label_1042:
!   _temp_1041 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1044
_Label_1043:
!   _temp_1041 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1044:
!   ReturnResult: _temp_1041  (sizeInBytes=1)
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
	.word	_Label_1045
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1046
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1047
	.word	-9
	.word	1
	.word	0
_Label_1045:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_1046:
	.ascii	"Pself\0"
	.align
_Label_1047:
	.byte	'C'
	.ascii	"_temp_1041\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_1048
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_1048:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1049
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_1049:
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
_Label_3390:
	push	r0
	sub	r1,1,r1
	bne	_Label_3390
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
	.word	_Label_1051
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_1052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1053
	.word	-12
	.word	4
	.word	0
_Label_1051:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1052:
	.ascii	"Pself\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1050\0"
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
_Label_3391:
	push	r0
	sub	r1,1,r1
	bne	_Label_3391
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
!   Retrieve Result: targetName=_temp_1056  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1056 then goto _Label_1055 else goto _Label_1054
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1054
	jmp	_Label_1055
_Label_1054:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1057 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1057  sizeInBytes=4
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
_Label_1055:
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
!   _temp_1058 = &waitingThreads
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
	.word	_Label_1059
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1060
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1061
	.word	12
	.word	4
	.word	_Label_1062
	.word	-16
	.word	4
	.word	_Label_1063
	.word	-20
	.word	4
	.word	_Label_1064
	.word	-9
	.word	1
	.word	_Label_1065
	.word	-24
	.word	4
	.word	0
_Label_1059:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_1060:
	.ascii	"Pself\0"
	.align
_Label_1061:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1064:
	.byte	'C'
	.ascii	"_temp_1056\0"
	.align
_Label_1065:
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
_Label_3392:
	push	r0
	sub	r1,1,r1
	bne	_Label_3392
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
!   Retrieve Result: targetName=_temp_1068  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_1068 then goto _Label_1067 else goto _Label_1066
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_1066
	jmp	_Label_1067
_Label_1066:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1069 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
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
_Label_1067:
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
!   _temp_1070 = &waitingThreads
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
!   if t == 0 then goto _Label_1072		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1072
!	jmp	_Label_1071
_Label_1071:
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
!   _temp_1073 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1073 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_1074 = &_P_Kernel_readyList
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
_Label_1072:
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
	.word	_Label_1075
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1076
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1077
	.word	12
	.word	4
	.word	_Label_1078
	.word	-16
	.word	4
	.word	_Label_1079
	.word	-20
	.word	4
	.word	_Label_1080
	.word	-24
	.word	4
	.word	_Label_1081
	.word	-28
	.word	4
	.word	_Label_1082
	.word	-9
	.word	1
	.word	_Label_1083
	.word	-32
	.word	4
	.word	_Label_1084
	.word	-36
	.word	4
	.word	0
_Label_1075:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_1076:
	.ascii	"Pself\0"
	.align
_Label_1077:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1082:
	.byte	'C'
	.ascii	"_temp_1068\0"
	.align
_Label_1083:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1084:
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
_Label_3393:
	push	r0
	sub	r1,1,r1
	bne	_Label_3393
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
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1088 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
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
_Label_1086:
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
_Label_1089:
!	jmp	_Label_1090
_Label_1090:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_1092 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_1093
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_1093
	jmp	_Label_1094
_Label_1093:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_1091
! END IF...
_Label_1094:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1095 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1095 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_1096 = &_P_Kernel_readyList
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
	jmp	_Label_1089
_Label_1091:
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
	.word	_Label_1097
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1099
	.word	12
	.word	4
	.word	_Label_1100
	.word	-16
	.word	4
	.word	_Label_1101
	.word	-20
	.word	4
	.word	_Label_1102
	.word	-24
	.word	4
	.word	_Label_1103
	.word	-28
	.word	4
	.word	_Label_1104
	.word	-9
	.word	1
	.word	_Label_1105
	.word	-32
	.word	4
	.word	_Label_1106
	.word	-36
	.word	4
	.word	0
_Label_1097:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_1098:
	.ascii	"Pself\0"
	.align
_Label_1099:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1104:
	.byte	'C'
	.ascii	"_temp_1087\0"
	.align
_Label_1105:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1106:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1107
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
_Label_1107:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1108
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1108:
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
_Label_3394:
	push	r0
	sub	r1,1,r1
	bne	_Label_3394
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
!   _temp_1109 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1109) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1109 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_1110 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1110 [0 ] into _temp_1111
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
!   Data Move: *_temp_1111 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_1112 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1112 [999 ] into _temp_1113
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
!   Data Move: *_temp_1113 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_1114 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1114 [999 ] into _temp_1115
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
!   stackTop = _temp_1115		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_1116 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1118 = &_temp_1117
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1118 = _temp_1118 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1120:
!   Data Move: *_temp_1118 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1118 = _temp_1118 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1119 = _temp_1119 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1119) then goto _Label_1120
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1120
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1121 = &_temp_1117
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3395
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3395:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1116 = *_temp_1121  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3396:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3396
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
!   _temp_1122 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1124 = &_temp_1123
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1124 = _temp_1124 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1126:
!   Data Move: *_temp_1124 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1124 = _temp_1124 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1125 = _temp_1125 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1125) then goto _Label_1126
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1126
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1127 = &_temp_1123
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3397
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3397:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1122 = *_temp_1127  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3398:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3398
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
	.word	_Label_1128
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1130
	.word	12
	.word	4
	.word	_Label_1131
	.word	-12
	.word	4
	.word	_Label_1132
	.word	-16
	.word	4
	.word	_Label_1133
	.word	-20
	.word	4
	.word	_Label_1134
	.word	-84
	.word	64
	.word	_Label_1135
	.word	-88
	.word	4
	.word	_Label_1136
	.word	-92
	.word	4
	.word	_Label_1137
	.word	-96
	.word	4
	.word	_Label_1138
	.word	-100
	.word	4
	.word	_Label_1139
	.word	-156
	.word	56
	.word	_Label_1140
	.word	-160
	.word	4
	.word	_Label_1141
	.word	-164
	.word	4
	.word	_Label_1142
	.word	-168
	.word	4
	.word	_Label_1143
	.word	-172
	.word	4
	.word	_Label_1144
	.word	-176
	.word	4
	.word	_Label_1145
	.word	-180
	.word	4
	.word	_Label_1146
	.word	-184
	.word	4
	.word	_Label_1147
	.word	-188
	.word	4
	.word	0
_Label_1128:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1129:
	.ascii	"Pself\0"
	.align
_Label_1130:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1109\0"
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
_Label_3399:
	push	r0
	sub	r1,1,r1
	bne	_Label_3399
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
!   _temp_1148 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1148  (sizeInBytes=4)
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
!   _temp_1150 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1149  sizeInBytes=4
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
	.word	_Label_1151
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1152
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1153
	.word	12
	.word	4
	.word	_Label_1154
	.word	16
	.word	4
	.word	_Label_1155
	.word	-12
	.word	4
	.word	_Label_1156
	.word	-16
	.word	4
	.word	_Label_1157
	.word	-20
	.word	4
	.word	_Label_1158
	.word	-24
	.word	4
	.word	_Label_1159
	.word	-28
	.word	4
	.word	0
_Label_1151:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1152:
	.ascii	"Pself\0"
	.align
_Label_1153:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1154:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1158:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1159:
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
_Label_3400:
	push	r0
	sub	r1,1,r1
	bne	_Label_3400
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1162 == _P_Kernel_currentThread then goto _Label_1161		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1161
!	jmp	_Label_1160
_Label_1160:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1163 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
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
_Label_1161:
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
!   _temp_1164 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1166		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1166
!	jmp	_Label_1165
_Label_1165:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1168		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1168
!	jmp	_Label_1167
_Label_1167:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1169 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1169  sizeInBytes=4
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
_Label_1168:
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
!   _temp_1171 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1170  sizeInBytes=4
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
_Label_1166:
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
	.word	_Label_1172
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1174
	.word	-12
	.word	4
	.word	_Label_1175
	.word	-16
	.word	4
	.word	_Label_1176
	.word	-20
	.word	4
	.word	_Label_1177
	.word	-24
	.word	4
	.word	_Label_1178
	.word	-28
	.word	4
	.word	_Label_1179
	.word	-32
	.word	4
	.word	_Label_1180
	.word	-36
	.word	4
	.word	_Label_1181
	.word	-40
	.word	4
	.word	_Label_1182
	.word	-44
	.word	4
	.word	0
_Label_1172:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1173:
	.ascii	"Pself\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1180:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1181:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1182:
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
_Label_3401:
	push	r0
	sub	r1,1,r1
	bne	_Label_3401
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1184		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1184
!	jmp	_Label_1183
_Label_1183:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1185 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1185  sizeInBytes=4
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
_Label_1184:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1188 == _P_Kernel_currentThread then goto _Label_1187		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1187
!	jmp	_Label_1186
_Label_1186:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1189 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
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
_Label_1187:
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
!   _temp_1190 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1191
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1191
	jmp	_Label_1192
_Label_1191:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1193 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1193  sizeInBytes=4
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
_Label_1192:
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
	.word	_Label_1194
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1196
	.word	-12
	.word	4
	.word	_Label_1197
	.word	-16
	.word	4
	.word	_Label_1198
	.word	-20
	.word	4
	.word	_Label_1199
	.word	-24
	.word	4
	.word	_Label_1200
	.word	-28
	.word	4
	.word	_Label_1201
	.word	-32
	.word	4
	.word	0
_Label_1194:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1195:
	.ascii	"Pself\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1201:
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
_Label_3402:
	push	r0
	sub	r1,1,r1
	bne	_Label_3402
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1205 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1205 [0 ] into _temp_1206
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
!   Data Move: _temp_1204 = *_temp_1206  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1204 == 606348324 then goto _Label_1203		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1203
!	jmp	_Label_1202
_Label_1202:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1207 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1207  sizeInBytes=4
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
	jmp	_Label_1208
_Label_1203:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1212 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1212 [999 ] into _temp_1213
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
!   Data Move: _temp_1211 = *_temp_1213  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1211 == 606348324 then goto _Label_1210		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1210
!	jmp	_Label_1209
_Label_1209:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1214 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1214  sizeInBytes=4
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
_Label_1210:
! END IF...
_Label_1208:
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
	.word	_Label_1215
	.word	4		! total size of parameters
	.word	36		! frame size = 36
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
	.word	0
_Label_1215:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
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
	.ascii	"_temp_1207\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1204\0"
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
_Label_3403:
	push	r0
	sub	r1,1,r1
	bne	_Label_3403
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
!   _temp_1225 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1225  sizeInBytes=4
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
!   _temp_1226 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1226  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1227  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1228 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1228  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1229 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1229  sizeInBytes=4
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
!   _temp_1234 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1235 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1234  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1230:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1235 then goto _Label_1233		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1233
_Label_1231:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1236 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1236  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1237 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1237  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1238 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1240 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1240 [i ] into _temp_1241
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
!   Data Move: _temp_1239 = *_temp_1241  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1239  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1242 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1242  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1244 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1244 [i ] into _temp_1245
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
!   Data Move: _temp_1243 = *_temp_1245  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1246 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1246  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1232:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1230
! END FOR
_Label_1233:
! CALL STATEMENT...
!   _temp_1247 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-116]
!   _temp_1248 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1248  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1249 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-108]
!   _temp_1251 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1251 [0 ] into _temp_1252
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
!   _temp_1250 = _temp_1252		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1249  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1250  sizeInBytes=4
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
	be	_Label_1255
	cmp	r1,2
	be	_Label_1256
	cmp	r1,3
	be	_Label_1257
	cmp	r1,4
	be	_Label_1258
	cmp	r1,5
	be	_Label_1259
	jmp	_Label_1253
! CASE 1...
_Label_1255:
! CALL STATEMENT...
!   _temp_1260 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1260  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1254
! CASE 2...
_Label_1256:
! CALL STATEMENT...
!   _temp_1261 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1261  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1254
! CASE 3...
_Label_1257:
! CALL STATEMENT...
!   _temp_1262 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1262  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1254
! CASE 4...
_Label_1258:
! CALL STATEMENT...
!   _temp_1263 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1263  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1254
! CASE 5...
_Label_1259:
! CALL STATEMENT...
!   _temp_1264 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1264  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1254
! DEFAULT CASE...
_Label_1253:
! CALL STATEMENT...
!   _temp_1265 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1265  sizeInBytes=4
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
_Label_1254:
! CALL STATEMENT...
!   _temp_1266 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1266  sizeInBytes=4
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
!   _temp_1267 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1267  sizeInBytes=4
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
!   _temp_1272 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1273 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1272  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1268:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1273 then goto _Label_1271		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1271
_Label_1269:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1274 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1274  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1275 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1276 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1276  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1278 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1278 [i ] into _temp_1279
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
!   Data Move: _temp_1277 = *_temp_1279  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1277  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1280 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1280  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1282 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1282 [i ] into _temp_1283
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
!   Data Move: _temp_1281 = *_temp_1283  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1284 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1284  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1270:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1268
! END FOR
_Label_1271:
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
	.word	_Label_1285
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1286
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1287
	.word	-12
	.word	4
	.word	_Label_1288
	.word	-16
	.word	4
	.word	_Label_1289
	.word	-20
	.word	4
	.word	_Label_1290
	.word	-24
	.word	4
	.word	_Label_1291
	.word	-28
	.word	4
	.word	_Label_1292
	.word	-32
	.word	4
	.word	_Label_1293
	.word	-36
	.word	4
	.word	_Label_1294
	.word	-40
	.word	4
	.word	_Label_1295
	.word	-44
	.word	4
	.word	_Label_1296
	.word	-48
	.word	4
	.word	_Label_1297
	.word	-52
	.word	4
	.word	_Label_1298
	.word	-56
	.word	4
	.word	_Label_1299
	.word	-60
	.word	4
	.word	_Label_1300
	.word	-64
	.word	4
	.word	_Label_1301
	.word	-68
	.word	4
	.word	_Label_1302
	.word	-72
	.word	4
	.word	_Label_1303
	.word	-76
	.word	4
	.word	_Label_1304
	.word	-80
	.word	4
	.word	_Label_1305
	.word	-84
	.word	4
	.word	_Label_1306
	.word	-88
	.word	4
	.word	_Label_1307
	.word	-92
	.word	4
	.word	_Label_1308
	.word	-96
	.word	4
	.word	_Label_1309
	.word	-100
	.word	4
	.word	_Label_1310
	.word	-104
	.word	4
	.word	_Label_1311
	.word	-108
	.word	4
	.word	_Label_1312
	.word	-112
	.word	4
	.word	_Label_1313
	.word	-116
	.word	4
	.word	_Label_1314
	.word	-120
	.word	4
	.word	_Label_1315
	.word	-124
	.word	4
	.word	_Label_1316
	.word	-128
	.word	4
	.word	_Label_1317
	.word	-132
	.word	4
	.word	_Label_1318
	.word	-136
	.word	4
	.word	_Label_1319
	.word	-140
	.word	4
	.word	_Label_1320
	.word	-144
	.word	4
	.word	_Label_1321
	.word	-148
	.word	4
	.word	_Label_1322
	.word	-152
	.word	4
	.word	_Label_1323
	.word	-156
	.word	4
	.word	_Label_1324
	.word	-160
	.word	4
	.word	_Label_1325
	.word	-164
	.word	4
	.word	_Label_1326
	.word	-168
	.word	4
	.word	_Label_1327
	.word	-172
	.word	4
	.word	_Label_1328
	.word	-176
	.word	4
	.word	_Label_1329
	.word	-180
	.word	4
	.word	_Label_1330
	.word	-184
	.word	4
	.word	_Label_1331
	.word	-188
	.word	4
	.word	_Label_1332
	.word	-192
	.word	4
	.word	_Label_1333
	.word	-196
	.word	4
	.word	0
_Label_1285:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1286:
	.ascii	"Pself\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1276\0"
	.align
_Label_1296:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1297:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1298:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1299:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1266\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1265\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1332:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1333:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1334
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1334:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1335
	.word	_sourceFileName
	.word	193		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1335:
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
_Label_3404:
	push	r0
	sub	r1,1,r1
	bne	_Label_3404
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1336 = _StringConst_82
	set	_StringConst_82,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1336  sizeInBytes=4
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
!   _temp_1338 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1340 = &_temp_1339
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1340 = _temp_1340 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1342 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_3405:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3405
!   _temp_1342 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1344:
!   Data Move: *_temp_1340 = _temp_1342  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_3406:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3406
!   _temp_1340 = _temp_1340 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1341 = _temp_1341 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1341) then goto _Label_1344
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1344
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1345 = &_temp_1339
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3407
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3407:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1338 = *_temp_1345  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3408:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3408
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1346 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-188]
!   _temp_1347 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1347 [0 ] into _temp_1348
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
!   Prepare Argument: offset=12  value=_temp_1346  sizeInBytes=4
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
!   _temp_1349 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-176]
!   _temp_1350 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1350 [1 ] into _temp_1351
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
!   Prepare Argument: offset=12  value=_temp_1349  sizeInBytes=4
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
!   _temp_1352 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-164]
!   _temp_1353 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1353 [2 ] into _temp_1354
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
!   Prepare Argument: offset=12  value=_temp_1352  sizeInBytes=4
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
!   _temp_1355 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-152]
!   _temp_1356 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1356 [3 ] into _temp_1357
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
!   Prepare Argument: offset=12  value=_temp_1355  sizeInBytes=4
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
!   _temp_1358 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-140]
!   _temp_1359 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1359 [4 ] into _temp_1360
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
!   Prepare Argument: offset=12  value=_temp_1358  sizeInBytes=4
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
!   _temp_1361 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-128]
!   _temp_1362 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1362 [5 ] into _temp_1363
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
!   Prepare Argument: offset=12  value=_temp_1361  sizeInBytes=4
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
!   _temp_1364 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-116]
!   _temp_1365 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1365 [6 ] into _temp_1366
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
!   Prepare Argument: offset=12  value=_temp_1364  sizeInBytes=4
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
!   _temp_1367 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-104]
!   _temp_1368 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1368 [7 ] into _temp_1369
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
!   Prepare Argument: offset=12  value=_temp_1367  sizeInBytes=4
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
!   _temp_1370 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-92]
!   _temp_1371 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1371 [8 ] into _temp_1372
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
!   Prepare Argument: offset=12  value=_temp_1370  sizeInBytes=4
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
!   _temp_1373 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-80]
!   _temp_1374 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1374 [9 ] into _temp_1375
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
!   Prepare Argument: offset=12  value=_temp_1373  sizeInBytes=4
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
!   _temp_1380 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1381 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1380  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1376:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1381 then goto _Label_1379		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1379
_Label_1377:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1382 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1382 [index ] into _temp_1383
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
!   _temp_1384 = _temp_1383 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1384 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1386 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1386 [index ] into _temp_1387
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
!   _temp_1385 = _temp_1387		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1388 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1385  sizeInBytes=4
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
_Label_1378:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1376
! END FOR
_Label_1379:
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
!   _temp_1390 = &threadManagerLock
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
!   _temp_1392 = &aThreadBecameFree
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
!   _temp_1394 = &leadThread
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
	.word	_Label_1395
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1396
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1397
	.word	-12
	.word	4
	.word	_Label_1398
	.word	-16
	.word	4
	.word	_Label_1399
	.word	-20
	.word	4
	.word	_Label_1400
	.word	-24
	.word	4
	.word	_Label_1401
	.word	-28
	.word	4
	.word	_Label_1402
	.word	-32
	.word	4
	.word	_Label_1403
	.word	-36
	.word	4
	.word	_Label_1404
	.word	-40
	.word	4
	.word	_Label_1405
	.word	-44
	.word	4
	.word	_Label_1406
	.word	-48
	.word	4
	.word	_Label_1407
	.word	-52
	.word	4
	.word	_Label_1408
	.word	-56
	.word	4
	.word	_Label_1409
	.word	-60
	.word	4
	.word	_Label_1410
	.word	-64
	.word	4
	.word	_Label_1411
	.word	-68
	.word	4
	.word	_Label_1412
	.word	-72
	.word	4
	.word	_Label_1413
	.word	-76
	.word	4
	.word	_Label_1414
	.word	-80
	.word	4
	.word	_Label_1415
	.word	-84
	.word	4
	.word	_Label_1416
	.word	-88
	.word	4
	.word	_Label_1417
	.word	-92
	.word	4
	.word	_Label_1418
	.word	-96
	.word	4
	.word	_Label_1419
	.word	-100
	.word	4
	.word	_Label_1420
	.word	-104
	.word	4
	.word	_Label_1421
	.word	-108
	.word	4
	.word	_Label_1422
	.word	-112
	.word	4
	.word	_Label_1423
	.word	-116
	.word	4
	.word	_Label_1424
	.word	-120
	.word	4
	.word	_Label_1425
	.word	-124
	.word	4
	.word	_Label_1426
	.word	-128
	.word	4
	.word	_Label_1427
	.word	-132
	.word	4
	.word	_Label_1428
	.word	-136
	.word	4
	.word	_Label_1429
	.word	-140
	.word	4
	.word	_Label_1430
	.word	-144
	.word	4
	.word	_Label_1431
	.word	-148
	.word	4
	.word	_Label_1432
	.word	-152
	.word	4
	.word	_Label_1433
	.word	-156
	.word	4
	.word	_Label_1434
	.word	-160
	.word	4
	.word	_Label_1435
	.word	-164
	.word	4
	.word	_Label_1436
	.word	-168
	.word	4
	.word	_Label_1437
	.word	-172
	.word	4
	.word	_Label_1438
	.word	-176
	.word	4
	.word	_Label_1439
	.word	-180
	.word	4
	.word	_Label_1440
	.word	-184
	.word	4
	.word	_Label_1441
	.word	-188
	.word	4
	.word	_Label_1442
	.word	-192
	.word	4
	.word	_Label_1443
	.word	-196
	.word	4
	.word	_Label_1444
	.word	-4360
	.word	4164
	.word	_Label_1445
	.word	-4364
	.word	4
	.word	_Label_1446
	.word	-4368
	.word	4
	.word	_Label_1447
	.word	-46012
	.word	41644
	.word	_Label_1448
	.word	-46016
	.word	4
	.word	_Label_1449
	.word	-46020
	.word	4
	.word	_Label_1450
	.word	-46024
	.word	4
	.word	_Label_1451
	.word	-46028
	.word	4
	.word	0
_Label_1395:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1396:
	.ascii	"Pself\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1427:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1428:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1429:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1430:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1354\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1451:
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
_Label_3409:
	push	r0
	sub	r1,1,r1
	bne	_Label_3409
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
!   _temp_1452 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1452  sizeInBytes=4
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
!   _temp_1457 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1458 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1457  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1453:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1458 then goto _Label_1456		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1456
_Label_1454:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1459 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1459  sizeInBytes=4
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
!   _temp_1460 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1460  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1462 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1462 [i ] into _temp_1463
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
!   _temp_1461 = _temp_1463		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1461  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_203_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1455:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1453
! END FOR
_Label_1456:
! CALL STATEMENT...
!   _temp_1464 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1464  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1465 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1466 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1465  sizeInBytes=4
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
	.word	_Label_1467
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1468
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1469
	.word	-12
	.word	4
	.word	_Label_1470
	.word	-16
	.word	4
	.word	_Label_1471
	.word	-20
	.word	4
	.word	_Label_1472
	.word	-24
	.word	4
	.word	_Label_1473
	.word	-28
	.word	4
	.word	_Label_1474
	.word	-32
	.word	4
	.word	_Label_1475
	.word	-36
	.word	4
	.word	_Label_1476
	.word	-40
	.word	4
	.word	_Label_1477
	.word	-44
	.word	4
	.word	_Label_1478
	.word	-48
	.word	4
	.word	_Label_1479
	.word	-52
	.word	4
	.word	_Label_1480
	.word	-56
	.word	4
	.word	_Label_1481
	.word	-60
	.word	4
	.word	0
_Label_1467:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1468:
	.ascii	"Pself\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1465\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1460\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1480:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1481:
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
_Label_3410:
	push	r0
	sub	r1,1,r1
	bne	_Label_3410
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1482 = &threadManagerLock
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
_Label_1483:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1486 = &freeList
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
!   if result==true then goto _Label_1484 else goto _Label_1485
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1485
	jmp	_Label_1484
_Label_1484:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1487 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   _temp_1488 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1487  sizeInBytes=4
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
	jmp	_Label_1483
_Label_1485:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1489 = &freeList
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
!   _temp_1490 = threadToReturn + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1490 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1491 = &threadManagerLock
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
	.word	_Label_1492
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1494
	.word	-12
	.word	4
	.word	_Label_1495
	.word	-16
	.word	4
	.word	_Label_1496
	.word	-20
	.word	4
	.word	_Label_1497
	.word	-24
	.word	4
	.word	_Label_1498
	.word	-28
	.word	4
	.word	_Label_1499
	.word	-32
	.word	4
	.word	_Label_1500
	.word	-36
	.word	4
	.word	_Label_1501
	.word	-40
	.word	4
	.word	0
_Label_1492:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1493:
	.ascii	"Pself\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1490\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1497:
	.byte	'?'
	.ascii	"_temp_1488\0"
	.align
_Label_1498:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1499:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1501:
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
_Label_3411:
	push	r0
	sub	r1,1,r1
	bne	_Label_3411
	mov	781,r13		! source line 781
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	788,r13		! source line 788
	mov	"\0\0SE",r10
!   _temp_1502 = &threadManagerLock
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
!   if th == 0 then goto _Label_1504		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1504
!	jmp	_Label_1503
_Label_1503:
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
!   _temp_1505 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1505 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1506 = &freeList
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
!   _temp_1507 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1508 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1507  sizeInBytes=4
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
	jmp	_Label_1509
_Label_1504:
! ELSE...
	mov	794,r13		! source line 794
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1510 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1510  sizeInBytes=4
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
_Label_1509:
! SEND STATEMENT...
	mov	796,r13		! source line 796
	mov	"\0\0SE",r10
!   _temp_1511 = &threadManagerLock
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
	.word	_Label_1512
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1514
	.word	12
	.word	4
	.word	_Label_1515
	.word	-12
	.word	4
	.word	_Label_1516
	.word	-16
	.word	4
	.word	_Label_1517
	.word	-20
	.word	4
	.word	_Label_1518
	.word	-24
	.word	4
	.word	_Label_1519
	.word	-28
	.word	4
	.word	_Label_1520
	.word	-32
	.word	4
	.word	_Label_1521
	.word	-36
	.word	4
	.word	0
_Label_1512:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1513:
	.ascii	"Pself\0"
	.align
_Label_1514:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1522
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1522:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1523
	.word	_sourceFileName
	.word	215		! line number
	.word	168		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1523:
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
_Label_3412:
	push	r0
	sub	r1,1,r1
	bne	_Label_3412
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
_Label_3413:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3413
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0SE",r10
!   _temp_1525 = &addrSpace
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
!   _temp_1526 = &fileDescriptor
	load	[r14+8],r1
	add	r1,124,r1
	store	r1,[r14+-68]
!   NEW ARRAY Constructor...
!   _temp_1528 = &_temp_1527
	add	r14,-64,r1
	store	r1,[r14+-20]
!   _temp_1528 = _temp_1528 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	10,r1
	store	r1,[r14+-16]
_Label_1530:
!   Data Move: *_temp_1528 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1528 = _temp_1528 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1529 = _temp_1529 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1529) then goto _Label_1530
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1530
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-64]
!   _temp_1531 = &_temp_1527
	add	r14,-64,r1
	store	r1,[r14+-12]
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3414
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3414:
!   make sure array has size 10
	load	[r14+-12],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1526 = *_temp_1531  (sizeInBytes=44)
	load	[r14+-12],r5
	load	[r14+-68],r4
	mov	11,r3
_Label_3415:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3415
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
	.word	_Label_1532
	.word	4		! total size of parameters
	.word	72		! frame size = 72
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
	.word	-64
	.word	44
	.word	_Label_1538
	.word	-68
	.word	4
	.word	_Label_1539
	.word	-72
	.word	4
	.word	_Label_1540
	.word	-76
	.word	4
	.word	0
_Label_1532:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1529\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1524\0"
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
_Label_3416:
	push	r0
	sub	r1,1,r1
	bne	_Label_3416
	mov	823,r13		! source line 823
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	828,r13		! source line 828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1541) then goto _runtimeErrorNullPointer
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
!   _temp_1542 = &addrSpace
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
!   _temp_1543 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1543  sizeInBytes=4
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
	.word	_Label_1544
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1546
	.word	-12
	.word	4
	.word	_Label_1547
	.word	-16
	.word	4
	.word	_Label_1548
	.word	-20
	.word	4
	.word	0
_Label_1544:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1545:
	.ascii	"Pself\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1541\0"
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
_Label_3417:
	push	r0
	sub	r1,1,r1
	bne	_Label_3417
	mov	846,r13		! source line 846
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1549 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1549  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1550  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1551 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1551  sizeInBytes=4
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
!   _temp_1552 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1552  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	855,r13		! source line 855
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1554		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1554
!	jmp	_Label_1553
_Label_1553:
! THEN...
	mov	856,r13		! source line 856
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1555 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1555  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1556
_Label_1554:
! ELSE...
	mov	857,r13		! source line 857
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1558		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1558
!	jmp	_Label_1557
_Label_1557:
! THEN...
	mov	858,r13		! source line 858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1559 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1559  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1560
_Label_1558:
! ELSE...
	mov	859,r13		! source line 859
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1562		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1562
!	jmp	_Label_1561
_Label_1561:
! THEN...
	mov	860,r13		! source line 860
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1563 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1563  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	860,r13		! source line 860
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1564
_Label_1562:
! ELSE...
	mov	862,r13		! source line 862
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1565 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1565  sizeInBytes=4
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
_Label_1564:
! END IF...
_Label_1560:
! END IF...
_Label_1556:
! CALL STATEMENT...
!   _temp_1566 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1566  sizeInBytes=4
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
!   _temp_1567 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1567  sizeInBytes=4
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
	.word	_Label_1568
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1569
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1570
	.word	-12
	.word	4
	.word	_Label_1571
	.word	-16
	.word	4
	.word	_Label_1572
	.word	-20
	.word	4
	.word	_Label_1573
	.word	-24
	.word	4
	.word	_Label_1574
	.word	-28
	.word	4
	.word	_Label_1575
	.word	-32
	.word	4
	.word	_Label_1576
	.word	-36
	.word	4
	.word	_Label_1577
	.word	-40
	.word	4
	.word	_Label_1578
	.word	-44
	.word	4
	.word	_Label_1579
	.word	-48
	.word	4
	.word	0
_Label_1568:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1569:
	.ascii	"Pself\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1580
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
_Label_1580:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1581
	.word	_sourceFileName
	.word	235		! line number
	.word	1756		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1581:
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
_Label_3418:
	push	r0
	sub	r1,1,r1
	bne	_Label_3418
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
!   _temp_1583 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1936]
!   NEW ARRAY Constructor...
!   _temp_1585 = &_temp_1584
	add	r14,-1932,r1
	store	r1,[r14+-248]
!   _temp_1585 = _temp_1585 + 4
	load	[r14+-248],r1
	add	r1,4,r1
	store	r1,[r14+-248]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1587 = zeros  (sizeInBytes=168)
	add	r14,-240,r4
	mov	42,r3
_Label_3419:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3419
!   _temp_1587 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-240]
	mov	10,r1
	store	r1,[r14+-244]
_Label_1589:
!   Data Move: *_temp_1585 = _temp_1587  (sizeInBytes=168)
	add	r14,-240,r5
	load	[r14+-248],r4
	mov	42,r3
_Label_3420:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3420
!   _temp_1585 = _temp_1585 + 168
	load	[r14+-248],r1
	add	r1,168,r1
	store	r1,[r14+-248]
!   _temp_1586 = _temp_1586 + -1
	load	[r14+-244],r1
	add	r1,-1,r1
	store	r1,[r14+-244]
!   if intNotZero (_temp_1586) then goto _Label_1589
	load	[r14+-244],r1
	cmp	r1,r0
	bne	_Label_1589
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1932]
!   _temp_1590 = &_temp_1584
	add	r14,-1932,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1936],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3421
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3421:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1583 = *_temp_1590  (sizeInBytes=1684)
	load	[r14+-68],r5
	load	[r14+-1936],r4
	mov	421,r3
_Label_3422:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3422
! FOR STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1595 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1596 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1595  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1944]
_Label_1591:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1596 then goto _Label_1594		
	load	[r14+-1944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1594
_Label_1592:
	mov	898,r13		! source line 898
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0SE",r10
!   _temp_1597 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1597 [index ] into _temp_1598
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
!   _temp_1600 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1600 [index ] into _temp_1601
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
!   _temp_1599 = _temp_1601		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1602 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1599  sizeInBytes=4
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
_Label_1593:
!   index = index + 1
	load	[r14+-1944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1944]
	jmp	_Label_1591
! END FOR
_Label_1594:
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
!   _temp_1604 = &processManagerLock
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
!   _temp_1606 = &aProcessBecameFree
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
!   _temp_1608 = &aProcessDied
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
	.word	_Label_1609
	.word	4		! total size of parameters
	.word	1944		! frame size = 1944
	.word	_Label_1610
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1611
	.word	-12
	.word	4
	.word	_Label_1612
	.word	-16
	.word	4
	.word	_Label_1613
	.word	-20
	.word	4
	.word	_Label_1614
	.word	-24
	.word	4
	.word	_Label_1615
	.word	-28
	.word	4
	.word	_Label_1616
	.word	-32
	.word	4
	.word	_Label_1617
	.word	-36
	.word	4
	.word	_Label_1618
	.word	-40
	.word	4
	.word	_Label_1619
	.word	-44
	.word	4
	.word	_Label_1620
	.word	-48
	.word	4
	.word	_Label_1621
	.word	-52
	.word	4
	.word	_Label_1622
	.word	-56
	.word	4
	.word	_Label_1623
	.word	-60
	.word	4
	.word	_Label_1624
	.word	-64
	.word	4
	.word	_Label_1625
	.word	-68
	.word	4
	.word	_Label_1626
	.word	-72
	.word	4
	.word	_Label_1627
	.word	-240
	.word	168
	.word	_Label_1628
	.word	-244
	.word	4
	.word	_Label_1629
	.word	-248
	.word	4
	.word	_Label_1630
	.word	-1932
	.word	1684
	.word	_Label_1631
	.word	-1936
	.word	4
	.word	_Label_1632
	.word	-1940
	.word	4
	.word	_Label_1633
	.word	-1944
	.word	4
	.word	0
_Label_1609:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1610:
	.ascii	"Pself\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1633:
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
_Label_3423:
	push	r0
	sub	r1,1,r1
	bne	_Label_3423
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
!   _temp_1634 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1634  sizeInBytes=4
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
!   _temp_1639 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1640 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1639  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1635:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1640 then goto _Label_1638		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1638
_Label_1636:
	mov	924,r13		! source line 924
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1641 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1641  sizeInBytes=4
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
!   _temp_1642 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1642  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	927,r13		! source line 927
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1643 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1643 [i ] into _temp_1644
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
_Label_1637:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1635
! END FOR
_Label_1638:
! CALL STATEMENT...
!   _temp_1645 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1645  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	930,r13		! source line 930
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	931,r13		! source line 931
	mov	"\0\0SE",r10
!   _temp_1646 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1647 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1646  sizeInBytes=4
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
	.word	_Label_1648
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1649
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1657
	.word	-40
	.word	4
	.word	_Label_1658
	.word	-44
	.word	4
	.word	_Label_1659
	.word	-48
	.word	4
	.word	_Label_1660
	.word	-52
	.word	4
	.word	_Label_1661
	.word	-56
	.word	4
	.word	0
_Label_1648:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1649:
	.ascii	"Pself\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1641\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1640\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1659:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1660:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1661:
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
_Label_3424:
	push	r0
	sub	r1,1,r1
	bne	_Label_3424
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
!   _temp_1662 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1662  sizeInBytes=4
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
!   _temp_1667 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1668 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1667  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1663:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1668 then goto _Label_1666		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1666
_Label_1664:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1669 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1669  sizeInBytes=4
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
!   _temp_1670 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1670 [i ] into _temp_1671
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
_Label_1665:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1663
! END FOR
_Label_1666:
! CALL STATEMENT...
!   _temp_1672 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1673 = _function_202_PrintObjectAddr
	set	_function_202_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1674 = &freeList
	load	[r14+8],r1
	add	r1,1724,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1673  sizeInBytes=4
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
	.word	_Label_1675
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1676
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1677
	.word	-12
	.word	4
	.word	_Label_1678
	.word	-16
	.word	4
	.word	_Label_1679
	.word	-20
	.word	4
	.word	_Label_1680
	.word	-24
	.word	4
	.word	_Label_1681
	.word	-28
	.word	4
	.word	_Label_1682
	.word	-32
	.word	4
	.word	_Label_1683
	.word	-36
	.word	4
	.word	_Label_1684
	.word	-40
	.word	4
	.word	_Label_1685
	.word	-44
	.word	4
	.word	_Label_1686
	.word	-48
	.word	4
	.word	_Label_1687
	.word	-52
	.word	4
	.word	0
_Label_1675:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1676:
	.ascii	"Pself\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1686:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1687:
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
_Label_3425:
	push	r0
	sub	r1,1,r1
	bne	_Label_3425
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1688 = &processManagerLock
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
_Label_1689:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1692 = &freeList
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
!   if result==true then goto _Label_1690 else goto _Label_1691
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1691
	jmp	_Label_1690
_Label_1690:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1693 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-32]
!   _temp_1694 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1693  sizeInBytes=4
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
	jmp	_Label_1689
_Label_1691:
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
!   _temp_1695 = &freeList
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
!   _temp_1696 = processToReturn + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1696 = 1  (sizeInBytes=4)
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
!   _temp_1697 = processToReturn + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1697 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1752],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	983,r13		! source line 983
	mov	"\0\0SE",r10
!   _temp_1698 = &processManagerLock
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
	.word	_Label_1699
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1700
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1701
	.word	-12
	.word	4
	.word	_Label_1702
	.word	-16
	.word	4
	.word	_Label_1703
	.word	-20
	.word	4
	.word	_Label_1704
	.word	-24
	.word	4
	.word	_Label_1705
	.word	-28
	.word	4
	.word	_Label_1706
	.word	-32
	.word	4
	.word	_Label_1707
	.word	-36
	.word	4
	.word	_Label_1708
	.word	-40
	.word	4
	.word	_Label_1709
	.word	-44
	.word	4
	.word	0
_Label_1699:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1700:
	.ascii	"Pself\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1709:
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
_Label_3426:
	push	r0
	sub	r1,1,r1
	bne	_Label_3426
	mov	991,r13		! source line 991
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1710 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1710  sizeInBytes=4
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
!   _temp_1711 = &processManagerLock
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
!   _temp_1712 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1712 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1002,r13		! source line 1002
	mov	"\0\0SE",r10
!   _temp_1713 = &freeList
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
!   _temp_1714 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1715 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1714  sizeInBytes=4
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
!   _temp_1716 = &processManagerLock
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
	.word	_Label_1717
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1718
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1719
	.word	12
	.word	4
	.word	_Label_1720
	.word	-12
	.word	4
	.word	_Label_1721
	.word	-16
	.word	4
	.word	_Label_1722
	.word	-20
	.word	4
	.word	_Label_1723
	.word	-24
	.word	4
	.word	_Label_1724
	.word	-28
	.word	4
	.word	_Label_1725
	.word	-32
	.word	4
	.word	_Label_1726
	.word	-36
	.word	4
	.word	0
_Label_1717:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1718:
	.ascii	"Pself\0"
	.align
_Label_1719:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1710\0"
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
_Label_3427:
	push	r0
	sub	r1,1,r1
	bne	_Label_3427
	mov	1010,r13		! source line 1010
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_1727 = &processManagerLock
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
!   _temp_1732 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-144]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1733 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-140]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1732  (sizeInBytes=4)
	load	[r14+-144],r1
	store	r1,[r14+-152]
_Label_1728:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1733 then goto _Label_1731		
	load	[r14+-152],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1731
_Label_1729:
	mov	1035,r13		! source line 1035
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1036,r13		! source line 1036
	mov	"\0\0AS",r10
!   _temp_1734 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-136]
!   Move address of _temp_1734 [i ] into _temp_1735
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
!   child = _temp_1735		(4 bytes)
	load	[r14+-132],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	1037,r13		! source line 1037
	mov	"\0\0IF",r10
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1740 = child + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-124]
!   Data Move: _temp_1739 = *_temp_1740  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1742 = p + 12
	load	[r14+12],r1
	add	r1,12,r1
	store	r1,[r14+-116]
!   Data Move: _temp_1741 = *_temp_1742  (sizeInBytes=4)
	load	[r14+-116],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if _temp_1739 != _temp_1741 then goto _Label_1737		(int)
	load	[r14+-128],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_1737
!	jmp	_Label_1738
_Label_1738:
!   if intIsZero (child) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1744 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_1743 = *_temp_1744  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_1743 != 2 then goto _Label_1737		(int)
	load	[r14+-112],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1737
!	jmp	_Label_1736
_Label_1736:
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
!   _temp_1745 = child + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: *_temp_1745 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1746 = &freeList
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
!   _temp_1747 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-96]
!   _temp_1748 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_1747  sizeInBytes=4
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
_Label_1737:
!   Increment the FOR-LOOP index variable and jump back
_Label_1730:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_1728
! END FOR
_Label_1731:
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
!   _temp_1753 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-88]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1754 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-84]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1753  (sizeInBytes=4)
	load	[r14+-88],r1
	store	r1,[r14+-152]
_Label_1749:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1754 then goto _Label_1752		
	load	[r14+-152],r1
	load	[r14+-84],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1752
_Label_1750:
	mov	1046,r13		! source line 1046
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0IF",r10
!   _temp_1758 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Move address of _temp_1758 [i ] into _temp_1759
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
!   _temp_1760 = _temp_1759 + 12
	load	[r14+-72],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Data Move: _temp_1757 = *_temp_1760  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1762 = p + 16
	load	[r14+12],r1
	add	r1,16,r1
	store	r1,[r14+-60]
!   Data Move: _temp_1761 = *_temp_1762  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if _temp_1757 != _temp_1761 then goto _Label_1756		(int)
	load	[r14+-80],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bne	_Label_1756
!	jmp	_Label_1755
_Label_1755:
! THEN...
	mov	1048,r13		! source line 1048
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   _temp_1763 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1763 [i ] into _temp_1764
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
!   parent = _temp_1764		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-160]
! END IF...
_Label_1756:
!   Increment the FOR-LOOP index variable and jump back
_Label_1751:
!   i = i + 1
	load	[r14+-152],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
	jmp	_Label_1749
! END FOR
_Label_1752:
! IF STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0IF",r10
!   if parent == 0 then goto _Label_1766		(int)
	load	[r14+-160],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1766
!	jmp	_Label_1767
_Label_1767:
!   if intIsZero (parent) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1769 = parent + 20
	load	[r14+-160],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1768 = *_temp_1769  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1768 != 1 then goto _Label_1766		(int)
	load	[r14+-48],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1766
!	jmp	_Label_1765
_Label_1765:
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
!   _temp_1770 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_1770 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0SE",r10
!   _temp_1771 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-36]
!   _temp_1772 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1771  sizeInBytes=4
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
	jmp	_Label_1773
_Label_1766:
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
!   _temp_1774 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1774 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0SE",r10
!   _temp_1775 = &freeList
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
!   _temp_1776 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1777 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1776  sizeInBytes=4
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
_Label_1773:
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1778 = &processManagerLock
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
	.word	_Label_1779
	.word	8		! total size of parameters
	.word	160		! frame size = 160
	.word	_Label_1780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1781
	.word	12
	.word	4
	.word	_Label_1782
	.word	-12
	.word	4
	.word	_Label_1783
	.word	-16
	.word	4
	.word	_Label_1784
	.word	-20
	.word	4
	.word	_Label_1785
	.word	-24
	.word	4
	.word	_Label_1786
	.word	-28
	.word	4
	.word	_Label_1787
	.word	-32
	.word	4
	.word	_Label_1788
	.word	-36
	.word	4
	.word	_Label_1789
	.word	-40
	.word	4
	.word	_Label_1790
	.word	-44
	.word	4
	.word	_Label_1791
	.word	-48
	.word	4
	.word	_Label_1792
	.word	-52
	.word	4
	.word	_Label_1793
	.word	-56
	.word	4
	.word	_Label_1794
	.word	-60
	.word	4
	.word	_Label_1795
	.word	-64
	.word	4
	.word	_Label_1796
	.word	-68
	.word	4
	.word	_Label_1797
	.word	-72
	.word	4
	.word	_Label_1798
	.word	-76
	.word	4
	.word	_Label_1799
	.word	-80
	.word	4
	.word	_Label_1800
	.word	-84
	.word	4
	.word	_Label_1801
	.word	-88
	.word	4
	.word	_Label_1802
	.word	-92
	.word	4
	.word	_Label_1803
	.word	-96
	.word	4
	.word	_Label_1804
	.word	-100
	.word	4
	.word	_Label_1805
	.word	-104
	.word	4
	.word	_Label_1806
	.word	-108
	.word	4
	.word	_Label_1807
	.word	-112
	.word	4
	.word	_Label_1808
	.word	-116
	.word	4
	.word	_Label_1809
	.word	-120
	.word	4
	.word	_Label_1810
	.word	-124
	.word	4
	.word	_Label_1811
	.word	-128
	.word	4
	.word	_Label_1812
	.word	-132
	.word	4
	.word	_Label_1813
	.word	-136
	.word	4
	.word	_Label_1814
	.word	-140
	.word	4
	.word	_Label_1815
	.word	-144
	.word	4
	.word	_Label_1816
	.word	-148
	.word	4
	.word	_Label_1817
	.word	-152
	.word	4
	.word	_Label_1818
	.word	-156
	.word	4
	.word	_Label_1819
	.word	-160
	.word	4
	.word	0
_Label_1779:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"TurnIntoZombie\0"
	.align
_Label_1780:
	.ascii	"Pself\0"
	.align
_Label_1781:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1774\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1759\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1817:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1818:
	.byte	'P'
	.ascii	"child\0"
	.align
_Label_1819:
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
_Label_3428:
	push	r0
	sub	r1,1,r1
	bne	_Label_3428
	mov	1068,r13		! source line 1068
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1075,r13		! source line 1075
	mov	"\0\0SE",r10
!   _temp_1820 = &processManagerLock
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
_Label_1821:
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1825 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Data Move: _temp_1824 = *_temp_1825  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if _temp_1824 == 2 then goto _Label_1823		(int)
	load	[r14+-48],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1823
!	jmp	_Label_1822
_Label_1822:
	mov	1078,r13		! source line 1078
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1079,r13		! source line 1079
	mov	"\0\0SE",r10
!   _temp_1826 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-40]
!   _temp_1827 = &aProcessDied
	load	[r14+8],r1
	add	r1,1736,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1826  sizeInBytes=4
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
	jmp	_Label_1821
_Label_1823:
! ASSIGNMENT STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0AS",r10
!   if intIsZero (proc) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1828 = proc + 28
	load	[r14+12],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: exitStatusToReturn = *_temp_1828  (sizeInBytes=4)
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
!   _temp_1829 = proc + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1829 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1830 = &freeList
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
!   _temp_1831 = &processManagerLock
	load	[r14+8],r1
	add	r1,1688,r1
	store	r1,[r14+-20]
!   _temp_1832 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1708,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1831  sizeInBytes=4
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
!   _temp_1833 = &processManagerLock
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
	.word	_Label_1834
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1836
	.word	12
	.word	4
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
	.word	_Label_1845
	.word	-44
	.word	4
	.word	_Label_1846
	.word	-48
	.word	4
	.word	_Label_1847
	.word	-52
	.word	4
	.word	_Label_1848
	.word	-56
	.word	4
	.word	0
_Label_1834:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"WaitForZombie\0"
	.align
_Label_1835:
	.ascii	"Pself\0"
	.align
_Label_1836:
	.byte	'P'
	.ascii	"proc\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1848:
	.byte	'I'
	.ascii	"exitStatusToReturn\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1849
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1849:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1850
	.word	_sourceFileName
	.word	258		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1850:
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
_Label_3429:
	push	r0
	sub	r1,1,r1
	bne	_Label_3429
	mov	1224,r13		! source line 1224
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1851 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1851  sizeInBytes=4
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
!   _temp_1853 = &framesInUse
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
!   _temp_1855 = &frameManagerLock
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
!   _temp_1857 = &newFramesAvailable
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
!   _temp_1862 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1863 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1862  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1858:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1863 then goto _Label_1861		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1861
_Label_1859:
	mov	1243,r13		! source line 1243
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1866 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1866) then goto _Label_1865
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1865
!	jmp	_Label_1864
_Label_1864:
! THEN...
	mov	1247,r13		! source line 1247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1867 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1867  sizeInBytes=4
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
_Label_1865:
!   Increment the FOR-LOOP index variable and jump back
_Label_1860:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1858
! END FOR
_Label_1861:
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
	.word	_Label_1868
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1870
	.word	-12
	.word	4
	.word	_Label_1871
	.word	-16
	.word	4
	.word	_Label_1872
	.word	-20
	.word	4
	.word	_Label_1873
	.word	-24
	.word	4
	.word	_Label_1874
	.word	-28
	.word	4
	.word	_Label_1875
	.word	-32
	.word	4
	.word	_Label_1876
	.word	-36
	.word	4
	.word	_Label_1877
	.word	-40
	.word	4
	.word	_Label_1878
	.word	-44
	.word	4
	.word	_Label_1879
	.word	-48
	.word	4
	.word	_Label_1880
	.word	-52
	.word	4
	.word	_Label_1881
	.word	-56
	.word	4
	.word	0
_Label_1868:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1869:
	.ascii	"Pself\0"
	.align
_Label_1870:
	.byte	'?'
	.ascii	"_temp_1867\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1866\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1862\0"
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
	.ascii	"_temp_1854\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1881:
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
_Label_3430:
	push	r0
	sub	r1,1,r1
	bne	_Label_3430
	mov	1254,r13		! source line 1254
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_1882 = &frameManagerLock
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
!   _temp_1883 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1883  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1884 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1884  sizeInBytes=4
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
!   _temp_1885 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1885  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
!   _temp_1886 = &framesInUse
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
!   _temp_1887 = &frameManagerLock
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
	.word	_Label_1888
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1889
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1890
	.word	-12
	.word	4
	.word	_Label_1891
	.word	-16
	.word	4
	.word	_Label_1892
	.word	-20
	.word	4
	.word	_Label_1893
	.word	-24
	.word	4
	.word	_Label_1894
	.word	-28
	.word	4
	.word	_Label_1895
	.word	-32
	.word	4
	.word	0
_Label_1888:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1889:
	.ascii	"Pself\0"
	.align
_Label_1890:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1891:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1882\0"
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
_Label_3431:
	push	r0
	sub	r1,1,r1
	bne	_Label_3431
	mov	1268,r13		! source line 1268
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
!   _temp_1896 = &frameManagerLock
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
_Label_1897:
!   if numberFreeFrames >= 1 then goto _Label_1899		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1899
!	jmp	_Label_1898
_Label_1898:
	mov	1279,r13		! source line 1279
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
!   _temp_1900 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1901 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1900  sizeInBytes=4
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
	jmp	_Label_1897
_Label_1899:
! ASSIGNMENT STATEMENT...
	mov	1284,r13		! source line 1284
	mov	"\0\0AS",r10
	mov	1284,r13		! source line 1284
	mov	"\0\0SE",r10
!   _temp_1902 = &framesInUse
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
!   _temp_1903 = &frameManagerLock
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
!   _temp_1904 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1904		(int)
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
	.word	_Label_1905
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1906
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1907
	.word	-12
	.word	4
	.word	_Label_1908
	.word	-16
	.word	4
	.word	_Label_1909
	.word	-20
	.word	4
	.word	_Label_1910
	.word	-24
	.word	4
	.word	_Label_1911
	.word	-28
	.word	4
	.word	_Label_1912
	.word	-32
	.word	4
	.word	_Label_1913
	.word	-36
	.word	4
	.word	_Label_1914
	.word	-40
	.word	4
	.word	0
_Label_1905:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1906:
	.ascii	"Pself\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1896\0"
	.align
_Label_1913:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1914:
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
_Label_3432:
	push	r0
	sub	r1,1,r1
	bne	_Label_3432
	mov	1298,r13		! source line 1298
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1307,r13		! source line 1307
	mov	"\0\0SE",r10
!   _temp_1915 = &frameManagerLock
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
_Label_1916:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1918		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1918
!	jmp	_Label_1917
_Label_1917:
	mov	1310,r13		! source line 1310
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1311,r13		! source line 1311
	mov	"\0\0SE",r10
!   _temp_1919 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1920 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1919  sizeInBytes=4
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
	jmp	_Label_1916
_Label_1918:
! FOR STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1925 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1926 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1925  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1921:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1926 then goto _Label_1924		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1924
_Label_1922:
	mov	1317,r13		! source line 1317
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
	mov	1318,r13		! source line 1318
	mov	"\0\0SE",r10
!   _temp_1927 = &framesInUse
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
!   _temp_1928 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_1928		(int)
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
_Label_1923:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1921
! END FOR
_Label_1924:
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
!   _temp_1929 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1932 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1931 = *_temp_1932  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1930 = _temp_1931 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1929 = _temp_1930  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_1933 = &frameManagerLock
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
	.word	_Label_1934
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1936
	.word	12
	.word	4
	.word	_Label_1937
	.word	16
	.word	4
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
	.word	_Label_1946
	.word	-44
	.word	4
	.word	_Label_1947
	.word	-48
	.word	4
	.word	_Label_1948
	.word	-52
	.word	4
	.word	_Label_1949
	.word	-56
	.word	4
	.word	_Label_1950
	.word	-60
	.word	4
	.word	_Label_1951
	.word	-64
	.word	4
	.word	_Label_1952
	.word	-68
	.word	4
	.word	0
_Label_1934:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1935:
	.ascii	"Pself\0"
	.align
_Label_1936:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1937:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1926\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1925\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1950:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1951:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1952:
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
_Label_3433:
	push	r0
	sub	r1,1,r1
	bne	_Label_3433
	mov	1335,r13		! source line 1335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1346,r13		! source line 1346
	mov	"\0\0SE",r10
!   _temp_1953 = &frameManagerLock
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
!   _temp_1954 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_1954  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1959 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1960 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1959  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1955:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1960 then goto _Label_1958		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1958
_Label_1956:
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
!   _temp_1961 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_1961 div 8192		(int)
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
!   _temp_1962 = &framesInUse
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
_Label_1957:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1955
! END FOR
_Label_1958:
! SEND STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_1963 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1964 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1963  sizeInBytes=4
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
!   _temp_1965 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1968 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1967 = *_temp_1968  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1966 = _temp_1967 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1965 = _temp_1966  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
!   _temp_1969 = &frameManagerLock
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
	.word	_Label_1970
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1971
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1972
	.word	12
	.word	4
	.word	_Label_1973
	.word	-12
	.word	4
	.word	_Label_1974
	.word	-16
	.word	4
	.word	_Label_1975
	.word	-20
	.word	4
	.word	_Label_1976
	.word	-24
	.word	4
	.word	_Label_1977
	.word	-28
	.word	4
	.word	_Label_1978
	.word	-32
	.word	4
	.word	_Label_1979
	.word	-36
	.word	4
	.word	_Label_1980
	.word	-40
	.word	4
	.word	_Label_1981
	.word	-44
	.word	4
	.word	_Label_1982
	.word	-48
	.word	4
	.word	_Label_1983
	.word	-52
	.word	4
	.word	_Label_1984
	.word	-56
	.word	4
	.word	_Label_1985
	.word	-60
	.word	4
	.word	_Label_1986
	.word	-64
	.word	4
	.word	_Label_1987
	.word	-68
	.word	4
	.word	_Label_1988
	.word	-72
	.word	4
	.word	_Label_1989
	.word	-76
	.word	4
	.word	0
_Label_1970:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1971:
	.ascii	"Pself\0"
	.align
_Label_1972:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1966\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1986:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1987:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_1988:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1989:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1990
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
_Label_1990:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1991
	.word	_sourceFileName
	.word	277		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1991:
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
_Label_3434:
	push	r0
	sub	r1,1,r1
	bne	_Label_3434
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
!   _temp_1992 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1994 = &_temp_1993
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1994 = _temp_1994 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1996:
!   Data Move: *_temp_1994 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1994 = _temp_1994 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1995 = _temp_1995 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1995) then goto _Label_1996
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1996
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1997 = &_temp_1993
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3435
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3435:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1992 = *_temp_1997  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3436:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3436
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
	.word	_Label_1998
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2000
	.word	-12
	.word	4
	.word	_Label_2001
	.word	-16
	.word	4
	.word	_Label_2002
	.word	-20
	.word	4
	.word	_Label_2003
	.word	-104
	.word	84
	.word	_Label_2004
	.word	-108
	.word	4
	.word	0
_Label_1998:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1999:
	.ascii	"Pself\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2003:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_2004:
	.byte	'?'
	.ascii	"_temp_1992\0"
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
_Label_3437:
	push	r0
	sub	r1,1,r1
	bne	_Label_3437
	mov	1388,r13		! source line 1388
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2005 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2005  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1393,r13		! source line 1393
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2006 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_2006  sizeInBytes=4
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
!   _temp_2011 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2012 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2011  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_2007:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2012 then goto _Label_2010		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2010
_Label_2008:
	mov	1395,r13		! source line 1395
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2013 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2013  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2015 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_2015 [i ] into _temp_2016
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
!   _temp_2014 = _temp_2016		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_2014  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1397,r13		! source line 1397
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2017 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1398,r13		! source line 1398
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2019 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_2019 [i ] into _temp_2020
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
!   Data Move: _temp_2018 = *_temp_2020  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2018  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1399,r13		! source line 1399
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2021 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2021  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1400,r13		! source line 1400
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2022 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2022  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1401,r13		! source line 1401
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2023 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2023  sizeInBytes=4
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
!   if intIsZero (_temp_2025) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2024  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_2024  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1403,r13		! source line 1403
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2026 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
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
!   if intIsZero (_temp_2030) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2029  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2029) then goto _Label_2028
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_2028
!	jmp	_Label_2027
_Label_2027:
! THEN...
	mov	1406,r13		! source line 1406
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_2032) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2031  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_2031  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1406,r13		! source line 1406
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_2033
_Label_2028:
! ELSE...
	mov	1408,r13		! source line 1408
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2034 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_2034  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1408,r13		! source line 1408
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2033:
! CALL STATEMENT...
!   _temp_2035 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2035  sizeInBytes=4
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
!   if intIsZero (_temp_2038) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2036 else goto _Label_2037
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2037
	jmp	_Label_2036
_Label_2036:
! THEN...
	mov	1412,r13		! source line 1412
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2039 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_2039  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1412,r13		! source line 1412
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2040
_Label_2037:
! ELSE...
	mov	1414,r13		! source line 1414
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2041 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_2041  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1414,r13		! source line 1414
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2040:
! CALL STATEMENT...
!   _temp_2042 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
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
!   if intIsZero (_temp_2045) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2043 else goto _Label_2044
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2044
	jmp	_Label_2043
_Label_2043:
! THEN...
	mov	1418,r13		! source line 1418
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2046 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2046  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2047
_Label_2044:
! ELSE...
	mov	1420,r13		! source line 1420
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2048 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_2048  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2047:
! CALL STATEMENT...
!   _temp_2049 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_2049  sizeInBytes=4
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
!   if intIsZero (_temp_2052) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2050 else goto _Label_2051
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2051
	jmp	_Label_2050
_Label_2050:
! THEN...
	mov	1424,r13		! source line 1424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2053 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2053  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2054
_Label_2051:
! ELSE...
	mov	1426,r13		! source line 1426
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2055 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2055  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2054:
! CALL STATEMENT...
!   _temp_2056 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2056  sizeInBytes=4
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
!   if intIsZero (_temp_2059) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_2057 else goto _Label_2058
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2058
	jmp	_Label_2057
_Label_2057:
! THEN...
	mov	1430,r13		! source line 1430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2060 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2060  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_2061
_Label_2058:
! ELSE...
	mov	1432,r13		! source line 1432
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2062 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2062  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1432,r13		! source line 1432
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2061:
! CALL STATEMENT...
!   Call the function
	mov	1434,r13		! source line 1434
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_2009:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_2007
! END FOR
_Label_2010:
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
	.word	_Label_2063
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_2064
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2065
	.word	-12
	.word	4
	.word	_Label_2066
	.word	-16
	.word	4
	.word	_Label_2067
	.word	-20
	.word	4
	.word	_Label_2068
	.word	-24
	.word	4
	.word	_Label_2069
	.word	-28
	.word	4
	.word	_Label_2070
	.word	-32
	.word	4
	.word	_Label_2071
	.word	-36
	.word	4
	.word	_Label_2072
	.word	-40
	.word	4
	.word	_Label_2073
	.word	-44
	.word	4
	.word	_Label_2074
	.word	-48
	.word	4
	.word	_Label_2075
	.word	-52
	.word	4
	.word	_Label_2076
	.word	-56
	.word	4
	.word	_Label_2077
	.word	-60
	.word	4
	.word	_Label_2078
	.word	-64
	.word	4
	.word	_Label_2079
	.word	-68
	.word	4
	.word	_Label_2080
	.word	-72
	.word	4
	.word	_Label_2081
	.word	-76
	.word	4
	.word	_Label_2082
	.word	-80
	.word	4
	.word	_Label_2083
	.word	-84
	.word	4
	.word	_Label_2084
	.word	-88
	.word	4
	.word	_Label_2085
	.word	-92
	.word	4
	.word	_Label_2086
	.word	-96
	.word	4
	.word	_Label_2087
	.word	-100
	.word	4
	.word	_Label_2088
	.word	-104
	.word	4
	.word	_Label_2089
	.word	-108
	.word	4
	.word	_Label_2090
	.word	-112
	.word	4
	.word	_Label_2091
	.word	-116
	.word	4
	.word	_Label_2092
	.word	-120
	.word	4
	.word	_Label_2093
	.word	-124
	.word	4
	.word	_Label_2094
	.word	-128
	.word	4
	.word	_Label_2095
	.word	-132
	.word	4
	.word	_Label_2096
	.word	-136
	.word	4
	.word	_Label_2097
	.word	-140
	.word	4
	.word	_Label_2098
	.word	-144
	.word	4
	.word	_Label_2099
	.word	-148
	.word	4
	.word	_Label_2100
	.word	-152
	.word	4
	.word	_Label_2101
	.word	-156
	.word	4
	.word	_Label_2102
	.word	-160
	.word	4
	.word	_Label_2103
	.word	-164
	.word	4
	.word	_Label_2104
	.word	-168
	.word	4
	.word	0
_Label_2063:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2064:
	.ascii	"Pself\0"
	.align
_Label_2065:
	.byte	'?'
	.ascii	"_temp_2062\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2060\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2073:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2075:
	.byte	'?'
	.ascii	"_temp_2045\0"
	.align
_Label_2076:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2077:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2078:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2079:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2080:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2032\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2031\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2025\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2024\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2011\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2104:
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
_Label_3438:
	push	r0
	sub	r1,1,r1
	bne	_Label_3438
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1445,r13		! source line 1445
	mov	"\0\0RE",r10
!   _temp_2107 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2107 [entry ] into _temp_2108
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
!   Data Move: _temp_2106 = *_temp_2108  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2105 = _temp_2106 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2105  (sizeInBytes=4)
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
	.word	_Label_2109
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2110
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2111
	.word	12
	.word	4
	.word	_Label_2112
	.word	-12
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
	.word	0
_Label_2109:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_2110:
	.ascii	"Pself\0"
	.align
_Label_2111:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2112:
	.byte	'?'
	.ascii	"_temp_2108\0"
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
_Label_3439:
	push	r0
	sub	r1,1,r1
	bne	_Label_3439
	mov	1450,r13		! source line 1450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0RE",r10
!   _temp_2118 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2118 [entry ] into _temp_2119
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
!   Data Move: _temp_2117 = *_temp_2119  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2116 = _temp_2117 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_2116  (sizeInBytes=4)
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
	.word	_Label_2120
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2122
	.word	12
	.word	4
	.word	_Label_2123
	.word	-12
	.word	4
	.word	_Label_2124
	.word	-16
	.word	4
	.word	_Label_2125
	.word	-20
	.word	4
	.word	_Label_2126
	.word	-24
	.word	4
	.word	0
_Label_2120:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_2121:
	.ascii	"Pself\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2123:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2116\0"
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
_Label_3440:
	push	r0
	sub	r1,1,r1
	bne	_Label_3440
	mov	1459,r13		! source line 1459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   _temp_2127 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_2127 [entry ] into _temp_2128
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
!   _temp_2132 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2132 [entry ] into _temp_2133
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
!   Data Move: _temp_2131 = *_temp_2133  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2130 = _temp_2131 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_2129 = _temp_2130 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2128 = _temp_2129  (sizeInBytes=4)
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
	.word	_Label_2134
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2135
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2136
	.word	12
	.word	4
	.word	_Label_2137
	.word	16
	.word	4
	.word	_Label_2138
	.word	-12
	.word	4
	.word	_Label_2139
	.word	-16
	.word	4
	.word	_Label_2140
	.word	-20
	.word	4
	.word	_Label_2141
	.word	-24
	.word	4
	.word	_Label_2142
	.word	-28
	.word	4
	.word	_Label_2143
	.word	-32
	.word	4
	.word	_Label_2144
	.word	-36
	.word	4
	.word	0
_Label_2134:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_2135:
	.ascii	"Pself\0"
	.align
_Label_2136:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2137:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2133\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2132\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2131\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2130\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2129\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2128\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2127\0"
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
_Label_3441:
	push	r0
	sub	r1,1,r1
	bne	_Label_3441
	mov	1469,r13		! source line 1469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   _temp_2148 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2148 [entry ] into _temp_2149
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
!   Data Move: _temp_2147 = *_temp_2149  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2146 = _temp_2147 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2146) then goto _Label_2150
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2150
!   _temp_2145 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2151
_Label_2150:
!   _temp_2145 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2151:
!   ReturnResult: _temp_2145  (sizeInBytes=1)
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
	.word	_Label_2152
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2153
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2154
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2152:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_2153:
	.ascii	"Pself\0"
	.align
_Label_2154:
	.byte	'I'
	.ascii	"entry\0"
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
	.byte	'C'
	.ascii	"_temp_2145\0"
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
_Label_3442:
	push	r0
	sub	r1,1,r1
	bne	_Label_3442
	mov	1478,r13		! source line 1478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   _temp_2163 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2163 [entry ] into _temp_2164
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
!   Data Move: _temp_2162 = *_temp_2164  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2161 = _temp_2162 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2161) then goto _Label_2165
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2165
!   _temp_2160 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2166
_Label_2165:
!   _temp_2160 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2166:
!   ReturnResult: _temp_2160  (sizeInBytes=1)
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
	.word	_Label_2167
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2169
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_2167:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_2168:
	.ascii	"Pself\0"
	.align
_Label_2169:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2170:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2171:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2172:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2174:
	.byte	'C'
	.ascii	"_temp_2160\0"
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
_Label_3443:
	push	r0
	sub	r1,1,r1
	bne	_Label_3443
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
!   _temp_2178 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2178 [entry ] into _temp_2179
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
!   Data Move: _temp_2177 = *_temp_2179  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2176 = _temp_2177 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2176) then goto _Label_2180
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2180
!   _temp_2175 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2181
_Label_2180:
!   _temp_2175 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2181:
!   ReturnResult: _temp_2175  (sizeInBytes=1)
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
	.word	_Label_2182
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2184
	.word	12
	.word	4
	.word	_Label_2185
	.word	-16
	.word	4
	.word	_Label_2186
	.word	-20
	.word	4
	.word	_Label_2187
	.word	-24
	.word	4
	.word	_Label_2188
	.word	-28
	.word	4
	.word	_Label_2189
	.word	-9
	.word	1
	.word	0
_Label_2182:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_2183:
	.ascii	"Pself\0"
	.align
_Label_2184:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2189:
	.byte	'C'
	.ascii	"_temp_2175\0"
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
_Label_3444:
	push	r0
	sub	r1,1,r1
	bne	_Label_3444
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   _temp_2193 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2193 [entry ] into _temp_2194
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
!   Data Move: _temp_2192 = *_temp_2194  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_2191 = _temp_2192 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2191) then goto _Label_2195
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_2195
!   _temp_2190 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2196
_Label_2195:
!   _temp_2190 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2196:
!   ReturnResult: _temp_2190  (sizeInBytes=1)
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
	.word	_Label_2197
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_2198
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2199
	.word	12
	.word	4
	.word	_Label_2200
	.word	-16
	.word	4
	.word	_Label_2201
	.word	-20
	.word	4
	.word	_Label_2202
	.word	-24
	.word	4
	.word	_Label_2203
	.word	-28
	.word	4
	.word	_Label_2204
	.word	-9
	.word	1
	.word	0
_Label_2197:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_2198:
	.ascii	"Pself\0"
	.align
_Label_2199:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2202:
	.byte	'?'
	.ascii	"_temp_2192\0"
	.align
_Label_2203:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
_Label_2204:
	.byte	'C'
	.ascii	"_temp_2190\0"
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
_Label_3445:
	push	r0
	sub	r1,1,r1
	bne	_Label_3445
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   _temp_2205 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2205 [entry ] into _temp_2206
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
!   _temp_2209 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2209 [entry ] into _temp_2210
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
!   Data Move: _temp_2208 = *_temp_2210  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2207 = _temp_2208 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2206 = _temp_2207  (sizeInBytes=4)
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
	.word	_Label_2211
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2212
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2213
	.word	12
	.word	4
	.word	_Label_2214
	.word	-12
	.word	4
	.word	_Label_2215
	.word	-16
	.word	4
	.word	_Label_2216
	.word	-20
	.word	4
	.word	_Label_2217
	.word	-24
	.word	4
	.word	_Label_2218
	.word	-28
	.word	4
	.word	_Label_2219
	.word	-32
	.word	4
	.word	0
_Label_2211:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_2212:
	.ascii	"Pself\0"
	.align
_Label_2213:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2205\0"
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
_Label_3446:
	push	r0
	sub	r1,1,r1
	bne	_Label_3446
	mov	1514,r13		! source line 1514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   _temp_2220 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2220 [entry ] into _temp_2221
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
!   _temp_2224 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2224 [entry ] into _temp_2225
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
!   Data Move: _temp_2223 = *_temp_2225  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2222 = _temp_2223 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2221 = _temp_2222  (sizeInBytes=4)
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
	.word	_Label_2226
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2227
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2228
	.word	12
	.word	4
	.word	_Label_2229
	.word	-12
	.word	4
	.word	_Label_2230
	.word	-16
	.word	4
	.word	_Label_2231
	.word	-20
	.word	4
	.word	_Label_2232
	.word	-24
	.word	4
	.word	_Label_2233
	.word	-28
	.word	4
	.word	_Label_2234
	.word	-32
	.word	4
	.word	0
_Label_2226:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_2227:
	.ascii	"Pself\0"
	.align
_Label_2228:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2220\0"
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
_Label_3447:
	push	r0
	sub	r1,1,r1
	bne	_Label_3447
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   _temp_2235 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2235 [entry ] into _temp_2236
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
!   _temp_2239 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2239 [entry ] into _temp_2240
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
!   Data Move: _temp_2238 = *_temp_2240  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2237 = _temp_2238 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2236 = _temp_2237  (sizeInBytes=4)
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
	.word	_Label_2241
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2242
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2243
	.word	12
	.word	4
	.word	_Label_2244
	.word	-12
	.word	4
	.word	_Label_2245
	.word	-16
	.word	4
	.word	_Label_2246
	.word	-20
	.word	4
	.word	_Label_2247
	.word	-24
	.word	4
	.word	_Label_2248
	.word	-28
	.word	4
	.word	_Label_2249
	.word	-32
	.word	4
	.word	0
_Label_2241:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_2242:
	.ascii	"Pself\0"
	.align
_Label_2243:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2235\0"
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
_Label_3448:
	push	r0
	sub	r1,1,r1
	bne	_Label_3448
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _temp_2250 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2250 [entry ] into _temp_2251
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
!   _temp_2254 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2254 [entry ] into _temp_2255
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
!   Data Move: _temp_2253 = *_temp_2255  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2252 = _temp_2253 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2251 = _temp_2252  (sizeInBytes=4)
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
	.word	_Label_2256
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2257
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2258
	.word	12
	.word	4
	.word	_Label_2259
	.word	-12
	.word	4
	.word	_Label_2260
	.word	-16
	.word	4
	.word	_Label_2261
	.word	-20
	.word	4
	.word	_Label_2262
	.word	-24
	.word	4
	.word	_Label_2263
	.word	-28
	.word	4
	.word	_Label_2264
	.word	-32
	.word	4
	.word	0
_Label_2256:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_2257:
	.ascii	"Pself\0"
	.align
_Label_2258:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2250\0"
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
_Label_3449:
	push	r0
	sub	r1,1,r1
	bne	_Label_3449
	mov	1541,r13		! source line 1541
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   _temp_2265 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2265 [entry ] into _temp_2266
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
!   _temp_2269 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2269 [entry ] into _temp_2270
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
!   Data Move: _temp_2268 = *_temp_2270  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2267 = _temp_2268 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2266 = _temp_2267  (sizeInBytes=4)
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
	.word	_Label_2271
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2272
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2273
	.word	12
	.word	4
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
	.word	_Label_2278
	.word	-28
	.word	4
	.word	_Label_2279
	.word	-32
	.word	4
	.word	0
_Label_2271:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_2272:
	.ascii	"Pself\0"
	.align
_Label_2273:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2265\0"
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
_Label_3450:
	push	r0
	sub	r1,1,r1
	bne	_Label_3450
	mov	1550,r13		! source line 1550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   _temp_2280 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2280 [entry ] into _temp_2281
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
!   _temp_2284 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2284 [entry ] into _temp_2285
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
!   Data Move: _temp_2283 = *_temp_2285  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2282 = _temp_2283 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2281 = _temp_2282  (sizeInBytes=4)
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
	.word	_Label_2286
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2287
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2288
	.word	12
	.word	4
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
	.word	-24
	.word	4
	.word	_Label_2293
	.word	-28
	.word	4
	.word	_Label_2294
	.word	-32
	.word	4
	.word	0
_Label_2286:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2287:
	.ascii	"Pself\0"
	.align
_Label_2288:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2285\0"
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
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2280\0"
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
_Label_3451:
	push	r0
	sub	r1,1,r1
	bne	_Label_3451
	mov	1559,r13		! source line 1559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   _temp_2295 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2295 [entry ] into _temp_2296
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
!   _temp_2299 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2299 [entry ] into _temp_2300
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
!   Data Move: _temp_2298 = *_temp_2300  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2297 = _temp_2298 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2296 = _temp_2297  (sizeInBytes=4)
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
	.word	_Label_2301
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2303
	.word	12
	.word	4
	.word	_Label_2304
	.word	-12
	.word	4
	.word	_Label_2305
	.word	-16
	.word	4
	.word	_Label_2306
	.word	-20
	.word	4
	.word	_Label_2307
	.word	-24
	.word	4
	.word	_Label_2308
	.word	-28
	.word	4
	.word	_Label_2309
	.word	-32
	.word	4
	.word	0
_Label_2301:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2302:
	.ascii	"Pself\0"
	.align
_Label_2303:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2295\0"
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
_Label_3452:
	push	r0
	sub	r1,1,r1
	bne	_Label_3452
	mov	1568,r13		! source line 1568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0AS",r10
!   _temp_2310 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2310 [entry ] into _temp_2311
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
!   _temp_2314 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2314 [entry ] into _temp_2315
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
!   Data Move: _temp_2313 = *_temp_2315  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2312 = _temp_2313 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2311 = _temp_2312  (sizeInBytes=4)
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
	.word	_Label_2316
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2317
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2318
	.word	12
	.word	4
	.word	_Label_2319
	.word	-12
	.word	4
	.word	_Label_2320
	.word	-16
	.word	4
	.word	_Label_2321
	.word	-20
	.word	4
	.word	_Label_2322
	.word	-24
	.word	4
	.word	_Label_2323
	.word	-28
	.word	4
	.word	_Label_2324
	.word	-32
	.word	4
	.word	0
_Label_2316:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2317:
	.ascii	"Pself\0"
	.align
_Label_2318:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2310\0"
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
_Label_3453:
	push	r0
	sub	r1,1,r1
	bne	_Label_3453
	mov	1577,r13		! source line 1577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2326 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2326 [0 ] into _temp_2327
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
!   _temp_2325 = _temp_2327		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2328 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2325  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2328  sizeInBytes=4
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
	.word	_Label_2329
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2330
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2331
	.word	-12
	.word	4
	.word	_Label_2332
	.word	-16
	.word	4
	.word	_Label_2333
	.word	-20
	.word	4
	.word	_Label_2334
	.word	-24
	.word	4
	.word	0
_Label_2329:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2330:
	.ascii	"Pself\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2325\0"
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
_Label_3454:
	push	r0
	sub	r1,1,r1
	bne	_Label_3454
	mov	1588,r13		! source line 1588
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1603,r13		! source line 1603
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2335
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2335
	jmp	_Label_2336
_Label_2335:
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
	jmp	_Label_2337
_Label_2336:
! ELSE...
	mov	1605,r13		! source line 1605
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2339		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2339
!	jmp	_Label_2338
_Label_2338:
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
_Label_2339:
! END IF...
_Label_2337:
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
_Label_2340:
!	jmp	_Label_2341
_Label_2341:
	mov	1612,r13		! source line 1612
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2344		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2344
!	jmp	_Label_2343
_Label_2343:
! THEN...
	mov	1614,r13		! source line 1614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2345 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2345  sizeInBytes=4
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
_Label_2344:
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
	mov	1617,r13		! source line 1617
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2349) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2348  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2348 then goto _Label_2347 else goto _Label_2346
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2346
	jmp	_Label_2347
_Label_2346:
! THEN...
	mov	1618,r13		! source line 1618
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2350 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2350  sizeInBytes=4
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
_Label_2347:
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
	mov	1621,r13		! source line 1621
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2352) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2351  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2351 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0WH",r10
_Label_2353:
!   if offset >= 8192 then goto _Label_2355		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2355
!	jmp	_Label_2354
_Label_2354:
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
!   Data Move: _temp_2356 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2356  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2358		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2358
!	jmp	_Label_2357
_Label_2357:
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
_Label_2358:
! END WHILE...
	jmp	_Label_2353
_Label_2355:
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
	jmp	_Label_2340
_Label_2342:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2359
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2360
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2361
	.word	12
	.word	4
	.word	_Label_2362
	.word	16
	.word	4
	.word	_Label_2363
	.word	20
	.word	4
	.word	_Label_2364
	.word	-9
	.word	1
	.word	_Label_2365
	.word	-16
	.word	4
	.word	_Label_2366
	.word	-20
	.word	4
	.word	_Label_2367
	.word	-24
	.word	4
	.word	_Label_2368
	.word	-28
	.word	4
	.word	_Label_2369
	.word	-10
	.word	1
	.word	_Label_2370
	.word	-32
	.word	4
	.word	_Label_2371
	.word	-36
	.word	4
	.word	_Label_2372
	.word	-40
	.word	4
	.word	_Label_2373
	.word	-44
	.word	4
	.word	_Label_2374
	.word	-48
	.word	4
	.word	0
_Label_2359:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2360:
	.ascii	"Pself\0"
	.align
_Label_2361:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2362:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2363:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2364:
	.byte	'C'
	.ascii	"_temp_2356\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2369:
	.byte	'C'
	.ascii	"_temp_2348\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2371:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2372:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2373:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2374:
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
_Label_3455:
	push	r0
	sub	r1,1,r1
	bne	_Label_3455
	mov	1642,r13		! source line 1642
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2375
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2375
	jmp	_Label_2376
_Label_2375:
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
	jmp	_Label_2377
_Label_2376:
! ELSE...
	mov	1655,r13		! source line 1655
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2379		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2379
!	jmp	_Label_2378
_Label_2378:
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
_Label_2379:
! END IF...
_Label_2377:
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
_Label_2380:
!	jmp	_Label_2381
_Label_2381:
	mov	1660,r13		! source line 1660
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2386		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2386
	jmp	_Label_2383
_Label_2386:
	mov	1662,r13		! source line 1662
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2388) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2387  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2387 then goto _Label_2385 else goto _Label_2383
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2383
	jmp	_Label_2385
_Label_2385:
	mov	1663,r13		! source line 1663
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2390) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2389  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2389 then goto _Label_2384 else goto _Label_2383
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2383
	jmp	_Label_2384
_Label_2383:
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
_Label_2384:
! ASSIGNMENT STATEMENT...
	mov	1666,r13		! source line 1666
	mov	"\0\0AS",r10
	mov	1666,r13		! source line 1666
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2392) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2391  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2391 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1667,r13		! source line 1667
	mov	"\0\0WH",r10
_Label_2393:
!   if offset >= 8192 then goto _Label_2395		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2395
!	jmp	_Label_2394
_Label_2394:
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
!   Data Move: _temp_2396 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2396  (sizeInBytes=1)
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
!   if copiedSoFar != numBytes then goto _Label_2398		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2398
!	jmp	_Label_2397
_Label_2397:
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
_Label_2398:
! END WHILE...
	jmp	_Label_2393
_Label_2395:
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
	jmp	_Label_2380
_Label_2382:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2399
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2400
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2401
	.word	12
	.word	4
	.word	_Label_2402
	.word	16
	.word	4
	.word	_Label_2403
	.word	20
	.word	4
	.word	_Label_2404
	.word	-9
	.word	1
	.word	_Label_2405
	.word	-16
	.word	4
	.word	_Label_2406
	.word	-20
	.word	4
	.word	_Label_2407
	.word	-24
	.word	4
	.word	_Label_2408
	.word	-10
	.word	1
	.word	_Label_2409
	.word	-28
	.word	4
	.word	_Label_2410
	.word	-11
	.word	1
	.word	_Label_2411
	.word	-32
	.word	4
	.word	_Label_2412
	.word	-36
	.word	4
	.word	_Label_2413
	.word	-40
	.word	4
	.word	_Label_2414
	.word	-44
	.word	4
	.word	0
_Label_2399:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2400:
	.ascii	"Pself\0"
	.align
_Label_2401:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2402:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2403:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2404:
	.byte	'C'
	.ascii	"_temp_2396\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2408:
	.byte	'C'
	.ascii	"_temp_2389\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2410:
	.byte	'C'
	.ascii	"_temp_2387\0"
	.align
_Label_2411:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2412:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2413:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2414:
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
_Label_3456:
	push	r0
	sub	r1,1,r1
	bne	_Label_3456
	mov	1684,r13		! source line 1684
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0IF",r10
	mov	1708,r13		! source line 1708
	mov	"\0\0SE",r10
!   _temp_2418 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2419) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2418  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2417  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2417 >= 4 then goto _Label_2416		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2416
!	jmp	_Label_2415
_Label_2415:
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
_Label_2416:
! IF STATEMENT...
	mov	1715,r13		! source line 1715
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2421		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2421
!	jmp	_Label_2420
_Label_2420:
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
_Label_2421:
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
!   _temp_2424 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2423 = _temp_2424 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2425 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2426) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2423  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2425  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2422  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2422  (sizeInBytes=4)
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
	.word	_Label_2427
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2428
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2429
	.word	12
	.word	4
	.word	_Label_2430
	.word	16
	.word	4
	.word	_Label_2431
	.word	20
	.word	4
	.word	_Label_2432
	.word	-12
	.word	4
	.word	_Label_2433
	.word	-16
	.word	4
	.word	_Label_2434
	.word	-20
	.word	4
	.word	_Label_2435
	.word	-24
	.word	4
	.word	_Label_2436
	.word	-28
	.word	4
	.word	_Label_2437
	.word	-32
	.word	4
	.word	_Label_2438
	.word	-36
	.word	4
	.word	_Label_2439
	.word	-40
	.word	4
	.word	_Label_2440
	.word	-44
	.word	4
	.word	0
_Label_2427:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2428:
	.ascii	"Pself\0"
	.align
_Label_2429:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2430:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2431:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2440:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2441
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2441:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2442
	.word	_sourceFileName
	.word	309		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2442:
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
_Label_3457:
	push	r0
	sub	r1,1,r1
	bne	_Label_3457
	mov	2294,r13		! source line 2294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2443 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2443  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2298,r13		! source line 2298
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2299,r13		! source line 2299
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2302,r13		! source line 2302
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
	mov	2303,r13		! source line 2303
	mov	"\0\0SE",r10
!   _temp_2445 = &semUsedInSynchMethods
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
	mov	2304,r13		! source line 2304
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
	mov	2305,r13		! source line 2305
	mov	"\0\0SE",r10
!   _temp_2447 = &diskBusy
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
	mov	2305,r13		! source line 2305
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
	.word	_Label_2448
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2449
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2450
	.word	-12
	.word	4
	.word	_Label_2451
	.word	-16
	.word	4
	.word	_Label_2452
	.word	-20
	.word	4
	.word	_Label_2453
	.word	-24
	.word	4
	.word	_Label_2454
	.word	-28
	.word	4
	.word	0
_Label_2448:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2449:
	.ascii	"Pself\0"
	.align
_Label_2450:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2451:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2443\0"
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
_Label_3458:
	push	r0
	sub	r1,1,r1
	bne	_Label_3458
	mov	2310,r13		! source line 2310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2455 = &diskBusy
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
	mov	2324,r13		! source line 2324
	mov	"\0\0WH",r10
_Label_2456:
!	jmp	_Label_2457
_Label_2457:
	mov	2324,r13		! source line 2324
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0SE",r10
!   _temp_2459 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2460) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2459  sizeInBytes=4
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
	mov	2328,r13		! source line 2328
	mov	"\0\0SE",r10
!   _temp_2461 = &semUsedInSynchMethods
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
	mov	2331,r13		! source line 2331
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2470 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2464
	cmp	r1,2
	be	_Label_2465
	cmp	r1,3
	be	_Label_2466
	cmp	r1,4
	be	_Label_2467
	cmp	r1,5
	be	_Label_2468
	cmp	r1,6
	be	_Label_2469
	jmp	_Label_2462
! CASE 1...
_Label_2464:
! SEND STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0SE",r10
!   _temp_2471 = &diskBusy
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
	mov	2334,r13		! source line 2334
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2465:
! CALL STATEMENT...
!   _temp_2472 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2472  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2336,r13		! source line 2336
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2466:
! CALL STATEMENT...
!   _temp_2473 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2473  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2338,r13		! source line 2338
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2467:
! CALL STATEMENT...
!   _temp_2474 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2474  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2340,r13		! source line 2340
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2468:
! BREAK STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0BR",r10
	jmp	_Label_2463
! CASE 6...
_Label_2469:
! CALL STATEMENT...
!   _temp_2475 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2475  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2346,r13		! source line 2346
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2462:
! CALL STATEMENT...
!   _temp_2476 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2476  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2348,r13		! source line 2348
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2463:
! END WHILE...
	jmp	_Label_2456
_Label_2458:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2477
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2478
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2479
	.word	12
	.word	4
	.word	_Label_2480
	.word	16
	.word	4
	.word	_Label_2481
	.word	20
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
	.word	0
_Label_2477:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2478:
	.ascii	"Pself\0"
	.align
_Label_2479:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2480:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2481:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2475\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2474\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2455\0"
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
	mov	2357,r13		! source line 2357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
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
	mov	2376,r13		! source line 2376
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
	mov	2377,r13		! source line 2377
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
	mov	2378,r13		! source line 2378
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
	mov	2378,r13		! source line 2378
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
	.word	_Label_2493
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2494
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2495
	.word	12
	.word	4
	.word	_Label_2496
	.word	16
	.word	4
	.word	_Label_2497
	.word	20
	.word	4
	.word	_Label_2498
	.word	24
	.word	4
	.word	0
_Label_2493:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2494:
	.ascii	"Pself\0"
	.align
_Label_2495:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2496:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2497:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2498:
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
_Label_3459:
	push	r0
	sub	r1,1,r1
	bne	_Label_3459
	mov	2383,r13		! source line 2383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0SE",r10
!   _temp_2499 = &diskBusy
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
	mov	2396,r13		! source line 2396
	mov	"\0\0WH",r10
_Label_2500:
!	jmp	_Label_2501
_Label_2501:
	mov	2396,r13		! source line 2396
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0SE",r10
!   _temp_2503 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2504) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2503  sizeInBytes=4
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
	mov	2399,r13		! source line 2399
	mov	"\0\0SE",r10
!   _temp_2505 = &semUsedInSynchMethods
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
	mov	2402,r13		! source line 2402
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2514 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2508
	cmp	r1,2
	be	_Label_2509
	cmp	r1,3
	be	_Label_2510
	cmp	r1,4
	be	_Label_2511
	cmp	r1,5
	be	_Label_2512
	cmp	r1,6
	be	_Label_2513
	jmp	_Label_2506
! CASE 1...
_Label_2508:
! SEND STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0SE",r10
!   _temp_2515 = &diskBusy
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
	mov	2405,r13		! source line 2405
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2509:
! CALL STATEMENT...
!   _temp_2516 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2516  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2407,r13		! source line 2407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2510:
! CALL STATEMENT...
!   _temp_2517 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2517  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2409,r13		! source line 2409
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2511:
! CALL STATEMENT...
!   _temp_2518 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2518  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2411,r13		! source line 2411
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2512:
! BREAK STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0BR",r10
	jmp	_Label_2507
! CASE 6...
_Label_2513:
! CALL STATEMENT...
!   _temp_2519 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2519  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2417,r13		! source line 2417
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2506:
! CALL STATEMENT...
!   _temp_2520 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2419,r13		! source line 2419
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2507:
! END WHILE...
	jmp	_Label_2500
_Label_2502:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2521
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2522
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2523
	.word	12
	.word	4
	.word	_Label_2524
	.word	16
	.word	4
	.word	_Label_2525
	.word	20
	.word	4
	.word	_Label_2526
	.word	-12
	.word	4
	.word	_Label_2527
	.word	-16
	.word	4
	.word	_Label_2528
	.word	-20
	.word	4
	.word	_Label_2529
	.word	-24
	.word	4
	.word	_Label_2530
	.word	-28
	.word	4
	.word	_Label_2531
	.word	-32
	.word	4
	.word	_Label_2532
	.word	-36
	.word	4
	.word	_Label_2533
	.word	-40
	.word	4
	.word	_Label_2534
	.word	-44
	.word	4
	.word	_Label_2535
	.word	-48
	.word	4
	.word	_Label_2536
	.word	-52
	.word	4
	.word	0
_Label_2521:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2522:
	.ascii	"Pself\0"
	.align
_Label_2523:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2524:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2525:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2499\0"
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
	mov	2428,r13		! source line 2428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2445,r13		! source line 2445
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
	mov	2446,r13		! source line 2446
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
	mov	2447,r13		! source line 2447
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
	mov	2448,r13		! source line 2448
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
	mov	2448,r13		! source line 2448
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
	.word	_Label_2537
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2538
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2539
	.word	12
	.word	4
	.word	_Label_2540
	.word	16
	.word	4
	.word	_Label_2541
	.word	20
	.word	4
	.word	_Label_2542
	.word	24
	.word	4
	.word	0
_Label_2537:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2538:
	.ascii	"Pself\0"
	.align
_Label_2539:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2540:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2541:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2542:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2543
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
_Label_2543:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2544
	.word	_sourceFileName
	.word	332		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2544:
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
_Label_3460:
	push	r0
	sub	r1,1,r1
	bne	_Label_3460
	mov	2459,r13		! source line 2459
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2545 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2545  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2466,r13		! source line 2466
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
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
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_2547 = &fileManagerLock
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
	mov	2471,r13		! source line 2471
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
	mov	2472,r13		! source line 2472
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
	mov	2473,r13		! source line 2473
	mov	"\0\0SE",r10
!   _temp_2550 = &anFCBBecameFree
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
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   _temp_2551 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2553 = &_temp_2552
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2553 = _temp_2553 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2555 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3461:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3461
!   _temp_2555 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2557:
!   Data Move: *_temp_2553 = _temp_2555  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3462:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3462
!   _temp_2553 = _temp_2553 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2554 = _temp_2554 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2554) then goto _Label_2557
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2557
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2558 = &_temp_2552
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3463
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3463:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2551 = *_temp_2558  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3464:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3464
! FOR STATEMENT...
	mov	2476,r13		! source line 2476
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2563 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2564 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2563  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2559:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2564 then goto _Label_2562		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2562
_Label_2560:
	mov	2476,r13		! source line 2476
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0AS",r10
!   _temp_2565 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2565 [i ] into _temp_2566
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
!   _temp_2567 = _temp_2566 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2567 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_2568 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2568 [i ] into _temp_2569
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
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
!   _temp_2571 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2571 [i ] into _temp_2572
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
!   _temp_2570 = _temp_2572		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2573 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2570  sizeInBytes=4
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
_Label_2561:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2559
! END FOR
_Label_2562:
! ASSIGNMENT STATEMENT...
	mov	2483,r13		! source line 2483
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
	mov	2484,r13		! source line 2484
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
	mov	2485,r13		! source line 2485
	mov	"\0\0SE",r10
!   _temp_2576 = &anOpenFileBecameFree
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
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   _temp_2577 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2579 = &_temp_2578
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2579 = _temp_2579 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2581 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3465:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3465
!   _temp_2581 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2583:
!   Data Move: *_temp_2579 = _temp_2581  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3466:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3466
!   _temp_2579 = _temp_2579 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2580 = _temp_2580 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2580) then goto _Label_2583
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2583
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2584 = &_temp_2578
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3467
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3467:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2577 = *_temp_2584  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3468:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3468
! FOR STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2589 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2590 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2589  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2585:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2590 then goto _Label_2588		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2588
_Label_2586:
	mov	2488,r13		! source line 2488
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   _temp_2591 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2591 [i ] into _temp_2592
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
!   _temp_2593 = _temp_2592 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2593 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2490,r13		! source line 2490
	mov	"\0\0SE",r10
!   _temp_2595 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2595 [i ] into _temp_2596
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
!   _temp_2594 = _temp_2596		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2597 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2594  sizeInBytes=4
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
_Label_2587:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2585
! END FOR
_Label_2588:
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3469:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3469
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   _temp_2599 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2600 = _temp_2599 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2600 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
	mov	2500,r13		! source line 2500
	mov	"\0\0SE",r10
!   _temp_2601 = &_P_Kernel_frameManager
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
	mov	2501,r13		! source line 2501
	mov	"\0\0SE",r10
!   _temp_2602 = &_P_Kernel_diskDriver
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
	mov	2501,r13		! source line 2501
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
	.word	_Label_2603
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2604
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2605
	.word	-12
	.word	4
	.word	_Label_2606
	.word	-16
	.word	4
	.word	_Label_2607
	.word	-20
	.word	4
	.word	_Label_2608
	.word	-24
	.word	4
	.word	_Label_2609
	.word	-28
	.word	4
	.word	_Label_2610
	.word	-32
	.word	4
	.word	_Label_2611
	.word	-36
	.word	4
	.word	_Label_2612
	.word	-40
	.word	4
	.word	_Label_2613
	.word	-44
	.word	4
	.word	_Label_2614
	.word	-48
	.word	4
	.word	_Label_2615
	.word	-52
	.word	4
	.word	_Label_2616
	.word	-56
	.word	4
	.word	_Label_2617
	.word	-60
	.word	4
	.word	_Label_2618
	.word	-64
	.word	4
	.word	_Label_2619
	.word	-68
	.word	4
	.word	_Label_2620
	.word	-72
	.word	4
	.word	_Label_2621
	.word	-100
	.word	28
	.word	_Label_2622
	.word	-104
	.word	4
	.word	_Label_2623
	.word	-108
	.word	4
	.word	_Label_2624
	.word	-392
	.word	284
	.word	_Label_2625
	.word	-396
	.word	4
	.word	_Label_2626
	.word	-400
	.word	4
	.word	_Label_2627
	.word	-404
	.word	4
	.word	_Label_2628
	.word	-408
	.word	4
	.word	_Label_2629
	.word	-412
	.word	4
	.word	_Label_2630
	.word	-416
	.word	4
	.word	_Label_2631
	.word	-420
	.word	4
	.word	_Label_2632
	.word	-424
	.word	4
	.word	_Label_2633
	.word	-428
	.word	4
	.word	_Label_2634
	.word	-432
	.word	4
	.word	_Label_2635
	.word	-436
	.word	4
	.word	_Label_2636
	.word	-440
	.word	4
	.word	_Label_2637
	.word	-444
	.word	4
	.word	_Label_2638
	.word	-448
	.word	4
	.word	_Label_2639
	.word	-452
	.word	4
	.word	_Label_2640
	.word	-456
	.word	4
	.word	_Label_2641
	.word	-460
	.word	4
	.word	_Label_2642
	.word	-500
	.word	40
	.word	_Label_2643
	.word	-504
	.word	4
	.word	_Label_2644
	.word	-508
	.word	4
	.word	_Label_2645
	.word	-912
	.word	404
	.word	_Label_2646
	.word	-916
	.word	4
	.word	_Label_2647
	.word	-920
	.word	4
	.word	_Label_2648
	.word	-924
	.word	4
	.word	_Label_2649
	.word	-928
	.word	4
	.word	_Label_2650
	.word	-932
	.word	4
	.word	_Label_2651
	.word	-936
	.word	4
	.word	_Label_2652
	.word	-940
	.word	4
	.word	_Label_2653
	.word	-944
	.word	4
	.word	0
_Label_2603:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2604:
	.ascii	"Pself\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2577\0"
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
	.ascii	"_temp_2572\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2653:
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
_Label_3470:
	push	r0
	sub	r1,1,r1
	bne	_Label_3470
	mov	2508,r13		! source line 2508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0SE",r10
!   _temp_2654 = &fileManagerLock
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
!   _temp_2655 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2655  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2511,r13		! source line 2511
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2660 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2661 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2660  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2656:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2661 then goto _Label_2659		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2659
_Label_2657:
	mov	2512,r13		! source line 2512
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2662 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2662  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2513,r13		! source line 2513
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2514,r13		! source line 2514
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2663 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2663  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2515,r13		! source line 2515
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2516,r13		! source line 2516
	mov	"\0\0SE",r10
!   _temp_2664 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2664 [i ] into _temp_2665
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
_Label_2658:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2656
! END FOR
_Label_2659:
! CALL STATEMENT...
!   _temp_2666 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2666  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2518,r13		! source line 2518
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0SE",r10
!   _temp_2667 = _function_196_printFCB
	set	_function_196_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2668 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2667  sizeInBytes=4
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
	mov	2520,r13		! source line 2520
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2669 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2669  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2521,r13		! source line 2521
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2674 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2675 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2674  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2670:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2675 then goto _Label_2673		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2673
_Label_2671:
	mov	2522,r13		! source line 2522
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2676 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2676  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2523,r13		! source line 2523
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2524,r13		! source line 2524
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2677 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2677  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2679 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2679 [i ] into _temp_2680
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
!   _temp_2678 = _temp_2680		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2678  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2526,r13		! source line 2526
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2681 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2681  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2527,r13		! source line 2527
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0SE",r10
!   _temp_2682 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2682 [i ] into _temp_2683
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
_Label_2672:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2670
! END FOR
_Label_2673:
! CALL STATEMENT...
!   _temp_2684 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2684  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2530,r13		! source line 2530
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0SE",r10
!   _temp_2685 = _function_195_printOpen
	set	_function_195_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2686 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2685  sizeInBytes=4
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
	mov	2532,r13		! source line 2532
	mov	"\0\0SE",r10
!   _temp_2687 = &fileManagerLock
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
	mov	2532,r13		! source line 2532
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
	.word	_Label_2688
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2689
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2690
	.word	-12
	.word	4
	.word	_Label_2691
	.word	-16
	.word	4
	.word	_Label_2692
	.word	-20
	.word	4
	.word	_Label_2693
	.word	-24
	.word	4
	.word	_Label_2694
	.word	-28
	.word	4
	.word	_Label_2695
	.word	-32
	.word	4
	.word	_Label_2696
	.word	-36
	.word	4
	.word	_Label_2697
	.word	-40
	.word	4
	.word	_Label_2698
	.word	-44
	.word	4
	.word	_Label_2699
	.word	-48
	.word	4
	.word	_Label_2700
	.word	-52
	.word	4
	.word	_Label_2701
	.word	-56
	.word	4
	.word	_Label_2702
	.word	-60
	.word	4
	.word	_Label_2703
	.word	-64
	.word	4
	.word	_Label_2704
	.word	-68
	.word	4
	.word	_Label_2705
	.word	-72
	.word	4
	.word	_Label_2706
	.word	-76
	.word	4
	.word	_Label_2707
	.word	-80
	.word	4
	.word	_Label_2708
	.word	-84
	.word	4
	.word	_Label_2709
	.word	-88
	.word	4
	.word	_Label_2710
	.word	-92
	.word	4
	.word	_Label_2711
	.word	-96
	.word	4
	.word	_Label_2712
	.word	-100
	.word	4
	.word	_Label_2713
	.word	-104
	.word	4
	.word	_Label_2714
	.word	-108
	.word	4
	.word	_Label_2715
	.word	-112
	.word	4
	.word	_Label_2716
	.word	-116
	.word	4
	.word	0
_Label_2688:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2689:
	.ascii	"Pself\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2716:
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
_Label_3471:
	push	r0
	sub	r1,1,r1
	bne	_Label_3471
	mov	2537,r13		! source line 2537
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
	mov	2553,r13		! source line 2553
	mov	"\0\0SE",r10
!   _temp_2717 = &_P_Kernel_fileManager
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
	mov	2554,r13		! source line 2554
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2718
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2718
	jmp	_Label_2719
_Label_2718:
! THEN...
	mov	2555,r13		! source line 2555
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2719:
! SEND STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_2720 = &fileManagerLock
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
	mov	2560,r13		! source line 2560
	mov	"\0\0WH",r10
_Label_2721:
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   _temp_2724 = &openFileFreeList
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
!   if result==true then goto _Label_2722 else goto _Label_2723
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2723
	jmp	_Label_2722
_Label_2722:
	mov	2560,r13		! source line 2560
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0SE",r10
!   _temp_2725 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2726 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2725  sizeInBytes=4
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
	jmp	_Label_2721
_Label_2723:
! ASSIGNMENT STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0AS",r10
	mov	2563,r13		! source line 2563
	mov	"\0\0SE",r10
!   _temp_2727 = &openFileFreeList
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
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2728 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2728 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2729 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2729 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2570,r13		! source line 2570
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2730 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2730 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0SE",r10
!   _temp_2731 = &fileManagerLock
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
	mov	2573,r13		! source line 2573
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
	.word	_Label_2732
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2733
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2734
	.word	12
	.word	4
	.word	_Label_2735
	.word	-12
	.word	4
	.word	_Label_2736
	.word	-16
	.word	4
	.word	_Label_2737
	.word	-20
	.word	4
	.word	_Label_2738
	.word	-24
	.word	4
	.word	_Label_2739
	.word	-28
	.word	4
	.word	_Label_2740
	.word	-32
	.word	4
	.word	_Label_2741
	.word	-36
	.word	4
	.word	_Label_2742
	.word	-40
	.word	4
	.word	_Label_2743
	.word	-44
	.word	4
	.word	_Label_2744
	.word	-48
	.word	4
	.word	_Label_2745
	.word	-52
	.word	4
	.word	_Label_2746
	.word	-56
	.word	4
	.word	0
_Label_2732:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2733:
	.ascii	"Pself\0"
	.align
_Label_2734:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2717\0"
	.align
_Label_2745:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2746:
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
_Label_3472:
	push	r0
	sub	r1,1,r1
	bne	_Label_3472
	mov	2578,r13		! source line 2578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
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
	mov	2607,r13		! source line 2607
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2608,r13		! source line 2608
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2748		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2748
!	jmp	_Label_2747
_Label_2747:
! THEN...
	mov	2609,r13		! source line 2609
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2749 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2749  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2609,r13		! source line 2609
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2748:
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
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
	mov	2614,r13		! source line 2614
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
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
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2619,r13		! source line 2619
	mov	"\0\0WH",r10
_Label_2750:
!   if numFiles <= 0 then goto _Label_2752		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2752
!	jmp	_Label_2751
_Label_2751:
	mov	2619,r13		! source line 2619
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2753 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2753  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2620,r13		! source line 2620
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2754 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2754  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2622,r13		! source line 2622
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2755 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2755  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2624,r13		! source line 2624
	mov	"\0\0CA",r10
	call	_function_197_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2759 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2759 then goto _Label_2757		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2757
!	jmp	_Label_2758
_Label_2758:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2761
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
!   _temp_2760 = _temp_2761		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2760  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2627,r13		! source line 2627
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2756 else goto _Label_2757
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2757
	jmp	_Label_2756
_Label_2756:
! THEN...
	mov	2628,r13		! source line 2628
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2628,r13		! source line 2628
	mov	"\0\0BR",r10
	jmp	_Label_2752
! END IF...
_Label_2757:
! ASSIGNMENT STATEMENT...
	mov	2630,r13		! source line 2630
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2631,r13		! source line 2631
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2750
_Label_2752:
! IF STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2763		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2763
!	jmp	_Label_2762
_Label_2762:
! THEN...
	mov	2636,r13		! source line 2636
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2763:
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
	mov	"\0\0SE",r10
!   _temp_2764 = &fileManagerLock
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
	mov	2641,r13		! source line 2641
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2769 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2770 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2769  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2765:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2770 then goto _Label_2768		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2768
_Label_2766:
	mov	2641,r13		! source line 2641
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   _temp_2771 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2771 [i ] into _temp_2772
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
!   fcb = _temp_2772		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2776 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2775 = *_temp_2776  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2775 != start then goto _Label_2774		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2774
!	jmp	_Label_2773
_Label_2773:
! THEN...
	mov	2644,r13		! source line 2644
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2777 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2780 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2779 = *_temp_2780  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2778 = _temp_2779 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2777 = _temp_2778  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0SE",r10
!   _temp_2781 = &fileManagerLock
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
	mov	2646,r13		! source line 2646
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2774:
!   Increment the FOR-LOOP index variable and jump back
_Label_2767:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2765
! END FOR
_Label_2768:
! WHILE STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0WH",r10
_Label_2782:
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   _temp_2785 = &fcbFreeList
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
!   if result==true then goto _Label_2783 else goto _Label_2784
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2784
	jmp	_Label_2783
_Label_2783:
	mov	2651,r13		! source line 2651
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
!   _temp_2786 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2787 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2786  sizeInBytes=4
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
	jmp	_Label_2782
_Label_2784:
! ASSIGNMENT STATEMENT...
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
	mov	2654,r13		! source line 2654
	mov	"\0\0SE",r10
!   _temp_2788 = &fcbFreeList
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
	mov	2657,r13		! source line 2657
	mov	"\0\0SE",r10
!   _temp_2789 = &fileManagerLock
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
	mov	2660,r13		! source line 2660
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2790 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2790 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2791 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2791 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2662,r13		! source line 2662
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2792 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2792 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2797 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2796 = *_temp_2797  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2796 < 0 then goto _Label_2795		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2795
	jmp	_Label_2793
_Label_2795:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2798 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2798 ) then goto _Label_2794		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2794
!	jmp	_Label_2793
_Label_2793:
! THEN...
	mov	2664,r13		! source line 2664
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2799 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2799  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2664,r13		! source line 2664
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2794:
! RETURN STATEMENT...
	mov	2666,r13		! source line 2666
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
	.word	_Label_2800
	.word	8		! total size of parameters
	.word	164		! frame size = 164
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
	.word	_Label_2827
	.word	-108
	.word	4
	.word	_Label_2828
	.word	-112
	.word	4
	.word	_Label_2829
	.word	-116
	.word	4
	.word	_Label_2830
	.word	-120
	.word	4
	.word	_Label_2831
	.word	-124
	.word	4
	.word	_Label_2832
	.word	-128
	.word	4
	.word	_Label_2833
	.word	-132
	.word	4
	.word	_Label_2834
	.word	-136
	.word	4
	.word	_Label_2835
	.word	-140
	.word	4
	.word	_Label_2836
	.word	-144
	.word	4
	.word	_Label_2837
	.word	-148
	.word	4
	.word	_Label_2838
	.word	-152
	.word	4
	.word	_Label_2839
	.word	-156
	.word	4
	.word	_Label_2840
	.word	-160
	.word	4
	.word	0
_Label_2800:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2801:
	.ascii	"Pself\0"
	.align
_Label_2802:
	.byte	'P'
	.ascii	"filename\0"
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
	.ascii	"_temp_2792\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2787\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2834:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2835:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2838:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2839:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2840:
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
_Label_3473:
	push	r0
	sub	r1,1,r1
	bne	_Label_3473
	mov	2679,r13		! source line 2679
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2681,r13		! source line 2681
	mov	"\0\0IF",r10
!   _temp_2843 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2843 then goto _Label_2842		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2842
!	jmp	_Label_2841
_Label_2841:
! THEN...
	mov	2682,r13		! source line 2682
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2682,r13		! source line 2682
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2842:
! SEND STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   _temp_2844 = &fileManagerLock
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
	mov	2685,r13		! source line 2685
	mov	"\0\0SE",r10
!   _temp_2845 = &_P_Kernel_fileManager
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
	mov	2686,r13		! source line 2686
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2846 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2846  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2847 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2850 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2849 = *_temp_2850  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2848 = _temp_2849 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2847 = _temp_2848  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2688,r13		! source line 2688
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2854 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2853 = *_temp_2854  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2853 > 0 then goto _Label_2852		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2852
!	jmp	_Label_2851
_Label_2851:
! THEN...
	mov	2689,r13		! source line 2689
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0SE",r10
!   _temp_2855 = &openFileFreeList
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
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_2856 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2857 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2856  sizeInBytes=4
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
	mov	2691,r13		! source line 2691
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2858 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2861 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2860 = *_temp_2861  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2859 = _temp_2860 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2858 = _temp_2859  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2692,r13		! source line 2692
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2865 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2864 = *_temp_2865  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2864 > 0 then goto _Label_2863		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2863
!	jmp	_Label_2862
_Label_2862:
! THEN...
	mov	2693,r13		! source line 2693
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0SE",r10
!   _temp_2866 = &fcbFreeList
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
	mov	2694,r13		! source line 2694
	mov	"\0\0SE",r10
!   _temp_2867 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2868 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2867  sizeInBytes=4
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
_Label_2863:
! END IF...
_Label_2852:
! SEND STATEMENT...
	mov	2697,r13		! source line 2697
	mov	"\0\0SE",r10
!   _temp_2869 = &fileManagerLock
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
	mov	2697,r13		! source line 2697
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
	.word	_Label_2870
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2872
	.word	12
	.word	4
	.word	_Label_2873
	.word	-12
	.word	4
	.word	_Label_2874
	.word	-16
	.word	4
	.word	_Label_2875
	.word	-20
	.word	4
	.word	_Label_2876
	.word	-24
	.word	4
	.word	_Label_2877
	.word	-28
	.word	4
	.word	_Label_2878
	.word	-32
	.word	4
	.word	_Label_2879
	.word	-36
	.word	4
	.word	_Label_2880
	.word	-40
	.word	4
	.word	_Label_2881
	.word	-44
	.word	4
	.word	_Label_2882
	.word	-48
	.word	4
	.word	_Label_2883
	.word	-52
	.word	4
	.word	_Label_2884
	.word	-56
	.word	4
	.word	_Label_2885
	.word	-60
	.word	4
	.word	_Label_2886
	.word	-64
	.word	4
	.word	_Label_2887
	.word	-68
	.word	4
	.word	_Label_2888
	.word	-72
	.word	4
	.word	_Label_2889
	.word	-76
	.word	4
	.word	_Label_2890
	.word	-80
	.word	4
	.word	_Label_2891
	.word	-84
	.word	4
	.word	_Label_2892
	.word	-88
	.word	4
	.word	_Label_2893
	.word	-92
	.word	4
	.word	_Label_2894
	.word	-96
	.word	4
	.word	_Label_2895
	.word	-100
	.word	4
	.word	_Label_2896
	.word	-104
	.word	4
	.word	0
_Label_2870:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2871:
	.ascii	"Pself\0"
	.align
_Label_2872:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2873:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2874:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2875:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2876:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2877:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2864\0"
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
	.ascii	"_temp_2850\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2845\0"
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
_Label_3474:
	push	r0
	sub	r1,1,r1
	bne	_Label_3474
	mov	2702,r13		! source line 2702
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2900 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2899 = *_temp_2900  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2899) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2901 = _temp_2899 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2901 ) then goto _Label_2898		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2898
!	jmp	_Label_2897
_Label_2897:
! THEN...
	mov	2708,r13		! source line 2708
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2906 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2905 = *_temp_2906  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2905) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2907 = _temp_2905 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2904 = *_temp_2907  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2904 >= 0 then goto _Label_2903		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2903
!	jmp	_Label_2902
_Label_2902:
! THEN...
	mov	2709,r13		! source line 2709
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2908 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2908  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2709,r13		! source line 2709
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2903:
! ASSIGNMENT STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2910 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2909 = *_temp_2910  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2909) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2911 = _temp_2909 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2911 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2712,r13		! source line 2712
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2915 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2914 = *_temp_2915  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2914) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2916 = _temp_2914 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2913 = *_temp_2916  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2919 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2918 = *_temp_2919  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2918) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2920 = _temp_2918 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2917 = *_temp_2920  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2912 = _temp_2913 + _temp_2917		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2923 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2922 = *_temp_2923  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2922) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2924 = _temp_2922 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2921 = *_temp_2924  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2925 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2912  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2921  sizeInBytes=4
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
_Label_2898:
! RETURN STATEMENT...
	mov	2707,r13		! source line 2707
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
	.word	_Label_2926
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2927
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2928
	.word	12
	.word	4
	.word	_Label_2929
	.word	-12
	.word	4
	.word	_Label_2930
	.word	-16
	.word	4
	.word	_Label_2931
	.word	-20
	.word	4
	.word	_Label_2932
	.word	-24
	.word	4
	.word	_Label_2933
	.word	-28
	.word	4
	.word	_Label_2934
	.word	-32
	.word	4
	.word	_Label_2935
	.word	-36
	.word	4
	.word	_Label_2936
	.word	-40
	.word	4
	.word	_Label_2937
	.word	-44
	.word	4
	.word	_Label_2938
	.word	-48
	.word	4
	.word	_Label_2939
	.word	-52
	.word	4
	.word	_Label_2940
	.word	-56
	.word	4
	.word	_Label_2941
	.word	-60
	.word	4
	.word	_Label_2942
	.word	-64
	.word	4
	.word	_Label_2943
	.word	-68
	.word	4
	.word	_Label_2944
	.word	-72
	.word	4
	.word	_Label_2945
	.word	-76
	.word	4
	.word	_Label_2946
	.word	-80
	.word	4
	.word	_Label_2947
	.word	-84
	.word	4
	.word	_Label_2948
	.word	-88
	.word	4
	.word	_Label_2949
	.word	-92
	.word	4
	.word	_Label_2950
	.word	-96
	.word	4
	.word	_Label_2951
	.word	-100
	.word	4
	.word	_Label_2952
	.word	-104
	.word	4
	.word	_Label_2953
	.word	-108
	.word	4
	.word	0
_Label_2926:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2927:
	.ascii	"Pself\0"
	.align
_Label_2928:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2899\0"
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
_Label_3475:
	push	r0
	sub	r1,1,r1
	bne	_Label_3475
	mov	2721,r13		! source line 2721
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0SE",r10
!   _temp_2954 = &fileManagerLock
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
	mov	2737,r13		! source line 2737
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2960		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2960
!   _temp_2959 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2961
_Label_2960:
!   _temp_2959 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2961:
!   if _temp_2959 then goto _Label_2958 else goto _Label_2955
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2955
	jmp	_Label_2958
_Label_2958:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2964 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2963 = *_temp_2964  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2963 == 0 then goto _Label_2965		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2965
!   _temp_2962 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2966
_Label_2965:
!   _temp_2962 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2966:
!   if _temp_2962 then goto _Label_2957 else goto _Label_2955
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2955
	jmp	_Label_2957
_Label_2957:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2969 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2968 = *_temp_2969  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2968) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2970 = _temp_2968 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2967 = *_temp_2970  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2967 >= 0 then goto _Label_2956		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2956
!	jmp	_Label_2955
_Label_2955:
! THEN...
	mov	2738,r13		! source line 2738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2971 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2971  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2738,r13		! source line 2738
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2956:
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2972 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2972  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0WH",r10
_Label_2973:
!   if numBytes <= 0 then goto _Label_2975		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2975
!	jmp	_Label_2974
_Label_2974:
	mov	2741,r13		! source line 2741
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2750,r13		! source line 2750
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
	mov	2751,r13		! source line 2751
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
	mov	2755,r13		! source line 2755
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2979 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2978 = *_temp_2979  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2978 == sector then goto _Label_2977		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2977
!	jmp	_Label_2976
_Label_2976:
! THEN...
	mov	2756,r13		! source line 2756
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2980) then goto _runtimeErrorNullPointer
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
	mov	2758,r13		! source line 2758
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2983 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2982 = *_temp_2983  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2981 = sector + _temp_2982		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2985 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2984 = *_temp_2985  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2986 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2981  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2984  sizeInBytes=4
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
	mov	2761,r13		! source line 2761
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2987 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2987 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2988 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2988 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2977:
! ASSIGNMENT STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2990 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2989 = *_temp_2990  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2989 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   _temp_2991 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2991  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2765,r13		! source line 2765
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
	mov	2769,r13		! source line 2769
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2973
_Label_2975:
! SEND STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0SE",r10
!   _temp_2992 = &fileManagerLock
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
	mov	2780,r13		! source line 2780
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
	.word	_Label_2993
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2995
	.word	12
	.word	4
	.word	_Label_2996
	.word	16
	.word	4
	.word	_Label_2997
	.word	20
	.word	4
	.word	_Label_2998
	.word	24
	.word	4
	.word	_Label_2999
	.word	-16
	.word	4
	.word	_Label_3000
	.word	-20
	.word	4
	.word	_Label_3001
	.word	-24
	.word	4
	.word	_Label_3002
	.word	-28
	.word	4
	.word	_Label_3003
	.word	-32
	.word	4
	.word	_Label_3004
	.word	-36
	.word	4
	.word	_Label_3005
	.word	-40
	.word	4
	.word	_Label_3006
	.word	-44
	.word	4
	.word	_Label_3007
	.word	-48
	.word	4
	.word	_Label_3008
	.word	-52
	.word	4
	.word	_Label_3009
	.word	-56
	.word	4
	.word	_Label_3010
	.word	-60
	.word	4
	.word	_Label_3011
	.word	-64
	.word	4
	.word	_Label_3012
	.word	-68
	.word	4
	.word	_Label_3013
	.word	-72
	.word	4
	.word	_Label_3014
	.word	-76
	.word	4
	.word	_Label_3015
	.word	-80
	.word	4
	.word	_Label_3016
	.word	-84
	.word	4
	.word	_Label_3017
	.word	-88
	.word	4
	.word	_Label_3018
	.word	-92
	.word	4
	.word	_Label_3019
	.word	-96
	.word	4
	.word	_Label_3020
	.word	-100
	.word	4
	.word	_Label_3021
	.word	-104
	.word	4
	.word	_Label_3022
	.word	-9
	.word	1
	.word	_Label_3023
	.word	-10
	.word	1
	.word	_Label_3024
	.word	-108
	.word	4
	.word	_Label_3025
	.word	-112
	.word	4
	.word	_Label_3026
	.word	-116
	.word	4
	.word	_Label_3027
	.word	-120
	.word	4
	.word	_Label_3028
	.word	-124
	.word	4
	.word	_Label_3029
	.word	-128
	.word	4
	.word	0
_Label_2993:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2994:
	.ascii	"Pself\0"
	.align
_Label_2995:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2996:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2997:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2990\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2989\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2985\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2984\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2983\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2980\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2979\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2978\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2967\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_3022:
	.byte	'C'
	.ascii	"_temp_2962\0"
	.align
_Label_3023:
	.byte	'C'
	.ascii	"_temp_2959\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_3025:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3026:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3027:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3028:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3029:
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
_Label_3476:
	push	r0
	sub	r1,1,r1
	bne	_Label_3476
	mov	2785,r13		! source line 2785
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
!   _temp_3030 = &fileManagerLock
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
	mov	2802,r13		! source line 2802
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_3036		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3036
!   _temp_3035 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_3037
_Label_3036:
!   _temp_3035 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_3037:
!   if _temp_3035 then goto _Label_3034 else goto _Label_3031
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3031
	jmp	_Label_3034
_Label_3034:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3040 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_3039 = *_temp_3040  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_3039 == 0 then goto _Label_3041		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3041
!   _temp_3038 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_3042
_Label_3041:
!   _temp_3038 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_3042:
!   if _temp_3038 then goto _Label_3033 else goto _Label_3031
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3031
	jmp	_Label_3033
_Label_3033:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3045 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_3044 = *_temp_3045  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_3044) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3046 = _temp_3044 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_3043 = *_temp_3046  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_3043 >= 0 then goto _Label_3032		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_3032
!	jmp	_Label_3031
_Label_3031:
! THEN...
	mov	2803,r13		! source line 2803
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3047 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_3047  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2803,r13		! source line 2803
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3032:
! ASSIGNMENT STATEMENT...
	mov	2805,r13		! source line 2805
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3048 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_3048  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0WH",r10
_Label_3049:
!   if numBytes <= 0 then goto _Label_3051		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3051
!	jmp	_Label_3050
_Label_3050:
	mov	2806,r13		! source line 2806
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
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
	mov	2816,r13		! source line 2816
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
	mov	2820,r13		! source line 2820
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3055 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_3054 = *_temp_3055  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_3054 == sector then goto _Label_3053		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_3053
!	jmp	_Label_3052
_Label_3052:
! THEN...
	mov	2822,r13		! source line 2822
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_3056) then goto _runtimeErrorNullPointer
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
_Label_3053:
! ASSIGNMENT STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3058 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_3057 = *_temp_3058  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_3057 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0AS",r10
!   _temp_3059 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_3059  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2825,r13		! source line 2825
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3063 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_3062 = *_temp_3063  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_3062 != sector then goto _Label_3061		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_3061
!	jmp	_Label_3060
_Label_3060:
	jmp	_Label_3064
_Label_3061:
! ELSE...
	mov	2828,r13		! source line 2828
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_3067
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_3067
	jmp	_Label_3066
_Label_3067:
!   if bytesToMove != 8192 then goto _Label_3066		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_3066
!	jmp	_Label_3065
_Label_3065:
	jmp	_Label_3068
_Label_3066:
! ELSE...
	mov	2832,r13		! source line 2832
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3071 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_3070 = *_temp_3071  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_3069 = sector + _temp_3070		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3073 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_3072 = *_temp_3073  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_3074 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_3069  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_3072  sizeInBytes=4
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
_Label_3068:
! END IF...
_Label_3064:
! ASSIGNMENT STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3075 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_3075 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3076 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_3076 = 1  (sizeInBytes=1)
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
	mov	2841,r13		! source line 2841
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_3049
_Label_3051:
! SEND STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   _temp_3077 = &fileManagerLock
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
	mov	2853,r13		! source line 2853
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
	.word	_Label_3078
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_3079
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3080
	.word	12
	.word	4
	.word	_Label_3081
	.word	16
	.word	4
	.word	_Label_3082
	.word	20
	.word	4
	.word	_Label_3083
	.word	24
	.word	4
	.word	_Label_3084
	.word	-16
	.word	4
	.word	_Label_3085
	.word	-20
	.word	4
	.word	_Label_3086
	.word	-24
	.word	4
	.word	_Label_3087
	.word	-28
	.word	4
	.word	_Label_3088
	.word	-32
	.word	4
	.word	_Label_3089
	.word	-36
	.word	4
	.word	_Label_3090
	.word	-40
	.word	4
	.word	_Label_3091
	.word	-44
	.word	4
	.word	_Label_3092
	.word	-48
	.word	4
	.word	_Label_3093
	.word	-52
	.word	4
	.word	_Label_3094
	.word	-56
	.word	4
	.word	_Label_3095
	.word	-60
	.word	4
	.word	_Label_3096
	.word	-64
	.word	4
	.word	_Label_3097
	.word	-68
	.word	4
	.word	_Label_3098
	.word	-72
	.word	4
	.word	_Label_3099
	.word	-76
	.word	4
	.word	_Label_3100
	.word	-80
	.word	4
	.word	_Label_3101
	.word	-84
	.word	4
	.word	_Label_3102
	.word	-88
	.word	4
	.word	_Label_3103
	.word	-92
	.word	4
	.word	_Label_3104
	.word	-96
	.word	4
	.word	_Label_3105
	.word	-100
	.word	4
	.word	_Label_3106
	.word	-104
	.word	4
	.word	_Label_3107
	.word	-108
	.word	4
	.word	_Label_3108
	.word	-112
	.word	4
	.word	_Label_3109
	.word	-9
	.word	1
	.word	_Label_3110
	.word	-10
	.word	1
	.word	_Label_3111
	.word	-116
	.word	4
	.word	_Label_3112
	.word	-120
	.word	4
	.word	_Label_3113
	.word	-124
	.word	4
	.word	_Label_3114
	.word	-128
	.word	4
	.word	_Label_3115
	.word	-132
	.word	4
	.word	_Label_3116
	.word	-136
	.word	4
	.word	0
_Label_3078:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_3079:
	.ascii	"Pself\0"
	.align
_Label_3080:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_3081:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_3082:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_3083:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3084:
	.byte	'?'
	.ascii	"_temp_3077\0"
	.align
_Label_3085:
	.byte	'?'
	.ascii	"_temp_3076\0"
	.align
_Label_3086:
	.byte	'?'
	.ascii	"_temp_3075\0"
	.align
_Label_3087:
	.byte	'?'
	.ascii	"_temp_3074\0"
	.align
_Label_3088:
	.byte	'?'
	.ascii	"_temp_3073\0"
	.align
_Label_3089:
	.byte	'?'
	.ascii	"_temp_3072\0"
	.align
_Label_3090:
	.byte	'?'
	.ascii	"_temp_3071\0"
	.align
_Label_3091:
	.byte	'?'
	.ascii	"_temp_3070\0"
	.align
_Label_3092:
	.byte	'?'
	.ascii	"_temp_3069\0"
	.align
_Label_3093:
	.byte	'?'
	.ascii	"_temp_3063\0"
	.align
_Label_3094:
	.byte	'?'
	.ascii	"_temp_3062\0"
	.align
_Label_3095:
	.byte	'?'
	.ascii	"_temp_3059\0"
	.align
_Label_3096:
	.byte	'?'
	.ascii	"_temp_3058\0"
	.align
_Label_3097:
	.byte	'?'
	.ascii	"_temp_3057\0"
	.align
_Label_3098:
	.byte	'?'
	.ascii	"_temp_3056\0"
	.align
_Label_3099:
	.byte	'?'
	.ascii	"_temp_3055\0"
	.align
_Label_3100:
	.byte	'?'
	.ascii	"_temp_3054\0"
	.align
_Label_3101:
	.byte	'?'
	.ascii	"_temp_3048\0"
	.align
_Label_3102:
	.byte	'?'
	.ascii	"_temp_3047\0"
	.align
_Label_3103:
	.byte	'?'
	.ascii	"_temp_3046\0"
	.align
_Label_3104:
	.byte	'?'
	.ascii	"_temp_3045\0"
	.align
_Label_3105:
	.byte	'?'
	.ascii	"_temp_3044\0"
	.align
_Label_3106:
	.byte	'?'
	.ascii	"_temp_3043\0"
	.align
_Label_3107:
	.byte	'?'
	.ascii	"_temp_3040\0"
	.align
_Label_3108:
	.byte	'?'
	.ascii	"_temp_3039\0"
	.align
_Label_3109:
	.byte	'C'
	.ascii	"_temp_3038\0"
	.align
_Label_3110:
	.byte	'C'
	.ascii	"_temp_3035\0"
	.align
_Label_3111:
	.byte	'?'
	.ascii	"_temp_3030\0"
	.align
_Label_3112:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_3113:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_3114:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_3115:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_3116:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_3117
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_3117:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3118
	.word	_sourceFileName
	.word	357		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3118:
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
_Label_3477:
	push	r0
	sub	r1,1,r1
	bne	_Label_3477
	mov	2889,r13		! source line 2889
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2891,r13		! source line 2891
	mov	"\0\0AS",r10
	mov	2891,r13		! source line 2891
	mov	"\0\0SE",r10
!   _temp_3119 = &_P_Kernel_frameManager
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
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2894,r13		! source line 2894
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
	.word	_Label_3120
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_3121
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3122
	.word	-12
	.word	4
	.word	0
_Label_3120:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_3121:
	.ascii	"Pself\0"
	.align
_Label_3122:
	.byte	'?'
	.ascii	"_temp_3119\0"
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
_Label_3478:
	push	r0
	sub	r1,1,r1
	bne	_Label_3478
	mov	2899,r13		! source line 2899
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3123 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_3123  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2900,r13		! source line 2900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2901,r13		! source line 2901
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3124 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_3124  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2902,r13		! source line 2902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2903,r13		! source line 2903
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3125 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_3125  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2904,r13		! source line 2904
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2905,r13		! source line 2905
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3126 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3126  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2906,r13		! source line 2906
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2907,r13		! source line 2907
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3127 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3127  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2908,r13		! source line 2908
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2909,r13		! source line 2909
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_3128 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3128  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2910,r13		! source line 2910
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2911,r13		! source line 2911
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2912,r13		! source line 2912
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2912,r13		! source line 2912
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
	.word	_Label_3129
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_3130
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3131
	.word	-12
	.word	4
	.word	_Label_3132
	.word	-16
	.word	4
	.word	_Label_3133
	.word	-20
	.word	4
	.word	_Label_3134
	.word	-24
	.word	4
	.word	_Label_3135
	.word	-28
	.word	4
	.word	_Label_3136
	.word	-32
	.word	4
	.word	0
_Label_3129:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3130:
	.ascii	"Pself\0"
	.align
_Label_3131:
	.byte	'?'
	.ascii	"_temp_3128\0"
	.align
_Label_3132:
	.byte	'?'
	.ascii	"_temp_3127\0"
	.align
_Label_3133:
	.byte	'?'
	.ascii	"_temp_3126\0"
	.align
_Label_3134:
	.byte	'?'
	.ascii	"_temp_3125\0"
	.align
_Label_3135:
	.byte	'?'
	.ascii	"_temp_3124\0"
	.align
_Label_3136:
	.byte	'?'
	.ascii	"_temp_3123\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_3137
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_3137:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_3138
	.word	_sourceFileName
	.word	374		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_3138:
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
_Label_3479:
	push	r0
	sub	r1,1,r1
	bne	_Label_3479
	mov	2923,r13		! source line 2923
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_3139 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3139  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2924,r13		! source line 2924
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2925,r13		! source line 2925
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_3140 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3140  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2926,r13		! source line 2926
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_3142		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_3142
!	jmp	_Label_3141
_Label_3141:
! THEN...
	mov	2928,r13		! source line 2928
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2928,r13		! source line 2928
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
	jmp	_Label_3143
_Label_3142:
! ELSE...
	mov	2930,r13		! source line 2930
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_3144 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_3144  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2930,r13		! source line 2930
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_3143:
! RETURN STATEMENT...
	mov	2927,r13		! source line 2927
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
	.word	_Label_3145
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_3146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3147
	.word	-12
	.word	4
	.word	_Label_3148
	.word	-16
	.word	4
	.word	_Label_3149
	.word	-20
	.word	4
	.word	0
_Label_3145:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_3146:
	.ascii	"Pself\0"
	.align
_Label_3147:
	.byte	'?'
	.ascii	"_temp_3144\0"
	.align
_Label_3148:
	.byte	'?'
	.ascii	"_temp_3140\0"
	.align
_Label_3149:
	.byte	'?'
	.ascii	"_temp_3139\0"
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
_Label_3480:
	push	r0
	sub	r1,1,r1
	bne	_Label_3480
	mov	2936,r13		! source line 2936
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0SE",r10
!   _temp_3150 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_3151 = _temp_3150 + 4
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
	mov	2947,r13		! source line 2947
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2948,r13		! source line 2948
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
	mov	2949,r13		! source line 2949
	mov	"\0\0SE",r10
!   _temp_3152 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_3153 = _temp_3152 + 4
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
	mov	2950,r13		! source line 2950
	mov	"\0\0RE",r10
	mov	2950,r13		! source line 2950
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_3156 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_3155  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3154  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_3154  (sizeInBytes=1)
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
	.word	_Label_3157
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_3158
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3159
	.word	12
	.word	4
	.word	_Label_3160
	.word	16
	.word	4
	.word	_Label_3161
	.word	-16
	.word	4
	.word	_Label_3162
	.word	-20
	.word	4
	.word	_Label_3163
	.word	-9
	.word	1
	.word	_Label_3164
	.word	-24
	.word	4
	.word	_Label_3165
	.word	-28
	.word	4
	.word	_Label_3166
	.word	-32
	.word	4
	.word	_Label_3167
	.word	-36
	.word	4
	.word	_Label_3168
	.word	-40
	.word	4
	.word	0
_Label_3157:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_3158:
	.ascii	"Pself\0"
	.align
_Label_3159:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_3160:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_3161:
	.byte	'?'
	.ascii	"_temp_3156\0"
	.align
_Label_3162:
	.byte	'?'
	.ascii	"_temp_3155\0"
	.align
_Label_3163:
	.byte	'C'
	.ascii	"_temp_3154\0"
	.align
_Label_3164:
	.byte	'?'
	.ascii	"_temp_3153\0"
	.align
_Label_3165:
	.byte	'?'
	.ascii	"_temp_3152\0"
	.align
_Label_3166:
	.byte	'?'
	.ascii	"_temp_3151\0"
	.align
_Label_3167:
	.byte	'?'
	.ascii	"_temp_3150\0"
	.align
_Label_3168:
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
_Label_3481:
	push	r0
	sub	r1,1,r1
	bne	_Label_3481
	mov	2955,r13		! source line 2955
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0IF",r10
	mov	2960,r13		! source line 2960
	mov	"\0\0SE",r10
!   _temp_3172 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_3173) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_3172  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_3171  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3171 then goto _Label_3170 else goto _Label_3169
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3169
	jmp	_Label_3170
_Label_3169:
! THEN...
	mov	2961,r13		! source line 2961
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3174 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_3174  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2961,r13		! source line 2961
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3170:
! RETURN STATEMENT...
	mov	2963,r13		! source line 2963
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
	.word	_Label_3175
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_3176
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3177
	.word	-16
	.word	4
	.word	_Label_3178
	.word	-20
	.word	4
	.word	_Label_3179
	.word	-24
	.word	4
	.word	_Label_3180
	.word	-9
	.word	1
	.word	_Label_3181
	.word	-28
	.word	4
	.word	0
_Label_3175:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_3176:
	.ascii	"Pself\0"
	.align
_Label_3177:
	.byte	'?'
	.ascii	"_temp_3174\0"
	.align
_Label_3178:
	.byte	'?'
	.ascii	"_temp_3173\0"
	.align
_Label_3179:
	.byte	'?'
	.ascii	"_temp_3172\0"
	.align
_Label_3180:
	.byte	'C'
	.ascii	"_temp_3171\0"
	.align
_Label_3181:
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
_Label_3482:
	push	r0
	sub	r1,1,r1
	bne	_Label_3482
	mov	2968,r13		! source line 2968
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_3185 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_3184 = *_temp_3185  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_3184) then goto _Label_3183
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_3183
!	jmp	_Label_3182
_Label_3182:
! THEN...
	mov	2995,r13		! source line 2995
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3186 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_3186  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2995,r13		! source line 2995
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_3183:
! IF STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0IF",r10
	mov	2999,r13		! source line 2999
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_3190) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3189  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_3189 == 1112300152 then goto _Label_3188		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_3188
!	jmp	_Label_3187
_Label_3187:
! THEN...
	mov	3000,r13		! source line 3000
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3191 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_3191  sizeInBytes=4
	load	[r14+-200],r1
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
_Label_3188:
! ASSIGNMENT STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0AS",r10
	mov	3005,r13		! source line 3005
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_3192) then goto _runtimeErrorNullPointer
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
	mov	3006,r13		! source line 3006
	mov	"\0\0AS",r10
	mov	3006,r13		! source line 3006
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_3193) then goto _runtimeErrorNullPointer
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
	mov	3007,r13		! source line 3007
	mov	"\0\0AS",r10
	mov	3007,r13		! source line 3007
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_3194) then goto _runtimeErrorNullPointer
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
	mov	3008,r13		! source line 3008
	mov	"\0\0AS",r10
	mov	3008,r13		! source line 3008
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_3195) then goto _runtimeErrorNullPointer
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
	mov	3009,r13		! source line 3009
	mov	"\0\0AS",r10
	mov	3009,r13		! source line 3009
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_3196) then goto _runtimeErrorNullPointer
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
	mov	3010,r13		! source line 3010
	mov	"\0\0AS",r10
	mov	3010,r13		! source line 3010
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_3197) then goto _runtimeErrorNullPointer
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
	mov	3013,r13		! source line 3013
	mov	"\0\0IF",r10
!   _temp_3200 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_3200) then goto _Label_3199
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_3199
!	jmp	_Label_3198
_Label_3198:
! THEN...
	mov	3014,r13		! source line 3014
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3201 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_3201  sizeInBytes=4
	load	[r14+-168],r1
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
_Label_3199:
! ASSIGNMENT STATEMENT...
	mov	3017,r13		! source line 3017
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
	mov	3021,r13		! source line 3021
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_3203
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_3203
!	jmp	_Label_3202
_Label_3202:
! THEN...
	mov	3022,r13		! source line 3022
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3204 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_3204  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	3022,r13		! source line 3022
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3203:
! IF STATEMENT...
	mov	3027,r13		! source line 3027
	mov	"\0\0IF",r10
!   _temp_3207 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_3207) then goto _Label_3206
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_3206
!	jmp	_Label_3205
_Label_3205:
! THEN...
	mov	3028,r13		! source line 3028
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3208 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_3208  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	3028,r13		! source line 3028
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3029,r13		! source line 3029
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3206:
! IF STATEMENT...
	mov	3031,r13		! source line 3031
	mov	"\0\0IF",r10
!   _temp_3211 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_3211 then goto _Label_3210		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_3210
!	jmp	_Label_3209
_Label_3209:
! THEN...
	mov	3032,r13		! source line 3032
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3212 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_3212  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	3032,r13		! source line 3032
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3033,r13		! source line 3033
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
	mov	3035,r13		! source line 3035
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
	mov	3038,r13		! source line 3038
	mov	"\0\0IF",r10
!   _temp_3215 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_3215) then goto _Label_3214
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_3214
!	jmp	_Label_3213
_Label_3213:
! THEN...
	mov	3039,r13		! source line 3039
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3216 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_3216  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	3039,r13		! source line 3039
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3040,r13		! source line 3040
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3214:
! IF STATEMENT...
	mov	3042,r13		! source line 3042
	mov	"\0\0IF",r10
!   _temp_3219 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_3219 then goto _Label_3218		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_3218
!	jmp	_Label_3217
_Label_3217:
! THEN...
	mov	3043,r13		! source line 3043
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3220 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_3220  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	3043,r13		! source line 3043
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	3044,r13		! source line 3044
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3218:
! ASSIGNMENT STATEMENT...
	mov	3046,r13		! source line 3046
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
	mov	3049,r13		! source line 3049
	mov	"\0\0AS",r10
!   _temp_3223 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_3222 = _temp_3223 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_3221 = _temp_3222 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_3221 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	3064,r13		! source line 3064
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_3225		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_3225
!	jmp	_Label_3224
_Label_3224:
! THEN...
	mov	3065,r13		! source line 3065
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3226 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_3226  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	3065,r13		! source line 3065
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_3227 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_3227  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	3066,r13		! source line 3066
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_3228 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_3228  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	3067,r13		! source line 3067
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	3068,r13		! source line 3068
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3225:
! SEND STATEMENT...
	mov	3070,r13		! source line 3070
	mov	"\0\0SE",r10
!   _temp_3229 = &_P_Kernel_frameManager
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
	mov	3076,r13		! source line 3076
	mov	"\0\0IF",r10
	mov	3076,r13		! source line 3076
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_3233) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3232  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_3232 == 707406378 then goto _Label_3231		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3231
!	jmp	_Label_3230
_Label_3230:
! THEN...
	mov	3077,r13		! source line 3077
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3234 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_3234  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	3077,r13		! source line 3077
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3078,r13		! source line 3078
	mov	"\0\0SE",r10
!   _temp_3235 = &_P_Kernel_frameManager
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
_Label_3231:
! ASSIGNMENT STATEMENT...
	mov	3083,r13		! source line 3083
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
	mov	3084,r13		! source line 3084
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3240 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3241 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3240  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_3236:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3241 then goto _Label_3239		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3239
_Label_3237:
	mov	3084,r13		! source line 3084
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3085,r13		! source line 3085
	mov	"\0\0AS",r10
	mov	3085,r13		! source line 3085
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
	mov	3088,r13		! source line 3088
	mov	"\0\0IF",r10
	mov	3088,r13		! source line 3088
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_3245) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3244  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_3244 then goto _Label_3243 else goto _Label_3242
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_3242
	jmp	_Label_3243
_Label_3242:
! THEN...
	mov	3089,r13		! source line 3089
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3246 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_3246  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	3089,r13		! source line 3089
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3090,r13		! source line 3090
	mov	"\0\0SE",r10
!   _temp_3247 = &_P_Kernel_frameManager
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
	mov	3091,r13		! source line 3091
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3243:
! SEND STATEMENT...
	mov	3093,r13		! source line 3093
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
	mov	3094,r13		! source line 3094
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3238:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3236
! END FOR
_Label_3239:
! IF STATEMENT...
	mov	3098,r13		! source line 3098
	mov	"\0\0IF",r10
	mov	3098,r13		! source line 3098
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_3251) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3250  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_3250 == 707406378 then goto _Label_3249		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3249
!	jmp	_Label_3248
_Label_3248:
! THEN...
	mov	3099,r13		! source line 3099
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3252 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_3252  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3099,r13		! source line 3099
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3100,r13		! source line 3100
	mov	"\0\0SE",r10
!   _temp_3253 = &_P_Kernel_frameManager
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
	mov	3101,r13		! source line 3101
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
! FOR STATEMENT...
	mov	3105,r13		! source line 3105
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_3258 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_3259 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_3258  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_3254:
!   Perform the FOR-LOOP termination test
!   if i > _temp_3259 then goto _Label_3257		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_3257
_Label_3255:
	mov	3105,r13		! source line 3105
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3106,r13		! source line 3106
	mov	"\0\0AS",r10
	mov	3106,r13		! source line 3106
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
	mov	3109,r13		! source line 3109
	mov	"\0\0IF",r10
	mov	3109,r13		! source line 3109
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_3263) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3262  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_3262 then goto _Label_3261 else goto _Label_3260
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_3260
	jmp	_Label_3261
_Label_3260:
! THEN...
	mov	3110,r13		! source line 3110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3264 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_3264  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3110,r13		! source line 3110
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3111,r13		! source line 3111
	mov	"\0\0SE",r10
!   _temp_3265 = &_P_Kernel_frameManager
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
	mov	3112,r13		! source line 3112
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3261:
! ASSIGNMENT STATEMENT...
	mov	3114,r13		! source line 3114
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_3256:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_3254
! END FOR
_Label_3257:
! IF STATEMENT...
	mov	3118,r13		! source line 3118
	mov	"\0\0IF",r10
	mov	3118,r13		! source line 3118
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_3269) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_3268  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_3268 == 707406378 then goto _Label_3267		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_3267
!	jmp	_Label_3266
_Label_3266:
! THEN...
	mov	3119,r13		! source line 3119
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_3270 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_3270  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3119,r13		! source line 3119
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3120,r13		! source line 3120
	mov	"\0\0SE",r10
!   _temp_3271 = &_P_Kernel_frameManager
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
	mov	3121,r13		! source line 3121
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_3267:
! ASSIGNMENT STATEMENT...
	mov	3125,r13		! source line 3125
	mov	"\0\0AS",r10
	mov	3125,r13		! source line 3125
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
	mov	3129,r13		! source line 3129
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3132,r13		! source line 3132
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
	.word	_Label_3272
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_3273
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_3274
	.word	12
	.word	4
	.word	_Label_3275
	.word	-16
	.word	4
	.word	_Label_3276
	.word	-20
	.word	4
	.word	_Label_3277
	.word	-24
	.word	4
	.word	_Label_3278
	.word	-28
	.word	4
	.word	_Label_3279
	.word	-32
	.word	4
	.word	_Label_3280
	.word	-36
	.word	4
	.word	_Label_3281
	.word	-40
	.word	4
	.word	_Label_3282
	.word	-9
	.word	1
	.word	_Label_3283
	.word	-44
	.word	4
	.word	_Label_3284
	.word	-48
	.word	4
	.word	_Label_3285
	.word	-52
	.word	4
	.word	_Label_3286
	.word	-56
	.word	4
	.word	_Label_3287
	.word	-60
	.word	4
	.word	_Label_3288
	.word	-64
	.word	4
	.word	_Label_3289
	.word	-68
	.word	4
	.word	_Label_3290
	.word	-72
	.word	4
	.word	_Label_3291
	.word	-76
	.word	4
	.word	_Label_3292
	.word	-10
	.word	1
	.word	_Label_3293
	.word	-80
	.word	4
	.word	_Label_3294
	.word	-84
	.word	4
	.word	_Label_3295
	.word	-88
	.word	4
	.word	_Label_3296
	.word	-92
	.word	4
	.word	_Label_3297
	.word	-96
	.word	4
	.word	_Label_3298
	.word	-100
	.word	4
	.word	_Label_3299
	.word	-104
	.word	4
	.word	_Label_3300
	.word	-108
	.word	4
	.word	_Label_3301
	.word	-112
	.word	4
	.word	_Label_3302
	.word	-116
	.word	4
	.word	_Label_3303
	.word	-120
	.word	4
	.word	_Label_3304
	.word	-124
	.word	4
	.word	_Label_3305
	.word	-128
	.word	4
	.word	_Label_3306
	.word	-132
	.word	4
	.word	_Label_3307
	.word	-136
	.word	4
	.word	_Label_3308
	.word	-140
	.word	4
	.word	_Label_3309
	.word	-144
	.word	4
	.word	_Label_3310
	.word	-148
	.word	4
	.word	_Label_3311
	.word	-152
	.word	4
	.word	_Label_3312
	.word	-156
	.word	4
	.word	_Label_3313
	.word	-160
	.word	4
	.word	_Label_3314
	.word	-164
	.word	4
	.word	_Label_3315
	.word	-168
	.word	4
	.word	_Label_3316
	.word	-172
	.word	4
	.word	_Label_3317
	.word	-176
	.word	4
	.word	_Label_3318
	.word	-180
	.word	4
	.word	_Label_3319
	.word	-184
	.word	4
	.word	_Label_3320
	.word	-188
	.word	4
	.word	_Label_3321
	.word	-192
	.word	4
	.word	_Label_3322
	.word	-196
	.word	4
	.word	_Label_3323
	.word	-200
	.word	4
	.word	_Label_3324
	.word	-204
	.word	4
	.word	_Label_3325
	.word	-208
	.word	4
	.word	_Label_3326
	.word	-212
	.word	4
	.word	_Label_3327
	.word	-216
	.word	4
	.word	_Label_3328
	.word	-220
	.word	4
	.word	_Label_3329
	.word	-224
	.word	4
	.word	_Label_3330
	.word	-228
	.word	4
	.word	_Label_3331
	.word	-232
	.word	4
	.word	_Label_3332
	.word	-236
	.word	4
	.word	_Label_3333
	.word	-240
	.word	4
	.word	_Label_3334
	.word	-244
	.word	4
	.word	_Label_3335
	.word	-248
	.word	4
	.word	_Label_3336
	.word	-252
	.word	4
	.word	_Label_3337
	.word	-256
	.word	4
	.word	_Label_3338
	.word	-260
	.word	4
	.word	_Label_3339
	.word	-264
	.word	4
	.word	_Label_3340
	.word	-268
	.word	4
	.word	0
_Label_3272:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_3273:
	.ascii	"Pself\0"
	.align
_Label_3274:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_3275:
	.byte	'?'
	.ascii	"_temp_3271\0"
	.align
_Label_3276:
	.byte	'?'
	.ascii	"_temp_3270\0"
	.align
_Label_3277:
	.byte	'?'
	.ascii	"_temp_3269\0"
	.align
_Label_3278:
	.byte	'?'
	.ascii	"_temp_3268\0"
	.align
_Label_3279:
	.byte	'?'
	.ascii	"_temp_3265\0"
	.align
_Label_3280:
	.byte	'?'
	.ascii	"_temp_3264\0"
	.align
_Label_3281:
	.byte	'?'
	.ascii	"_temp_3263\0"
	.align
_Label_3282:
	.byte	'C'
	.ascii	"_temp_3262\0"
	.align
_Label_3283:
	.byte	'?'
	.ascii	"_temp_3259\0"
	.align
_Label_3284:
	.byte	'?'
	.ascii	"_temp_3258\0"
	.align
_Label_3285:
	.byte	'?'
	.ascii	"_temp_3253\0"
	.align
_Label_3286:
	.byte	'?'
	.ascii	"_temp_3252\0"
	.align
_Label_3287:
	.byte	'?'
	.ascii	"_temp_3251\0"
	.align
_Label_3288:
	.byte	'?'
	.ascii	"_temp_3250\0"
	.align
_Label_3289:
	.byte	'?'
	.ascii	"_temp_3247\0"
	.align
_Label_3290:
	.byte	'?'
	.ascii	"_temp_3246\0"
	.align
_Label_3291:
	.byte	'?'
	.ascii	"_temp_3245\0"
	.align
_Label_3292:
	.byte	'C'
	.ascii	"_temp_3244\0"
	.align
_Label_3293:
	.byte	'?'
	.ascii	"_temp_3241\0"
	.align
_Label_3294:
	.byte	'?'
	.ascii	"_temp_3240\0"
	.align
_Label_3295:
	.byte	'?'
	.ascii	"_temp_3235\0"
	.align
_Label_3296:
	.byte	'?'
	.ascii	"_temp_3234\0"
	.align
_Label_3297:
	.byte	'?'
	.ascii	"_temp_3233\0"
	.align
_Label_3298:
	.byte	'?'
	.ascii	"_temp_3232\0"
	.align
_Label_3299:
	.byte	'?'
	.ascii	"_temp_3229\0"
	.align
_Label_3300:
	.byte	'?'
	.ascii	"_temp_3228\0"
	.align
_Label_3301:
	.byte	'?'
	.ascii	"_temp_3227\0"
	.align
_Label_3302:
	.byte	'?'
	.ascii	"_temp_3226\0"
	.align
_Label_3303:
	.byte	'?'
	.ascii	"_temp_3223\0"
	.align
_Label_3304:
	.byte	'?'
	.ascii	"_temp_3222\0"
	.align
_Label_3305:
	.byte	'?'
	.ascii	"_temp_3221\0"
	.align
_Label_3306:
	.byte	'?'
	.ascii	"_temp_3220\0"
	.align
_Label_3307:
	.byte	'?'
	.ascii	"_temp_3219\0"
	.align
_Label_3308:
	.byte	'?'
	.ascii	"_temp_3216\0"
	.align
_Label_3309:
	.byte	'?'
	.ascii	"_temp_3215\0"
	.align
_Label_3310:
	.byte	'?'
	.ascii	"_temp_3212\0"
	.align
_Label_3311:
	.byte	'?'
	.ascii	"_temp_3211\0"
	.align
_Label_3312:
	.byte	'?'
	.ascii	"_temp_3208\0"
	.align
_Label_3313:
	.byte	'?'
	.ascii	"_temp_3207\0"
	.align
_Label_3314:
	.byte	'?'
	.ascii	"_temp_3204\0"
	.align
_Label_3315:
	.byte	'?'
	.ascii	"_temp_3201\0"
	.align
_Label_3316:
	.byte	'?'
	.ascii	"_temp_3200\0"
	.align
_Label_3317:
	.byte	'?'
	.ascii	"_temp_3197\0"
	.align
_Label_3318:
	.byte	'?'
	.ascii	"_temp_3196\0"
	.align
_Label_3319:
	.byte	'?'
	.ascii	"_temp_3195\0"
	.align
_Label_3320:
	.byte	'?'
	.ascii	"_temp_3194\0"
	.align
_Label_3321:
	.byte	'?'
	.ascii	"_temp_3193\0"
	.align
_Label_3322:
	.byte	'?'
	.ascii	"_temp_3192\0"
	.align
_Label_3323:
	.byte	'?'
	.ascii	"_temp_3191\0"
	.align
_Label_3324:
	.byte	'?'
	.ascii	"_temp_3190\0"
	.align
_Label_3325:
	.byte	'?'
	.ascii	"_temp_3189\0"
	.align
_Label_3326:
	.byte	'?'
	.ascii	"_temp_3186\0"
	.align
_Label_3327:
	.byte	'?'
	.ascii	"_temp_3185\0"
	.align
_Label_3328:
	.byte	'?'
	.ascii	"_temp_3184\0"
	.align
_Label_3329:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3330:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3331:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3332:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3333:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3334:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3335:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3336:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3337:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3338:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3339:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3340:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
