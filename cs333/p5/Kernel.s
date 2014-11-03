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
	.skip	1316
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
_StringConst_219:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_218:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_217:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_216:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_215:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_214:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_213:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_212:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_211:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_210:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_209:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_208:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_207:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_206:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_205:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_204:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_203:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_202:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_201:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_200:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_199:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_198:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_197:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_196:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_195:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_194:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_193:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_192:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_191:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_190:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_189:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_188:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_187:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_186:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_185:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_184:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_183:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_182:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_181:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_180:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_179:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_178:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_177:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_176:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_175:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_174:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_173:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_172:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_171:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_170:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_169:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_168:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_167:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_166:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_165:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_164:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_163:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_162:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_161:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_160:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_159:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_158:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_157:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_156:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_155:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_154:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_153:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_152:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_151:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_150:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_148:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_147:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_146:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_145:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_144:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_143:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_142:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_141:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_140:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_139:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_138:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_137:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_136:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_135:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_134:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_133:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_132:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_131:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_130:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_129:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_128:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_127:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_126:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_125:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_124:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_123:
	.word	32			! length
	.ascii	"Trying to Free an Invalid Thread"
	.align
_StringConst_122:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_121:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_120:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_119:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_118:
	.word	8			! length
	.ascii	"thread_9"
	.align
_StringConst_117:
	.word	8			! length
	.ascii	"thread_8"
	.align
_StringConst_116:
	.word	8			! length
	.ascii	"thread_7"
	.align
_StringConst_115:
	.word	8			! length
	.ascii	"thread_6"
	.align
_StringConst_114:
	.word	8			! length
	.ascii	"thread_5"
	.align
_StringConst_113:
	.word	8			! length
	.ascii	"thread_4"
	.align
_StringConst_112:
	.word	8			! length
	.ascii	"thread_3"
	.align
_StringConst_111:
	.word	8			! length
	.ascii	"thread_2"
	.align
_StringConst_110:
	.word	8			! length
	.ascii	"thread_1"
	.align
_StringConst_109:
	.word	8			! length
	.ascii	"thread_0"
	.align
_StringConst_108:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_107:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_106:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_104:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_103:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_99:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_98:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_97:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_96:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_95:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_94:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_93:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_92:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_91:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_90:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_89:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_87:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_86:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_85:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_83:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_81:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_80:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_78:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_75:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_74:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_73:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_72:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_71:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_70:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_69:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_68:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_67:
	.word	40			! length
	.ascii	" Handle_Sys_Close called with fileDes = "
	.align
_StringConst_66:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_65:
	.word	21			! length
	.ascii	" and newCurrentPos = "
	.align
_StringConst_64:
	.word	39			! length
	.ascii	"Handle_Sys_Seek called with fileDesc = "
	.align
_StringConst_63:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_62:
	.word	16			! length
	.ascii	", sizeInBytes = "
	.align
_StringConst_61:
	.word	28			! length
	.ascii	", Buffer(Virtual Address) = "
	.align
_StringConst_60:
	.word	40			! length
	.ascii	"Handle_Sys_Write called with fileDesc = "
	.align
_StringConst_59:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_58:
	.word	16			! length
	.ascii	", sizeInBytes = "
	.align
_StringConst_57:
	.word	28			! length
	.ascii	", Buffer(Virtual Address) = "
	.align
_StringConst_56:
	.word	39			! length
	.ascii	"Handle_Sys_Read called with fileDesc = "
	.align
_StringConst_55:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_54:
	.word	16			! length
	.ascii	" and filename = "
	.align
_StringConst_53:
	.word	18			! length
	.ascii	"Virtual Address = "
	.align
_StringConst_52:
	.word	29			! length
	.ascii	" Handle_Sys_Open called with "
	.align
_StringConst_51:
	.word	43			! length
	.ascii	"ERROR: Error has occured in Handle_Sys_Open"
	.align
_StringConst_50:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_49:
	.word	16			! length
	.ascii	" and filename = "
	.align
_StringConst_48:
	.word	18			! length
	.ascii	"Virtual Address = "
	.align
_StringConst_47:
	.word	31			! length
	.ascii	" Handle_Sys_Create called with "
	.align
_StringConst_46:
	.word	45			! length
	.ascii	"ERROR: Error has occured in Handle_Sys_Create"
	.align
_StringConst_45:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_44:
	.word	40			! length
	.ascii	"Handle_Sys_Join called with ProcessID = "
	.align
_StringConst_43:
	.word	25			! length
	.ascii	"Handle_Sys_Fork called. \n"
	.align
_StringConst_42:
	.word	26			! length
	.ascii	"Handle_Sys_Yield called. \n"
	.align
_StringConst_41:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_40:
	.word	2			! length
	.ascii	".\n"
	.align
_StringConst_39:
	.word	44			! length
	.ascii	"Handle_sys_Exit called with return status = "
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
	.ascii	"ERROR: Cannot open \'TestProgram1\'."
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	17			! length
	.ascii	"UserProgramThread"
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
	set	0xd65278d8,r4		! myHashVal = -699238184
	cmp	r3,r4
	be	_Label_229
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
_Label_229:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_230
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_230
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_230
_Label_230:
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
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	9,r13		! source line 9
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_231 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
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
_Label_3043:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3043
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0SE",r10
!   _temp_235 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_236 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_235  sizeInBytes=4
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
!   _temp_237 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_238 = _temp_237 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_238 = 3  (sizeInBytes=4)
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
_Label_3044:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3044
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_240 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_241 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_240  sizeInBytes=4
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
!   _temp_242 = _function_228_IdleFunction
	set	_function_228_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_243 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_242  sizeInBytes=4
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
	.word	_Label_244
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_245
	.word	-12
	.word	4
	.word	_Label_246
	.word	-16
	.word	4
	.word	_Label_247
	.word	-20
	.word	4
	.word	_Label_248
	.word	-24
	.word	4
	.word	_Label_249
	.word	-28
	.word	4
	.word	_Label_250
	.word	-32
	.word	4
	.word	_Label_251
	.word	-36
	.word	4
	.word	_Label_252
	.word	-40
	.word	4
	.word	_Label_253
	.word	-44
	.word	4
	.word	_Label_254
	.word	-48
	.word	4
	.word	_Label_255
	.word	-52
	.word	4
	.word	_Label_256
	.word	-56
	.word	4
	.word	_Label_257
	.word	-60
	.word	4
	.word	0
_Label_244:
	.ascii	"InitializeScheduler\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_228_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_228_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	34,r13		! source line 34
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0WH",r10
_Label_258:
!	jmp	_Label_259
_Label_259:
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
!   _temp_263 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_261 else goto _Label_262
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_262
	jmp	_Label_261
_Label_261:
! THEN...
	mov	47,r13		! source line 47
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_264
_Label_262:
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
_Label_264:
! END WHILE...
	jmp	_Label_258
_Label_260:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_228_IdleFunction:
	.word	_sourceFileName
	.word	_Label_265
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_266
	.word	8
	.word	4
	.word	_Label_267
	.word	-12
	.word	4
	.word	_Label_268
	.word	-16
	.word	4
	.word	0
_Label_265:
	.ascii	"IdleFunction\0"
	.align
_Label_266:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_268:
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
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
!   _temp_271 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_271 ) then goto _Label_270		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_270
!	jmp	_Label_269
_Label_269:
! THEN...
	mov	73,r13		! source line 73
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_273 [0 ] into _temp_274
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
!   _temp_272 = _temp_274		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_270:
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
!   _temp_275 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_275 = 3  (sizeInBytes=4)
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
_Label_276:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_280 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_279  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_279 then goto _Label_278 else goto _Label_277
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_277
	jmp	_Label_278
_Label_277:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_281 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_282 = &_P_Kernel_threadManager
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
	jmp	_Label_276
_Label_278:
! IF STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_285 ) then goto _Label_284		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_284
!	jmp	_Label_283
_Label_283:
! THEN...
	mov	92,r13		! source line 92
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_287 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_287 [0 ] into _temp_288
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
!   _temp_286 = _temp_288		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
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
!   _temp_290 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_289 = *_temp_290  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_289) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_291 = _temp_289 + 32
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
_Label_284:
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
	.word	_Label_292
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_293
	.word	8
	.word	4
	.word	_Label_294
	.word	-16
	.word	4
	.word	_Label_295
	.word	-20
	.word	4
	.word	_Label_296
	.word	-24
	.word	4
	.word	_Label_297
	.word	-28
	.word	4
	.word	_Label_298
	.word	-32
	.word	4
	.word	_Label_299
	.word	-36
	.word	4
	.word	_Label_300
	.word	-40
	.word	4
	.word	_Label_301
	.word	-44
	.word	4
	.word	_Label_302
	.word	-48
	.word	4
	.word	_Label_303
	.word	-52
	.word	4
	.word	_Label_304
	.word	-9
	.word	1
	.word	_Label_305
	.word	-56
	.word	4
	.word	_Label_306
	.word	-60
	.word	4
	.word	_Label_307
	.word	-64
	.word	4
	.word	_Label_308
	.word	-68
	.word	4
	.word	_Label_309
	.word	-72
	.word	4
	.word	_Label_310
	.word	-76
	.word	4
	.word	_Label_311
	.word	-80
	.word	4
	.word	0
_Label_292:
	.ascii	"Run\0"
	.align
_Label_293:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_304:
	.byte	'C'
	.ascii	"_temp_279\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_310:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_311:
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
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
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
!   _temp_312 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_313 = _function_227_ThreadPrintShort
	set	_function_227_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_314 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_313  sizeInBytes=4
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
	.word	_Label_315
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_316
	.word	-12
	.word	4
	.word	_Label_317
	.word	-16
	.word	4
	.word	_Label_318
	.word	-20
	.word	4
	.word	_Label_319
	.word	-24
	.word	4
	.word	0
_Label_315:
	.ascii	"PrintReadyList\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_319:
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
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
!   _temp_320 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_320  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
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
!   _temp_323 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
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
	.word	_Label_324
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_325
	.word	-12
	.word	4
	.word	_Label_326
	.word	-16
	.word	4
	.word	_Label_327
	.word	-20
	.word	4
	.word	_Label_328
	.word	-24
	.word	4
	.word	_Label_329
	.word	-28
	.word	4
	.word	_Label_330
	.word	-32
	.word	4
	.word	0
_Label_324:
	.ascii	"ThreadStartMain\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_330:
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
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
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
!   _temp_331 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_332 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
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
	.word	_Label_333
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_334
	.word	-12
	.word	4
	.word	_Label_335
	.word	-16
	.word	4
	.word	_Label_336
	.word	-20
	.word	4
	.word	0
_Label_333:
	.ascii	"ThreadFinish\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_336:
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
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
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
!   _temp_337 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_339		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_339
!	jmp	_Label_338
_Label_338:
! THEN...
	mov	169,r13		! source line 169
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_340 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
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
!   _temp_342 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_341 = *_temp_342  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_341  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_339:
! CALL STATEMENT...
!   _temp_343 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
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
!   _temp_344 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_345 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
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
	.word	_Label_346
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_347
	.word	8
	.word	4
	.word	_Label_348
	.word	-12
	.word	4
	.word	_Label_349
	.word	-16
	.word	4
	.word	_Label_350
	.word	-20
	.word	4
	.word	_Label_351
	.word	-24
	.word	4
	.word	_Label_352
	.word	-28
	.word	4
	.word	_Label_353
	.word	-32
	.word	4
	.word	_Label_354
	.word	-36
	.word	4
	.word	_Label_355
	.word	-40
	.word	4
	.word	0
_Label_346:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_347:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_355:
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
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
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
!   if newStatus != 1 then goto _Label_357		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_357
!	jmp	_Label_356
_Label_356:
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
	jmp	_Label_358
_Label_357:
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
_Label_358:
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
	.word	_Label_359
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_360
	.word	8
	.word	4
	.word	_Label_361
	.word	-12
	.word	4
	.word	0
_Label_359:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_360:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_227_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_227_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
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
!   if t == 0 then goto _Label_365		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_365
!   _temp_364 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_366
_Label_365:
!   _temp_364 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_366:
!   if _temp_364 then goto _Label_363 else goto _Label_362
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_362
	jmp	_Label_363
_Label_362:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_367 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_367  sizeInBytes=4
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
_Label_363:
! CALL STATEMENT...
!   _temp_368 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
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
!   _temp_370 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_369 = *_temp_370  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_371 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
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
!   _temp_380 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_379 = *_temp_380  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_374
	cmp	r1,2
	be	_Label_375
	cmp	r1,3
	be	_Label_376
	cmp	r1,4
	be	_Label_377
	cmp	r1,5
	be	_Label_378
	jmp	_Label_372
! CASE 1...
_Label_374:
! CALL STATEMENT...
!   _temp_381 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_373
! CASE 2...
_Label_375:
! CALL STATEMENT...
!   _temp_382 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_373
! CASE 3...
_Label_376:
! CALL STATEMENT...
!   _temp_383 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0BR",r10
	jmp	_Label_373
! CASE 4...
_Label_377:
! CALL STATEMENT...
!   _temp_384 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0BR",r10
	jmp	_Label_373
! CASE 5...
_Label_378:
! CALL STATEMENT...
!   _temp_385 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0BR",r10
	jmp	_Label_373
! DEFAULT CASE...
_Label_372:
! CALL STATEMENT...
!   _temp_386 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
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
_Label_373:
! CALL STATEMENT...
!   _temp_387 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_388 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_389 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
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
_RoutineDescriptor__function_227_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_390
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_391
	.word	8
	.word	4
	.word	_Label_392
	.word	-16
	.word	4
	.word	_Label_393
	.word	-20
	.word	4
	.word	_Label_394
	.word	-24
	.word	4
	.word	_Label_395
	.word	-28
	.word	4
	.word	_Label_396
	.word	-32
	.word	4
	.word	_Label_397
	.word	-36
	.word	4
	.word	_Label_398
	.word	-40
	.word	4
	.word	_Label_399
	.word	-44
	.word	4
	.word	_Label_400
	.word	-48
	.word	4
	.word	_Label_401
	.word	-52
	.word	4
	.word	_Label_402
	.word	-56
	.word	4
	.word	_Label_403
	.word	-60
	.word	4
	.word	_Label_404
	.word	-64
	.word	4
	.word	_Label_405
	.word	-68
	.word	4
	.word	_Label_406
	.word	-72
	.word	4
	.word	_Label_407
	.word	-76
	.word	4
	.word	_Label_408
	.word	-9
	.word	1
	.word	_Label_409
	.word	-80
	.word	4
	.word	0
_Label_390:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_391:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_408:
	.byte	'C'
	.ascii	"_temp_364\0"
	.align
_Label_409:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_226_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_226_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	1008,r13		! source line 1008
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_410 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1012,r13		! source line 1012
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1013,r13		! source line 1013
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_226_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_411
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_412
	.word	8
	.word	4
	.word	_Label_413
	.word	-12
	.word	4
	.word	0
_Label_411:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_412:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_410\0"
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	1018,r13		! source line 1018
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_414 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1024,r13		! source line 1024
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1024,r13		! source line 1024
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
	.word	_Label_415
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_416
	.word	8
	.word	4
	.word	_Label_417
	.word	-12
	.word	4
	.word	0
_Label_415:
	.ascii	"ProcessFinish\0"
	.align
_Label_416:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_414\0"
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
	mov	7,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	1029,r13		! source line 1029
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1033,r13		! source line 1033
	mov	"\0\0AS",r10
	mov	1033,r13		! source line 1033
	mov	"\0\0SE",r10
!   _temp_418 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=ptrThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1034,r13		! source line 1034
	mov	"\0\0SE",r10
!   _temp_419 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_419  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0SE",r10
!   _temp_420 = _function_225_StartUserProcess
	set	_function_225_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (ptrThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_420  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1035,r13		! source line 1035
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_421
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_422
	.word	-12
	.word	4
	.word	_Label_423
	.word	-16
	.word	4
	.word	_Label_424
	.word	-20
	.word	4
	.word	_Label_425
	.word	-24
	.word	4
	.word	0
_Label_421:
	.ascii	"InitFirstProcess\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"ptrThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_225_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_225_StartUserProcess,r1
	push	r1
	mov	26,r1
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	1042,r13		! source line 1042
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0AS",r10
	mov	1060,r13		! source line 1060
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
	mov	1061,r13		! source line 1061
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
	mov	1062,r13		! source line 1062
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
	mov	1065,r13		! source line 1065
	mov	"\0\0AS",r10
	mov	1065,r13		! source line 1065
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
	mov	1066,r13		! source line 1066
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile) then goto _Label_431
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_431
	jmp	_Label_432
_Label_431:
! THEN...
	mov	1067,r13		! source line 1067
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_433 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1067,r13		! source line 1067
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_432:
! ASSIGNMENT STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0AS",r10
	mov	1073,r13		! source line 1073
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
	mov	1074,r13		! source line 1074
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
	mov	1078,r13		! source line 1078
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
	mov	1079,r13		! source line 1079
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
	mov	1080,r13		! source line 1080
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1080,r13		! source line 1080
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
! SEND STATEMENT...
	mov	1081,r13		! source line 1081
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
	mov	1082,r13		! source line 1082
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
	mov	1083,r13		! source line 1083
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1083,r13		! source line 1083
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_225_StartUserProcess:
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
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	1599,r13		! source line 1599
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1609,r13		! source line 1609
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1611,r13		! source line 1611
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
	mov	1612,r13		! source line 1612
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1612,r13		! source line 1612
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	1617,r13		! source line 1617
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1631,r13		! source line 1631
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
	mov	1632,r13		! source line 1632
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1632,r13		! source line 1632
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
	mov	1631,r13		! source line 1631
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
	mov	1640,r13		! source line 1640
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1649,r13		! source line 1649
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
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
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
!   _temp_487 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1661,r13		! source line 1661
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
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
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
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
!   _temp_490 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1673,r13		! source line 1673
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
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
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
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
!   _temp_493 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1685,r13		! source line 1685
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
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
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	1690,r13		! source line 1690
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1696,r13		! source line 1696
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
	mov	1697,r13		! source line 1697
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1697,r13		! source line 1697
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
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	1702,r13		! source line 1702
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1708,r13		! source line 1708
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
	mov	1709,r13		! source line 1709
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1709,r13		! source line 1709
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	1714,r13		! source line 1714
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1720,r13		! source line 1720
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
	mov	1721,r13		! source line 1721
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1721,r13		! source line 1721
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
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	1726,r13		! source line 1726
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1732,r13		! source line 1732
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
	mov	1733,r13		! source line 1733
	mov	"\0\0CA",r10
	call	_function_224_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1733,r13		! source line 1733
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
_function_224_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_224_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1738,r13		! source line 1738
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
	mov	1743,r13		! source line 1743
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1744,r13		! source line 1744
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
	mov	1745,r13		! source line 1745
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1748,r13		! source line 1748
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
	mov	1749,r13		! source line 1749
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1749,r13		! source line 1749
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
	mov	1751,r13		! source line 1751
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_517 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1751,r13		! source line 1751
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_516:
! SEND STATEMENT...
	mov	1753,r13		! source line 1753
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
	mov	1759,r13		! source line 1759
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_224_ErrorInUserProcess:
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
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1764,r13		! source line 1764
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1785,r13		! source line 1785
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3068
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_527
_Label_3068:
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
	mov	1787,r13		! source line 1787
	mov	"\0\0RE",r10
!   Call the function
	mov	1787,r13		! source line 1787
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
	mov	1789,r13		! source line 1789
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
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
	mov	1792,r13		! source line 1792
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1792,r13		! source line 1792
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
	mov	1794,r13		! source line 1794
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1794,r13		! source line 1794
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
	mov	1796,r13		! source line 1796
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
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
	mov	1799,r13		! source line 1799
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
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
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1801,r13		! source line 1801
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
	mov	1803,r13		! source line 1803
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
	mov	1803,r13		! source line 1803
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
	mov	1805,r13		! source line 1805
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
	mov	1805,r13		! source line 1805
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
	mov	1807,r13		! source line 1807
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1807,r13		! source line 1807
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
	mov	1809,r13		! source line 1809
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
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
	mov	1812,r13		! source line 1812
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
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
	mov	1815,r13		! source line 1815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1817,r13		! source line 1817
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
	mov	1818,r13		! source line 1818
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_528:
! RETURN STATEMENT...
	mov	1820,r13		! source line 1820
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
	mov	3,r1
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	1825,r13		! source line 1825
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_568 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_569 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_570
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_571
	.word	8
	.word	4
	.word	_Label_572
	.word	-12
	.word	4
	.word	_Label_573
	.word	-16
	.word	4
	.word	0
_Label_570:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_568\0"
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
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	1835,r13		! source line 1835
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_574 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1837,r13		! source line 1837
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1837,r13		! source line 1837
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
	.word	_Label_575
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_576
	.word	-12
	.word	4
	.word	0
_Label_575:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_574\0"
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
	mov	2,r1
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	1842,r13		! source line 1842
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_577 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1844,r13		! source line 1844
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_578
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_579
	.word	-12
	.word	4
	.word	0
_Label_578:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_577\0"
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
	mov	2,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	1850,r13		! source line 1850
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_580 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1852,r13		! source line 1852
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_581
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_582
	.word	-12
	.word	4
	.word	0
_Label_581:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_580\0"
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
	mov	3,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	1858,r13		! source line 1858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_583 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_584 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_585
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_586
	.word	8
	.word	4
	.word	_Label_587
	.word	-12
	.word	4
	.word	_Label_588
	.word	-16
	.word	4
	.word	0
_Label_585:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_583\0"
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
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	1868,r13		! source line 1868
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-196,r4
	mov	23,r3
_Label_3075:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3075
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-196]
! SEND STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0SE",r10
!   _temp_590 = &newAddrSpace
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
	mov	1893,r13		! source line 1893
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
	store	r1,[r14+-92]
!   Data Move: ptrToPCB = *_temp_591  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	1896,r13		! source line 1896
	mov	"\0\0AS",r10
	mov	1896,r13		! source line 1896
	mov	"\0\0SE",r10
!   _temp_592 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-88]
!   _temp_593 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_592  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_593  sizeInBytes=4
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
	mov	1897,r13		! source line 1897
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_596		(int)
	load	[r14+-232],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_596
!	jmp	_Label_595
_Label_595:
! THEN...
	mov	1898,r13		! source line 1898
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1898,r13		! source line 1898
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_596:
! ASSIGNMENT STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0AS",r10
	mov	1902,r13		! source line 1902
	mov	"\0\0SE",r10
!   _temp_597 = &stringStorage
	add	r14,-220,r1
	store	r1,[r14+-76]
!   _temp_598 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_597  sizeInBytes=4
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
	mov	1903,r13		! source line 1903
	mov	"\0\0IF",r10
!   if intIsZero (ptrOpenFile2) then goto _Label_599
	load	[r14+-104],r1
	cmp	r1,r0
	be	_Label_599
	jmp	_Label_600
_Label_599:
! THEN...
	mov	1904,r13		! source line 1904
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_600:
! ASSIGNMENT STATEMENT...
	mov	1913,r13		! source line 1913
	mov	"\0\0AS",r10
	mov	1913,r13		! source line 1913
	mov	"\0\0SE",r10
!   _temp_601 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-68]
!   if intIsZero (ptrOpenFile2) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_601  sizeInBytes=4
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
	mov	1914,r13		! source line 1914
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_603		(int)
	load	[r14+-228],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_603
!	jmp	_Label_602
_Label_602:
! THEN...
	mov	1915,r13		! source line 1915
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,256,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_603:
! ASSIGNMENT STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0AS",r10
!   if intIsZero (ptrToPCB) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = ptrToPCB + 32
	load	[r14+-224],r1
	add	r1,32,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_604 = newAddrSpace  (sizeInBytes=92)
	add	r14,-196,r5
	load	[r14+-64],r4
	mov	23,r3
_Label_3076:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3076
! SEND STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0SE",r10
!   _temp_605 = &_P_Kernel_fileManager
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
	mov	1922,r13		! source line 1922
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-48]
!   Data Move: _temp_607 = *_temp_608  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_607) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _temp_607 + 32
	load	[r14+-52],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_606 = _temp_609		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-56]
!   _temp_610 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_606  sizeInBytes=4
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
	mov	1923,r13		! source line 1923
	mov	"\0\0AS",r10
!   _temp_612 = &newAddrSpace
	add	r14,-196,r1
	store	r1,[r14+-32]
!   _temp_613 = _temp_612 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_611 = *_temp_613  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_611 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_614 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_614 [999 ] into _temp_615
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
!   ptrInitSystemStackTop = _temp_615		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1925,r13		! source line 1925
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=previousStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_616 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_616 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_617 = ptrInitSystemStackTop		(4 bytes)
	load	[r14+-240],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_617  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1927,r13		! source line 1927
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
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
	.word	_Label_618
	.word	4		! total size of parameters
	.word	252		! frame size = 252
	.word	_Label_619
	.word	8
	.word	4
	.word	_Label_620
	.word	-12
	.word	4
	.word	_Label_621
	.word	-16
	.word	4
	.word	_Label_622
	.word	-20
	.word	4
	.word	_Label_623
	.word	-24
	.word	4
	.word	_Label_624
	.word	-28
	.word	4
	.word	_Label_625
	.word	-32
	.word	4
	.word	_Label_626
	.word	-36
	.word	4
	.word	_Label_627
	.word	-40
	.word	4
	.word	_Label_628
	.word	-44
	.word	4
	.word	_Label_629
	.word	-48
	.word	4
	.word	_Label_630
	.word	-52
	.word	4
	.word	_Label_631
	.word	-56
	.word	4
	.word	_Label_632
	.word	-60
	.word	4
	.word	_Label_633
	.word	-64
	.word	4
	.word	_Label_634
	.word	-68
	.word	4
	.word	_Label_635
	.word	-72
	.word	4
	.word	_Label_636
	.word	-76
	.word	4
	.word	_Label_637
	.word	-80
	.word	4
	.word	_Label_638
	.word	-84
	.word	4
	.word	_Label_639
	.word	-88
	.word	4
	.word	_Label_640
	.word	-92
	.word	4
	.word	_Label_641
	.word	-96
	.word	4
	.word	_Label_642
	.word	-100
	.word	4
	.word	_Label_643
	.word	-104
	.word	4
	.word	_Label_644
	.word	-196
	.word	92
	.word	_Label_645
	.word	-220
	.word	24
	.word	_Label_646
	.word	-224
	.word	4
	.word	_Label_647
	.word	-228
	.word	4
	.word	_Label_648
	.word	-232
	.word	4
	.word	_Label_649
	.word	-236
	.word	4
	.word	_Label_650
	.word	-240
	.word	4
	.word	_Label_651
	.word	-244
	.word	4
	.word	0
_Label_618:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_619:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_643:
	.byte	'P'
	.ascii	"ptrOpenFile2\0"
	.align
_Label_644:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_645:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_646:
	.byte	'P'
	.ascii	"ptrToPCB\0"
	.align
_Label_647:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"numOfBytes\0"
	.align
_Label_649:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_650:
	.byte	'P'
	.ascii	"ptrInitSystemStackTop\0"
	.align
_Label_651:
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
	mov	23,r1
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1933,r13		! source line 1933
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1938,r13		! source line 1938
	mov	"\0\0AS",r10
	mov	1938,r13		! source line 1938
	mov	"\0\0SE",r10
!   _temp_652 = &stringStorage
	add	r14,-80,r1
	store	r1,[r14+-56]
!   _temp_653 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_655 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_654 = *_temp_655  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_654) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_656 = _temp_654 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_652  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_653  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_658		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_658
!	jmp	_Label_657
_Label_657:
! THEN...
	mov	1942,r13		! source line 1942
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_659 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_659  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1942,r13		! source line 1942
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_658:
! CALL STATEMENT...
!   _temp_660 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_661 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   _temp_662 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_662  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_663 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_664 = &stringStorage
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_664  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CA",r10
	call	_function_223_printString
! CALL STATEMENT...
!   _temp_665 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_666
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_667
	.word	8
	.word	4
	.word	_Label_668
	.word	-12
	.word	4
	.word	_Label_669
	.word	-16
	.word	4
	.word	_Label_670
	.word	-20
	.word	4
	.word	_Label_671
	.word	-24
	.word	4
	.word	_Label_672
	.word	-28
	.word	4
	.word	_Label_673
	.word	-32
	.word	4
	.word	_Label_674
	.word	-36
	.word	4
	.word	_Label_675
	.word	-40
	.word	4
	.word	_Label_676
	.word	-44
	.word	4
	.word	_Label_677
	.word	-48
	.word	4
	.word	_Label_678
	.word	-52
	.word	4
	.word	_Label_679
	.word	-56
	.word	4
	.word	_Label_680
	.word	-80
	.word	24
	.word	_Label_681
	.word	-84
	.word	4
	.word	0
_Label_666:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_667:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_659\0"
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
	.ascii	"_temp_654\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_680:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_681:
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
	mov	23,r1
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1954,r13		! source line 1954
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0AS",r10
	mov	1959,r13		! source line 1959
	mov	"\0\0SE",r10
!   _temp_682 = &stringStorage
	add	r14,-80,r1
	store	r1,[r14+-56]
!   _temp_683 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_684 = *_temp_685  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_684) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_686 = _temp_684 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_682  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_683  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=numOfBytes  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0IF",r10
!   if numOfBytes >= 0 then goto _Label_688		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_688
!	jmp	_Label_687
_Label_687:
! THEN...
	mov	1963,r13		! source line 1963
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1963,r13		! source line 1963
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_688:
! CALL STATEMENT...
!   _temp_690 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1965,r13		! source line 1965
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_691 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   _temp_692 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_692  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_693 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_693  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_694 = &stringStorage
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_694  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CA",r10
	call	_function_223_printString
! CALL STATEMENT...
!   _temp_695 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1971,r13		! source line 1971
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_696
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_697
	.word	8
	.word	4
	.word	_Label_698
	.word	-12
	.word	4
	.word	_Label_699
	.word	-16
	.word	4
	.word	_Label_700
	.word	-20
	.word	4
	.word	_Label_701
	.word	-24
	.word	4
	.word	_Label_702
	.word	-28
	.word	4
	.word	_Label_703
	.word	-32
	.word	4
	.word	_Label_704
	.word	-36
	.word	4
	.word	_Label_705
	.word	-40
	.word	4
	.word	_Label_706
	.word	-44
	.word	4
	.word	_Label_707
	.word	-48
	.word	4
	.word	_Label_708
	.word	-52
	.word	4
	.word	_Label_709
	.word	-56
	.word	4
	.word	_Label_710
	.word	-80
	.word	24
	.word	_Label_711
	.word	-84
	.word	4
	.word	0
_Label_696:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_697:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_710:
	.byte	'A'
	.ascii	"stringStorage\0"
	.align
_Label_711:
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
	mov	6,r1
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1976,r13		! source line 1976
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_712 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_713 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_714 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_715 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_716 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0RE",r10
!   ReturnResult: 60000  (sizeInBytes=4)
	set	60000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_717
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_718
	.word	8
	.word	4
	.word	_Label_719
	.word	12
	.word	4
	.word	_Label_720
	.word	16
	.word	4
	.word	_Label_721
	.word	-12
	.word	4
	.word	_Label_722
	.word	-16
	.word	4
	.word	_Label_723
	.word	-20
	.word	4
	.word	_Label_724
	.word	-24
	.word	4
	.word	_Label_725
	.word	-28
	.word	4
	.word	0
_Label_717:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_718:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_719:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_720:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_712\0"
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
	mov	6,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1991,r13		! source line 1991
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_726 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1993,r13		! source line 1993
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_727 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_727  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_728 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_728  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_729 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_729  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_730 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_730  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2000,r13		! source line 2000
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_731
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_732
	.word	8
	.word	4
	.word	_Label_733
	.word	12
	.word	4
	.word	_Label_734
	.word	16
	.word	4
	.word	_Label_735
	.word	-12
	.word	4
	.word	_Label_736
	.word	-16
	.word	4
	.word	_Label_737
	.word	-20
	.word	4
	.word	_Label_738
	.word	-24
	.word	4
	.word	_Label_739
	.word	-28
	.word	4
	.word	0
_Label_731:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_732:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_733:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_734:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_737:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_738:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_739:
	.byte	'?'
	.ascii	"_temp_726\0"
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
	mov	4,r1
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	2005,r13		! source line 2005
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_740 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2007,r13		! source line 2007
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2008,r13		! source line 2008
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_741 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2009,r13		! source line 2009
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_742 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2012,r13		! source line 2012
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_743
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_744
	.word	8
	.word	4
	.word	_Label_745
	.word	12
	.word	4
	.word	_Label_746
	.word	-12
	.word	4
	.word	_Label_747
	.word	-16
	.word	4
	.word	_Label_748
	.word	-20
	.word	4
	.word	0
_Label_743:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_744:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_745:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_740\0"
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
	mov	3,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	2017,r13		! source line 2017
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_749 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_750 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_751
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_752
	.word	8
	.word	4
	.word	_Label_753
	.word	-12
	.word	4
	.word	_Label_754
	.word	-16
	.word	4
	.word	0
_Label_751:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_752:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_754:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
! 
! ===============  FUNCTION printString  ===============
! 
_function_223_printString:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_223_printString,r1
	push	r1
	mov	2,r1
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	2026,r13		! source line 2026
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_755 = arg		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2028,r13		! source line 2028
	mov	"\0\0CE",r10
	call	printHex
! RETURN STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_223_printString:
	.word	_sourceFileName
	.word	_Label_756
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_757
	.word	8
	.word	4
	.word	_Label_758
	.word	-12
	.word	4
	.word	0
_Label_756:
	.ascii	"printString\0"
	.align
_Label_757:
	.byte	'P'
	.ascii	"arg\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_222_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_222_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	2620,r13		! source line 2620
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_759 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_759  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   _temp_760 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_760) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_762 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_762) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_761 = *_temp_762  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_760 = _temp_761  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2626,r13		! source line 2626
	mov	"\0\0AS",r10
!   _temp_763 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_763) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_765 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_765) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_764 = *_temp_765  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_763 = _temp_764  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0AS",r10
!   _temp_766 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_766) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_768 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_768) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_767 = *_temp_768  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_766 = _temp_767  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2627,r13		! source line 2627
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_222_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_769
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_770
	.word	8
	.word	4
	.word	_Label_771
	.word	12
	.word	4
	.word	_Label_772
	.word	-16
	.word	4
	.word	_Label_773
	.word	-9
	.word	1
	.word	_Label_774
	.word	-20
	.word	4
	.word	_Label_775
	.word	-24
	.word	4
	.word	_Label_776
	.word	-10
	.word	1
	.word	_Label_777
	.word	-28
	.word	4
	.word	_Label_778
	.word	-32
	.word	4
	.word	_Label_779
	.word	-11
	.word	1
	.word	_Label_780
	.word	-36
	.word	4
	.word	_Label_781
	.word	-12
	.word	1
	.word	_Label_782
	.word	-40
	.word	4
	.word	_Label_783
	.word	-44
	.word	4
	.word	0
_Label_769:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_770:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_771:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_773:
	.byte	'C'
	.ascii	"_temp_767\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_776:
	.byte	'C'
	.ascii	"_temp_764\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_779:
	.byte	'C'
	.ascii	"_temp_761\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_781:
	.byte	'C'
	.ascii	"_temp_759\0"
	.align
_Label_782:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_783:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_221_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_221_printFCB,r1
	push	r1
	mov	3,r1
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	2630,r13		! source line 2630
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_785 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_784 = *_temp_785  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_784  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2631,r13		! source line 2631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2632,r13		! source line 2632
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_221_printFCB:
	.word	_sourceFileName
	.word	_Label_786
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_787
	.word	8
	.word	4
	.word	_Label_788
	.word	-12
	.word	4
	.word	_Label_789
	.word	-16
	.word	4
	.word	0
_Label_786:
	.ascii	"printFCB\0"
	.align
_Label_787:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_220_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_220_printOpen,r1
	push	r1
	mov	4,r1
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	2635,r13		! source line 2635
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_790 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_791 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_792 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_792  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2639,r13		! source line 2639
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
	mov	2639,r13		! source line 2639
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_220_printOpen:
	.word	_sourceFileName
	.word	_Label_793
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_794
	.word	8
	.word	4
	.word	_Label_795
	.word	-12
	.word	4
	.word	_Label_796
	.word	-16
	.word	4
	.word	_Label_797
	.word	-20
	.word	4
	.word	0
_Label_793:
	.ascii	"printOpen\0"
	.align
_Label_794:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_798
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_798:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_799
	.word	_sourceFileName
	.word	129		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_799:
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	232,r13		! source line 232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_801		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_801
!	jmp	_Label_800
_Label_800:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_802 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_802  sizeInBytes=4
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
_Label_801:
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
	.word	_Label_804
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_805
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_806
	.word	12
	.word	4
	.word	_Label_807
	.word	-12
	.word	4
	.word	_Label_808
	.word	-16
	.word	4
	.word	0
_Label_804:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_805:
	.ascii	"Pself\0"
	.align
_Label_806:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_802\0"
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
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
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
!   if count != 2147483647 then goto _Label_810		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_810
!	jmp	_Label_809
_Label_809:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_811 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
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
_Label_810:
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
!   if count > 0 then goto _Label_813		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_813
!	jmp	_Label_812
_Label_812:
! THEN...
	mov	252,r13		! source line 252
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_814 = &waitingThreads
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
!   _temp_815 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_815 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_816 = &_P_Kernel_readyList
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
_Label_813:
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
	.word	_Label_817
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_819
	.word	-12
	.word	4
	.word	_Label_820
	.word	-16
	.word	4
	.word	_Label_821
	.word	-20
	.word	4
	.word	_Label_822
	.word	-24
	.word	4
	.word	_Label_823
	.word	-28
	.word	4
	.word	_Label_824
	.word	-32
	.word	4
	.word	0
_Label_817:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_818:
	.ascii	"Pself\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_823:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_824:
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
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
!   if count != -2147483648 then goto _Label_826		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_826
!	jmp	_Label_825
_Label_825:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_827 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_827  sizeInBytes=4
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
_Label_826:
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
!   if count >= 0 then goto _Label_829		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_829
!	jmp	_Label_828
_Label_828:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_830 = &waitingThreads
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
_Label_829:
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
	.word	_Label_831
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_833
	.word	-12
	.word	4
	.word	_Label_834
	.word	-16
	.word	4
	.word	_Label_835
	.word	-20
	.word	4
	.word	0
_Label_831:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_832:
	.ascii	"Pself\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_835:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_836
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_836:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_837
	.word	_sourceFileName
	.word	142		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_837:
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
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
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
	.word	_Label_839
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_841
	.word	-12
	.word	4
	.word	0
_Label_839:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_840:
	.ascii	"Pself\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_838\0"
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
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	302,r13		! source line 302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_843		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_843
!	jmp	_Label_842
_Label_842:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_844 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_844  sizeInBytes=4
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
_Label_843:
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
!   if heldBy == 0 then goto _Label_848		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_848
!   _temp_847 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_849
_Label_848:
!   _temp_847 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_849:
!   if _temp_847 then goto _Label_846 else goto _Label_845
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_845
	jmp	_Label_846
_Label_845:
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
	jmp	_Label_850
_Label_846:
! ELSE...
	mov	312,r13		! source line 312
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_851 = &waitingThreads
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
_Label_850:
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
	.word	_Label_852
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_854
	.word	-16
	.word	4
	.word	_Label_855
	.word	-9
	.word	1
	.word	_Label_856
	.word	-20
	.word	4
	.word	_Label_857
	.word	-24
	.word	4
	.word	0
_Label_852:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_853:
	.ascii	"Pself\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_855:
	.byte	'C'
	.ascii	"_temp_847\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_857:
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
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_859		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_859
!	jmp	_Label_858
_Label_858:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_860 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_860  sizeInBytes=4
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
_Label_859:
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
!   _temp_861 = &waitingThreads
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
!   if t == 0 then goto _Label_863		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_863
!	jmp	_Label_862
_Label_862:
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
!   _temp_864 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_864 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0SE",r10
!   _temp_865 = &_P_Kernel_readyList
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
	jmp	_Label_866
_Label_863:
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
_Label_866:
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
	.word	_Label_867
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_869
	.word	-12
	.word	4
	.word	_Label_870
	.word	-16
	.word	4
	.word	_Label_871
	.word	-20
	.word	4
	.word	_Label_872
	.word	-24
	.word	4
	.word	_Label_873
	.word	-28
	.word	4
	.word	_Label_874
	.word	-32
	.word	4
	.word	0
_Label_867:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_868:
	.ascii	"Pself\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_873:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_874:
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	341,r13		! source line 341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_877		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_877
!	jmp	_Label_876
_Label_876:
!   _temp_875 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_878
_Label_877:
!   _temp_875 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_878:
!   ReturnResult: _temp_875  (sizeInBytes=1)
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
	.word	_Label_879
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_880
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_881
	.word	-9
	.word	1
	.word	0
_Label_879:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_880:
	.ascii	"Pself\0"
	.align
_Label_881:
	.byte	'C'
	.ascii	"_temp_875\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_882
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_882:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_883
	.word	_sourceFileName
	.word	156		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_883:
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
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
	.word	_Label_885
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_886
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_887
	.word	-12
	.word	4
	.word	0
_Label_885:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_886:
	.ascii	"Pself\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_884\0"
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
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
!   Retrieve Result: targetName=_temp_890  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_890 then goto _Label_889 else goto _Label_888
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_888
	jmp	_Label_889
_Label_888:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_891 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_891  sizeInBytes=4
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
_Label_889:
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
!   _temp_892 = &waitingThreads
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
	.word	_Label_893
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_894
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_895
	.word	12
	.word	4
	.word	_Label_896
	.word	-16
	.word	4
	.word	_Label_897
	.word	-20
	.word	4
	.word	_Label_898
	.word	-9
	.word	1
	.word	_Label_899
	.word	-24
	.word	4
	.word	0
_Label_893:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_894:
	.ascii	"Pself\0"
	.align
_Label_895:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_898:
	.byte	'C'
	.ascii	"_temp_890\0"
	.align
_Label_899:
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
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
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
!   Retrieve Result: targetName=_temp_902  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_902 then goto _Label_901 else goto _Label_900
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_900
	jmp	_Label_901
_Label_900:
! THEN...
	mov	409,r13		! source line 409
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_903 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_903  sizeInBytes=4
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
_Label_901:
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
!   _temp_904 = &waitingThreads
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
!   if t == 0 then goto _Label_906		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_906
!	jmp	_Label_905
_Label_905:
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
!   _temp_907 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_907 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_908 = &_P_Kernel_readyList
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
_Label_906:
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
	.word	_Label_909
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_911
	.word	12
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
	.word	-9
	.word	1
	.word	_Label_917
	.word	-32
	.word	4
	.word	_Label_918
	.word	-36
	.word	4
	.word	0
_Label_909:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_910:
	.ascii	"Pself\0"
	.align
_Label_911:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_916:
	.byte	'C'
	.ascii	"_temp_902\0"
	.align
_Label_917:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_918:
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
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
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
!   Retrieve Result: targetName=_temp_921  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_921 then goto _Label_920 else goto _Label_919
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_919
	jmp	_Label_920
_Label_919:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_922 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_922  sizeInBytes=4
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
_Label_920:
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
_Label_923:
!	jmp	_Label_924
_Label_924:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_926 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_927
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_927
	jmp	_Label_928
_Label_927:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_925
! END IF...
_Label_928:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_929 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_929 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_930 = &_P_Kernel_readyList
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
	jmp	_Label_923
_Label_925:
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
	.word	_Label_931
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_932
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_933
	.word	12
	.word	4
	.word	_Label_934
	.word	-16
	.word	4
	.word	_Label_935
	.word	-20
	.word	4
	.word	_Label_936
	.word	-24
	.word	4
	.word	_Label_937
	.word	-28
	.word	4
	.word	_Label_938
	.word	-9
	.word	1
	.word	_Label_939
	.word	-32
	.word	4
	.word	_Label_940
	.word	-36
	.word	4
	.word	0
_Label_931:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_932:
	.ascii	"Pself\0"
	.align
_Label_933:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_926\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_938:
	.byte	'C'
	.ascii	"_temp_921\0"
	.align
_Label_939:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_940:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_941
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
_Label_941:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_942
	.word	_sourceFileName
	.word	169		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_942:
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
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
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
!   _temp_943 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_943) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_943 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_944 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_944 [0 ] into _temp_945
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
!   Data Move: *_temp_945 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_946 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_946 [999 ] into _temp_947
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
!   Data Move: *_temp_947 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_948 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_948 [999 ] into _temp_949
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
!   stackTop = _temp_949		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_950 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_952 = &_temp_951
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_952 = _temp_952 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_954:
!   Data Move: *_temp_952 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_952 = _temp_952 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_953 = _temp_953 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_953) then goto _Label_954
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_954
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_955 = &_temp_951
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3099
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3099:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_950 = *_temp_955  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3100:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3100
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
!   _temp_956 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_958 = &_temp_957
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_958 = _temp_958 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_960:
!   Data Move: *_temp_958 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_958 = _temp_958 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_959 = _temp_959 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_959) then goto _Label_960
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_960
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_961 = &_temp_957
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3101
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3101:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_956 = *_temp_961  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3102:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3102
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
	.word	_Label_962
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_963
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_964
	.word	12
	.word	4
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
	.word	-84
	.word	64
	.word	_Label_969
	.word	-88
	.word	4
	.word	_Label_970
	.word	-92
	.word	4
	.word	_Label_971
	.word	-96
	.word	4
	.word	_Label_972
	.word	-100
	.word	4
	.word	_Label_973
	.word	-156
	.word	56
	.word	_Label_974
	.word	-160
	.word	4
	.word	_Label_975
	.word	-164
	.word	4
	.word	_Label_976
	.word	-168
	.word	4
	.word	_Label_977
	.word	-172
	.word	4
	.word	_Label_978
	.word	-176
	.word	4
	.word	_Label_979
	.word	-180
	.word	4
	.word	_Label_980
	.word	-184
	.word	4
	.word	_Label_981
	.word	-188
	.word	4
	.word	0
_Label_962:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_963:
	.ascii	"Pself\0"
	.align
_Label_964:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_965:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_943\0"
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
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
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
!   _temp_982 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_982  (sizeInBytes=4)
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
!   _temp_984 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_983  sizeInBytes=4
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
	.word	_Label_985
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_986
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_987
	.word	12
	.word	4
	.word	_Label_988
	.word	16
	.word	4
	.word	_Label_989
	.word	-12
	.word	4
	.word	_Label_990
	.word	-16
	.word	4
	.word	_Label_991
	.word	-20
	.word	4
	.word	_Label_992
	.word	-24
	.word	4
	.word	_Label_993
	.word	-28
	.word	4
	.word	0
_Label_985:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_986:
	.ascii	"Pself\0"
	.align
_Label_987:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_988:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_992:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_993:
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	492,r13		! source line 492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_996 == _P_Kernel_currentThread then goto _Label_995		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_995
!	jmp	_Label_994
_Label_994:
! THEN...
	mov	509,r13		! source line 509
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_997 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
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
_Label_995:
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
!   _temp_998 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1000		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1000
!	jmp	_Label_999
_Label_999:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1002		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1002
!	jmp	_Label_1001
_Label_1001:
! THEN...
	mov	521,r13		! source line 521
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1003 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1003  sizeInBytes=4
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
_Label_1002:
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
!   _temp_1005 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1004  sizeInBytes=4
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
_Label_1000:
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
	.word	_Label_1006
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1007
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1008
	.word	-12
	.word	4
	.word	_Label_1009
	.word	-16
	.word	4
	.word	_Label_1010
	.word	-20
	.word	4
	.word	_Label_1011
	.word	-24
	.word	4
	.word	_Label_1012
	.word	-28
	.word	4
	.word	_Label_1013
	.word	-32
	.word	4
	.word	_Label_1014
	.word	-36
	.word	4
	.word	_Label_1015
	.word	-40
	.word	4
	.word	_Label_1016
	.word	-44
	.word	4
	.word	0
_Label_1006:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1007:
	.ascii	"Pself\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1014:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1015:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1016:
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	532,r13		! source line 532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1018		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1018
!	jmp	_Label_1017
_Label_1017:
! THEN...
	mov	545,r13		! source line 545
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1019 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1019  sizeInBytes=4
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
_Label_1018:
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1022 == _P_Kernel_currentThread then goto _Label_1021		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1021
!	jmp	_Label_1020
_Label_1020:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1023 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1023  sizeInBytes=4
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
_Label_1021:
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
!   _temp_1024 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1025
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1025
	jmp	_Label_1026
_Label_1025:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1027 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1027  sizeInBytes=4
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
_Label_1026:
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
	.word	_Label_1028
	.word	4		! total size of parameters
	.word	28		! frame size = 28
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
	.word	_Label_1033
	.word	-24
	.word	4
	.word	_Label_1034
	.word	-28
	.word	4
	.word	_Label_1035
	.word	-32
	.word	4
	.word	0
_Label_1028:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
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
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1035:
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   _temp_1039 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1039 [0 ] into _temp_1040
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
!   Data Move: _temp_1038 = *_temp_1040  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1038 == 606348324 then goto _Label_1037		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1037
!	jmp	_Label_1036
_Label_1036:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1041 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1041  sizeInBytes=4
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
	jmp	_Label_1042
_Label_1037:
! ELSE...
	mov	572,r13		! source line 572
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0IF",r10
!   _temp_1046 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1046 [999 ] into _temp_1047
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
!   Data Move: _temp_1045 = *_temp_1047  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1045 == 606348324 then goto _Label_1044		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1044
!	jmp	_Label_1043
_Label_1043:
! THEN...
	mov	573,r13		! source line 573
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1048 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
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
_Label_1044:
! END IF...
_Label_1042:
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
	.word	_Label_1049
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1050
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1051
	.word	-12
	.word	4
	.word	_Label_1052
	.word	-16
	.word	4
	.word	_Label_1053
	.word	-20
	.word	4
	.word	_Label_1054
	.word	-24
	.word	4
	.word	_Label_1055
	.word	-28
	.word	4
	.word	_Label_1056
	.word	-32
	.word	4
	.word	_Label_1057
	.word	-36
	.word	4
	.word	_Label_1058
	.word	-40
	.word	4
	.word	0
_Label_1049:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1050:
	.ascii	"Pself\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1038\0"
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
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
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
!   _temp_1059 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1059  sizeInBytes=4
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
!   _temp_1060 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1062 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1062  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1063 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1063  sizeInBytes=4
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
!   _temp_1068 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1069 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1068  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1064:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1069 then goto _Label_1067		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1067
_Label_1065:
	mov	592,r13		! source line 592
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1070 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1070  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1071 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1072 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1074 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1074 [i ] into _temp_1075
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
!   Data Move: _temp_1073 = *_temp_1075  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1076 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1078 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1078 [i ] into _temp_1079
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
!   Data Move: _temp_1077 = *_temp_1079  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1077  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1080 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1066:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1064
! END FOR
_Label_1067:
! CALL STATEMENT...
!   _temp_1081 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-116]
!   _temp_1082 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1082  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1083 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-108]
!   _temp_1085 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1085 [0 ] into _temp_1086
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
!   _temp_1084 = _temp_1086		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1084  sizeInBytes=4
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
	be	_Label_1089
	cmp	r1,2
	be	_Label_1090
	cmp	r1,3
	be	_Label_1091
	cmp	r1,4
	be	_Label_1092
	cmp	r1,5
	be	_Label_1093
	jmp	_Label_1087
! CASE 1...
_Label_1089:
! CALL STATEMENT...
!   _temp_1094 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	605,r13		! source line 605
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0BR",r10
	jmp	_Label_1088
! CASE 2...
_Label_1090:
! CALL STATEMENT...
!   _temp_1095 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	608,r13		! source line 608
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0BR",r10
	jmp	_Label_1088
! CASE 3...
_Label_1091:
! CALL STATEMENT...
!   _temp_1096 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	611,r13		! source line 611
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0BR",r10
	jmp	_Label_1088
! CASE 4...
_Label_1092:
! CALL STATEMENT...
!   _temp_1097 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1097  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	614,r13		! source line 614
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0BR",r10
	jmp	_Label_1088
! CASE 5...
_Label_1093:
! CALL STATEMENT...
!   _temp_1098 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1098  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	617,r13		! source line 617
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0BR",r10
	jmp	_Label_1088
! DEFAULT CASE...
_Label_1087:
! CALL STATEMENT...
!   _temp_1099 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
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
_Label_1088:
! CALL STATEMENT...
!   _temp_1100 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
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
!   _temp_1101 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1101  sizeInBytes=4
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
!   _temp_1106 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1107 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1106  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1102:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1107 then goto _Label_1105		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1105
_Label_1103:
	mov	626,r13		! source line 626
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1108 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1109 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1110 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1112 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1112 [i ] into _temp_1113
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
!   Data Move: _temp_1111 = *_temp_1113  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1114 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1116 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1116 [i ] into _temp_1117
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
!   Data Move: _temp_1115 = *_temp_1117  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1115  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1118 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	633,r13		! source line 633
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1104:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1102
! END FOR
_Label_1105:
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
	.word	_Label_1119
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1120
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1121
	.word	-12
	.word	4
	.word	_Label_1122
	.word	-16
	.word	4
	.word	_Label_1123
	.word	-20
	.word	4
	.word	_Label_1124
	.word	-24
	.word	4
	.word	_Label_1125
	.word	-28
	.word	4
	.word	_Label_1126
	.word	-32
	.word	4
	.word	_Label_1127
	.word	-36
	.word	4
	.word	_Label_1128
	.word	-40
	.word	4
	.word	_Label_1129
	.word	-44
	.word	4
	.word	_Label_1130
	.word	-48
	.word	4
	.word	_Label_1131
	.word	-52
	.word	4
	.word	_Label_1132
	.word	-56
	.word	4
	.word	_Label_1133
	.word	-60
	.word	4
	.word	_Label_1134
	.word	-64
	.word	4
	.word	_Label_1135
	.word	-68
	.word	4
	.word	_Label_1136
	.word	-72
	.word	4
	.word	_Label_1137
	.word	-76
	.word	4
	.word	_Label_1138
	.word	-80
	.word	4
	.word	_Label_1139
	.word	-84
	.word	4
	.word	_Label_1140
	.word	-88
	.word	4
	.word	_Label_1141
	.word	-92
	.word	4
	.word	_Label_1142
	.word	-96
	.word	4
	.word	_Label_1143
	.word	-100
	.word	4
	.word	_Label_1144
	.word	-104
	.word	4
	.word	_Label_1145
	.word	-108
	.word	4
	.word	_Label_1146
	.word	-112
	.word	4
	.word	_Label_1147
	.word	-116
	.word	4
	.word	_Label_1148
	.word	-120
	.word	4
	.word	_Label_1149
	.word	-124
	.word	4
	.word	_Label_1150
	.word	-128
	.word	4
	.word	_Label_1151
	.word	-132
	.word	4
	.word	_Label_1152
	.word	-136
	.word	4
	.word	_Label_1153
	.word	-140
	.word	4
	.word	_Label_1154
	.word	-144
	.word	4
	.word	_Label_1155
	.word	-148
	.word	4
	.word	_Label_1156
	.word	-152
	.word	4
	.word	_Label_1157
	.word	-156
	.word	4
	.word	_Label_1158
	.word	-160
	.word	4
	.word	_Label_1159
	.word	-164
	.word	4
	.word	_Label_1160
	.word	-168
	.word	4
	.word	_Label_1161
	.word	-172
	.word	4
	.word	_Label_1162
	.word	-176
	.word	4
	.word	_Label_1163
	.word	-180
	.word	4
	.word	_Label_1164
	.word	-184
	.word	4
	.word	_Label_1165
	.word	-188
	.word	4
	.word	_Label_1166
	.word	-192
	.word	4
	.word	_Label_1167
	.word	-196
	.word	4
	.word	0
_Label_1119:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1120:
	.ascii	"Pself\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1063\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1062\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1166:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1167:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1168
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1168:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1169
	.word	_sourceFileName
	.word	196		! line number
	.word	41712		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1169:
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
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1170 = _StringConst_108
	set	_StringConst_108,r1
	set	-46024,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1170  sizeInBytes=4
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
!   _temp_1172 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	set	-46016,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1174 = &_temp_1173
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-4368]
!   _temp_1174 = _temp_1174 + 4
	load	[r14+-4368],r1
	add	r1,4,r1
	store	r1,[r14+-4368]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1176 = zeros  (sizeInBytes=4164)
	add	r14,-4360,r4
	mov	1041,r3
_Label_3109:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3109
!   _temp_1176 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4360]
	mov	10,r1
	store	r1,[r14+-4364]
_Label_1178:
!   Data Move: *_temp_1174 = _temp_1176  (sizeInBytes=4164)
	add	r14,-4360,r5
	load	[r14+-4368],r4
	mov	1041,r3
_Label_3110:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3110
!   _temp_1174 = _temp_1174 + 4164
	load	[r14+-4368],r1
	add	r1,4164,r1
	store	r1,[r14+-4368]
!   _temp_1175 = _temp_1175 + -1
	load	[r14+-4364],r1
	add	r1,-1,r1
	store	r1,[r14+-4364]
!   if intNotZero (_temp_1175) then goto _Label_1178
	load	[r14+-4364],r1
	cmp	r1,r0
	bne	_Label_1178
!   Initialize the array size...
	mov	10,r1
	set	-46012,r2
	store	r1,[r14+r2]
!   _temp_1179 = &_temp_1173
	set	-46012,r1
	add	r14,r1,r1
	store	r1,[r14+-192]
!   make sure array has size 10
	set	-46016,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3111
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3111:
!   make sure array has size 10
	load	[r14+-192],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1172 = *_temp_1179  (sizeInBytes=41644)
	load	[r14+-192],r5
	set	-46016,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3112:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3112
! SEND STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0SE",r10
!   _temp_1180 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-188]
!   _temp_1181 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-184]
!   Move address of _temp_1181 [0 ] into _temp_1182
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
!   Prepare Argument: offset=12  value=_temp_1180  sizeInBytes=4
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
!   _temp_1183 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-176]
!   _temp_1184 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-172]
!   Move address of _temp_1184 [1 ] into _temp_1185
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
!   Prepare Argument: offset=12  value=_temp_1183  sizeInBytes=4
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
!   _temp_1186 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-164]
!   _temp_1187 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-160]
!   Move address of _temp_1187 [2 ] into _temp_1188
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
!   Prepare Argument: offset=12  value=_temp_1186  sizeInBytes=4
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
!   _temp_1189 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-152]
!   _temp_1190 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-148]
!   Move address of _temp_1190 [3 ] into _temp_1191
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
!   Prepare Argument: offset=12  value=_temp_1189  sizeInBytes=4
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
!   _temp_1192 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-140]
!   _temp_1193 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-136]
!   Move address of _temp_1193 [4 ] into _temp_1194
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
!   Prepare Argument: offset=12  value=_temp_1192  sizeInBytes=4
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
!   _temp_1195 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-128]
!   _temp_1196 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-124]
!   Move address of _temp_1196 [5 ] into _temp_1197
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
!   Prepare Argument: offset=12  value=_temp_1195  sizeInBytes=4
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
!   _temp_1198 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-116]
!   _temp_1199 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-112]
!   Move address of _temp_1199 [6 ] into _temp_1200
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
!   Prepare Argument: offset=12  value=_temp_1198  sizeInBytes=4
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
!   _temp_1201 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-104]
!   _temp_1202 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-100]
!   Move address of _temp_1202 [7 ] into _temp_1203
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
!   Prepare Argument: offset=12  value=_temp_1201  sizeInBytes=4
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
!   _temp_1204 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-92]
!   _temp_1205 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-88]
!   Move address of _temp_1205 [8 ] into _temp_1206
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
!   Prepare Argument: offset=12  value=_temp_1204  sizeInBytes=4
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
!   _temp_1207 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-80]
!   _temp_1208 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-76]
!   Move address of _temp_1208 [9 ] into _temp_1209
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
!   Prepare Argument: offset=12  value=_temp_1207  sizeInBytes=4
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
!   _temp_1214 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1215 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1214  (sizeInBytes=4)
	load	[r14+-68],r1
	set	-46028,r2
	store	r1,[r14+r2]
_Label_1210:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1215 then goto _Label_1213		
	set	-46028,r1
	load	[r14+r1],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1213
_Label_1211:
	mov	717,r13		! source line 717
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	718,r13		! source line 718
	mov	"\0\0AS",r10
!   _temp_1216 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-60]
!   Move address of _temp_1216 [index ] into _temp_1217
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
!   _temp_1218 = _temp_1217 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1218 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0SE",r10
!   _temp_1220 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-44]
!   Move address of _temp_1220 [index ] into _temp_1221
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
!   _temp_1219 = _temp_1221		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1222 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1219  sizeInBytes=4
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
_Label_1212:
!   index = index + 1
	set	-46028,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-46028,r2
	store	r1,[r14+r2]
	jmp	_Label_1210
! END FOR
_Label_1213:
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
!   _temp_1224 = &threadManagerLock
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
!   _temp_1226 = &aThreadBecameFree
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
!   _temp_1228 = &leadThread
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
	.word	_Label_1229
	.word	4		! total size of parameters
	.word	46028		! frame size = 46028
	.word	_Label_1230
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1231
	.word	-12
	.word	4
	.word	_Label_1232
	.word	-16
	.word	4
	.word	_Label_1233
	.word	-20
	.word	4
	.word	_Label_1234
	.word	-24
	.word	4
	.word	_Label_1235
	.word	-28
	.word	4
	.word	_Label_1236
	.word	-32
	.word	4
	.word	_Label_1237
	.word	-36
	.word	4
	.word	_Label_1238
	.word	-40
	.word	4
	.word	_Label_1239
	.word	-44
	.word	4
	.word	_Label_1240
	.word	-48
	.word	4
	.word	_Label_1241
	.word	-52
	.word	4
	.word	_Label_1242
	.word	-56
	.word	4
	.word	_Label_1243
	.word	-60
	.word	4
	.word	_Label_1244
	.word	-64
	.word	4
	.word	_Label_1245
	.word	-68
	.word	4
	.word	_Label_1246
	.word	-72
	.word	4
	.word	_Label_1247
	.word	-76
	.word	4
	.word	_Label_1248
	.word	-80
	.word	4
	.word	_Label_1249
	.word	-84
	.word	4
	.word	_Label_1250
	.word	-88
	.word	4
	.word	_Label_1251
	.word	-92
	.word	4
	.word	_Label_1252
	.word	-96
	.word	4
	.word	_Label_1253
	.word	-100
	.word	4
	.word	_Label_1254
	.word	-104
	.word	4
	.word	_Label_1255
	.word	-108
	.word	4
	.word	_Label_1256
	.word	-112
	.word	4
	.word	_Label_1257
	.word	-116
	.word	4
	.word	_Label_1258
	.word	-120
	.word	4
	.word	_Label_1259
	.word	-124
	.word	4
	.word	_Label_1260
	.word	-128
	.word	4
	.word	_Label_1261
	.word	-132
	.word	4
	.word	_Label_1262
	.word	-136
	.word	4
	.word	_Label_1263
	.word	-140
	.word	4
	.word	_Label_1264
	.word	-144
	.word	4
	.word	_Label_1265
	.word	-148
	.word	4
	.word	_Label_1266
	.word	-152
	.word	4
	.word	_Label_1267
	.word	-156
	.word	4
	.word	_Label_1268
	.word	-160
	.word	4
	.word	_Label_1269
	.word	-164
	.word	4
	.word	_Label_1270
	.word	-168
	.word	4
	.word	_Label_1271
	.word	-172
	.word	4
	.word	_Label_1272
	.word	-176
	.word	4
	.word	_Label_1273
	.word	-180
	.word	4
	.word	_Label_1274
	.word	-184
	.word	4
	.word	_Label_1275
	.word	-188
	.word	4
	.word	_Label_1276
	.word	-192
	.word	4
	.word	_Label_1277
	.word	-196
	.word	4
	.word	_Label_1278
	.word	-4360
	.word	4164
	.word	_Label_1279
	.word	-4364
	.word	4
	.word	_Label_1280
	.word	-4368
	.word	4
	.word	_Label_1281
	.word	-46012
	.word	41644
	.word	_Label_1282
	.word	-46016
	.word	4
	.word	_Label_1283
	.word	-46020
	.word	4
	.word	_Label_1284
	.word	-46024
	.word	4
	.word	_Label_1285
	.word	-46028
	.word	4
	.word	0
_Label_1229:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1230:
	.ascii	"Pself\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1219\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1258:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1285:
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
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
!   _temp_1286 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1286  sizeInBytes=4
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
!   _temp_1291 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1292 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1291  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1287:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1292 then goto _Label_1290		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1290
_Label_1288:
	mov	743,r13		! source line 743
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1293 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1293  sizeInBytes=4
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
!   _temp_1294 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1294  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1296 = &threadTable
	load	[r14+8],r1
	add	r1,56,r1
	store	r1,[r14+-28]
!   Move address of _temp_1296 [i ] into _temp_1297
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
!   _temp_1295 = _temp_1297		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	747,r13		! source line 747
	mov	"\0\0CA",r10
	call	_function_227_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1289:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1287
! END FOR
_Label_1290:
! CALL STATEMENT...
!   _temp_1298 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	749,r13		! source line 749
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1299 = _function_226_PrintObjectAddr
	set	_function_226_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1300 = &freeList
	set	41700,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1299  sizeInBytes=4
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
	.word	_Label_1301
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1302
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1303
	.word	-12
	.word	4
	.word	_Label_1304
	.word	-16
	.word	4
	.word	_Label_1305
	.word	-20
	.word	4
	.word	_Label_1306
	.word	-24
	.word	4
	.word	_Label_1307
	.word	-28
	.word	4
	.word	_Label_1308
	.word	-32
	.word	4
	.word	_Label_1309
	.word	-36
	.word	4
	.word	_Label_1310
	.word	-40
	.word	4
	.word	_Label_1311
	.word	-44
	.word	4
	.word	_Label_1312
	.word	-48
	.word	4
	.word	_Label_1313
	.word	-52
	.word	4
	.word	_Label_1314
	.word	-56
	.word	4
	.word	_Label_1315
	.word	-60
	.word	4
	.word	0
_Label_1301:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1302:
	.ascii	"Pself\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1314:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1315:
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	757,r13		! source line 757
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0SE",r10
!   _temp_1316 = &threadManagerLock
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
_Label_1317:
	mov	768,r13		! source line 768
	mov	"\0\0SE",r10
!   _temp_1320 = &freeList
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
!   if result==true then goto _Label_1318 else goto _Label_1319
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1319
	jmp	_Label_1318
_Label_1318:
	mov	768,r13		! source line 768
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	769,r13		! source line 769
	mov	"\0\0SE",r10
!   _temp_1321 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_1322 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1321  sizeInBytes=4
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
	jmp	_Label_1317
_Label_1319:
! ASSIGNMENT STATEMENT...
	mov	772,r13		! source line 772
	mov	"\0\0AS",r10
	mov	772,r13		! source line 772
	mov	"\0\0SE",r10
!   _temp_1323 = &freeList
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
!   _temp_1324 = threadToReturn + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1324 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0SE",r10
!   _temp_1325 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1326 = &aThreadBecameFree
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1325  sizeInBytes=4
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
!   _temp_1327 = &threadManagerLock
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
	.word	_Label_1328
	.word	4		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1329
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1330
	.word	-12
	.word	4
	.word	_Label_1331
	.word	-16
	.word	4
	.word	_Label_1332
	.word	-20
	.word	4
	.word	_Label_1333
	.word	-24
	.word	4
	.word	_Label_1334
	.word	-28
	.word	4
	.word	_Label_1335
	.word	-32
	.word	4
	.word	_Label_1336
	.word	-36
	.word	4
	.word	_Label_1337
	.word	-40
	.word	4
	.word	_Label_1338
	.word	-44
	.word	4
	.word	_Label_1339
	.word	-48
	.word	4
	.word	0
_Label_1328:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1329:
	.ascii	"Pself\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1339:
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	782,r13		! source line 782
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	789,r13		! source line 789
	mov	"\0\0SE",r10
!   _temp_1340 = &threadManagerLock
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
!   if th == 0 then goto _Label_1342		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1342
!	jmp	_Label_1341
_Label_1341:
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
!   _temp_1343 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_1343 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-32],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0SE",r10
!   _temp_1344 = &freeList
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
!   _temp_1345 = &threadManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_1346 = &leadThread
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1345  sizeInBytes=4
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
	jmp	_Label_1347
_Label_1342:
! ELSE...
	mov	795,r13		! source line 795
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1348 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1348  sizeInBytes=4
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
_Label_1347:
! SEND STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0SE",r10
!   _temp_1349 = &threadManagerLock
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
	.word	_Label_1350
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1351
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1352
	.word	12
	.word	4
	.word	_Label_1353
	.word	-12
	.word	4
	.word	_Label_1354
	.word	-16
	.word	4
	.word	_Label_1355
	.word	-20
	.word	4
	.word	_Label_1356
	.word	-24
	.word	4
	.word	_Label_1357
	.word	-28
	.word	4
	.word	_Label_1358
	.word	-32
	.word	4
	.word	_Label_1359
	.word	-36
	.word	4
	.word	0
_Label_1350:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1351:
	.ascii	"Pself\0"
	.align
_Label_1352:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1360
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1360:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1361
	.word	_sourceFileName
	.word	218		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1361:
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
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
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
_Label_3117:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3117
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1363 = &addrSpace
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
	mov	814,r13		! source line 814
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
	.word	_Label_1364
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1365
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1366
	.word	-12
	.word	4
	.word	_Label_1367
	.word	-16
	.word	4
	.word	0
_Label_1364:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1365:
	.ascii	"Pself\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1362\0"
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
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	824,r13		! source line 824
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	829,r13		! source line 829
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1368) then goto _runtimeErrorNullPointer
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
!   _temp_1369 = &addrSpace
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
!   _temp_1370 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1370  sizeInBytes=4
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
	call	_function_227_ThreadPrintShort
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
	.word	_Label_1371
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1372
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1373
	.word	-12
	.word	4
	.word	_Label_1374
	.word	-16
	.word	4
	.word	_Label_1375
	.word	-20
	.word	4
	.word	0
_Label_1371:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1372:
	.ascii	"Pself\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1368\0"
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
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	847,r13		! source line 847
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1376 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1376  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	851,r13		! source line 851
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1377  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	852,r13		! source line 852
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1378 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1378  sizeInBytes=4
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
!   _temp_1379 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1379  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1381		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1381
!	jmp	_Label_1380
_Label_1380:
! THEN...
	mov	857,r13		! source line 857
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1382 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1382  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1383
_Label_1381:
! ELSE...
	mov	858,r13		! source line 858
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1385		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1385
!	jmp	_Label_1384
_Label_1384:
! THEN...
	mov	859,r13		! source line 859
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1386 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1386  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1387
_Label_1385:
! ELSE...
	mov	860,r13		! source line 860
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1389		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1389
!	jmp	_Label_1388
_Label_1388:
! THEN...
	mov	861,r13		! source line 861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1390 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	861,r13		! source line 861
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1391
_Label_1389:
! ELSE...
	mov	863,r13		! source line 863
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1392 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
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
_Label_1391:
! END IF...
_Label_1387:
! END IF...
_Label_1383:
! CALL STATEMENT...
!   _temp_1393 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
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
!   _temp_1394 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1394  sizeInBytes=4
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
	.word	_Label_1395
	.word	4		! total size of parameters
	.word	44		! frame size = 44
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
	.word	0
_Label_1395:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
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
	.ascii	"_temp_1390\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1407
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1407:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1408
	.word	_sourceFileName
	.word	238		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1408:
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
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	880,r13		! source line 880
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
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
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
!   _temp_1410 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1452]
!   NEW ARRAY Constructor...
!   _temp_1412 = &_temp_1411
	add	r14,-1448,r1
	store	r1,[r14+-204]
!   _temp_1412 = _temp_1412 + 4
	load	[r14+-204],r1
	add	r1,4,r1
	store	r1,[r14+-204]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1414 = zeros  (sizeInBytes=124)
	add	r14,-196,r4
	mov	31,r3
_Label_3121:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3121
!   _temp_1414 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-196]
	mov	10,r1
	store	r1,[r14+-200]
_Label_1416:
!   Data Move: *_temp_1412 = _temp_1414  (sizeInBytes=124)
	add	r14,-196,r5
	load	[r14+-204],r4
	mov	31,r3
_Label_3122:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3122
!   _temp_1412 = _temp_1412 + 124
	load	[r14+-204],r1
	add	r1,124,r1
	store	r1,[r14+-204]
!   _temp_1413 = _temp_1413 + -1
	load	[r14+-200],r1
	add	r1,-1,r1
	store	r1,[r14+-200]
!   if intNotZero (_temp_1413) then goto _Label_1416
	load	[r14+-200],r1
	cmp	r1,r0
	bne	_Label_1416
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1448]
!   _temp_1417 = &_temp_1411
	add	r14,-1448,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-1452],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3123
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3123:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1410 = *_temp_1417  (sizeInBytes=1244)
	load	[r14+-68],r5
	load	[r14+-1452],r4
	mov	311,r3
_Label_3124:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3124
! FOR STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1422 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1423 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1422  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-1460]
_Label_1418:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1423 then goto _Label_1421		
	load	[r14+-1460],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1421
_Label_1419:
	mov	899,r13		! source line 899
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1424 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Move address of _temp_1424 [index ] into _temp_1425
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
	mov	901,r13		! source line 901
	mov	"\0\0SE",r10
!   _temp_1427 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1427 [index ] into _temp_1428
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
!   _temp_1426 = _temp_1428		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1429 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1426  sizeInBytes=4
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
_Label_1420:
!   index = index + 1
	load	[r14+-1460],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1460]
	jmp	_Label_1418
! END FOR
_Label_1421:
! ASSIGNMENT STATEMENT...
	mov	905,r13		! source line 905
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
	mov	906,r13		! source line 906
	mov	"\0\0SE",r10
!   _temp_1431 = &processManagerLock
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
	mov	907,r13		! source line 907
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
	mov	908,r13		! source line 908
	mov	"\0\0SE",r10
!   _temp_1433 = &aProcessBecameFree
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
	mov	909,r13		! source line 909
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
	mov	910,r13		! source line 910
	mov	"\0\0SE",r10
!   _temp_1435 = &aProcessDied
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
	mov	910,r13		! source line 910
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
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	1460		! frame size = 1460
	.word	_Label_1437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	_Label_1445
	.word	-40
	.word	4
	.word	_Label_1446
	.word	-44
	.word	4
	.word	_Label_1447
	.word	-48
	.word	4
	.word	_Label_1448
	.word	-52
	.word	4
	.word	_Label_1449
	.word	-56
	.word	4
	.word	_Label_1450
	.word	-60
	.word	4
	.word	_Label_1451
	.word	-64
	.word	4
	.word	_Label_1452
	.word	-68
	.word	4
	.word	_Label_1453
	.word	-72
	.word	4
	.word	_Label_1454
	.word	-196
	.word	124
	.word	_Label_1455
	.word	-200
	.word	4
	.word	_Label_1456
	.word	-204
	.word	4
	.word	_Label_1457
	.word	-1448
	.word	1244
	.word	_Label_1458
	.word	-1452
	.word	4
	.word	_Label_1459
	.word	-1456
	.word	4
	.word	_Label_1460
	.word	-1460
	.word	4
	.word	0
_Label_1436:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1437:
	.ascii	"Pself\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1460:
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
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
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
!   _temp_1461 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1461  sizeInBytes=4
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
!   _temp_1466 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1467 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1466  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1462:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1467 then goto _Label_1465		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1465
_Label_1463:
	mov	925,r13		! source line 925
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1468 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1468  sizeInBytes=4
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
!   _temp_1469 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1469  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	928,r13		! source line 928
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	929,r13		! source line 929
	mov	"\0\0SE",r10
!   _temp_1470 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1470 [i ] into _temp_1471
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
_Label_1464:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1462
! END FOR
_Label_1465:
! CALL STATEMENT...
!   _temp_1472 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	931,r13		! source line 931
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	932,r13		! source line 932
	mov	"\0\0SE",r10
!   _temp_1473 = _function_226_PrintObjectAddr
	set	_function_226_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1474 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1473  sizeInBytes=4
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
	.word	_Label_1475
	.word	4		! total size of parameters
	.word	56		! frame size = 56
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
	.word	-24
	.word	4
	.word	_Label_1481
	.word	-28
	.word	4
	.word	_Label_1482
	.word	-32
	.word	4
	.word	_Label_1483
	.word	-36
	.word	4
	.word	_Label_1484
	.word	-40
	.word	4
	.word	_Label_1485
	.word	-44
	.word	4
	.word	_Label_1486
	.word	-48
	.word	4
	.word	_Label_1487
	.word	-52
	.word	4
	.word	_Label_1488
	.word	-56
	.word	4
	.word	0
_Label_1475:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
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
	.ascii	"_temp_1473\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1466\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1487:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1488:
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
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	939,r13		! source line 939
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
!   _temp_1489 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1489  sizeInBytes=4
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
!   _temp_1494 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1495 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1494  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1490:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1495 then goto _Label_1493		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1493
_Label_1491:
	mov	948,r13		! source line 948
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1496 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1496  sizeInBytes=4
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
!   _temp_1497 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1497 [i ] into _temp_1498
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
_Label_1492:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1490
! END FOR
_Label_1493:
! CALL STATEMENT...
!   _temp_1499 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1500 = _function_226_PrintObjectAddr
	set	_function_226_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1501 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1500  sizeInBytes=4
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
	.word	_Label_1502
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1503
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1504
	.word	-12
	.word	4
	.word	_Label_1505
	.word	-16
	.word	4
	.word	_Label_1506
	.word	-20
	.word	4
	.word	_Label_1507
	.word	-24
	.word	4
	.word	_Label_1508
	.word	-28
	.word	4
	.word	_Label_1509
	.word	-32
	.word	4
	.word	_Label_1510
	.word	-36
	.word	4
	.word	_Label_1511
	.word	-40
	.word	4
	.word	_Label_1512
	.word	-44
	.word	4
	.word	_Label_1513
	.word	-48
	.word	4
	.word	_Label_1514
	.word	-52
	.word	4
	.word	0
_Label_1502:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1503:
	.ascii	"Pself\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1489\0"
	.align
_Label_1513:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1514:
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
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	961,r13		! source line 961
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1515 = &processManagerLock
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
	mov	972,r13		! source line 972
	mov	"\0\0WH",r10
_Label_1516:
	mov	972,r13		! source line 972
	mov	"\0\0SE",r10
!   _temp_1519 = &freeList
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
!   if result==true then goto _Label_1517 else goto _Label_1518
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1518
	jmp	_Label_1517
_Label_1517:
	mov	972,r13		! source line 972
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1520 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   _temp_1521 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1520  sizeInBytes=4
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
	jmp	_Label_1516
_Label_1518:
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
	mov	976,r13		! source line 976
	mov	"\0\0SE",r10
!   _temp_1522 = &freeList
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
	mov	977,r13		! source line 977
	mov	"\0\0AS",r10
!   if intIsZero (processToReturn) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1523 = processToReturn + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1523 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0SE",r10
!   _temp_1524 = &processManagerLock
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
	mov	980,r13		! source line 980
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
	.word	_Label_1525
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1527
	.word	-12
	.word	4
	.word	_Label_1528
	.word	-16
	.word	4
	.word	_Label_1529
	.word	-20
	.word	4
	.word	_Label_1530
	.word	-24
	.word	4
	.word	_Label_1531
	.word	-28
	.word	4
	.word	_Label_1532
	.word	-32
	.word	4
	.word	_Label_1533
	.word	-36
	.word	4
	.word	_Label_1534
	.word	-40
	.word	4
	.word	0
_Label_1525:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1526:
	.ascii	"Pself\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1534:
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
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	987,r13		! source line 987
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1535 = &processManagerLock
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
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1536 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1536 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0SE",r10
!   _temp_1537 = &freeList
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
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1538 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1539 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1538  sizeInBytes=4
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
	mov	999,r13		! source line 999
	mov	"\0\0SE",r10
!   _temp_1540 = &processManagerLock
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
	mov	999,r13		! source line 999
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
	.word	_Label_1541
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1543
	.word	12
	.word	4
	.word	_Label_1544
	.word	-12
	.word	4
	.word	_Label_1545
	.word	-16
	.word	4
	.word	_Label_1546
	.word	-20
	.word	4
	.word	_Label_1547
	.word	-24
	.word	4
	.word	_Label_1548
	.word	-28
	.word	4
	.word	_Label_1549
	.word	-32
	.word	4
	.word	0
_Label_1541:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1542:
	.ascii	"Pself\0"
	.align
_Label_1543:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1550
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1550:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1551
	.word	_sourceFileName
	.word	261		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1551:
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
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	1093,r13		! source line 1093
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1552 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1552  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1099,r13		! source line 1099
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1100,r13		! source line 1100
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
	mov	1101,r13		! source line 1101
	mov	"\0\0SE",r10
!   _temp_1554 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
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
	mov	1104,r13		! source line 1104
	mov	"\0\0SE",r10
!   _temp_1556 = &frameManagerLock
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
	mov	1105,r13		! source line 1105
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
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   _temp_1558 = &newFramesAvailable
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
	mov	1112,r13		! source line 1112
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1563 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1564 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1563  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1559:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1564 then goto _Label_1562		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1562
_Label_1560:
	mov	1112,r13		! source line 1112
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1567 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1567) then goto _Label_1566
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1566
!	jmp	_Label_1565
_Label_1565:
! THEN...
	mov	1116,r13		! source line 1116
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1568 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1568  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1116,r13		! source line 1116
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1566:
!   Increment the FOR-LOOP index variable and jump back
_Label_1561:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1559
! END FOR
_Label_1562:
! RETURN STATEMENT...
	mov	1112,r13		! source line 1112
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
	.word	_Label_1569
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1570
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	_Label_1577
	.word	-36
	.word	4
	.word	_Label_1578
	.word	-40
	.word	4
	.word	_Label_1579
	.word	-44
	.word	4
	.word	_Label_1580
	.word	-48
	.word	4
	.word	_Label_1581
	.word	-52
	.word	4
	.word	_Label_1582
	.word	-56
	.word	4
	.word	0
_Label_1569:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1570:
	.ascii	"Pself\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1582:
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
_Label_3130:
	push	r0
	sub	r1,1,r1
	bne	_Label_3130
	mov	1123,r13		! source line 1123
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1583 = &frameManagerLock
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
!   _temp_1584 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1584  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1128,r13		! source line 1128
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1585 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1585  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1129,r13		! source line 1129
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1586 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1586  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1130,r13		! source line 1130
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1587 = &framesInUse
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
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1588 = &frameManagerLock
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
	mov	1132,r13		! source line 1132
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
	.word	_Label_1589
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1590
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1591
	.word	-12
	.word	4
	.word	_Label_1592
	.word	-16
	.word	4
	.word	_Label_1593
	.word	-20
	.word	4
	.word	_Label_1594
	.word	-24
	.word	4
	.word	_Label_1595
	.word	-28
	.word	4
	.word	_Label_1596
	.word	-32
	.word	4
	.word	0
_Label_1589:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1590:
	.ascii	"Pself\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1583\0"
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
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	1137,r13		! source line 1137
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0SE",r10
!   _temp_1597 = &frameManagerLock
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
	mov	1148,r13		! source line 1148
	mov	"\0\0WH",r10
_Label_1598:
!   if numberFreeFrames >= 1 then goto _Label_1600		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1600
!	jmp	_Label_1599
_Label_1599:
	mov	1148,r13		! source line 1148
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_1601 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1602 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1601  sizeInBytes=4
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
	jmp	_Label_1598
_Label_1600:
! ASSIGNMENT STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0AS",r10
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_1603 = &framesInUse
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
	mov	1154,r13		! source line 1154
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
	mov	1157,r13		! source line 1157
	mov	"\0\0SE",r10
!   _temp_1604 = &frameManagerLock
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
	mov	1160,r13		! source line 1160
	mov	"\0\0AS",r10
!   _temp_1605 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1605		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1162,r13		! source line 1162
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
	.word	_Label_1606
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1607
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1608
	.word	-12
	.word	4
	.word	_Label_1609
	.word	-16
	.word	4
	.word	_Label_1610
	.word	-20
	.word	4
	.word	_Label_1611
	.word	-24
	.word	4
	.word	_Label_1612
	.word	-28
	.word	4
	.word	_Label_1613
	.word	-32
	.word	4
	.word	_Label_1614
	.word	-36
	.word	4
	.word	_Label_1615
	.word	-40
	.word	4
	.word	0
_Label_1606:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1607:
	.ascii	"Pself\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1605\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1614:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1615:
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
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	1167,r13		! source line 1167
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0SE",r10
!   _temp_1616 = &frameManagerLock
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
	mov	1179,r13		! source line 1179
	mov	"\0\0WH",r10
_Label_1617:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1619		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1619
!	jmp	_Label_1618
_Label_1618:
	mov	1179,r13		! source line 1179
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1180,r13		! source line 1180
	mov	"\0\0SE",r10
!   _temp_1620 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   _temp_1621 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1620  sizeInBytes=4
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
	jmp	_Label_1617
_Label_1619:
! FOR STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1626 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1627 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1626  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-60]
_Label_1622:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1627 then goto _Label_1625		
	load	[r14+-60],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1625
_Label_1623:
	mov	1186,r13		! source line 1186
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   _temp_1628 = &framesInUse
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
	mov	1188,r13		! source line 1188
	mov	"\0\0AS",r10
!   _temp_1629 = frame * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   addr = 1048576 + _temp_1629		(int)
	set	1048576,r1
	load	[r14+-32],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! SEND STATEMENT...
	mov	1189,r13		! source line 1189
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
_Label_1624:
!   index = index + 1
	load	[r14+-60],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
	jmp	_Label_1622
! END FOR
_Label_1625:
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
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
	mov	1196,r13		! source line 1196
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1630 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1633 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1632 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1631 = _temp_1632 + numFramesNeeded		(int)
	load	[r14+-20],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1630 = _temp_1631  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   _temp_1634 = &frameManagerLock
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
	mov	1198,r13		! source line 1198
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
	.word	_Label_1635
	.word	12		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	12
	.word	4
	.word	_Label_1638
	.word	16
	.word	4
	.word	_Label_1639
	.word	-12
	.word	4
	.word	_Label_1640
	.word	-16
	.word	4
	.word	_Label_1641
	.word	-20
	.word	4
	.word	_Label_1642
	.word	-24
	.word	4
	.word	_Label_1643
	.word	-28
	.word	4
	.word	_Label_1644
	.word	-32
	.word	4
	.word	_Label_1645
	.word	-36
	.word	4
	.word	_Label_1646
	.word	-40
	.word	4
	.word	_Label_1647
	.word	-44
	.word	4
	.word	_Label_1648
	.word	-48
	.word	4
	.word	_Label_1649
	.word	-52
	.word	4
	.word	_Label_1650
	.word	-56
	.word	4
	.word	_Label_1651
	.word	-60
	.word	4
	.word	_Label_1652
	.word	-64
	.word	4
	.word	_Label_1653
	.word	-68
	.word	4
	.word	0
_Label_1635:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1638:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1651:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1653:
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
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	1204,r13		! source line 1204
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0SE",r10
!   _temp_1654 = &frameManagerLock
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
	mov	1216,r13		! source line 1216
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
	mov	1218,r13		! source line 1218
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1655 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: holdFrames = *_temp_1655  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-68]
! FOR STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1660 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1661 = holdFrames - 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: index = _temp_1660  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-64]
_Label_1656:
!   Perform the FOR-LOOP termination test
!   if index > _temp_1661 then goto _Label_1659		
	load	[r14+-64],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1659
_Label_1657:
	mov	1223,r13		! source line 1223
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1224,r13		! source line 1224
	mov	"\0\0AS",r10
	mov	1224,r13		! source line 1224
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
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
!   _temp_1662 = addr - 1048576		(int)
	load	[r14+-72],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   bit = _temp_1662 div 8192		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	1226,r13		! source line 1226
	mov	"\0\0SE",r10
!   _temp_1663 = &framesInUse
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
	mov	1227,r13		! source line 1227
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
_Label_1658:
!   index = index + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1656
! END FOR
_Label_1659:
! SEND STATEMENT...
	mov	1231,r13		! source line 1231
	mov	"\0\0SE",r10
!   _temp_1664 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   _temp_1665 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1664  sizeInBytes=4
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
	mov	1234,r13		! source line 1234
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1666 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1669 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: _temp_1668 = *_temp_1669  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1667 = _temp_1668 - holdFrames		(int)
	load	[r14+-20],r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Data Move: *_temp_1666 = _temp_1667  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1236,r13		! source line 1236
	mov	"\0\0SE",r10
!   _temp_1670 = &frameManagerLock
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
	mov	1236,r13		! source line 1236
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
	.word	_Label_1671
	.word	8		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1672
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1673
	.word	12
	.word	4
	.word	_Label_1674
	.word	-12
	.word	4
	.word	_Label_1675
	.word	-16
	.word	4
	.word	_Label_1676
	.word	-20
	.word	4
	.word	_Label_1677
	.word	-24
	.word	4
	.word	_Label_1678
	.word	-28
	.word	4
	.word	_Label_1679
	.word	-32
	.word	4
	.word	_Label_1680
	.word	-36
	.word	4
	.word	_Label_1681
	.word	-40
	.word	4
	.word	_Label_1682
	.word	-44
	.word	4
	.word	_Label_1683
	.word	-48
	.word	4
	.word	_Label_1684
	.word	-52
	.word	4
	.word	_Label_1685
	.word	-56
	.word	4
	.word	_Label_1686
	.word	-60
	.word	4
	.word	_Label_1687
	.word	-64
	.word	4
	.word	_Label_1688
	.word	-68
	.word	4
	.word	_Label_1689
	.word	-72
	.word	4
	.word	_Label_1690
	.word	-76
	.word	4
	.word	0
_Label_1671:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1672:
	.ascii	"Pself\0"
	.align
_Label_1673:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1664\0"
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
	.ascii	"_temp_1655\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1687:
	.byte	'I'
	.ascii	"index\0"
	.align
_Label_1688:
	.byte	'I'
	.ascii	"holdFrames\0"
	.align
_Label_1689:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_1690:
	.byte	'I'
	.ascii	"bit\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1691
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
_Label_1691:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1692
	.word	_sourceFileName
	.word	280		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1692:
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
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	1247,r13		! source line 1247
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
!   _temp_1693 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1695 = &_temp_1694
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1695 = _temp_1695 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1697:
!   Data Move: *_temp_1695 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1695 = _temp_1695 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1696 = _temp_1696 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1696) then goto _Label_1697
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1697
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1698 = &_temp_1694
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3135
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3135:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1693 = *_temp_1698  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3136:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3136
! RETURN STATEMENT...
	mov	1252,r13		! source line 1252
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
	.word	_Label_1699
	.word	4		! total size of parameters
	.word	100		! frame size = 100
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
	.word	-104
	.word	84
	.word	_Label_1705
	.word	-108
	.word	4
	.word	0
_Label_1699:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1696\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1693\0"
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
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	1257,r13		! source line 1257
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1706 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1706  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1707 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1707  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1712 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1713 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1712  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1708:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1713 then goto _Label_1711		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1711
_Label_1709:
	mov	1264,r13		! source line 1264
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1714 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1714  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1716 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1716 [i ] into _temp_1717
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
!   _temp_1715 = _temp_1717		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1715  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1718 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1720 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1720 [i ] into _temp_1721
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
!   Data Move: _temp_1719 = *_temp_1721  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1719  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1722 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1722  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1723 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1724 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1724  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1726) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1725  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1725  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1727 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0IF",r10
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1731) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1730  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1730) then goto _Label_1729
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1729
!	jmp	_Label_1728
_Label_1728:
! THEN...
	mov	1275,r13		! source line 1275
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1733) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1732  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1732  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1734
_Label_1729:
! ELSE...
	mov	1277,r13		! source line 1277
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1735 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1735  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1734:
! CALL STATEMENT...
!   _temp_1736 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1736  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0IF",r10
	mov	1280,r13		! source line 1280
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1739) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1737 else goto _Label_1738
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1738
	jmp	_Label_1737
_Label_1737:
! THEN...
	mov	1281,r13		! source line 1281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1740 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1281,r13		! source line 1281
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1741
_Label_1738:
! ELSE...
	mov	1283,r13		! source line 1283
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1742 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1742  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1283,r13		! source line 1283
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1741:
! CALL STATEMENT...
!   _temp_1743 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1743  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1285,r13		! source line 1285
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1286,r13		! source line 1286
	mov	"\0\0IF",r10
	mov	1286,r13		! source line 1286
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1746) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1744 else goto _Label_1745
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1745
	jmp	_Label_1744
_Label_1744:
! THEN...
	mov	1287,r13		! source line 1287
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1747 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1747  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1287,r13		! source line 1287
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1748
_Label_1745:
! ELSE...
	mov	1289,r13		! source line 1289
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1749 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1749  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1289,r13		! source line 1289
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1748:
! CALL STATEMENT...
!   _temp_1750 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1750  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1291,r13		! source line 1291
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0IF",r10
	mov	1292,r13		! source line 1292
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1753) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1751 else goto _Label_1752
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1752
	jmp	_Label_1751
_Label_1751:
! THEN...
	mov	1293,r13		! source line 1293
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1754 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1293,r13		! source line 1293
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1755
_Label_1752:
! ELSE...
	mov	1295,r13		! source line 1295
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1756 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1756  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1295,r13		! source line 1295
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1755:
! CALL STATEMENT...
!   _temp_1757 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1297,r13		! source line 1297
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1298,r13		! source line 1298
	mov	"\0\0IF",r10
	mov	1298,r13		! source line 1298
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1760) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1758 else goto _Label_1759
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1759
	jmp	_Label_1758
_Label_1758:
! THEN...
	mov	1299,r13		! source line 1299
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1761 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1761  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1299,r13		! source line 1299
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1762
_Label_1759:
! ELSE...
	mov	1301,r13		! source line 1301
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1763 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1763  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1301,r13		! source line 1301
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1762:
! CALL STATEMENT...
!   Call the function
	mov	1303,r13		! source line 1303
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1710:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1708
! END FOR
_Label_1711:
! RETURN STATEMENT...
	mov	1264,r13		! source line 1264
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
	.word	_Label_1764
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1765
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1766
	.word	-12
	.word	4
	.word	_Label_1767
	.word	-16
	.word	4
	.word	_Label_1768
	.word	-20
	.word	4
	.word	_Label_1769
	.word	-24
	.word	4
	.word	_Label_1770
	.word	-28
	.word	4
	.word	_Label_1771
	.word	-32
	.word	4
	.word	_Label_1772
	.word	-36
	.word	4
	.word	_Label_1773
	.word	-40
	.word	4
	.word	_Label_1774
	.word	-44
	.word	4
	.word	_Label_1775
	.word	-48
	.word	4
	.word	_Label_1776
	.word	-52
	.word	4
	.word	_Label_1777
	.word	-56
	.word	4
	.word	_Label_1778
	.word	-60
	.word	4
	.word	_Label_1779
	.word	-64
	.word	4
	.word	_Label_1780
	.word	-68
	.word	4
	.word	_Label_1781
	.word	-72
	.word	4
	.word	_Label_1782
	.word	-76
	.word	4
	.word	_Label_1783
	.word	-80
	.word	4
	.word	_Label_1784
	.word	-84
	.word	4
	.word	_Label_1785
	.word	-88
	.word	4
	.word	_Label_1786
	.word	-92
	.word	4
	.word	_Label_1787
	.word	-96
	.word	4
	.word	_Label_1788
	.word	-100
	.word	4
	.word	_Label_1789
	.word	-104
	.word	4
	.word	_Label_1790
	.word	-108
	.word	4
	.word	_Label_1791
	.word	-112
	.word	4
	.word	_Label_1792
	.word	-116
	.word	4
	.word	_Label_1793
	.word	-120
	.word	4
	.word	_Label_1794
	.word	-124
	.word	4
	.word	_Label_1795
	.word	-128
	.word	4
	.word	_Label_1796
	.word	-132
	.word	4
	.word	_Label_1797
	.word	-136
	.word	4
	.word	_Label_1798
	.word	-140
	.word	4
	.word	_Label_1799
	.word	-144
	.word	4
	.word	_Label_1800
	.word	-148
	.word	4
	.word	_Label_1801
	.word	-152
	.word	4
	.word	_Label_1802
	.word	-156
	.word	4
	.word	_Label_1803
	.word	-160
	.word	4
	.word	_Label_1804
	.word	-164
	.word	4
	.word	_Label_1805
	.word	-168
	.word	4
	.word	0
_Label_1764:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1765:
	.ascii	"Pself\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1763\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1760\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1805:
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
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	1309,r13		! source line 1309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0RE",r10
!   _temp_1808 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1808 [entry ] into _temp_1809
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
!   Data Move: _temp_1807 = *_temp_1809  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1806 = _temp_1807 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1806  (sizeInBytes=4)
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
	.word	_Label_1810
	.word	8		! total size of parameters
	.word	16		! frame size = 16
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
	.word	0
_Label_1810:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1811:
	.ascii	"Pself\0"
	.align
_Label_1812:
	.byte	'I'
	.ascii	"entry\0"
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
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	1319,r13		! source line 1319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0RE",r10
!   _temp_1819 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1819 [entry ] into _temp_1820
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
!   Data Move: _temp_1818 = *_temp_1820  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1817 = _temp_1818 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1817  (sizeInBytes=4)
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
	.word	_Label_1821
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1823
	.word	12
	.word	4
	.word	_Label_1824
	.word	-12
	.word	4
	.word	_Label_1825
	.word	-16
	.word	4
	.word	_Label_1826
	.word	-20
	.word	4
	.word	_Label_1827
	.word	-24
	.word	4
	.word	0
_Label_1821:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1822:
	.ascii	"Pself\0"
	.align
_Label_1823:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1818\0"
	.align
_Label_1827:
	.byte	'?'
	.ascii	"_temp_1817\0"
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
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1333,r13		! source line 1333
	mov	"\0\0AS",r10
!   _temp_1828 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1828 [entry ] into _temp_1829
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
!   _temp_1833 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1833 [entry ] into _temp_1834
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
!   Data Move: _temp_1832 = *_temp_1834  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1831 = _temp_1832 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1830 = _temp_1831 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1829 = _temp_1830  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1333,r13		! source line 1333
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
	.word	_Label_1835
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1836
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1837
	.word	12
	.word	4
	.word	_Label_1838
	.word	16
	.word	4
	.word	_Label_1839
	.word	-12
	.word	4
	.word	_Label_1840
	.word	-16
	.word	4
	.word	_Label_1841
	.word	-20
	.word	4
	.word	_Label_1842
	.word	-24
	.word	4
	.word	_Label_1843
	.word	-28
	.word	4
	.word	_Label_1844
	.word	-32
	.word	4
	.word	_Label_1845
	.word	-36
	.word	4
	.word	0
_Label_1835:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1836:
	.ascii	"Pself\0"
	.align
_Label_1837:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1838:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1839:
	.byte	'?'
	.ascii	"_temp_1834\0"
	.align
_Label_1840:
	.byte	'?'
	.ascii	"_temp_1833\0"
	.align
_Label_1841:
	.byte	'?'
	.ascii	"_temp_1832\0"
	.align
_Label_1842:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1843:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1844:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1845:
	.byte	'?'
	.ascii	"_temp_1828\0"
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
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	1338,r13		! source line 1338
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0RE",r10
!   _temp_1849 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1849 [entry ] into _temp_1850
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
!   Data Move: _temp_1848 = *_temp_1850  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1847 = _temp_1848 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1847) then goto _Label_1851
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1851
!   _temp_1846 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1852
_Label_1851:
!   _temp_1846 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1852:
!   ReturnResult: _temp_1846  (sizeInBytes=1)
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
	.word	_Label_1853
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1854
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1855
	.word	12
	.word	4
	.word	_Label_1856
	.word	-16
	.word	4
	.word	_Label_1857
	.word	-20
	.word	4
	.word	_Label_1858
	.word	-24
	.word	4
	.word	_Label_1859
	.word	-28
	.word	4
	.word	_Label_1860
	.word	-9
	.word	1
	.word	0
_Label_1853:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1854:
	.ascii	"Pself\0"
	.align
_Label_1855:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1856:
	.byte	'?'
	.ascii	"_temp_1850\0"
	.align
_Label_1857:
	.byte	'?'
	.ascii	"_temp_1849\0"
	.align
_Label_1858:
	.byte	'?'
	.ascii	"_temp_1848\0"
	.align
_Label_1859:
	.byte	'?'
	.ascii	"_temp_1847\0"
	.align
_Label_1860:
	.byte	'C'
	.ascii	"_temp_1846\0"
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
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	1347,r13		! source line 1347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1351,r13		! source line 1351
	mov	"\0\0RE",r10
!   _temp_1864 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1864 [entry ] into _temp_1865
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
!   Data Move: _temp_1863 = *_temp_1865  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1862 = _temp_1863 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1862) then goto _Label_1866
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1866
!   _temp_1861 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1867
_Label_1866:
!   _temp_1861 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1867:
!   ReturnResult: _temp_1861  (sizeInBytes=1)
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
	.word	_Label_1868
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1870
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_1868:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1869:
	.ascii	"Pself\0"
	.align
_Label_1870:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1871:
	.byte	'?'
	.ascii	"_temp_1865\0"
	.align
_Label_1872:
	.byte	'?'
	.ascii	"_temp_1864\0"
	.align
_Label_1873:
	.byte	'?'
	.ascii	"_temp_1863\0"
	.align
_Label_1874:
	.byte	'?'
	.ascii	"_temp_1862\0"
	.align
_Label_1875:
	.byte	'C'
	.ascii	"_temp_1861\0"
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
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	1356,r13		! source line 1356
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1360,r13		! source line 1360
	mov	"\0\0RE",r10
!   _temp_1879 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1879 [entry ] into _temp_1880
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
!   Data Move: _temp_1878 = *_temp_1880  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1877 = _temp_1878 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1877) then goto _Label_1881
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1881
!   _temp_1876 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1882
_Label_1881:
!   _temp_1876 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1882:
!   ReturnResult: _temp_1876  (sizeInBytes=1)
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
	.word	_Label_1883
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1884
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1885
	.word	12
	.word	4
	.word	_Label_1886
	.word	-16
	.word	4
	.word	_Label_1887
	.word	-20
	.word	4
	.word	_Label_1888
	.word	-24
	.word	4
	.word	_Label_1889
	.word	-28
	.word	4
	.word	_Label_1890
	.word	-9
	.word	1
	.word	0
_Label_1883:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1884:
	.ascii	"Pself\0"
	.align
_Label_1885:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1886:
	.byte	'?'
	.ascii	"_temp_1880\0"
	.align
_Label_1887:
	.byte	'?'
	.ascii	"_temp_1879\0"
	.align
_Label_1888:
	.byte	'?'
	.ascii	"_temp_1878\0"
	.align
_Label_1889:
	.byte	'?'
	.ascii	"_temp_1877\0"
	.align
_Label_1890:
	.byte	'C'
	.ascii	"_temp_1876\0"
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
_Label_3144:
	push	r0
	sub	r1,1,r1
	bne	_Label_3144
	mov	1365,r13		! source line 1365
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1369,r13		! source line 1369
	mov	"\0\0RE",r10
!   _temp_1894 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1894 [entry ] into _temp_1895
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
!   Data Move: _temp_1893 = *_temp_1895  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1892 = _temp_1893 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1892) then goto _Label_1896
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1896
!   _temp_1891 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1897
_Label_1896:
!   _temp_1891 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1897:
!   ReturnResult: _temp_1891  (sizeInBytes=1)
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
	.word	_Label_1898
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1900
	.word	12
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
	.word	-9
	.word	1
	.word	0
_Label_1898:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1899:
	.ascii	"Pself\0"
	.align
_Label_1900:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1901:
	.byte	'?'
	.ascii	"_temp_1895\0"
	.align
_Label_1902:
	.byte	'?'
	.ascii	"_temp_1894\0"
	.align
_Label_1903:
	.byte	'?'
	.ascii	"_temp_1893\0"
	.align
_Label_1904:
	.byte	'?'
	.ascii	"_temp_1892\0"
	.align
_Label_1905:
	.byte	'C'
	.ascii	"_temp_1891\0"
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
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
	mov	1374,r13		! source line 1374
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1378,r13		! source line 1378
	mov	"\0\0AS",r10
!   _temp_1906 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1906 [entry ] into _temp_1907
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
!   _temp_1910 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1910 [entry ] into _temp_1911
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
!   Data Move: _temp_1909 = *_temp_1911  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1908 = _temp_1909 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1907 = _temp_1908  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1378,r13		! source line 1378
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
	.word	_Label_1912
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1914
	.word	12
	.word	4
	.word	_Label_1915
	.word	-12
	.word	4
	.word	_Label_1916
	.word	-16
	.word	4
	.word	_Label_1917
	.word	-20
	.word	4
	.word	_Label_1918
	.word	-24
	.word	4
	.word	_Label_1919
	.word	-28
	.word	4
	.word	_Label_1920
	.word	-32
	.word	4
	.word	0
_Label_1912:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1913:
	.ascii	"Pself\0"
	.align
_Label_1914:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1915:
	.byte	'?'
	.ascii	"_temp_1911\0"
	.align
_Label_1916:
	.byte	'?'
	.ascii	"_temp_1910\0"
	.align
_Label_1917:
	.byte	'?'
	.ascii	"_temp_1909\0"
	.align
_Label_1918:
	.byte	'?'
	.ascii	"_temp_1908\0"
	.align
_Label_1919:
	.byte	'?'
	.ascii	"_temp_1907\0"
	.align
_Label_1920:
	.byte	'?'
	.ascii	"_temp_1906\0"
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
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	1383,r13		! source line 1383
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1387,r13		! source line 1387
	mov	"\0\0AS",r10
!   _temp_1921 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1921 [entry ] into _temp_1922
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
!   _temp_1925 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1925 [entry ] into _temp_1926
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
!   Data Move: _temp_1924 = *_temp_1926  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1923 = _temp_1924 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1922 = _temp_1923  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1387,r13		! source line 1387
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
	.word	_Label_1927
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1928
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1929
	.word	12
	.word	4
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
	.word	-24
	.word	4
	.word	_Label_1934
	.word	-28
	.word	4
	.word	_Label_1935
	.word	-32
	.word	4
	.word	0
_Label_1927:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1928:
	.ascii	"Pself\0"
	.align
_Label_1929:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1930:
	.byte	'?'
	.ascii	"_temp_1926\0"
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
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1921\0"
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
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	1392,r13		! source line 1392
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1396,r13		! source line 1396
	mov	"\0\0AS",r10
!   _temp_1936 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1936 [entry ] into _temp_1937
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
!   _temp_1940 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1940 [entry ] into _temp_1941
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
!   Data Move: _temp_1939 = *_temp_1941  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1938 = _temp_1939 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1937 = _temp_1938  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1396,r13		! source line 1396
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
	.word	_Label_1942
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1943
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1944
	.word	12
	.word	4
	.word	_Label_1945
	.word	-12
	.word	4
	.word	_Label_1946
	.word	-16
	.word	4
	.word	_Label_1947
	.word	-20
	.word	4
	.word	_Label_1948
	.word	-24
	.word	4
	.word	_Label_1949
	.word	-28
	.word	4
	.word	_Label_1950
	.word	-32
	.word	4
	.word	0
_Label_1942:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1943:
	.ascii	"Pself\0"
	.align
_Label_1944:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1945:
	.byte	'?'
	.ascii	"_temp_1941\0"
	.align
_Label_1946:
	.byte	'?'
	.ascii	"_temp_1940\0"
	.align
_Label_1947:
	.byte	'?'
	.ascii	"_temp_1939\0"
	.align
_Label_1948:
	.byte	'?'
	.ascii	"_temp_1938\0"
	.align
_Label_1949:
	.byte	'?'
	.ascii	"_temp_1937\0"
	.align
_Label_1950:
	.byte	'?'
	.ascii	"_temp_1936\0"
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
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	1401,r13		! source line 1401
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1405,r13		! source line 1405
	mov	"\0\0AS",r10
!   _temp_1951 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1951 [entry ] into _temp_1952
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
!   _temp_1955 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1955 [entry ] into _temp_1956
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
!   Data Move: _temp_1954 = *_temp_1956  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1953 = _temp_1954 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1952 = _temp_1953  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1957
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1959
	.word	12
	.word	4
	.word	_Label_1960
	.word	-12
	.word	4
	.word	_Label_1961
	.word	-16
	.word	4
	.word	_Label_1962
	.word	-20
	.word	4
	.word	_Label_1963
	.word	-24
	.word	4
	.word	_Label_1964
	.word	-28
	.word	4
	.word	_Label_1965
	.word	-32
	.word	4
	.word	0
_Label_1957:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1958:
	.ascii	"Pself\0"
	.align
_Label_1959:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1960:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1961:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1962:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1963:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1964:
	.byte	'?'
	.ascii	"_temp_1952\0"
	.align
_Label_1965:
	.byte	'?'
	.ascii	"_temp_1951\0"
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
_Label_3149:
	push	r0
	sub	r1,1,r1
	bne	_Label_3149
	mov	1410,r13		! source line 1410
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1414,r13		! source line 1414
	mov	"\0\0AS",r10
!   _temp_1966 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1966 [entry ] into _temp_1967
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
!   _temp_1970 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1970 [entry ] into _temp_1971
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
!   Data Move: _temp_1969 = *_temp_1971  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1968 = _temp_1969 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1967 = _temp_1968  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1414,r13		! source line 1414
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
	.word	_Label_1972
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1973
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1974
	.word	12
	.word	4
	.word	_Label_1975
	.word	-12
	.word	4
	.word	_Label_1976
	.word	-16
	.word	4
	.word	_Label_1977
	.word	-20
	.word	4
	.word	_Label_1978
	.word	-24
	.word	4
	.word	_Label_1979
	.word	-28
	.word	4
	.word	_Label_1980
	.word	-32
	.word	4
	.word	0
_Label_1972:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1973:
	.ascii	"Pself\0"
	.align
_Label_1974:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1975:
	.byte	'?'
	.ascii	"_temp_1971\0"
	.align
_Label_1976:
	.byte	'?'
	.ascii	"_temp_1970\0"
	.align
_Label_1977:
	.byte	'?'
	.ascii	"_temp_1969\0"
	.align
_Label_1978:
	.byte	'?'
	.ascii	"_temp_1968\0"
	.align
_Label_1979:
	.byte	'?'
	.ascii	"_temp_1967\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1966\0"
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
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
	mov	1419,r13		! source line 1419
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1423,r13		! source line 1423
	mov	"\0\0AS",r10
!   _temp_1981 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1981 [entry ] into _temp_1982
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
!   _temp_1985 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1985 [entry ] into _temp_1986
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
!   Data Move: _temp_1984 = *_temp_1986  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1983 = _temp_1984 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1982 = _temp_1983  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1423,r13		! source line 1423
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
	.word	_Label_1987
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1989
	.word	12
	.word	4
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
	.word	0
_Label_1987:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1988:
	.ascii	"Pself\0"
	.align
_Label_1989:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1990:
	.byte	'?'
	.ascii	"_temp_1986\0"
	.align
_Label_1991:
	.byte	'?'
	.ascii	"_temp_1985\0"
	.align
_Label_1992:
	.byte	'?'
	.ascii	"_temp_1984\0"
	.align
_Label_1993:
	.byte	'?'
	.ascii	"_temp_1983\0"
	.align
_Label_1994:
	.byte	'?'
	.ascii	"_temp_1982\0"
	.align
_Label_1995:
	.byte	'?'
	.ascii	"_temp_1981\0"
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
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
	mov	1428,r13		! source line 1428
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0AS",r10
!   _temp_1996 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1996 [entry ] into _temp_1997
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
!   _temp_2000 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2000 [entry ] into _temp_2001
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
!   Data Move: _temp_1999 = *_temp_2001  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1998 = _temp_1999 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1997 = _temp_1998  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1432,r13		! source line 1432
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
	.word	_Label_2002
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2003
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2004
	.word	12
	.word	4
	.word	_Label_2005
	.word	-12
	.word	4
	.word	_Label_2006
	.word	-16
	.word	4
	.word	_Label_2007
	.word	-20
	.word	4
	.word	_Label_2008
	.word	-24
	.word	4
	.word	_Label_2009
	.word	-28
	.word	4
	.word	_Label_2010
	.word	-32
	.word	4
	.word	0
_Label_2002:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2003:
	.ascii	"Pself\0"
	.align
_Label_2004:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2005:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2006:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2007:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2008:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1997\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1996\0"
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
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
	mov	1437,r13		! source line 1437
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0AS",r10
!   _temp_2011 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2011 [entry ] into _temp_2012
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
!   _temp_2015 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2015 [entry ] into _temp_2016
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
!   Data Move: _temp_2014 = *_temp_2016  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2013 = _temp_2014 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2012 = _temp_2013  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1441,r13		! source line 1441
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
	.word	_Label_2017
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2018
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2019
	.word	12
	.word	4
	.word	_Label_2020
	.word	-12
	.word	4
	.word	_Label_2021
	.word	-16
	.word	4
	.word	_Label_2022
	.word	-20
	.word	4
	.word	_Label_2023
	.word	-24
	.word	4
	.word	_Label_2024
	.word	-28
	.word	4
	.word	_Label_2025
	.word	-32
	.word	4
	.word	0
_Label_2017:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2018:
	.ascii	"Pself\0"
	.align
_Label_2019:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2020:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2021:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2022:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2013\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2012\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2011\0"
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
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
	mov	1446,r13		! source line 1446
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2027 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2027 [0 ] into _temp_2028
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
!   _temp_2026 = _temp_2028		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2029 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2026  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2029  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1452,r13		! source line 1452
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1452,r13		! source line 1452
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
	.word	_Label_2030
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2032
	.word	-12
	.word	4
	.word	_Label_2033
	.word	-16
	.word	4
	.word	_Label_2034
	.word	-20
	.word	4
	.word	_Label_2035
	.word	-24
	.word	4
	.word	0
_Label_2030:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2031:
	.ascii	"Pself\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2034:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2026\0"
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
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
	mov	1457,r13		! source line 1457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2036
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2036
	jmp	_Label_2037
_Label_2036:
! THEN...
	mov	1473,r13		! source line 1473
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2038
_Label_2037:
! ELSE...
	mov	1474,r13		! source line 1474
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2040		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2040
!	jmp	_Label_2039
_Label_2039:
! THEN...
	mov	1475,r13		! source line 1475
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2040:
! END IF...
_Label_2038:
! ASSIGNMENT STATEMENT...
	mov	1477,r13		! source line 1477
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
	mov	1478,r13		! source line 1478
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
	mov	1481,r13		! source line 1481
	mov	"\0\0WH",r10
_Label_2041:
!	jmp	_Label_2042
_Label_2042:
	mov	1481,r13		! source line 1481
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2045		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2045
!	jmp	_Label_2044
_Label_2044:
! THEN...
	mov	1483,r13		! source line 1483
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2046 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2046  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1483,r13		! source line 1483
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2045:
! IF STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0IF",r10
	mov	1486,r13		! source line 1486
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2050) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2049  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2049 then goto _Label_2048 else goto _Label_2047
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2047
	jmp	_Label_2048
_Label_2047:
! THEN...
	mov	1487,r13		! source line 1487
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2051 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2051  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1487,r13		! source line 1487
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2048:
! ASSIGNMENT STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0AS",r10
	mov	1490,r13		! source line 1490
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2053) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2052  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2052 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1492,r13		! source line 1492
	mov	"\0\0WH",r10
_Label_2054:
!   if offset >= 8192 then goto _Label_2056		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2056
!	jmp	_Label_2055
_Label_2055:
	mov	1492,r13		! source line 1492
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2057 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2057  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2059		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2059
!	jmp	_Label_2058
_Label_2058:
! THEN...
	mov	1501,r13		! source line 1501
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2059:
! END WHILE...
	jmp	_Label_2054
_Label_2056:
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2041
_Label_2043:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2060
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2061
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2062
	.word	12
	.word	4
	.word	_Label_2063
	.word	16
	.word	4
	.word	_Label_2064
	.word	20
	.word	4
	.word	_Label_2065
	.word	-9
	.word	1
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
	.word	-10
	.word	1
	.word	_Label_2071
	.word	-32
	.word	4
	.word	_Label_2072
	.word	-36
	.word	4
	.word	_Label_2073
	.word	-40
	.word	4
	.word	_Label_2074
	.word	-44
	.word	4
	.word	_Label_2075
	.word	-48
	.word	4
	.word	0
_Label_2060:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2061:
	.ascii	"Pself\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2063:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2064:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2065:
	.byte	'C'
	.ascii	"_temp_2057\0"
	.align
_Label_2066:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2067:
	.byte	'?'
	.ascii	"_temp_2052\0"
	.align
_Label_2068:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2069:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2070:
	.byte	'C'
	.ascii	"_temp_2049\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2046\0"
	.align
_Label_2072:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2073:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2074:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2075:
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
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
	mov	1511,r13		! source line 1511
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2076
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2076
	jmp	_Label_2077
_Label_2076:
! THEN...
	mov	1523,r13		! source line 1523
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2078
_Label_2077:
! ELSE...
	mov	1524,r13		! source line 1524
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2080		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2080
!	jmp	_Label_2079
_Label_2079:
! THEN...
	mov	1525,r13		! source line 1525
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2080:
! END IF...
_Label_2078:
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
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
	mov	1528,r13		! source line 1528
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
	mov	1529,r13		! source line 1529
	mov	"\0\0WH",r10
_Label_2081:
!	jmp	_Label_2082
_Label_2082:
	mov	1529,r13		! source line 1529
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2087		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2087
	jmp	_Label_2084
_Label_2087:
	mov	1531,r13		! source line 1531
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2089) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2088  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2088 then goto _Label_2086 else goto _Label_2084
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2084
	jmp	_Label_2086
_Label_2086:
	mov	1532,r13		! source line 1532
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2091) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2090  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2090 then goto _Label_2085 else goto _Label_2084
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2084
	jmp	_Label_2085
_Label_2084:
! THEN...
	mov	1533,r13		! source line 1533
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1533,r13		! source line 1533
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2085:
! ASSIGNMENT STATEMENT...
	mov	1535,r13		! source line 1535
	mov	"\0\0AS",r10
	mov	1535,r13		! source line 1535
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2093) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2092  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2092 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0WH",r10
_Label_2094:
!   if offset >= 8192 then goto _Label_2096		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2096
!	jmp	_Label_2095
_Label_2095:
	mov	1536,r13		! source line 1536
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2097 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2097  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2099		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2099
!	jmp	_Label_2098
_Label_2098:
! THEN...
	mov	1543,r13		! source line 1543
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2099:
! END WHILE...
	jmp	_Label_2094
_Label_2096:
! ASSIGNMENT STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2081
_Label_2083:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2100
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2101
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2102
	.word	12
	.word	4
	.word	_Label_2103
	.word	16
	.word	4
	.word	_Label_2104
	.word	20
	.word	4
	.word	_Label_2105
	.word	-9
	.word	1
	.word	_Label_2106
	.word	-16
	.word	4
	.word	_Label_2107
	.word	-20
	.word	4
	.word	_Label_2108
	.word	-24
	.word	4
	.word	_Label_2109
	.word	-10
	.word	1
	.word	_Label_2110
	.word	-28
	.word	4
	.word	_Label_2111
	.word	-11
	.word	1
	.word	_Label_2112
	.word	-32
	.word	4
	.word	_Label_2113
	.word	-36
	.word	4
	.word	_Label_2114
	.word	-40
	.word	4
	.word	_Label_2115
	.word	-44
	.word	4
	.word	0
_Label_2100:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2101:
	.ascii	"Pself\0"
	.align
_Label_2102:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2103:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2104:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2105:
	.byte	'C'
	.ascii	"_temp_2097\0"
	.align
_Label_2106:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2107:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
_Label_2108:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2109:
	.byte	'C'
	.ascii	"_temp_2090\0"
	.align
_Label_2110:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2111:
	.byte	'C'
	.ascii	"_temp_2088\0"
	.align
_Label_2112:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2113:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2114:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2115:
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
_Label_3156:
	push	r0
	sub	r1,1,r1
	bne	_Label_3156
	mov	1553,r13		! source line 1553
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0IF",r10
	mov	1577,r13		! source line 1577
	mov	"\0\0SE",r10
!   _temp_2119 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2120) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2119  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2118  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2118 >= 4 then goto _Label_2117		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2117
!	jmp	_Label_2116
_Label_2116:
! THEN...
	mov	1580,r13		! source line 1580
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1580,r13		! source line 1580
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2117:
! IF STATEMENT...
	mov	1584,r13		! source line 1584
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2122		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2122
!	jmp	_Label_2121
_Label_2121:
! THEN...
	mov	1585,r13		! source line 1585
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2122:
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
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
	mov	1590,r13		! source line 1590
	mov	"\0\0RE",r10
	mov	1590,r13		! source line 1590
	mov	"\0\0SE",r10
!   _temp_2125 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2124 = _temp_2125 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2126 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2127) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2124  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2126  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2123  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2123  (sizeInBytes=4)
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
	.word	_Label_2128
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2129
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2130
	.word	12
	.word	4
	.word	_Label_2131
	.word	16
	.word	4
	.word	_Label_2132
	.word	20
	.word	4
	.word	_Label_2133
	.word	-12
	.word	4
	.word	_Label_2134
	.word	-16
	.word	4
	.word	_Label_2135
	.word	-20
	.word	4
	.word	_Label_2136
	.word	-24
	.word	4
	.word	_Label_2137
	.word	-28
	.word	4
	.word	_Label_2138
	.word	-32
	.word	4
	.word	_Label_2139
	.word	-36
	.word	4
	.word	_Label_2140
	.word	-40
	.word	4
	.word	_Label_2141
	.word	-44
	.word	4
	.word	0
_Label_2128:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2129:
	.ascii	"Pself\0"
	.align
_Label_2130:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2131:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2132:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2127\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2141:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2142
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2142:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2143
	.word	_sourceFileName
	.word	312		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2143:
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
_Label_3157:
	push	r0
	sub	r1,1,r1
	bne	_Label_3157
	mov	2056,r13		! source line 2056
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2144 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2144  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2057,r13		! source line 2057
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2059,r13		! source line 2059
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2060,r13		! source line 2060
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2064,r13		! source line 2064
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
	mov	2065,r13		! source line 2065
	mov	"\0\0SE",r10
!   _temp_2146 = &semUsedInSynchMethods
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
	mov	2066,r13		! source line 2066
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
	mov	2067,r13		! source line 2067
	mov	"\0\0SE",r10
!   _temp_2148 = &diskBusy
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
	mov	2067,r13		! source line 2067
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
	.word	_Label_2149
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2150
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2151
	.word	-12
	.word	4
	.word	_Label_2152
	.word	-16
	.word	4
	.word	_Label_2153
	.word	-20
	.word	4
	.word	_Label_2154
	.word	-24
	.word	4
	.word	_Label_2155
	.word	-28
	.word	4
	.word	0
_Label_2149:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2150:
	.ascii	"Pself\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2144\0"
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
_Label_3158:
	push	r0
	sub	r1,1,r1
	bne	_Label_3158
	mov	2072,r13		! source line 2072
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0SE",r10
!   _temp_2156 = &diskBusy
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
	mov	2086,r13		! source line 2086
	mov	"\0\0WH",r10
_Label_2157:
!	jmp	_Label_2158
_Label_2158:
	mov	2086,r13		! source line 2086
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2088,r13		! source line 2088
	mov	"\0\0SE",r10
!   _temp_2160 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2161) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2160  sizeInBytes=4
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
	mov	2090,r13		! source line 2090
	mov	"\0\0SE",r10
!   _temp_2162 = &semUsedInSynchMethods
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
	mov	2093,r13		! source line 2093
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2171 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2165
	cmp	r1,2
	be	_Label_2166
	cmp	r1,3
	be	_Label_2167
	cmp	r1,4
	be	_Label_2168
	cmp	r1,5
	be	_Label_2169
	cmp	r1,6
	be	_Label_2170
	jmp	_Label_2163
! CASE 1...
_Label_2165:
! SEND STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0SE",r10
!   _temp_2172 = &diskBusy
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
	mov	2096,r13		! source line 2096
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2166:
! CALL STATEMENT...
!   _temp_2173 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2173  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2098,r13		! source line 2098
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2167:
! CALL STATEMENT...
!   _temp_2174 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2174  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2100,r13		! source line 2100
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2168:
! CALL STATEMENT...
!   _temp_2175 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2175  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2102,r13		! source line 2102
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2169:
! BREAK STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0BR",r10
	jmp	_Label_2164
! CASE 6...
_Label_2170:
! CALL STATEMENT...
!   _temp_2176 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2176  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2108,r13		! source line 2108
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2163:
! CALL STATEMENT...
!   _temp_2177 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2177  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2110,r13		! source line 2110
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2164:
! END WHILE...
	jmp	_Label_2157
_Label_2159:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2178
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2179
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2180
	.word	12
	.word	4
	.word	_Label_2181
	.word	16
	.word	4
	.word	_Label_2182
	.word	20
	.word	4
	.word	_Label_2183
	.word	-12
	.word	4
	.word	_Label_2184
	.word	-16
	.word	4
	.word	_Label_2185
	.word	-20
	.word	4
	.word	_Label_2186
	.word	-24
	.word	4
	.word	_Label_2187
	.word	-28
	.word	4
	.word	_Label_2188
	.word	-32
	.word	4
	.word	_Label_2189
	.word	-36
	.word	4
	.word	_Label_2190
	.word	-40
	.word	4
	.word	_Label_2191
	.word	-44
	.word	4
	.word	_Label_2192
	.word	-48
	.word	4
	.word	_Label_2193
	.word	-52
	.word	4
	.word	0
_Label_2178:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2179:
	.ascii	"Pself\0"
	.align
_Label_2180:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2181:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2182:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2186:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2187:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2188:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2189:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2190:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2161\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2156\0"
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
	mov	2119,r13		! source line 2119
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2137,r13		! source line 2137
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
	mov	2138,r13		! source line 2138
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
	mov	2139,r13		! source line 2139
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
	mov	2140,r13		! source line 2140
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
	mov	2140,r13		! source line 2140
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
	.word	_Label_2194
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2195
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2196
	.word	12
	.word	4
	.word	_Label_2197
	.word	16
	.word	4
	.word	_Label_2198
	.word	20
	.word	4
	.word	_Label_2199
	.word	24
	.word	4
	.word	0
_Label_2194:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2195:
	.ascii	"Pself\0"
	.align
_Label_2196:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2197:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2198:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2199:
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
_Label_3159:
	push	r0
	sub	r1,1,r1
	bne	_Label_3159
	mov	2145,r13		! source line 2145
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0SE",r10
!   _temp_2200 = &diskBusy
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
	mov	2158,r13		! source line 2158
	mov	"\0\0WH",r10
_Label_2201:
!	jmp	_Label_2202
_Label_2202:
	mov	2158,r13		! source line 2158
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0SE",r10
!   _temp_2204 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2205) then goto _runtimeErrorNullPointer
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
!   Prepare Argument: offset=24  value=_temp_2204  sizeInBytes=4
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
	mov	2161,r13		! source line 2161
	mov	"\0\0SE",r10
!   _temp_2206 = &semUsedInSynchMethods
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
	mov	2164,r13		! source line 2164
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2215 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2209
	cmp	r1,2
	be	_Label_2210
	cmp	r1,3
	be	_Label_2211
	cmp	r1,4
	be	_Label_2212
	cmp	r1,5
	be	_Label_2213
	cmp	r1,6
	be	_Label_2214
	jmp	_Label_2207
! CASE 1...
_Label_2209:
! SEND STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0SE",r10
!   _temp_2216 = &diskBusy
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
	mov	2167,r13		! source line 2167
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2210:
! CALL STATEMENT...
!   _temp_2217 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2217  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2169,r13		! source line 2169
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2211:
! CALL STATEMENT...
!   _temp_2218 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2218  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2171,r13		! source line 2171
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2212:
! CALL STATEMENT...
!   _temp_2219 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2219  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2173,r13		! source line 2173
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2213:
! BREAK STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0BR",r10
	jmp	_Label_2208
! CASE 6...
_Label_2214:
! CALL STATEMENT...
!   _temp_2220 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2220  sizeInBytes=4
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
! DEFAULT CASE...
_Label_2207:
! CALL STATEMENT...
!   _temp_2221 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2221  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2181,r13		! source line 2181
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2208:
! END WHILE...
	jmp	_Label_2201
_Label_2203:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2222
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2223
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2224
	.word	12
	.word	4
	.word	_Label_2225
	.word	16
	.word	4
	.word	_Label_2226
	.word	20
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
	.word	0
_Label_2222:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2223:
	.ascii	"Pself\0"
	.align
_Label_2224:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2225:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2226:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2200\0"
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
	mov	2190,r13		! source line 2190
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
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
	mov	2208,r13		! source line 2208
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
	mov	2209,r13		! source line 2209
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
	mov	2210,r13		! source line 2210
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
	mov	2210,r13		! source line 2210
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
	.word	_Label_2238
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2239
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2240
	.word	12
	.word	4
	.word	_Label_2241
	.word	16
	.word	4
	.word	_Label_2242
	.word	20
	.word	4
	.word	_Label_2243
	.word	24
	.word	4
	.word	0
_Label_2238:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2239:
	.ascii	"Pself\0"
	.align
_Label_2240:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2241:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2242:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2243:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2244
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
_Label_2244:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2245
	.word	_sourceFileName
	.word	335		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2245:
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
_Label_3160:
	push	r0
	sub	r1,1,r1
	bne	_Label_3160
	mov	2221,r13		! source line 2221
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2246 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2246  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2228,r13		! source line 2228
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2229,r13		! source line 2229
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
	mov	2230,r13		! source line 2230
	mov	"\0\0SE",r10
!   _temp_2248 = &fileManagerLock
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
	mov	2233,r13		! source line 2233
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
	mov	2234,r13		! source line 2234
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
	mov	2235,r13		! source line 2235
	mov	"\0\0SE",r10
!   _temp_2251 = &anFCBBecameFree
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
	mov	2236,r13		! source line 2236
	mov	"\0\0AS",r10
!   _temp_2252 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2254 = &_temp_2253
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2254 = _temp_2254 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2256 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3161:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3161
!   _temp_2256 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2258:
!   Data Move: *_temp_2254 = _temp_2256  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3162:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3162
!   _temp_2254 = _temp_2254 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2255 = _temp_2255 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2255) then goto _Label_2258
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2258
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2259 = &_temp_2253
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3163
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3163:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2252 = *_temp_2259  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3164:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3164
! FOR STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2264 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2265 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2264  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2260:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2265 then goto _Label_2263		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2263
_Label_2261:
	mov	2238,r13		! source line 2238
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0AS",r10
!   _temp_2266 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2266 [i ] into _temp_2267
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
!   _temp_2268 = _temp_2267 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2268 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_2269 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2269 [i ] into _temp_2270
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
	mov	2241,r13		! source line 2241
	mov	"\0\0SE",r10
!   _temp_2272 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2272 [i ] into _temp_2273
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
!   _temp_2271 = _temp_2273		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2274 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2271  sizeInBytes=4
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
_Label_2262:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2260
! END FOR
_Label_2263:
! ASSIGNMENT STATEMENT...
	mov	2245,r13		! source line 2245
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
	mov	2246,r13		! source line 2246
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
	mov	2247,r13		! source line 2247
	mov	"\0\0SE",r10
!   _temp_2277 = &anOpenFileBecameFree
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
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   _temp_2278 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2280 = &_temp_2279
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2280 = _temp_2280 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2282 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3165:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3165
!   _temp_2282 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2284:
!   Data Move: *_temp_2280 = _temp_2282  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3166:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3166
!   _temp_2280 = _temp_2280 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2281 = _temp_2281 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2281) then goto _Label_2284
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2284
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2285 = &_temp_2279
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3167
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3167:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2278 = *_temp_2285  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3168:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3168
! FOR STATEMENT...
	mov	2250,r13		! source line 2250
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2290 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2291 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2290  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2286:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2291 then goto _Label_2289		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2289
_Label_2287:
	mov	2250,r13		! source line 2250
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0AS",r10
!   _temp_2292 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2292 [i ] into _temp_2293
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
!   _temp_2294 = _temp_2293 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2294 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0SE",r10
!   _temp_2296 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2296 [i ] into _temp_2297
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
!   _temp_2295 = _temp_2297		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2298 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2295  sizeInBytes=4
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
_Label_2288:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2286
! END FOR
_Label_2289:
! ASSIGNMENT STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3169:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3169
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0AS",r10
!   _temp_2300 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2301 = _temp_2300 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2301 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0AS",r10
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_2302 = &_P_Kernel_frameManager
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
	mov	2263,r13		! source line 2263
	mov	"\0\0SE",r10
!   _temp_2303 = &_P_Kernel_diskDriver
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
	mov	2263,r13		! source line 2263
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
	.word	_Label_2304
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2306
	.word	-12
	.word	4
	.word	_Label_2307
	.word	-16
	.word	4
	.word	_Label_2308
	.word	-20
	.word	4
	.word	_Label_2309
	.word	-24
	.word	4
	.word	_Label_2310
	.word	-28
	.word	4
	.word	_Label_2311
	.word	-32
	.word	4
	.word	_Label_2312
	.word	-36
	.word	4
	.word	_Label_2313
	.word	-40
	.word	4
	.word	_Label_2314
	.word	-44
	.word	4
	.word	_Label_2315
	.word	-48
	.word	4
	.word	_Label_2316
	.word	-52
	.word	4
	.word	_Label_2317
	.word	-56
	.word	4
	.word	_Label_2318
	.word	-60
	.word	4
	.word	_Label_2319
	.word	-64
	.word	4
	.word	_Label_2320
	.word	-68
	.word	4
	.word	_Label_2321
	.word	-72
	.word	4
	.word	_Label_2322
	.word	-100
	.word	28
	.word	_Label_2323
	.word	-104
	.word	4
	.word	_Label_2324
	.word	-108
	.word	4
	.word	_Label_2325
	.word	-392
	.word	284
	.word	_Label_2326
	.word	-396
	.word	4
	.word	_Label_2327
	.word	-400
	.word	4
	.word	_Label_2328
	.word	-404
	.word	4
	.word	_Label_2329
	.word	-408
	.word	4
	.word	_Label_2330
	.word	-412
	.word	4
	.word	_Label_2331
	.word	-416
	.word	4
	.word	_Label_2332
	.word	-420
	.word	4
	.word	_Label_2333
	.word	-424
	.word	4
	.word	_Label_2334
	.word	-428
	.word	4
	.word	_Label_2335
	.word	-432
	.word	4
	.word	_Label_2336
	.word	-436
	.word	4
	.word	_Label_2337
	.word	-440
	.word	4
	.word	_Label_2338
	.word	-444
	.word	4
	.word	_Label_2339
	.word	-448
	.word	4
	.word	_Label_2340
	.word	-452
	.word	4
	.word	_Label_2341
	.word	-456
	.word	4
	.word	_Label_2342
	.word	-460
	.word	4
	.word	_Label_2343
	.word	-500
	.word	40
	.word	_Label_2344
	.word	-504
	.word	4
	.word	_Label_2345
	.word	-508
	.word	4
	.word	_Label_2346
	.word	-912
	.word	404
	.word	_Label_2347
	.word	-916
	.word	4
	.word	_Label_2348
	.word	-920
	.word	4
	.word	_Label_2349
	.word	-924
	.word	4
	.word	_Label_2350
	.word	-928
	.word	4
	.word	_Label_2351
	.word	-932
	.word	4
	.word	_Label_2352
	.word	-936
	.word	4
	.word	_Label_2353
	.word	-940
	.word	4
	.word	_Label_2354
	.word	-944
	.word	4
	.word	0
_Label_2304:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2305:
	.ascii	"Pself\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2253\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2252\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2354:
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
_Label_3170:
	push	r0
	sub	r1,1,r1
	bne	_Label_3170
	mov	2270,r13		! source line 2270
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2272,r13		! source line 2272
	mov	"\0\0SE",r10
!   _temp_2355 = &fileManagerLock
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
!   _temp_2356 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2356  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2273,r13		! source line 2273
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2274,r13		! source line 2274
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2361 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2362 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2361  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2357:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2362 then goto _Label_2360		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2360
_Label_2358:
	mov	2274,r13		! source line 2274
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2363 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2363  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2275,r13		! source line 2275
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2276,r13		! source line 2276
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2364 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2364  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2277,r13		! source line 2277
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0SE",r10
!   _temp_2365 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2365 [i ] into _temp_2366
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
_Label_2359:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2357
! END FOR
_Label_2360:
! CALL STATEMENT...
!   _temp_2367 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2367  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2280,r13		! source line 2280
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0SE",r10
!   _temp_2368 = _function_221_printFCB
	set	_function_221_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2369 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2368  sizeInBytes=4
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
	mov	2282,r13		! source line 2282
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2370 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2283,r13		! source line 2283
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2375 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2376 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2375  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2371:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2376 then goto _Label_2374		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2374
_Label_2372:
	mov	2284,r13		! source line 2284
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2377 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2377  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2285,r13		! source line 2285
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2286,r13		! source line 2286
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2378 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2378  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2287,r13		! source line 2287
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2380 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2380 [i ] into _temp_2381
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
!   _temp_2379 = _temp_2381		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2379  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2288,r13		! source line 2288
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2382 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2382  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2289,r13		! source line 2289
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0SE",r10
!   _temp_2383 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2383 [i ] into _temp_2384
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
_Label_2373:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2371
! END FOR
_Label_2374:
! CALL STATEMENT...
!   _temp_2385 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2385  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2292,r13		! source line 2292
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_2386 = _function_220_printOpen
	set	_function_220_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2387 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2386  sizeInBytes=4
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
	mov	2294,r13		! source line 2294
	mov	"\0\0SE",r10
!   _temp_2388 = &fileManagerLock
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
	mov	2294,r13		! source line 2294
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
	.word	_Label_2389
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2390
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2391
	.word	-12
	.word	4
	.word	_Label_2392
	.word	-16
	.word	4
	.word	_Label_2393
	.word	-20
	.word	4
	.word	_Label_2394
	.word	-24
	.word	4
	.word	_Label_2395
	.word	-28
	.word	4
	.word	_Label_2396
	.word	-32
	.word	4
	.word	_Label_2397
	.word	-36
	.word	4
	.word	_Label_2398
	.word	-40
	.word	4
	.word	_Label_2399
	.word	-44
	.word	4
	.word	_Label_2400
	.word	-48
	.word	4
	.word	_Label_2401
	.word	-52
	.word	4
	.word	_Label_2402
	.word	-56
	.word	4
	.word	_Label_2403
	.word	-60
	.word	4
	.word	_Label_2404
	.word	-64
	.word	4
	.word	_Label_2405
	.word	-68
	.word	4
	.word	_Label_2406
	.word	-72
	.word	4
	.word	_Label_2407
	.word	-76
	.word	4
	.word	_Label_2408
	.word	-80
	.word	4
	.word	_Label_2409
	.word	-84
	.word	4
	.word	_Label_2410
	.word	-88
	.word	4
	.word	_Label_2411
	.word	-92
	.word	4
	.word	_Label_2412
	.word	-96
	.word	4
	.word	_Label_2413
	.word	-100
	.word	4
	.word	_Label_2414
	.word	-104
	.word	4
	.word	_Label_2415
	.word	-108
	.word	4
	.word	_Label_2416
	.word	-112
	.word	4
	.word	_Label_2417
	.word	-116
	.word	4
	.word	0
_Label_2389:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2390:
	.ascii	"Pself\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2384\0"
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
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2362\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2417:
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
_Label_3171:
	push	r0
	sub	r1,1,r1
	bne	_Label_3171
	mov	2299,r13		! source line 2299
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2315,r13		! source line 2315
	mov	"\0\0AS",r10
	mov	2315,r13		! source line 2315
	mov	"\0\0SE",r10
!   _temp_2418 = &_P_Kernel_fileManager
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
	mov	2316,r13		! source line 2316
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2419
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2419
	jmp	_Label_2420
_Label_2419:
! THEN...
	mov	2317,r13		! source line 2317
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2317,r13		! source line 2317
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2420:
! SEND STATEMENT...
	mov	2321,r13		! source line 2321
	mov	"\0\0SE",r10
!   _temp_2421 = &fileManagerLock
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
	mov	2322,r13		! source line 2322
	mov	"\0\0WH",r10
_Label_2422:
	mov	2322,r13		! source line 2322
	mov	"\0\0SE",r10
!   _temp_2425 = &openFileFreeList
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
!   if result==true then goto _Label_2423 else goto _Label_2424
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2424
	jmp	_Label_2423
_Label_2423:
	mov	2322,r13		! source line 2322
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2323,r13		! source line 2323
	mov	"\0\0SE",r10
!   _temp_2426 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2427 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2426  sizeInBytes=4
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
	jmp	_Label_2422
_Label_2424:
! ASSIGNMENT STATEMENT...
	mov	2325,r13		! source line 2325
	mov	"\0\0AS",r10
	mov	2325,r13		! source line 2325
	mov	"\0\0SE",r10
!   _temp_2428 = &openFileFreeList
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
	mov	2328,r13		! source line 2328
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2429 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2430 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2430 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2431 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2431 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2432 = &fileManagerLock
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
	mov	2335,r13		! source line 2335
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
	.word	_Label_2433
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2435
	.word	12
	.word	4
	.word	_Label_2436
	.word	-12
	.word	4
	.word	_Label_2437
	.word	-16
	.word	4
	.word	_Label_2438
	.word	-20
	.word	4
	.word	_Label_2439
	.word	-24
	.word	4
	.word	_Label_2440
	.word	-28
	.word	4
	.word	_Label_2441
	.word	-32
	.word	4
	.word	_Label_2442
	.word	-36
	.word	4
	.word	_Label_2443
	.word	-40
	.word	4
	.word	_Label_2444
	.word	-44
	.word	4
	.word	_Label_2445
	.word	-48
	.word	4
	.word	_Label_2446
	.word	-52
	.word	4
	.word	_Label_2447
	.word	-56
	.word	4
	.word	0
_Label_2433:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2434:
	.ascii	"Pself\0"
	.align
_Label_2435:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2432\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2431\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2439:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2440:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2441:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2442:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2443:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2444:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2445:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2446:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2447:
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
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
	mov	2340,r13		! source line 2340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
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
	mov	2369,r13		! source line 2369
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2449		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2449
!	jmp	_Label_2448
_Label_2448:
! THEN...
	mov	2371,r13		! source line 2371
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2450 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2450  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2371,r13		! source line 2371
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2449:
! ASSIGNMENT STATEMENT...
	mov	2375,r13		! source line 2375
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
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
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
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0WH",r10
_Label_2451:
!   if numFiles <= 0 then goto _Label_2453		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2453
!	jmp	_Label_2452
_Label_2452:
	mov	2381,r13		! source line 2381
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2454 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2454  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2382,r13		! source line 2382
	mov	"\0\0CA",r10
	call	_function_222_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2455 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2455  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2384,r13		! source line 2384
	mov	"\0\0CA",r10
	call	_function_222_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2456 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2456  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2386,r13		! source line 2386
	mov	"\0\0CA",r10
	call	_function_222_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2460 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2460 then goto _Label_2458		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2458
!	jmp	_Label_2459
_Label_2459:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2462
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
!   _temp_2461 = _temp_2462		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2461  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2389,r13		! source line 2389
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2457 else goto _Label_2458
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2458
	jmp	_Label_2457
_Label_2457:
! THEN...
	mov	2390,r13		! source line 2390
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0BR",r10
	jmp	_Label_2453
! END IF...
_Label_2458:
! ASSIGNMENT STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2451
_Label_2453:
! IF STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2464		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2464
!	jmp	_Label_2463
_Label_2463:
! THEN...
	mov	2398,r13		! source line 2398
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2398,r13		! source line 2398
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2464:
! SEND STATEMENT...
	mov	2401,r13		! source line 2401
	mov	"\0\0SE",r10
!   _temp_2465 = &fileManagerLock
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
	mov	2403,r13		! source line 2403
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2470 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2471 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2470  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2466:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2471 then goto _Label_2469		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2469
_Label_2467:
	mov	2403,r13		! source line 2403
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   _temp_2472 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2472 [i ] into _temp_2473
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
!   fcb = _temp_2473		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2477 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2476 = *_temp_2477  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2476 != start then goto _Label_2475		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2475
!	jmp	_Label_2474
_Label_2474:
! THEN...
	mov	2406,r13		! source line 2406
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2478 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2481 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2480 = *_temp_2481  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2479 = _temp_2480 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2478 = _temp_2479  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_2482 = &fileManagerLock
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
	mov	2408,r13		! source line 2408
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2475:
!   Increment the FOR-LOOP index variable and jump back
_Label_2468:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2466
! END FOR
_Label_2469:
! WHILE STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0WH",r10
_Label_2483:
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2486 = &fcbFreeList
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
!   if result==true then goto _Label_2484 else goto _Label_2485
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2485
	jmp	_Label_2484
_Label_2484:
	mov	2413,r13		! source line 2413
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0SE",r10
!   _temp_2487 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2488 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2487  sizeInBytes=4
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
	jmp	_Label_2483
_Label_2485:
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_2489 = &fcbFreeList
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
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2490 = &fileManagerLock
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
	mov	2422,r13		! source line 2422
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2491 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2491 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2492 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2492 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2493 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2493 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2498 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2497 = *_temp_2498  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2497 < 0 then goto _Label_2496		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2496
	jmp	_Label_2494
_Label_2496:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2499 ) then goto _Label_2495		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2495
!	jmp	_Label_2494
_Label_2494:
! THEN...
	mov	2426,r13		! source line 2426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2500 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2500  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2426,r13		! source line 2426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2495:
! RETURN STATEMENT...
	mov	2428,r13		! source line 2428
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
	.word	_Label_2501
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2503
	.word	12
	.word	4
	.word	_Label_2504
	.word	-12
	.word	4
	.word	_Label_2505
	.word	-16
	.word	4
	.word	_Label_2506
	.word	-20
	.word	4
	.word	_Label_2507
	.word	-24
	.word	4
	.word	_Label_2508
	.word	-28
	.word	4
	.word	_Label_2509
	.word	-32
	.word	4
	.word	_Label_2510
	.word	-36
	.word	4
	.word	_Label_2511
	.word	-40
	.word	4
	.word	_Label_2512
	.word	-44
	.word	4
	.word	_Label_2513
	.word	-48
	.word	4
	.word	_Label_2514
	.word	-52
	.word	4
	.word	_Label_2515
	.word	-56
	.word	4
	.word	_Label_2516
	.word	-60
	.word	4
	.word	_Label_2517
	.word	-64
	.word	4
	.word	_Label_2518
	.word	-68
	.word	4
	.word	_Label_2519
	.word	-72
	.word	4
	.word	_Label_2520
	.word	-76
	.word	4
	.word	_Label_2521
	.word	-80
	.word	4
	.word	_Label_2522
	.word	-84
	.word	4
	.word	_Label_2523
	.word	-88
	.word	4
	.word	_Label_2524
	.word	-92
	.word	4
	.word	_Label_2525
	.word	-96
	.word	4
	.word	_Label_2526
	.word	-100
	.word	4
	.word	_Label_2527
	.word	-104
	.word	4
	.word	_Label_2528
	.word	-108
	.word	4
	.word	_Label_2529
	.word	-112
	.word	4
	.word	_Label_2530
	.word	-116
	.word	4
	.word	_Label_2531
	.word	-120
	.word	4
	.word	_Label_2532
	.word	-124
	.word	4
	.word	_Label_2533
	.word	-128
	.word	4
	.word	_Label_2534
	.word	-132
	.word	4
	.word	_Label_2535
	.word	-136
	.word	4
	.word	_Label_2536
	.word	-140
	.word	4
	.word	_Label_2537
	.word	-144
	.word	4
	.word	_Label_2538
	.word	-148
	.word	4
	.word	_Label_2539
	.word	-152
	.word	4
	.word	_Label_2540
	.word	-156
	.word	4
	.word	_Label_2541
	.word	-160
	.word	4
	.word	0
_Label_2501:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2502:
	.ascii	"Pself\0"
	.align
_Label_2503:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2486\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2535:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2536:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2537:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2538:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2539:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2540:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2541:
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
_Label_3173:
	push	r0
	sub	r1,1,r1
	bne	_Label_3173
	mov	2441,r13		! source line 2441
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0IF",r10
!   _temp_2544 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2544 then goto _Label_2543		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2543
!	jmp	_Label_2542
_Label_2542:
! THEN...
	mov	2444,r13		! source line 2444
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2543:
! SEND STATEMENT...
	mov	2446,r13		! source line 2446
	mov	"\0\0SE",r10
!   _temp_2545 = &fileManagerLock
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
	mov	2447,r13		! source line 2447
	mov	"\0\0SE",r10
!   _temp_2546 = &_P_Kernel_fileManager
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
	mov	2448,r13		! source line 2448
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2547 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2547  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2449,r13		! source line 2449
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2548 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2551 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2550 = *_temp_2551  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2549 = _temp_2550 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2548 = _temp_2549  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2450,r13		! source line 2450
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2555 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2554 = *_temp_2555  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2554 > 0 then goto _Label_2553		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2553
!	jmp	_Label_2552
_Label_2552:
! THEN...
	mov	2451,r13		! source line 2451
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2451,r13		! source line 2451
	mov	"\0\0SE",r10
!   _temp_2556 = &openFileFreeList
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
	mov	2452,r13		! source line 2452
	mov	"\0\0SE",r10
!   _temp_2557 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2558 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2557  sizeInBytes=4
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
	mov	2453,r13		! source line 2453
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2559 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2562 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2561 = *_temp_2562  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2560 = _temp_2561 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2559 = _temp_2560  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2454,r13		! source line 2454
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2566 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2565 = *_temp_2566  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2565 > 0 then goto _Label_2564		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2564
!	jmp	_Label_2563
_Label_2563:
! THEN...
	mov	2455,r13		! source line 2455
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2455,r13		! source line 2455
	mov	"\0\0SE",r10
!   _temp_2567 = &fcbFreeList
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
	mov	2456,r13		! source line 2456
	mov	"\0\0SE",r10
!   _temp_2568 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2569 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2568  sizeInBytes=4
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
_Label_2564:
! END IF...
_Label_2553:
! SEND STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0SE",r10
!   _temp_2570 = &fileManagerLock
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
	mov	2459,r13		! source line 2459
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
	.word	_Label_2571
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2572
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2573
	.word	12
	.word	4
	.word	_Label_2574
	.word	-12
	.word	4
	.word	_Label_2575
	.word	-16
	.word	4
	.word	_Label_2576
	.word	-20
	.word	4
	.word	_Label_2577
	.word	-24
	.word	4
	.word	_Label_2578
	.word	-28
	.word	4
	.word	_Label_2579
	.word	-32
	.word	4
	.word	_Label_2580
	.word	-36
	.word	4
	.word	_Label_2581
	.word	-40
	.word	4
	.word	_Label_2582
	.word	-44
	.word	4
	.word	_Label_2583
	.word	-48
	.word	4
	.word	_Label_2584
	.word	-52
	.word	4
	.word	_Label_2585
	.word	-56
	.word	4
	.word	_Label_2586
	.word	-60
	.word	4
	.word	_Label_2587
	.word	-64
	.word	4
	.word	_Label_2588
	.word	-68
	.word	4
	.word	_Label_2589
	.word	-72
	.word	4
	.word	_Label_2590
	.word	-76
	.word	4
	.word	_Label_2591
	.word	-80
	.word	4
	.word	_Label_2592
	.word	-84
	.word	4
	.word	_Label_2593
	.word	-88
	.word	4
	.word	_Label_2594
	.word	-92
	.word	4
	.word	_Label_2595
	.word	-96
	.word	4
	.word	_Label_2596
	.word	-100
	.word	4
	.word	_Label_2597
	.word	-104
	.word	4
	.word	0
_Label_2571:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2572:
	.ascii	"Pself\0"
	.align
_Label_2573:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2544\0"
	.align
_Label_2597:
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
_Label_3174:
	push	r0
	sub	r1,1,r1
	bne	_Label_3174
	mov	2464,r13		! source line 2464
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2601 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2600 = *_temp_2601  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2600) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2602 = _temp_2600 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2602 ) then goto _Label_2599		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2599
!	jmp	_Label_2598
_Label_2598:
! THEN...
	mov	2470,r13		! source line 2470
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2607 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2606 = *_temp_2607  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2606) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2608 = _temp_2606 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2605 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2605 >= 0 then goto _Label_2604		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2604
!	jmp	_Label_2603
_Label_2603:
! THEN...
	mov	2471,r13		! source line 2471
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2609 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2609  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2471,r13		! source line 2471
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2604:
! ASSIGNMENT STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2611 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2610 = *_temp_2611  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2610) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2612 = _temp_2610 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2612 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2615 = *_temp_2616  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2615) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2617 = _temp_2615 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2614 = *_temp_2617  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2620 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2619 = *_temp_2620  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2619) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2621 = _temp_2619 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2618 = *_temp_2621  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2613 = _temp_2614 + _temp_2618		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2623 = *_temp_2624  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2623) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2625 = _temp_2623 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2622 = *_temp_2625  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2626 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2613  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2622  sizeInBytes=4
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
_Label_2599:
! RETURN STATEMENT...
	mov	2469,r13		! source line 2469
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
	.word	_Label_2627
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2628
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2629
	.word	12
	.word	4
	.word	_Label_2630
	.word	-12
	.word	4
	.word	_Label_2631
	.word	-16
	.word	4
	.word	_Label_2632
	.word	-20
	.word	4
	.word	_Label_2633
	.word	-24
	.word	4
	.word	_Label_2634
	.word	-28
	.word	4
	.word	_Label_2635
	.word	-32
	.word	4
	.word	_Label_2636
	.word	-36
	.word	4
	.word	_Label_2637
	.word	-40
	.word	4
	.word	_Label_2638
	.word	-44
	.word	4
	.word	_Label_2639
	.word	-48
	.word	4
	.word	_Label_2640
	.word	-52
	.word	4
	.word	_Label_2641
	.word	-56
	.word	4
	.word	_Label_2642
	.word	-60
	.word	4
	.word	_Label_2643
	.word	-64
	.word	4
	.word	_Label_2644
	.word	-68
	.word	4
	.word	_Label_2645
	.word	-72
	.word	4
	.word	_Label_2646
	.word	-76
	.word	4
	.word	_Label_2647
	.word	-80
	.word	4
	.word	_Label_2648
	.word	-84
	.word	4
	.word	_Label_2649
	.word	-88
	.word	4
	.word	_Label_2650
	.word	-92
	.word	4
	.word	_Label_2651
	.word	-96
	.word	4
	.word	_Label_2652
	.word	-100
	.word	4
	.word	_Label_2653
	.word	-104
	.word	4
	.word	_Label_2654
	.word	-108
	.word	4
	.word	0
_Label_2627:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2628:
	.ascii	"Pself\0"
	.align
_Label_2629:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2626\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2625\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2646:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2647:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2600\0"
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
_Label_3175:
	push	r0
	sub	r1,1,r1
	bne	_Label_3175
	mov	2483,r13		! source line 2483
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2498,r13		! source line 2498
	mov	"\0\0SE",r10
!   _temp_2655 = &fileManagerLock
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
	mov	2499,r13		! source line 2499
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2661		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2661
!   _temp_2660 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2662
_Label_2661:
!   _temp_2660 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2662:
!   if _temp_2660 then goto _Label_2659 else goto _Label_2656
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2656
	jmp	_Label_2659
_Label_2659:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2665 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2664 = *_temp_2665  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2664 == 0 then goto _Label_2666		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2666
!   _temp_2663 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2667
_Label_2666:
!   _temp_2663 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2667:
!   if _temp_2663 then goto _Label_2658 else goto _Label_2656
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2656
	jmp	_Label_2658
_Label_2658:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2670 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2669 = *_temp_2670  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2669) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2671 = _temp_2669 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2668 = *_temp_2671  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2668 >= 0 then goto _Label_2657		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2657
!	jmp	_Label_2656
_Label_2656:
! THEN...
	mov	2500,r13		! source line 2500
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2672 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2672  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2500,r13		! source line 2500
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2657:
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2673 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2673  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0WH",r10
_Label_2674:
!   if numBytes <= 0 then goto _Label_2676		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2676
!	jmp	_Label_2675
_Label_2675:
	mov	2503,r13		! source line 2503
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
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
	mov	2513,r13		! source line 2513
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
	mov	2517,r13		! source line 2517
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2680 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2679 = *_temp_2680  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2679 == sector then goto _Label_2678		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2678
!	jmp	_Label_2677
_Label_2677:
! THEN...
	mov	2518,r13		! source line 2518
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2681) then goto _runtimeErrorNullPointer
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
	mov	2520,r13		! source line 2520
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2684 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2683 = *_temp_2684  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2682 = sector + _temp_2683		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2686 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2685 = *_temp_2686  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2687 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2682  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2685  sizeInBytes=4
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
	mov	2523,r13		! source line 2523
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2688 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2688 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2689 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2689 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2678:
! ASSIGNMENT STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2691 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2690 = *_temp_2691  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2690 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2527,r13		! source line 2527
	mov	"\0\0AS",r10
!   _temp_2692 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2692  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2527,r13		! source line 2527
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
	mov	2531,r13		! source line 2531
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2534,r13		! source line 2534
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2674
_Label_2676:
! SEND STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0SE",r10
!   _temp_2693 = &fileManagerLock
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
	mov	2542,r13		! source line 2542
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
	.word	_Label_2694
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2695
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2696
	.word	12
	.word	4
	.word	_Label_2697
	.word	16
	.word	4
	.word	_Label_2698
	.word	20
	.word	4
	.word	_Label_2699
	.word	24
	.word	4
	.word	_Label_2700
	.word	-16
	.word	4
	.word	_Label_2701
	.word	-20
	.word	4
	.word	_Label_2702
	.word	-24
	.word	4
	.word	_Label_2703
	.word	-28
	.word	4
	.word	_Label_2704
	.word	-32
	.word	4
	.word	_Label_2705
	.word	-36
	.word	4
	.word	_Label_2706
	.word	-40
	.word	4
	.word	_Label_2707
	.word	-44
	.word	4
	.word	_Label_2708
	.word	-48
	.word	4
	.word	_Label_2709
	.word	-52
	.word	4
	.word	_Label_2710
	.word	-56
	.word	4
	.word	_Label_2711
	.word	-60
	.word	4
	.word	_Label_2712
	.word	-64
	.word	4
	.word	_Label_2713
	.word	-68
	.word	4
	.word	_Label_2714
	.word	-72
	.word	4
	.word	_Label_2715
	.word	-76
	.word	4
	.word	_Label_2716
	.word	-80
	.word	4
	.word	_Label_2717
	.word	-84
	.word	4
	.word	_Label_2718
	.word	-88
	.word	4
	.word	_Label_2719
	.word	-92
	.word	4
	.word	_Label_2720
	.word	-96
	.word	4
	.word	_Label_2721
	.word	-100
	.word	4
	.word	_Label_2722
	.word	-104
	.word	4
	.word	_Label_2723
	.word	-9
	.word	1
	.word	_Label_2724
	.word	-10
	.word	1
	.word	_Label_2725
	.word	-108
	.word	4
	.word	_Label_2726
	.word	-112
	.word	4
	.word	_Label_2727
	.word	-116
	.word	4
	.word	_Label_2728
	.word	-120
	.word	4
	.word	_Label_2729
	.word	-124
	.word	4
	.word	_Label_2730
	.word	-128
	.word	4
	.word	0
_Label_2694:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2695:
	.ascii	"Pself\0"
	.align
_Label_2696:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2697:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2698:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2699:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2685\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2714:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2717:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2718:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2719:
	.byte	'?'
	.ascii	"_temp_2669\0"
	.align
_Label_2720:
	.byte	'?'
	.ascii	"_temp_2668\0"
	.align
_Label_2721:
	.byte	'?'
	.ascii	"_temp_2665\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2723:
	.byte	'C'
	.ascii	"_temp_2663\0"
	.align
_Label_2724:
	.byte	'C'
	.ascii	"_temp_2660\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2726:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2727:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2728:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2729:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2730:
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
_Label_3176:
	push	r0
	sub	r1,1,r1
	bne	_Label_3176
	mov	2547,r13		! source line 2547
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2563,r13		! source line 2563
	mov	"\0\0SE",r10
!   _temp_2731 = &fileManagerLock
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
	mov	2564,r13		! source line 2564
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2737		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2737
!   _temp_2736 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2738
_Label_2737:
!   _temp_2736 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2738:
!   if _temp_2736 then goto _Label_2735 else goto _Label_2732
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2732
	jmp	_Label_2735
_Label_2735:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2741 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2740 = *_temp_2741  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2740 == 0 then goto _Label_2742		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2742
!   _temp_2739 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2743
_Label_2742:
!   _temp_2739 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2743:
!   if _temp_2739 then goto _Label_2734 else goto _Label_2732
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2732
	jmp	_Label_2734
_Label_2734:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2746 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2745 = *_temp_2746  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2745) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2747 = _temp_2745 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2744 = *_temp_2747  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2744 >= 0 then goto _Label_2733		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2733
!	jmp	_Label_2732
_Label_2732:
! THEN...
	mov	2565,r13		! source line 2565
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2748 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2748  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2565,r13		! source line 2565
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2733:
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2749 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2749  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0WH",r10
_Label_2750:
!   if numBytes <= 0 then goto _Label_2752		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2752
!	jmp	_Label_2751
_Label_2751:
	mov	2568,r13		! source line 2568
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2577,r13		! source line 2577
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
	mov	2578,r13		! source line 2578
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
	mov	2582,r13		! source line 2582
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2756 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2755 = *_temp_2756  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2755 == sector then goto _Label_2754		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2754
!	jmp	_Label_2753
_Label_2753:
! THEN...
	mov	2584,r13		! source line 2584
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2757) then goto _runtimeErrorNullPointer
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
_Label_2754:
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2759 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2758 = *_temp_2759  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2758 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   _temp_2760 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2760  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2587,r13		! source line 2587
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2764 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2763 = *_temp_2764  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2763 != sector then goto _Label_2762		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2762
!	jmp	_Label_2761
_Label_2761:
	jmp	_Label_2765
_Label_2762:
! ELSE...
	mov	2590,r13		! source line 2590
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2768
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2768
	jmp	_Label_2767
_Label_2768:
!   if bytesToMove != 8192 then goto _Label_2767		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2767
!	jmp	_Label_2766
_Label_2766:
	jmp	_Label_2769
_Label_2767:
! ELSE...
	mov	2594,r13		! source line 2594
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2772 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2771 = *_temp_2772  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2770 = sector + _temp_2771		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2774 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2773 = *_temp_2774  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2775 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2770  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2773  sizeInBytes=4
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
_Label_2769:
! END IF...
_Label_2765:
! ASSIGNMENT STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2776 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2776 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2599,r13		! source line 2599
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2777 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2777 = 1  (sizeInBytes=1)
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
	mov	2603,r13		! source line 2603
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2604,r13		! source line 2604
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2750
_Label_2752:
! SEND STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0SE",r10
!   _temp_2778 = &fileManagerLock
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
	mov	2615,r13		! source line 2615
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
	.word	_Label_2779
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2781
	.word	12
	.word	4
	.word	_Label_2782
	.word	16
	.word	4
	.word	_Label_2783
	.word	20
	.word	4
	.word	_Label_2784
	.word	24
	.word	4
	.word	_Label_2785
	.word	-16
	.word	4
	.word	_Label_2786
	.word	-20
	.word	4
	.word	_Label_2787
	.word	-24
	.word	4
	.word	_Label_2788
	.word	-28
	.word	4
	.word	_Label_2789
	.word	-32
	.word	4
	.word	_Label_2790
	.word	-36
	.word	4
	.word	_Label_2791
	.word	-40
	.word	4
	.word	_Label_2792
	.word	-44
	.word	4
	.word	_Label_2793
	.word	-48
	.word	4
	.word	_Label_2794
	.word	-52
	.word	4
	.word	_Label_2795
	.word	-56
	.word	4
	.word	_Label_2796
	.word	-60
	.word	4
	.word	_Label_2797
	.word	-64
	.word	4
	.word	_Label_2798
	.word	-68
	.word	4
	.word	_Label_2799
	.word	-72
	.word	4
	.word	_Label_2800
	.word	-76
	.word	4
	.word	_Label_2801
	.word	-80
	.word	4
	.word	_Label_2802
	.word	-84
	.word	4
	.word	_Label_2803
	.word	-88
	.word	4
	.word	_Label_2804
	.word	-92
	.word	4
	.word	_Label_2805
	.word	-96
	.word	4
	.word	_Label_2806
	.word	-100
	.word	4
	.word	_Label_2807
	.word	-104
	.word	4
	.word	_Label_2808
	.word	-108
	.word	4
	.word	_Label_2809
	.word	-112
	.word	4
	.word	_Label_2810
	.word	-9
	.word	1
	.word	_Label_2811
	.word	-10
	.word	1
	.word	_Label_2812
	.word	-116
	.word	4
	.word	_Label_2813
	.word	-120
	.word	4
	.word	_Label_2814
	.word	-124
	.word	4
	.word	_Label_2815
	.word	-128
	.word	4
	.word	_Label_2816
	.word	-132
	.word	4
	.word	_Label_2817
	.word	-136
	.word	4
	.word	0
_Label_2779:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2780:
	.ascii	"Pself\0"
	.align
_Label_2781:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2782:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2783:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2784:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2758\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2802:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2804:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2805:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2806:
	.byte	'?'
	.ascii	"_temp_2745\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2810:
	.byte	'C'
	.ascii	"_temp_2739\0"
	.align
_Label_2811:
	.byte	'C'
	.ascii	"_temp_2736\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2813:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2814:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2815:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2816:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2817:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2818
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2818:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2819
	.word	_sourceFileName
	.word	360		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2819:
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
_Label_3177:
	push	r0
	sub	r1,1,r1
	bne	_Label_3177
	mov	2651,r13		! source line 2651
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2653,r13		! source line 2653
	mov	"\0\0AS",r10
	mov	2653,r13		! source line 2653
	mov	"\0\0SE",r10
!   _temp_2820 = &_P_Kernel_frameManager
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
	mov	2654,r13		! source line 2654
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2656,r13		! source line 2656
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
	.word	_Label_2821
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2823
	.word	-12
	.word	4
	.word	0
_Label_2821:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2822:
	.ascii	"Pself\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2820\0"
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
_Label_3178:
	push	r0
	sub	r1,1,r1
	bne	_Label_3178
	mov	2661,r13		! source line 2661
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2824 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2824  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2662,r13		! source line 2662
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2663,r13		! source line 2663
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2825 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2825  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2664,r13		! source line 2664
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2665,r13		! source line 2665
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2826 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2826  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2666,r13		! source line 2666
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2667,r13		! source line 2667
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2827 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2827  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2668,r13		! source line 2668
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2669,r13		! source line 2669
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2828 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2828  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2671,r13		! source line 2671
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2829 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2829  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2672,r13		! source line 2672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2673,r13		! source line 2673
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2674,r13		! source line 2674
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
	.word	_Label_2830
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2832
	.word	-12
	.word	4
	.word	_Label_2833
	.word	-16
	.word	4
	.word	_Label_2834
	.word	-20
	.word	4
	.word	_Label_2835
	.word	-24
	.word	4
	.word	_Label_2836
	.word	-28
	.word	4
	.word	_Label_2837
	.word	-32
	.word	4
	.word	0
_Label_2830:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2831:
	.ascii	"Pself\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2829\0"
	.align
_Label_2833:
	.byte	'?'
	.ascii	"_temp_2828\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2835:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2836:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2837:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2838
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2838:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2839
	.word	_sourceFileName
	.word	377		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2839:
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
_Label_3179:
	push	r0
	sub	r1,1,r1
	bne	_Label_3179
	mov	2685,r13		! source line 2685
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2840 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2840  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2686,r13		! source line 2686
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2841 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2841  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2688,r13		! source line 2688
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2689,r13		! source line 2689
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2843		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2843
!	jmp	_Label_2842
_Label_2842:
! THEN...
	mov	2690,r13		! source line 2690
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2690,r13		! source line 2690
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
	jmp	_Label_2844
_Label_2843:
! ELSE...
	mov	2692,r13		! source line 2692
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2845 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2845  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2844:
! RETURN STATEMENT...
	mov	2689,r13		! source line 2689
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
	.word	_Label_2846
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2848
	.word	-12
	.word	4
	.word	_Label_2849
	.word	-16
	.word	4
	.word	_Label_2850
	.word	-20
	.word	4
	.word	0
_Label_2846:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2847:
	.ascii	"Pself\0"
	.align
_Label_2848:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2849:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2850:
	.byte	'?'
	.ascii	"_temp_2840\0"
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
_Label_3180:
	push	r0
	sub	r1,1,r1
	bne	_Label_3180
	mov	2698,r13		! source line 2698
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0SE",r10
!   _temp_2851 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2852 = _temp_2851 + 4
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
	mov	2709,r13		! source line 2709
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
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
	mov	2711,r13		! source line 2711
	mov	"\0\0SE",r10
!   _temp_2853 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2854 = _temp_2853 + 4
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
	mov	2712,r13		! source line 2712
	mov	"\0\0RE",r10
	mov	2712,r13		! source line 2712
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2857 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2856  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2855  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2855  (sizeInBytes=1)
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
	.word	_Label_2858
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2859
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2860
	.word	12
	.word	4
	.word	_Label_2861
	.word	16
	.word	4
	.word	_Label_2862
	.word	-16
	.word	4
	.word	_Label_2863
	.word	-20
	.word	4
	.word	_Label_2864
	.word	-9
	.word	1
	.word	_Label_2865
	.word	-24
	.word	4
	.word	_Label_2866
	.word	-28
	.word	4
	.word	_Label_2867
	.word	-32
	.word	4
	.word	_Label_2868
	.word	-36
	.word	4
	.word	_Label_2869
	.word	-40
	.word	4
	.word	0
_Label_2858:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2859:
	.ascii	"Pself\0"
	.align
_Label_2860:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2861:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2862:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2863:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2864:
	.byte	'C'
	.ascii	"_temp_2855\0"
	.align
_Label_2865:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2866:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2867:
	.byte	'?'
	.ascii	"_temp_2852\0"
	.align
_Label_2868:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2869:
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
_Label_3181:
	push	r0
	sub	r1,1,r1
	bne	_Label_3181
	mov	2717,r13		! source line 2717
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0IF",r10
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
!   _temp_2873 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2874) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2873  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2872  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2872 then goto _Label_2871 else goto _Label_2870
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2870
	jmp	_Label_2871
_Label_2870:
! THEN...
	mov	2723,r13		! source line 2723
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2875 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2875  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2723,r13		! source line 2723
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2871:
! RETURN STATEMENT...
	mov	2725,r13		! source line 2725
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
	.word	_Label_2876
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2878
	.word	-16
	.word	4
	.word	_Label_2879
	.word	-20
	.word	4
	.word	_Label_2880
	.word	-24
	.word	4
	.word	_Label_2881
	.word	-9
	.word	1
	.word	_Label_2882
	.word	-28
	.word	4
	.word	0
_Label_2876:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2877:
	.ascii	"Pself\0"
	.align
_Label_2878:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2881:
	.byte	'C'
	.ascii	"_temp_2872\0"
	.align
_Label_2882:
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
_Label_3182:
	push	r0
	sub	r1,1,r1
	bne	_Label_3182
	mov	2730,r13		! source line 2730
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2886 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2885 = *_temp_2886  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2885) then goto _Label_2884
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2884
!	jmp	_Label_2883
_Label_2883:
! THEN...
	mov	2757,r13		! source line 2757
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2887 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2887  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2757,r13		! source line 2757
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2884:
! IF STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0IF",r10
	mov	2761,r13		! source line 2761
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2891) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2890  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2890 == 1112300152 then goto _Label_2889		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2889
!	jmp	_Label_2888
_Label_2888:
! THEN...
	mov	2762,r13		! source line 2762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2892 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2892  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2762,r13		! source line 2762
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2889:
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
	mov	2767,r13		! source line 2767
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2893) then goto _runtimeErrorNullPointer
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
	mov	2768,r13		! source line 2768
	mov	"\0\0AS",r10
	mov	2768,r13		! source line 2768
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2894) then goto _runtimeErrorNullPointer
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
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
	mov	2769,r13		! source line 2769
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2895) then goto _runtimeErrorNullPointer
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
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
	mov	2770,r13		! source line 2770
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2896) then goto _runtimeErrorNullPointer
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
	mov	2771,r13		! source line 2771
	mov	"\0\0AS",r10
	mov	2771,r13		! source line 2771
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2897) then goto _runtimeErrorNullPointer
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
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
	mov	2772,r13		! source line 2772
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2898) then goto _runtimeErrorNullPointer
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
	mov	2775,r13		! source line 2775
	mov	"\0\0IF",r10
!   _temp_2901 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2901) then goto _Label_2900
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2900
!	jmp	_Label_2899
_Label_2899:
! THEN...
	mov	2776,r13		! source line 2776
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2902 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2902  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2776,r13		! source line 2776
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2777,r13		! source line 2777
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2900:
! ASSIGNMENT STATEMENT...
	mov	2779,r13		! source line 2779
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
	mov	2783,r13		! source line 2783
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2904
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2904
!	jmp	_Label_2903
_Label_2903:
! THEN...
	mov	2784,r13		! source line 2784
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2905 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2905  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2784,r13		! source line 2784
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2785,r13		! source line 2785
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2904:
! IF STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0IF",r10
!   _temp_2908 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2908) then goto _Label_2907
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2907
!	jmp	_Label_2906
_Label_2906:
! THEN...
	mov	2790,r13		! source line 2790
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2909 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2909  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2907:
! IF STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0IF",r10
!   _temp_2912 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2912 then goto _Label_2911		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2911
!	jmp	_Label_2910
_Label_2910:
! THEN...
	mov	2794,r13		! source line 2794
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2913 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2913  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2794,r13		! source line 2794
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2911:
! ASSIGNMENT STATEMENT...
	mov	2797,r13		! source line 2797
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
	mov	2800,r13		! source line 2800
	mov	"\0\0IF",r10
!   _temp_2916 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2916) then goto _Label_2915
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2915
!	jmp	_Label_2914
_Label_2914:
! THEN...
	mov	2801,r13		! source line 2801
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2917 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2917  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2801,r13		! source line 2801
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2915:
! IF STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0IF",r10
!   _temp_2920 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2920 then goto _Label_2919		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2919
!	jmp	_Label_2918
_Label_2918:
! THEN...
	mov	2805,r13		! source line 2805
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2921 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2921  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2805,r13		! source line 2805
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2919:
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
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
	mov	2811,r13		! source line 2811
	mov	"\0\0AS",r10
!   _temp_2924 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2923 = _temp_2924 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2922 = _temp_2923 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2922 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2826,r13		! source line 2826
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2926		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2926
!	jmp	_Label_2925
_Label_2925:
! THEN...
	mov	2827,r13		! source line 2827
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2927 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2927  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2827,r13		! source line 2827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2928 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2928  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2828,r13		! source line 2828
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2929 = _StringConst_214
	set	_StringConst_214,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2929  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2829,r13		! source line 2829
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2926:
! SEND STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0SE",r10
!   _temp_2930 = &_P_Kernel_frameManager
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
	mov	2838,r13		! source line 2838
	mov	"\0\0IF",r10
	mov	2838,r13		! source line 2838
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2934) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2933  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2933 == 707406378 then goto _Label_2932		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2932
!	jmp	_Label_2931
_Label_2931:
! THEN...
	mov	2839,r13		! source line 2839
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2935 = _StringConst_215
	set	_StringConst_215,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2935  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2839,r13		! source line 2839
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2840,r13		! source line 2840
	mov	"\0\0SE",r10
!   _temp_2936 = &_P_Kernel_frameManager
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
	mov	2841,r13		! source line 2841
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2932:
! ASSIGNMENT STATEMENT...
	mov	2845,r13		! source line 2845
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
	mov	2846,r13		! source line 2846
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2941 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2942 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2941  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2937:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2942 then goto _Label_2940		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2940
_Label_2938:
	mov	2846,r13		! source line 2846
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2847,r13		! source line 2847
	mov	"\0\0AS",r10
	mov	2847,r13		! source line 2847
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
	mov	2850,r13		! source line 2850
	mov	"\0\0IF",r10
	mov	2850,r13		! source line 2850
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2946) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2945  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2945 then goto _Label_2944 else goto _Label_2943
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2943
	jmp	_Label_2944
_Label_2943:
! THEN...
	mov	2851,r13		! source line 2851
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2947 = _StringConst_216
	set	_StringConst_216,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2947  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2851,r13		! source line 2851
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2852,r13		! source line 2852
	mov	"\0\0SE",r10
!   _temp_2948 = &_P_Kernel_frameManager
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
	mov	2853,r13		! source line 2853
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2944:
! SEND STATEMENT...
	mov	2855,r13		! source line 2855
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
	mov	2856,r13		! source line 2856
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2939:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2937
! END FOR
_Label_2940:
! IF STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0IF",r10
	mov	2860,r13		! source line 2860
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2952) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2951  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2951 == 707406378 then goto _Label_2950		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2950
!	jmp	_Label_2949
_Label_2949:
! THEN...
	mov	2861,r13		! source line 2861
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2953 = _StringConst_217
	set	_StringConst_217,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2953  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2861,r13		! source line 2861
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0SE",r10
!   _temp_2954 = &_P_Kernel_frameManager
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
	mov	2863,r13		! source line 2863
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2950:
! FOR STATEMENT...
	mov	2867,r13		! source line 2867
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2959 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2960 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2959  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2955:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2960 then goto _Label_2958		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2958
_Label_2956:
	mov	2867,r13		! source line 2867
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0AS",r10
	mov	2868,r13		! source line 2868
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
	mov	2871,r13		! source line 2871
	mov	"\0\0IF",r10
	mov	2871,r13		! source line 2871
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2964) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2963  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2963 then goto _Label_2962 else goto _Label_2961
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2961
	jmp	_Label_2962
_Label_2961:
! THEN...
	mov	2872,r13		! source line 2872
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2965 = _StringConst_218
	set	_StringConst_218,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2965  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2872,r13		! source line 2872
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2873,r13		! source line 2873
	mov	"\0\0SE",r10
!   _temp_2966 = &_P_Kernel_frameManager
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
	mov	2874,r13		! source line 2874
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2962:
! ASSIGNMENT STATEMENT...
	mov	2876,r13		! source line 2876
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2957:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2955
! END FOR
_Label_2958:
! IF STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0IF",r10
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2970) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2969  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2969 == 707406378 then goto _Label_2968		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2968
!	jmp	_Label_2967
_Label_2967:
! THEN...
	mov	2881,r13		! source line 2881
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2971 = _StringConst_219
	set	_StringConst_219,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2971  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2881,r13		! source line 2881
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0SE",r10
!   _temp_2972 = &_P_Kernel_frameManager
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
	mov	2883,r13		! source line 2883
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2968:
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
	mov	2887,r13		! source line 2887
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
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2894,r13		! source line 2894
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
	.word	_Label_2973
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2974
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2975
	.word	12
	.word	4
	.word	_Label_2976
	.word	-16
	.word	4
	.word	_Label_2977
	.word	-20
	.word	4
	.word	_Label_2978
	.word	-24
	.word	4
	.word	_Label_2979
	.word	-28
	.word	4
	.word	_Label_2980
	.word	-32
	.word	4
	.word	_Label_2981
	.word	-36
	.word	4
	.word	_Label_2982
	.word	-40
	.word	4
	.word	_Label_2983
	.word	-9
	.word	1
	.word	_Label_2984
	.word	-44
	.word	4
	.word	_Label_2985
	.word	-48
	.word	4
	.word	_Label_2986
	.word	-52
	.word	4
	.word	_Label_2987
	.word	-56
	.word	4
	.word	_Label_2988
	.word	-60
	.word	4
	.word	_Label_2989
	.word	-64
	.word	4
	.word	_Label_2990
	.word	-68
	.word	4
	.word	_Label_2991
	.word	-72
	.word	4
	.word	_Label_2992
	.word	-76
	.word	4
	.word	_Label_2993
	.word	-10
	.word	1
	.word	_Label_2994
	.word	-80
	.word	4
	.word	_Label_2995
	.word	-84
	.word	4
	.word	_Label_2996
	.word	-88
	.word	4
	.word	_Label_2997
	.word	-92
	.word	4
	.word	_Label_2998
	.word	-96
	.word	4
	.word	_Label_2999
	.word	-100
	.word	4
	.word	_Label_3000
	.word	-104
	.word	4
	.word	_Label_3001
	.word	-108
	.word	4
	.word	_Label_3002
	.word	-112
	.word	4
	.word	_Label_3003
	.word	-116
	.word	4
	.word	_Label_3004
	.word	-120
	.word	4
	.word	_Label_3005
	.word	-124
	.word	4
	.word	_Label_3006
	.word	-128
	.word	4
	.word	_Label_3007
	.word	-132
	.word	4
	.word	_Label_3008
	.word	-136
	.word	4
	.word	_Label_3009
	.word	-140
	.word	4
	.word	_Label_3010
	.word	-144
	.word	4
	.word	_Label_3011
	.word	-148
	.word	4
	.word	_Label_3012
	.word	-152
	.word	4
	.word	_Label_3013
	.word	-156
	.word	4
	.word	_Label_3014
	.word	-160
	.word	4
	.word	_Label_3015
	.word	-164
	.word	4
	.word	_Label_3016
	.word	-168
	.word	4
	.word	_Label_3017
	.word	-172
	.word	4
	.word	_Label_3018
	.word	-176
	.word	4
	.word	_Label_3019
	.word	-180
	.word	4
	.word	_Label_3020
	.word	-184
	.word	4
	.word	_Label_3021
	.word	-188
	.word	4
	.word	_Label_3022
	.word	-192
	.word	4
	.word	_Label_3023
	.word	-196
	.word	4
	.word	_Label_3024
	.word	-200
	.word	4
	.word	_Label_3025
	.word	-204
	.word	4
	.word	_Label_3026
	.word	-208
	.word	4
	.word	_Label_3027
	.word	-212
	.word	4
	.word	_Label_3028
	.word	-216
	.word	4
	.word	_Label_3029
	.word	-220
	.word	4
	.word	_Label_3030
	.word	-224
	.word	4
	.word	_Label_3031
	.word	-228
	.word	4
	.word	_Label_3032
	.word	-232
	.word	4
	.word	_Label_3033
	.word	-236
	.word	4
	.word	_Label_3034
	.word	-240
	.word	4
	.word	_Label_3035
	.word	-244
	.word	4
	.word	_Label_3036
	.word	-248
	.word	4
	.word	_Label_3037
	.word	-252
	.word	4
	.word	_Label_3038
	.word	-256
	.word	4
	.word	_Label_3039
	.word	-260
	.word	4
	.word	_Label_3040
	.word	-264
	.word	4
	.word	_Label_3041
	.word	-268
	.word	4
	.word	0
_Label_2973:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2974:
	.ascii	"Pself\0"
	.align
_Label_2975:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2972\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2971\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2966\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2965\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_2983:
	.byte	'C'
	.ascii	"_temp_2963\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2959\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2954\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2953\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2948\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2947\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_2993:
	.byte	'C'
	.ascii	"_temp_2945\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2941\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2922\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_3030:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3031:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3032:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3033:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3034:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3035:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3036:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3037:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3038:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3039:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3040:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3041:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
